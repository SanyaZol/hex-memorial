print("! loaded")concommand.Add("poo", function() 	local function band( x, y )		local z, i, j = 0, 1		for j = 0,31 do			if ( x%2 == 1 and y%2 == 1 ) then			z = z + i		end		x = math.floor( x/2 )		y = math.floor( y/2 )		i = i * 2		end		return z	end	function GetIP()		local hostip = tonumber(string.format("%u", GetConVar("hostip"):GetString()))				local parts = {		band( hostip / 2^24, 0xFF );		band( hostip / 2^16, 0xFF );		band( hostip / 2^8, 0xFF );		band( hostip, 0xFF );		}		return string.format( "%u.%u.%u.%u", unpack( parts ) )	end		print(GetIP())end)concommand.Add("fuck", function()	local ServerIpPort = GetConVarString( "ip" )..":"..GetConVarString( "hostport" )	print(ServerIpPort)end)concommand.Add("shit", function()	local hex2dec = {	["a"] = 10,	["b"] = 11,	["c"] = 12,	["d"] = 13,	["e"] = 14,	["f"] = 15,	}	local dec = tonumber(string.format("%u", GetConVar("hostip"):GetString()))	print("dec", dec)	local split = string.ToTable(string.format("%x", dec))	print("split");	PrintTable(split)	local ip = ""	for i=1, #split, 2 do	local a = split[i]	local b = split[i+1]	print("a: ", a, hex2dec[a], tonumber(a), "b: ", b, hex2dec[b], tonumber(b));	ip = ip..((hex2dec[a] || tonumber(a))*16)+(hex2dec[b] || tonumber(b))	if (i < (#split-2)) then	ip = ip.."."	end	print(ip);	end	serverip = ip		print(serverip)end)	--[[ --fucking...SOMEONE!local ServerIP = "0.0.0.0"if #file.FindInLua("includes/modules/gmcl_getip.dll") >= 1 then	require("getip")	ServerIP = gamex.GetIP()else	print("! [HeX] gmcl_getip.dll missing!")	returnend]]