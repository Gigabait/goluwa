local gine = ... or _G.gine

function gine.env.CreateConVar(name, def, flags, help)
	return gine.WrapObject(pvars.Setup(name, tostring(def), nil, help), "ConVar")
end

function gine.env.GetConVar(name)
	local pvar = pvars.GetObject(name)

	if not pvar then
		llog("unknown convar: ", name)
		pvar = pvars.Setup(name, 0)
	end

	if pvar then
		return gine.WrapObject(pvar, "ConVar")
	end
end

local META = gine.GetMetaTable("ConVar")

function META:GetBool()
	local val = self.__obj:Get()
	if tonumber(val) then return tonumber(val) > 0 end
	return not not val
end

function META:GetFloat()
	return tonumber(self.__obj:Get()) or 0
end

function META:GetDefault()
	return self.__obj:GetDefault()
end

function META:GetHelpText()
	return self.__obj:GetHelp()
end

function META:GetName()
	return self.__obj:GetName()
end

function META:GetString()
	return tostring(self.__obj:Get())
end

function META:GetInt()
	return math.ceil(tonumber(self.__obj:Get()) or 0)
end
