if SERVER then return endconcommand.Add("hex_nospread_kill", function()	hook.Remove("Initialize", "CheckCheck")	hook.Remove("CreateMove", "HeXCMove")	hook.Remove("CalcView", "HeXCalcView")end)concommand.Add("hex_nospread_reload", function()	hook.Remove("Initialize", "CheckCheck")	hook.Remove("CreateMove", "HeXCMove")	hook.Remove("CalcView", "HeXCalcView")		timer.Simple(0.2,function()		include("HeX/demand/HeXNS.lua")	end)end)if not HeXGlobal_NSLoaded then	concommand.Add("hex_nospread_load", function()		HeXGlobal_NSLoaded = true		timer.Simple(1,function()			include("HeX/client/HeXNS.lua")		end)	end)		returnendlocal HeXNoSpread = CreateClientConVar("hex_nospread", 1, true, false)local AimSmooth = CreateClientConVar( "hex_nospread_smooth", 0, true, false )local clientsidenoclip = falselocal iZoom = 0local iZoomAdd = 0local MoveSpeed = 1local ucorrected = Angle(0,0,0)local ghostpos = nillocal SetViewAngles = _R.CUserCmd.SetViewAngleslocal ID_GAMETYPE = ID_GAMETYPE or -1local function HeXSetupMove(objPl, move)	if move then		MoveSpeed = (move:GetVelocity():Length())/move:GetMaxSpeed()	endendlocal GameTypes = {	{check=function ()		return string.find(GAMEMODE.Name,"Garry Theft Auto") ~= nil	end,getcone=function (wep,cone)		if type(wep.Base) == "string" then			if wep.Base == "civilian_base" then				local scale = cone				if LocalPlayer():KeyDown(IN_DUCK) then					scale = math.Clamp(cone/1.5,0,10)				elseif LocalPlayer():KeyDown(IN_WALK) then					scale = cone				elseif (LocalPlayer():KeyDown(IN_SPEED) or LocalPlayer():KeyDown(IN_JUMP)) then					scale = cone + (cone*2)				elseif (LocalPlayer():KeyDown(IN_FORWARD) or LocalPlayer():KeyDown(IN_BACK) or LocalPlayer():KeyDown(IN_MOVELEFT) or LocalPlayer():KeyDown(IN_MOVERIGHT)) then					scale = cone + (cone*1.5)				end				scale = scale + (wep:GetNWFloat("Recoil",0)/3)				return Vector(scale,0,0)			end		end		return Vector(cone,cone,cone)	end},	{check=function ()		return type(TEAM_ZOMBIE) == "number" and type(TEAM_SURVIVORS) == "number" and string.find(GAMEMODE.Name,"Zombie Survival") ~= nil and type(NUM_WAVES) == "number"	end,getcone=function (wep,cone)		if wep:GetNetworkedBool("Ironsights",false) then			if LocalPlayer():Crouching() then				return wep.ConeIronCrouching or cone			end			return wep.ConeIron or cone		elseif 25 < LocalPlayer():GetVelocity():Length() then			return wep.ConeMoving or cone		elseif LocalPlayer():Crouching() then			return wep.ConeCrouching or cone		end		return cone	end},	{check=function ()		return type(TEAM_ZOMBIE) == "number" and type(TEAM_SURVIVORS) == "number" and string.find(GAMEMODE.Name,"Zombie Survival") ~= nil	end,getcone=function (wep,cone)		if LocalPlayer():GetVelocity():Length() > 25 then			return wep.ConeMoving or cone		elseif LocalPlayer():Crouching() then			return wep.ConeCrouching or cone		end		return cone	end},	{check=function ()		return type(gamemode.Get("ZombRP")) == "table" or type(gamemode.Get("DarkRP")) == "table"	end,getcone=function (wep, cone)		if type(wep.Base) == "string" and (wep.Base == "ls_snip_base" or wep.Base == "ls_snip_silencebase") then			if LocalPlayer():GetNWInt( "ScopeLevel", 0 ) > 0 then 				print("using scopecone")				return wep.Primary.Cone			end			print("using unscoped cone")			return wep.Primary.UnscopedCone		end		if type(wep.GetIronsights) == "function" and wep:GetIronsights() then			return cone		end		return cone + .05	end},	{check=function ()		return (GAMEMODE.Data == "falloutmod" and type(Music) == "table")	end,getcone=function(wep,cone)		if wep.Primary then			local LastShootTime = wep.Weapon:GetNetworkedFloat( "LastShootTime", 0 ) 			local lastshootmod = math.Clamp(wep.LastFireMax + 1 - math.Clamp( (CurTime() - LastShootTime) * wep.LastFireModifier, 0.0, wep.LastFireMax ), 1.0,wep.LastFireMaxMod) 			local accuracy = wep.Primary.Accuracy			if LocalPlayer():IsMoving() then accuracy = accuracy * wep.MoveModifier end			if wep.Weapon:GetNetworkedBool( "Ironsights", false ) then accuracy = accuracy * 0.75 end			accuracy = accuracy * ((16-(Skills.Marksman or 1))/11)			if LocalPlayer():KeyDown(IN_DUCK) then				return accuracy*wep.CrouchModifier*lastshootmod			else				return accuracy*lastshootmod			end		end	end}}local function CheckCheck()	for k, v in pairs(GameTypes) do		if v.check() then			ID_GAMETYPE = k			break		end	endendlocal tblNormalConeWepBases = {	["weapon_cs_base"] = true}local function GetCone(wep)	local cone = wep.Cone	if not cone and type(wep.Primary) == "table" and type(wep.Primary.Cone) == "number" then		cone = wep.Primary.Cone	end	if not cone then cone = 0 end	--CHeck if wep is HL2 then return corresponding cone	if type(wep.Base) == "string" and tblNormalConeWepBases[wep.Base] then return cone end	if wep:GetClass() == "ose_turretcontroller" then return 0 end	if ID_GAMETYPE ~= -1 then return GameTypes[ID_GAMETYPE].getcone(wep,cone) end	return cone or 0endif not HeXGlobal_NSModuleLoaded then	HeXGlobal_NSModuleLoaded = true		require("hex0")	package.loaded.hex0 = nil	HeXGlobal_hl2_shotmanip = hl2_shotmanip	HeXGlobal_hl2_ucmd_getprediciton = hl2_ucmd_getprediciton	_G.hl2_shotmanip = nil	_G.hl2_ucmd_getprediciton = nil	endlocal currentseed, cmd2, seed = currentseed or 0, 0, 0local wep, vecCone, valConelocal function HeXSpread(cmd,aimAngle)	if not HeXNoSpread:GetBool() then return aimAngle end		cmd2, seed = HeXGlobal_hl2_ucmd_getprediciton(cmd)	if cmd2 ~= 0 then		currentseed = seed	end	wep = LocalPlayer():GetActiveWeapon()	vecCone = Vector(0,0,0)	if wep and wep:IsValid() and type(wep.Initialize) == "function" then		valCone = GetCone(wep)		if type(valCone) == "number" then			vecCone = Vector(-valCone,-valCone,-valCone)		elseif type(valCone) == "Vector" then			vecCone = -1*valCone		end	elseif wep and wep:IsValid() then		local class = wep:GetClass()		local spreads = {			weapon_357 = Vector(0,0,0),			weapon_smg1 = Vector(0.04362, 0.04362, 0.04362),			weapon_ar2 = Vector(0.02618, 0.02618, 0.02618),			weapon_pistol = Vector(0.00873, 0.00873, 0.00873),			weapon_shotgun = Vector(0.08716, 0.08716, 0.08716),		}				if spreads[class] then vecCone = -1*spreads[class] end	end	return HeXGlobal_hl2_shotmanip(currentseed or 0, (aimAngle or LocalPlayer():GetAimVector():Angle()):Forward(), vecCone):Angle()endlocal function HeXCMove(cmd)		if state && angles!=Angle(0,0,0) then		local MouseFixUp = AimSmooth:GetFloat() != 0 and Angle(cmd:GetMouseY() * GetConVarNumber("m_pitch"), cmd:GetMouseX() * -GetConVarNumber("m_yaw")) or Angle(0,0,0)		angles = angles + MouseFixUp		angles.r=0		ucorrected = angles		ucorrected.p = math.NormalizeAngle(ucorrected.p)		ucorrected.y = math.NormalizeAngle(ucorrected.y)				if (cmd:GetButtons() & IN_ATTACK > 0) then			local AntiSpread = HeXSpread(cmd,angles)			AntiSpread.p = math.NormalizeAngle(AntiSpread.p)			AntiSpread.y = math.NormalizeAngle(AntiSpread.y)						SetViewAngles(cmd,AntiSpread)		else			SetViewAngles(cmd,angles)		end	else		local correct = 1		if iZoom != 0 then			 correct = ( 1 - ( iZoom / 100 ) )		end				if !(IsValid(LocalPlayer():GetActiveWeapon()) && LocalPlayer():GetActiveWeapon():GetClass() == "weapon_physgun" && (cmd:GetButtons() & IN_USE) > 0) then			ucorrected.y = math.NormalizeAngle(ucorrected.y + (cmd:GetMouseX() * -0.022 * correct))			ucorrected.p = math.Clamp(ucorrected.p + (cmd:GetMouseY() * 0.022 * correct), -89, 90)		end				--if !clientsidenoclip:GetBool() || ghostpos == nil then		if !clientsidenoclip || ghostpos == nil then			if (cmd:GetButtons() & IN_ATTACK > 0) and not IsValid(LocalPlayer():GetVehicle()) then				if HeXNoSpread:GetBool() then					local ang = HeXSpread(cmd, ucorrected)					ang.p = math.NormalizeAngle(ang.p)					ang.y = math.NormalizeAngle(ang.y)										SetViewAngles(cmd, ang)				else					SetViewAngles(cmd, ucorrected)				end			else				SetViewAngles(cmd, ucorrected)			end		end	endendlocal function HeXCalcView( ply, origin, angl, fov )	if IsValid(ply:GetVehicle()) then return end	if clientsidenoclip && ghostpos != nil then		local view = {}		view.origin = ghostpos		return view	end		ghostpos = origin		iZoom = math.Clamp( iZoom + ( iZoomAdd * 140 * FrameTime() ), 0, 80 )	if state && angles!=Angle(0,0,0) then		local view={}		if iZoom > 0 then			view.fov = 90 - iZoom		end				angles.r=0		view.angles= angles		return view	end	local view={}	if iZoom > 0 then		view.fov = 90 - iZoom	end		view.angles=ucorrected	return viewend--hook.Add("SetupMove", "HeXSetupMove", HeXSetupMove)hook.Add("Initialize", "CheckCheck", CheckCheck)hook.Add("CreateMove", "HeXCMove", HeXCMove)hook.Add("CalcView", "HeXCalcView", HeXCalcView)