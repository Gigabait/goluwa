if not render then return end

local META = prototype.CreateTemplate()

META.Name = "light"
META.Require = {"transform"}
META.Events = {"Draw3DLights", "DrawShadowMaps"}

META:StartStorable()
	META:GetSet("Color", Color(1, 1, 1))
	META:GetSet("Intensity", 1)
	META:GetSet("Shadow", false)
	META:GetSet("ShadowCubemap", false)
	META:GetSet("ShadowSize", 256)
	META:GetSet("FOV", 90, {editor_min = 0, editor_max = 180})
	META:GetSet("NearZ", 1)
	META:GetSet("FarZ", -1)
	META:GetSet("ProjectFromCamera", false)
	META:GetSet("Ortho", false)
	META:GetSet("OrthoSizeMin", 5)
	META:GetSet("OrthoSizeMax", 1000)
	META:GetSet("OrthoBias", 0.05)
META:EndStorable()

if GRAPHICS then
	function META:OnAdd()
		self.shadow_maps = {}
		gfx.LoadModel3D("models/low-poly-sphere.obj", function(meshes)
			self.light_mesh = meshes[1]
		end)
	end

	function META:SetShadow(b)
		self.Shadow = b
		if b then
			for i = 1, render3d.csm_count do
				local shadow_map = render3d.CreateShadowMap(self.ShadowCubemap)
				shadow_map:SetShadowSize(self.ShadowSize)
				self.shadow_maps[i] = shadow_map
			end
		else
			for _, shadow_map in pairs(self.shadow_maps) do
				shadow_map:Remove()
			end
			table.clear(self.shadow_maps)
		end
	end

	function META:SetShadowSize(size)
		self.ShadowSize = size
		for _, shadow_map in pairs(self.shadow_maps) do
			shadow_map:SetShadowSize(size)
		end
	end

	function META:OnDraw3DLights()
		if not self.light_mesh or not render3d.gbuffer_data_pass.light_shader then return end -- grr

		-- automate this!!

		if self.Shadow then
			self:DrawShadowMap()
		end

		local shader = render3d.gbuffer_data_pass.light_shader

		shader.light_color = self.Color
		shader.light_intensity = self.Intensity
		shader.light_shadow = self.Shadow
		shader.light_point_shadow = self.ShadowCubemap
		shader.project_from_camera = self.ProjectFromCamera

		local transform = self:GetComponent("transform")

		camera.camera_3d:SetWorld(transform:GetMatrix())
		shader.light_radius = transform:GetSize()

		render.SetShaderOverride(shader)
		render.SetBlendMode("one", "one")
		self.light_mesh:Draw()
	end

	function META:DrawScene(projection, rot, pos, i)
		do -- setup the view matrix
			local view = Matrix44()

			view:SetRotation(rot)

			if self.ProjectFromCamera then
				pos = camera.camera_3d:GetPosition()
				local hmm = 0.25
				view:Translate(math.ceil(pos.y*hmm)/hmm, math.ceil(pos.x*hmm)/hmm, math.ceil(pos.z*hmm)/hmm)
			else
				view:Translate(pos.y, pos.x, pos.z)
			end

			camera.camera_3d:SetView(view:Copy())
		end

		-- render the scene with this matrix
		camera.camera_3d:SetProjection(projection:Copy())

		if camera.camera_3d:GetMatrices().projection_view then
			render3d.gbuffer_data_pass.light_shader["light_projection_view" .. i] = camera.camera_3d:GetMatrices().projection_view
		else
			render3d.gbuffer_data_pass.light_shader["light_view" .. i] =  camera.camera_3d:GetMatrices().view:Copy()
			render3d.gbuffer_data_pass.light_shader["light_projection" .. i] = camera.camera_3d:GetMatrices().projection:Copy()
		end

		render3d.DrawScene("shadow"..i)
	end

	function META:DrawShadowMap()
		local transform = self:GetComponent("transform")
		local pos = transform:GetPosition()
		local rot = transform:GetRotation()

--		camera.camera_3d:Rebuild()

		local old_view = camera.camera_3d:GetView()
		local old_projection = camera.camera_3d:GetProjection()
		local old_pos = camera.camera_3d:GetPosition()

		for i, shadow_map in ipairs(self.shadow_maps) do
			shadow_map:Begin()

			local projection = Matrix44()

			do -- setup the projection matrix
				if self.Ortho then
					projection:Perspective(math.rad(self.FOV), self.FarZ, self.NearZ, shadow_map.tex:GetSize().x / shadow_map.tex:GetSize().y)
				else
					local size = math.lerp(((i-1)/(#self.shadow_maps-1))^self.OrthoBias, self.OrthoSizeMax, self.OrthoSizeMin)
					projection:Ortho(-size, size, -size, size, size+200, -size-100)
				end
			end

			if self.ShadowCubemap then
				for i, rot in ipairs(shadow_map:GetDirections()) do
					shadow_map:SetupCube(i)
					shadow_map:Clear()
					self:DrawScene(projection, rot, pos, i)
				end
			else
				shadow_map:Clear()
				self:DrawScene(projection, rot, pos, i)
			end

			shadow_map:End()

			if self.ShadowCubemap then
				render3d.gbuffer_data_pass.light_shader["tex_shadow_map_cube"] = shadow_map:GetTexture()
			else
				render3d.gbuffer_data_pass.light_shader["tex_shadow_map_" .. i] = shadow_map:GetTexture()
			end

			if self.Ortho then break end
		end

		camera.camera_3d:SetView(old_view)
		camera.camera_3d:SetProjection(old_projection)
		camera.camera_3d:SetPosition(old_pos)
	end
end

META:RegisterComponent()

if RELOAD then
	render3d.Initialize()
end