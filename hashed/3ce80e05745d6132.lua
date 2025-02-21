-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:4af3f0ec34713d92" ) --[[ @ 0]]

CoD.ui_icon_callingcards_assassin_attackerarmgroup = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ui_icon_callingcards_assassin_attackerarmgroup.__defaultWidth = 10 --[[ @ 0]]
CoD.ui_icon_callingcards_assassin_attackerarmgroup.__defaultHeight = 10 --[[ @ 0]]
CoD.ui_icon_callingcards_assassin_attackerarmgroup.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ui_icon_callingcards_assassin_attackerarmgroup ) --[[ @ 0]]
	self.id = "ui_icon_callingcards_assassin_attackerarmgroup" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local arm = LUI.UIImage.new( 0, 0, -330, 46, 0, 0, -47, 57 ) --[[ @ 0]]
	arm:setImage( RegisterImage( @"uie_ui_icon_callingcards_assassin_arm" ) ) --[[ @ 0]]
	self:addElement( arm ) --[[ @ 0]]
	self.arm = arm --[[ @ 0]]
	
	local hand = CoD.ui_icon_callingcards_assassin_attackerhand.new( f1_arg0, f1_arg1, 0, 0, -322.5, -312.5, 0, 0, 0, 10 ) --[[ @ 0]]
	hand:setZRot( 14 ) --[[ @ 0]]
	self:addElement( hand ) --[[ @ 0]]
	self.hand = hand --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_assassin_attackerarmgroup.__resetProperties = function ( f2_arg0 )
	f2_arg0.hand:completeAnimation() --[[ @ 0]]
	f2_arg0.hand:setZRot( 14 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_assassin_attackerarmgroup.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 2000 ) --[[ @ 0]]
					f5_arg0:setZRot( 35 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.hand:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.hand:setZRot( 58 ) --[[ @ 0]]
				f3_arg0.hand:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.hand:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.hand:completeAnimation() --[[ @ 0]]
			f3_arg0.hand:setZRot( 35 ) --[[ @ 0]]
			f3_local0( f3_arg0.hand ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ui_icon_callingcards_assassin_attackerarmgroup.__onClose = function ( f6_arg0 )
	f6_arg0.hand:close() --[[ @ 0]]
end
 --[[ @ 0]]
