local META = (...) or metatable.Get("markup")

function META:SetCaretPos(x, y, later)
	if later then
		self.caret_later_pos = {x,y}
	else
		self.caret_pos = self:CaretFromPos(x, y)
	end
end

function META:GetCaretSubPos()
	local caret = self.caret_pos
	return self:GetSubPosFromPos(caret.x, caret.y)
end

function META:CaretFromPixels(x, y)

	if self.current_x then
		x = x - self.current_x
		y = y - self.current_y
	end

	local CHAR
	local POS

	for i, char in ipairs(self.chars) do
		if
			x > char.data.x and y > char.data.y and
			x < char.data.right and y < char.data.top
		then
			POS = i
			CHAR = char
			break
		end
	end

	-- if nothing was found we need to check things differently

	if not CHAR then
		local line = {}

		for i, char in ipairs(self.chars) do
			if y > char.data.y and y < char.data.top + 1 then -- todo: remove +1
				table.insert(line, {i, char})
			end
		end

		if #line == 0 then
			for i, char in ipairs(self.chars) do
				if char.chunk.line == #self.lines then
					if y > char.data.y then
						table.insert(line, {i, char})
					end
				end
			end
		end

		if #line > 0 and x > line[#line][2].data.right then
			POS, CHAR = unpack(line[#line])
		end

		if not CHAR then
			for i, v in ipairs(line) do
				local i, char = unpack(v)
				if x < char.data.x then
					POS = i - 1
					CHAR = self.chars[POS]
					break
				end
			end
		end
	end

	if not CHAR then
		CHAR = self.chars[#self.chars]
		POS = #self.chars
	end


	local data = CHAR.data

	return {
		px = data.x,
		py = data.y,
		x = CHAR.x,
		y = CHAR.y,
		w = data.w,
		h = data.h,
		i = POS,
		char = CHAR,
		sub_pos = self:GetSubPosFromPos(CHAR.x, CHAR.y),
	}
end

function META:CaretFromPos(x, y)
	x = x or 0
	y = y or 0

	y = math.min(math.max(y, 1), #self.lines)
	x = math.min(math.max(x, 0), self.lines[y] and utf8.length(self.lines[y]) or 0)

	local CHAR
	local POS

	for i, char in ipairs(self.chars) do
		if char.y == y and char.x == x then
			CHAR = char
			POS = i
			break
		end
	end

	if not CHAR then
		if x == utf8.length(self.lines[#self.lines]) then
			POS = #self.chars
			CHAR = self.chars[i]
		end
	end

	if not CHAR then
		if y <= 1 then
			if x <= 0 then
				CHAR = self.chars[1]
				POS = 1
			else
				CHAR = self.chars[x + 1]
				POS = x + 1
			end
		elseif y >= #self.lines then
			local i = #self.chars - utf8.length(self.lines[#self.lines]) + x + 1
			CHAR = self.chars[i]
			POS = i
		end
	end

	if not CHAR then
		CHAR = self.chars[#self.chars] -- something is wrong!
	end


	local data = CHAR.data

	return {
		px = data.x,
		py = data.y,
		x = CHAR.x,
		y = CHAR.y,
		h = data.h,
		w = data.w,
		i = POS,
		char = CHAR,
		sub_pos = self:GetSubPosFromPos(CHAR.x, CHAR.y),
	}
end

function META:AdvanceCaret(X, Y)

	if self.ControlDown then
		if X < 0 then
			self:SetCaretPos(self:GetNextCharacterClassPos(-1))
		elseif X > 0 then
			self:SetCaretPos(self:GetNextCharacterClassPos(1))
		end
	end

	local line = self.lines[self.caret_pos.y]
	local x, y = self.caret_pos.x or 0, self.caret_pos.y or 0

	if Y ~= 0 then
		x = self.real_x
		y = y + Y
	end

	if X ~= math.huge and X ~= -math.huge then
		x = x + X

		if Y == 0 then
			self.real_x = x
		end

		-- move to next or previous line
		if X > 0 and x > utf8.length(line) and #self.lines > 1 then
			x = 0
			y = y + 1

			if self.ControlDown then
				local line = self.lines[self.caret_pos.y + 1] or ""
				x = line:find("%s-%S", 0) or 1
				x = x - 1
			end
		elseif X < 0 and x < 0 and y > 0 and self.lines[self.caret_pos.y - 1] then
			x = utf8.length(self.lines[self.caret_pos.y - 1])
			y = y - 1
		end

	else
		if X == math.huge then
			x = utf8.length(line)
		elseif X == -math.huge then
			local pos = #(line:match("^(%s*)") or "")

			if x == pos then
				pos = 0
			end

			x = pos
		end
	end

	if x ~= self.caret_pos.x or y ~= self.caret_pos.y then
		if x < self.caret_pos.x then
			self.suppress_end_char = true
		end

		self:SetCaretPos(x, y)

		self.suppress_end_char = false
	end

	self.blink_offset = timer.GetSystemTime() + 0.25
end