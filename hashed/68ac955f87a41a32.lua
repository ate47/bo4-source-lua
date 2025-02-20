-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
LUI.CoDRoot = {} --[[ @ 0]]
LUI.CoDRoot.ProcessEvent = function ( f1_arg0, f1_arg1 )
	if f1_arg1.immediate == true then
		LUI.CoDRoot.ProcessEventNow( f1_arg0, f1_arg1 ) --[[ @ 0]]
	else
		local f1_local0 = f1_arg0.eventQueue --[[ @ 0]]
		table.insert( f1_local0, f1_arg1 ) --[[ @ 0]]
		local f1_local1 = #f1_local0 --[[ @ 0]]
		if f1_local1 > 20 then
			DebugPrint( "LUI WARNING: Event queue exceeded 20 events! " .. f1_arg1.name .. ". Size is " .. f1_local1 ) --[[ @ 0]]
		end
	end
end
 --[[ @ 0]]
LUI.CoDRoot.ProcessEvents = function ( f2_arg0, f2_arg1 )
	local f2_local0 = f2_arg0.eventQueue --[[ @ 0]]
	local f2_local1 = 0 --[[ @ 0]]
	local f2_local2 = #f2_local0 --[[ @ 0]]
	if f2_local2 > 60 then
		f2_local1 = f2_local2 --[[ @ 0]]
		DebugPrint( "LUI WARNING: Event queue reached " .. f2_local1 .. "!. ** Emergency event processing kicked off. ** " ) --[[ @ 0]]
	elseif f2_local2 > 40 then
		f2_local1 = math.floor( f2_local2 / 10 ) --[[ @ 0]]
		DebugPrint( "LUI WARNING: Event queue reached " .. f2_local2 .. ". Processing " .. f2_local1 .. " events this frame." ) --[[ @ 0]]
	else
		f2_local1 = 1 --[[ @ 0]]
	end
	for f2_local3 = 1 --[[ @ 0]], f2_local1, 1 do
		local f2_local6 = f2_local3 --[[ @ 0]]
		local f2_local7 = f2_local0[1] --[[ @ 0]]
		if f2_local7 ~= nil then
			table.remove( f2_local0, 1 ) --[[ @ 0]]
			LUI.CoDRoot.ProcessEventNow( f2_arg0, f2_local7 ) --[[ @ 0]]
		end
	end
end
 --[[ @ 0]]
LUI.CoDRoot.ProcessEventNow = function ( f3_arg0, f3_arg1 )
	if f3_arg1.name ~= "process_events" then
		Engine[@"hash_56E447857BE70BC1"]( f3_arg1.name ) --[[ @ 0]]
		Engine[@"EventProcessed"]() --[[ @ 0]]
	end
	local f3_local0 = f3_arg0:propagateEvent( f3_arg1 ) --[[ @ 0]]
	if f3_local0 then
		Engine[@"hash_66E2713AD003565"]() --[[ @ 0]]
		return f3_local0
	end
	local f3_local1 = LUI.UIElement.processEvent( f3_arg0, f3_arg1 ) --[[ @ 0]]
	if f3_arg1.name ~= "process_events" then
		Engine[@"hash_66E2713AD003565"]() --[[ @ 0]]
	end
	return f3_local1
end
 --[[ @ 0]]
LUI.CoDRoot.DontPropagateEvent = function ( f4_arg0, f4_arg1 )
	
end
 --[[ @ 0]]
LUI.CoDRoot.PropagateEventToPrimaryRoot = function ( f5_arg0, f5_arg1 )
	if LUI.primaryRoot ~= nil and LUI.primaryRoot ~= f5_arg0 and f5_arg1.name ~= "addmenu" then
		return LUI.UIElement.processEvent( LUI.primaryRoot, f5_arg1 )
	else
		
	end
end
 --[[ @ 0]]
LUI.CoDRoot.CloseAll = function ( f6_arg0, f6_arg1 )
	f6_arg0:removeAllChildren() --[[ @ 0]]
	return true
end
 --[[ @ 0]]
LUI.CoDRoot.CloseMenu = function ( f7_arg0, f7_arg1 )
	local f7_local0 = f7_arg0:getFirstChild() --[[ @ 0]]
	while f7_local0 ~= nil do
		if f7_local0.menuName == f7_arg1.menuName then
			f7_local0:close() --[[ @ 0]]
		end
		f7_local0 = f7_local0:getNextSibling() --[[ @ 0]]
	end
	return true
end
 --[[ @ 0]]
LUI.CoDRoot.PrintElementTree = function ( f8_arg0, f8_arg1 )
	if f8_arg1.depth < f8_arg1.maxDepth then
		local f8_local0 = "" --[[ @ 0]]
		for f8_local1 = 1 --[[ @ 0]], f8_arg1.depth, 1 do
			local f8_local4 = f8_local1 --[[ @ 0]]
			f8_local0 = f8_local0 .. "\t" --[[ @ 0]]
		end
		f8_arg1.depth = f8_arg1.depth + 1 --[[ @ 0]]
		print( f8_local0, f8_arg0.id ) --[[ @ 0]]
		local f8_local1 = f8_arg0:getFirstChild() --[[ @ 0]]
		while f8_local1 do
			local f8_local2 = f8_local1:getNextSibling() --[[ @ 0]]
			LUI.CoDRoot.PrintElementTree( f8_local1, f8_arg1 ) --[[ @ 0]]
			f8_local1 = f8_local2 --[[ @ 0]]
		end
	end
end
 --[[ @ 0]]
LUI.CoDRoot.new = function ( menu, controller )
	local self = LUI.UIRoot.new( menu, controller ) --[[ @ 0]]
	self.eventQueue = {} --[[ @ 0]]
	self.numEvents = 0 --[[ @ 0]]
	self:registerEventHandler( "process_events", LUI.CoDRoot.ProcessEvents ) --[[ @ 0]]
	self:registerEventHandler( "close_all", LUI.CoDRoot.CloseAll ) --[[ @ 0]]
	self:registerEventHandler( "close_menu", LUI.CoDRoot.CloseMenu ) --[[ @ 0]]
	self:registerEventHandler( "print_element_tree", LUI.CoDRoot.PrintElementTree ) --[[ @ 0]]
	self.propagateEvent = LUI.CoDRoot.PropagateEventToPrimaryRoot --[[ @ 0]]
	self.processEvent = LUI.CoDRoot.ProcessEvent --[[ @ 0]]
	if LUI.primaryRoot == nil then
		LUI.primaryRoot = self --[[ @ 0]]
		if LUI.DEV then
			LUI.DEV.InitEventHandlers( self ) --[[ @ 0]]
		end
	end
	if Rat and Rat.InitLui then
		Rat.InitLui() --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
