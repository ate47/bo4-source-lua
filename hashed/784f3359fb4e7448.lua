-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
LUI.UITimer = {} --[[ @ 0]]
LUI.UITimer.priority = 10000 --[[ @ 0]]
LUI.UITimer.create = function ( menu, controller )
	local self = LUI.UIElement.new( 0, 0, 0, 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self.id = "LUITimer" --[[ @ 0]]
	self:setPriority( LUI.UITimer.priority ) --[[ @ 0]]
	self.reset = LUI.UITimer.Reset --[[ @ 0]]
	self.processNow = LUI.UITimer.ProcessNow --[[ @ 0]]
	self.interval = math.max( 1, menu ) --[[ @ 0]]
	self.disposable = controller --[[ @ 0]]
	return self
end
 --[[ @ 0]]
LUI.UITimer.new = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3 )
	local f2_local0 = LUI.UITimer.create( f2_arg0, f2_arg2 ) --[[ @ 0]]
	if type( f2_arg1 ) == "string" then
		f2_local0.timerEvent = {
			name = f2_arg1,
			timer = f2_local0
		} --[[ @ 0]]
	else
		f2_arg1.timer = f2_local0 --[[ @ 0]]
		f2_local0.timerEvent = f2_arg1 --[[ @ 0]]
	end
	f2_local0.timerEventTarget = f2_arg3 --[[ @ 0]]
	f2_local0:reset() --[[ @ 0]]
	return f2_local0
end
 --[[ @ 0]]
LUI.UITimer.newElementTimer = function ( f3_arg0, f3_arg1, f3_arg2, ... )
	local f3_local0 = LUI.UITimer.create( f3_arg0, f3_arg1 ) --[[ @ 0]]
	local f3_local1 = {
		n = select( "#", ... ),
		...
	} --[[ @ 0]]
	f3_local0.timerEventFunction = function ( f4_arg0 )
		local f4_local0 = LUI.ShallowCopy( f3_local1 ) --[[ @ 0]]
		table.insert( f4_local0, f4_arg0 ) --[[ @ 0]]
		f3_arg2( unpack( f4_local0 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f3_local0:reset() --[[ @ 0]]
	return f3_local0
end
 --[[ @ 0]]
LUI.UITimer.Reset = function ( f5_arg0 )
	f5_arg0:registerEventHandler( "transition_complete_keyframe", nil ) --[[ @ 0]]
	f5_arg0:beginAnimation( "keyframe", f5_arg0.interval, false, false, CoD.TweenType.Linear ) --[[ @ 0]]
	f5_arg0:registerEventHandler( "transition_complete_keyframe", LUI.UITimer.Tick ) --[[ @ 0]]
end
 --[[ @ 0]]
LUI.UITimer.Tick = function ( f6_arg0, f6_arg1 )
	local f6_local0 = nil --[[ @ 0]]
	if f6_arg0.timerEventTarget ~= nil then
		f6_local0 = f6_arg0.timerEventTarget --[[ @ 0]]
	else
		f6_local0 = f6_arg0:getParent() --[[ @ 0]]
	end
	local f6_local1 = f6_arg0.timerEvent or {} --[[ @ 0]]
	f6_local1.timeElapsed = f6_arg0.interval + f6_arg1.lateness --[[ @ 0]]
	if f6_arg0.timerEventFunction then
		f6_arg0.timerEventFunction( f6_local1 ) --[[ @ 0]]
	elseif f6_local1 then
		f6_local0:processEvent( f6_local1 ) --[[ @ 0]]
	end
	if f6_arg0.disposable then
		f6_arg0:close() --[[ @ 0]]
	else
		f6_arg0:reset() --[[ @ 0]]
	end
end
 --[[ @ 0]]
LUI.UITimer.ProcessNow = function ( f7_arg0 )
	local f7_local0 = nil --[[ @ 0]]
	if f7_arg0.timerEventTarget ~= nil then
		f7_local0 = f7_arg0.timerEventTarget --[[ @ 0]]
	else
		f7_local0 = f7_arg0:getParent() --[[ @ 0]]
	end
	local f7_local1 = f7_arg0.timerEvent or {} --[[ @ 0]]
	f7_local1.timeElapsed = f7_arg0.interval --[[ @ 0]]
	if f7_arg0.timerEventFunction then
		f7_arg0.timerEventFunction( f7_local1 ) --[[ @ 0]]
	elseif f7_local1 then
		f7_local0:processEvent( f7_local1 ) --[[ @ 0]]
	end
	if f7_arg0.disposable then
		f7_arg0:close() --[[ @ 0]]
	else
		f7_arg0:reset() --[[ @ 0]]
	end
end
 --[[ @ 0]]
