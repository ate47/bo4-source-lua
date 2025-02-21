-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:2a7644ae9dd32e52" ) --[[ @ 0]]

CoD.ui_icon_callingcards_assassin_attackergroup = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ui_icon_callingcards_assassin_attackergroup.__defaultWidth = 969 --[[ @ 0]]
CoD.ui_icon_callingcards_assassin_attackergroup.__defaultHeight = 312 --[[ @ 0]]
CoD.ui_icon_callingcards_assassin_attackergroup.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ui_icon_callingcards_assassin_attackergroup ) --[[ @ 0]]
	self.id = "ui_icon_callingcards_assassin_attackergroup" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local attacker = LUI.UIImage.new( 0, 0, 464.5, 968.5, 0, 0, 0, 312 ) --[[ @ 0]]
	attacker:setImage( RegisterImage( @"uie_ui_icon_callingcards_assassin_attacker" ) ) --[[ @ 0]]
	self:addElement( attacker ) --[[ @ 0]]
	self.attacker = attacker --[[ @ 0]]
	
	local hand = CoD.ui_icon_callingcards_assassin_attackerarmgroup.new( f1_arg0, f1_arg1, 0, 0, 542.5, 552.5, 0, 0, 108, 118 ) --[[ @ 0]]
	hand:setZRot( -20 ) --[[ @ 0]]
	self:addElement( hand ) --[[ @ 0]]
	self.hand = hand --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_assassin_attackergroup.__resetProperties = function ( f2_arg0 )
	f2_arg0.hand:completeAnimation() --[[ @ 0]]
	f2_arg0.hand:setZRot( -20 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_assassin_attackergroup.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						f6_arg0:beginAnimation( 1700 ) --[[ @ 0]]
						f6_arg0:setZRot( -25 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
							element:playClip( "DefaultClip" ) --[[ @ 0]]
							f3_arg0.clipFinished( element, event ) --[[ @ 0]]
						end ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 299 ) --[[ @ 0]]
					f5_arg0:setZRot( -18 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.hand:playClip( "DefaultClip" ) --[[ @ 0]]
				f3_arg0.hand:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.hand:setZRot( 2 ) --[[ @ 0]]
				f3_arg0.hand:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.hand:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.hand:completeAnimation() --[[ @ 0]]
			f3_arg0.hand:setZRot( -18 ) --[[ @ 0]]
			f3_local0( f3_arg0.hand ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ui_icon_callingcards_assassin_attackergroup.__onClose = function ( f8_arg0 )
	f8_arg0.hand:close() --[[ @ 0]]
end
 --[[ @ 0]]
