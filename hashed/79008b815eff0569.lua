-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.TrialTimer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TrialTimer.__defaultWidth = 248 --[[ @ 0]]
CoD.TrialTimer.__defaultHeight = 138 --[[ @ 0]]
CoD.TrialTimer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TrialTimer ) --[[ @ 0]]
	self.id = "TrialTimer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local timerBG = LUI.UIImage.new( 0.5, 0.5, -124, 124, 0, 0, 26, 138 ) --[[ @ 0]]
	timerBG:setAlpha( 0.75 ) --[[ @ 0]]
	timerBG:setImage( RegisterImage( @"uie_zm_timer_bg" ) ) --[[ @ 0]]
	self:addElement( timerBG ) --[[ @ 0]]
	self.timerBG = timerBG --[[ @ 0]]
	
	local objBg = LUI.UIImage.new( 0.5, 0.5, -70.5, 70.5, 0, 0, 42.5, 111.5 ) --[[ @ 0]]
	objBg:setImage( RegisterImage( @"hash_675D661B612187DF" ) ) --[[ @ 0]]
	self:addElement( objBg ) --[[ @ 0]]
	self.objBg = objBg --[[ @ 0]]
	
	local TimerText2 = LUI.UIText.new( 0.5, 0.5, -105, 1295, 0, 0, 11.5, 32.5 ) --[[ @ 0]]
	TimerText2:setRGB( ColorSet.BadgeText.r, ColorSet.BadgeText.g, ColorSet.BadgeText.b ) --[[ @ 0]]
	TimerText2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	TimerText2:setTTF( "skorzhen" ) --[[ @ 0]]
	TimerText2:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TimerText2:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	TimerText2:setBackingType( 2 ) --[[ @ 0]]
	TimerText2:setBackingColor( ColorSet.BadgeText.r, ColorSet.BadgeText.g, ColorSet.BadgeText.b ) --[[ @ 0]]
	TimerText2:setBackingXPadding( 7 ) --[[ @ 0]]
	TimerText2:setBackingYPadding( 7 ) --[[ @ 0]]
	TimerText2:setBackingImage( RegisterImage( @"hash_675D661B612187DF" ) ) --[[ @ 0]]
	self:addElement( TimerText2 ) --[[ @ 0]]
	self.TimerText2 = TimerText2 --[[ @ 0]]
	
	local TimerText = LUI.UIText.new( 0.5, 0.5, -105, 1295, 0, 0, 11.5, 32.5 ) --[[ @ 0]]
	TimerText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	TimerText:setTTF( "skorzhen" ) --[[ @ 0]]
	TimerText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TimerText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TimerText ) --[[ @ 0]]
	self.TimerText = TimerText --[[ @ 0]]
	
	local Timer = LUI.UIText.new( 0.5, 0.5, -100, 100, 0, 0, 62.5, 113.5 ) --[[ @ 0]]
	Timer:setRGB( 0.96, 0.66, 0 ) --[[ @ 0]]
	Timer:setTTF( "skorzhen" ) --[[ @ 0]]
	Timer:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_3336C1AE82B1520A" ) ) --[[ @ 0]]
	Timer:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Timer:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Timer:subscribeToGlobalModel( f1_arg1, "ZMHud", "trialsTimer", function ( model )
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
CoD.TrialTimer.__resetProperties = function ( f4_arg0 )
	f4_arg0.TimerText:completeAnimation() --[[ @ 0]]
	f4_arg0.TimerText2:completeAnimation() --[[ @ 0]]
	f4_arg0.TimerText:setLeftRight( 0.5, 0.5, -105, 1295 ) --[[ @ 0]]
	f4_arg0.TimerText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	f4_arg0.TimerText2:setLeftRight( 0.5, 0.5, -105, 1295 ) --[[ @ 0]]
	f4_arg0.TimerText2:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TrialTimer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	CenteredTimerText = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.TimerText2:completeAnimation() --[[ @ 0]]
			f6_arg0.TimerText2:setLeftRight( 0.5, 0.5, -700, 700 ) --[[ @ 0]]
			f6_arg0.TimerText2:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.TimerText2 ) --[[ @ 0]]
			f6_arg0.TimerText:completeAnimation() --[[ @ 0]]
			f6_arg0.TimerText:setLeftRight( 0.5, 0.5, -700, 700 ) --[[ @ 0]]
			f6_arg0.TimerText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.TimerText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.TrialTimer.__onClose = function ( f7_arg0 )
	f7_arg0.Timer:close() --[[ @ 0]]
end
 --[[ @ 0]]
