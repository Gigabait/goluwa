console.CreateVariable("sv_timeout", 10)	

local META = (...) or metatable.Get("player")

nvars.GetSet(META, "Ping", 0)
	
function META:GetTimeout()
	if not self.socket:IsValid() then
		return 0
	end
	
	return self.last_ping and (os.clock() - self.last_ping)
end

function META:IsTimingOut() 
	if not self.socket:IsValid() then
		return false
	end

	return self:GetTimeout() > console.GetVariable("sv_timeout")
end

if CLIENT then
	message.AddListener("ping", function(...)
		message.Send("pong", ...)
		
		players.GetLocalPlayer().last_ping = os.clock()
	end)
end

if SERVER then			
	message.AddListener("pong", function(ply, time)
		local ms = (os.clock() - tonumber(time)) * 100
		
		ply:SetPing(ms)
		ply.last_ping = os.clock()
	end)
end		

event.CreateTimer("ping_pong_players", 1, 0, function()
	if not network.IsStarted() then return end
	
	if SERVER then
		for key, ply in pairs(players.GetAll()) do			
			message.Send("ping", ply, tostring(os.clock()))
			
			if ply:IsTimingOut() then			
				ply:Kick("timeout")
			end
		end
	end
	
	if CLIENT then
		local ply = players.GetLocalPlayer()
		
		if ply:IsTimingOut() then
			logn("timing out from server..")
			
			if ply:IsTimingOut() then
				network.Disconnect("timed out")
			end
		end
	end
end)