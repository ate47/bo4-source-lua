-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.timerWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.timerWidget.__defaultWidth = 248 --[[ @ 0]]
CoD.timerWidget.__defaultHeight = 138 --[[ @ 0]]
CoD.timerWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.timerWidget ) --[[ @ 0]]
	self.id = "timerWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local timerBG = LUI.UIImage.new( 0.5, 0.5, -152, 152, 0, 0, 7.5, 115.5 ) --[[ @ 0]]
	timerBG:setAlpha( 0.75 ) --[[ @ 0]]
	timerBG:setImage( RegisterImage( @"uie_zm_timer_bg" ) ) --[[ @ 0]]
	self:addElement( timerBG ) --[[ @ 0]]
	self.timerBG = timerBG --[[ @ 0]]
	
	local Timer = LUI.UIText.new( 0.5, 0.5, -100, 100, 0, 0, 39, 99 ) --[[ @ 0]]
	Timer:setRGB( 0.96, 0.66, 0 ) --[[ @ 0]]
	Timer:setTTF( "skorzhen" ) --[[ @ 0]]
	Timer:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_56250C6FCAC36BD4" ) ) --[[ @ 0]]
	Timer:setShaderVector( 0, 0.13, 0, 0, 0 ) --[[ @ 0]]
	Timer:setShaderVector( 1, 0, 0, 0, 1 ) --[[ @ 0]]
	Timer:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Timer:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Timer:subscribeToGlobalModel( f1_arg1, "WarzoneGlobal", "srProtoTimer", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Timer:setupEndTimer( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Timer ) --[[ @ 0]]
	self.Timer = Timer --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "CenteredTimerText",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.timerWidget.__onClose = function ( f4_arg0 )
	f4_arg0.Timer:close() --[[ @ 0]]
end
 --[[ @ 0]]
