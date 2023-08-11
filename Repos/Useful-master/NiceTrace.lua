--[[
	=== Nice debug traces ===
	Makes debug.Trace() more readable
	
	Default: 
	Trace: 
		1: Line 32	"Trace"	lua/includes/extensions/debug.lua
		2: Line 33	"Two"	lua/tft.lua
		3: Line 40	"nil"	lua/tft.lua
		4: Line 69	"Run"	lua/includes/modules/concommand.lua
		5: Line 43	"nil"	lua/tft.lua
	
	Mine: 
	[Trace] Two - [lua/tft.lua:27-37]
	  2. Two - lua/tft.lua:29
	   3. unknown - lua/tft.lua:40
		4. Run - lua/includes/modules/concommand.lua:69
		 5. unknown - lua/tft.lua:43
]]


function debug.Trace(Res)
	Res = Res or "Trace"
	local Lev = 2
	
	while true do
		local Tab = debug.getinfo(Lev)
		if not Tab then break end
		
		//First call
		if Lev == 2 then
			print( Format("[%s] %s - [%s:%d-%d]", Res, Tab.name, Tab.short_src, Tab.linedefined, Tab.lastlinedefined) )
		end
		
		//Tab
		local Sep = string.rep(" ", Lev - 1)
		print( Format(" %s%d. %s - %s:%d", Sep, Lev, (Tab.name or "unknown"), Tab.short_src, Tab.currentline) )
		
		Lev = Lev + 1
	end
	
	print("\n")
end








