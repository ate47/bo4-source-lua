-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:6730a2fde3110a47" ) --[[ @ 0]]

CoD[@"hash_4C92A2CB5341FC62"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_4C92A2CB5341FC62"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_4C92A2CB5341FC62"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_4C92A2CB5341FC62"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_4C92A2CB5341FC62"] ) --[[ @ 0]]
	self.id = "CallingCards_Robbery" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local background = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	background:setImage( RegisterImage( @"uie_ui_menu_callingcards_robbery_bg" ) ) --[[ @ 0]]
	self:addElement( background ) --[[ @ 0]]
	self.background = background --[[ @ 0]]
	
	local Robber = LUI.UIImage.new( 0, 0, 219, 947, 0, 0, -32, 232 ) --[[ @ 0]]
	Robber:setImage( RegisterImage( @"uie_ui_menu_callingcards_robbery_hero" ) ) --[[ @ 0]]
	self:addElement( Robber ) --[[ @ 0]]
	self.Robber = Robber --[[ @ 0]]
	
	local Diamond = LUI.UIImage.new( 0, 0, 219, 563, 0, 0, 39, 263 ) --[[ @ 0]]
	Diamond:setImage( RegisterImage( @"uie_ui_menu_callingcards_robbery_jewel" ) ) --[[ @ 0]]
	self:addElement( Diamond ) --[[ @ 0]]
	self.Diamond = Diamond --[[ @ 0]]
	
	local uiiconcallingcardsrobberlaser = CoD.ui_icon_callingcards_robber_laser.new( f1_arg0, f1_arg1, 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	self:addElement( uiiconcallingcardsrobberlaser ) --[[ @ 0]]
	self.uiiconcallingcardsrobberlaser = uiiconcallingcardsrobberlaser --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_4C92A2CB5341FC62"].__resetProperties = function ( f2_arg0 )
	f2_arg0.uiiconcallingcardsrobberlaser:completeAnimation() --[[ @ 0]]
	f2_arg0.Robber:completeAnimation() --[[ @ 0]]
	f2_arg0.Robber:setTopBottom( 0, 0, -32, 232 ) --[[ @ 0]]
	f2_arg0.Robber:setZRot( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_4C92A2CB5341FC62"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						f6_arg0:beginAnimation( 1100 ) --[[ @ 0]]
						f6_arg0:setTopBottom( 0, 0, -32, 232 ) --[[ @ 0]]
						f6_arg0:setZRot( 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f5_arg0:setTopBottom( 0, 0, -82, 182 ) --[[ @ 0]]
					f5_arg0:setZRot( -3 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Robber:beginAnimation( 1400, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f3_arg0.Robber:setTopBottom( 0, 0, -106, 158 ) --[[ @ 0]]
				f3_arg0.Robber:setZRot( -3 ) --[[ @ 0]]
				f3_arg0.Robber:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Robber:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Robber:completeAnimation() --[[ @ 0]]
			f3_arg0.Robber:setTopBottom( 0, 0, -32, 232 ) --[[ @ 0]]
			f3_arg0.Robber:setZRot( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.Robber ) --[[ @ 0]]
			f3_arg0.uiiconcallingcardsrobberlaser:completeAnimation() --[[ @ 0]]
			f3_arg0.uiiconcallingcardsrobberlaser:playClip( "DefaultClip" ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.uiiconcallingcardsrobberlaser ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD[@"hash_4C92A2CB5341FC62"].__onClose = function ( f7_arg0 )
	f7_arg0.uiiconcallingcardsrobberlaser:close() --[[ @ 0]]
end
 --[[ @ 0]]
