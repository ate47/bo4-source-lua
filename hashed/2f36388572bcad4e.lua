-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:2b7079cabff5b7aa" ) --[[ @ 0]]

CoD.ui_icon_callingcards_stpatricks1 = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ui_icon_callingcards_stpatricks1.__defaultWidth = 960 --[[ @ 0]]
CoD.ui_icon_callingcards_stpatricks1.__defaultHeight = 240 --[[ @ 0]]
CoD.ui_icon_callingcards_stpatricks1.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ui_icon_callingcards_stpatricks1 ) --[[ @ 0]]
	self.id = "ui_icon_callingcards_stpatricks1" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bg = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	bg:setImage( RegisterImage( @"uie_ui_menu_callingcards_stpatricks_f1_bg" ) ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local clouds = LUI.UIImage.new( 0, 0, -168.5, 1061.5, 0, 0, -148, 364 ) --[[ @ 0]]
	clouds:setImage( RegisterImage( @"uie_ui_menu_callingcards_stpatricks_f1_clouds" ) ) --[[ @ 0]]
	self:addElement( clouds ) --[[ @ 0]]
	self.clouds = clouds --[[ @ 0]]
	
	local speedlines = CoD.ui_icon_callingcards_stpatricks_speedlines.new( f1_arg0, f1_arg1, 0, 0, -135, 1095, 0, 0, -265.5, 462.5 ) --[[ @ 0]]
	self:addElement( speedlines ) --[[ @ 0]]
	self.speedlines = speedlines --[[ @ 0]]
	
	local ruin = LUI.UIImage.new( 0, 0, 358, 566, 0, 0, 8, 232 ) --[[ @ 0]]
	ruin:setScale( 0.5, 0.5 ) --[[ @ 0]]
	ruin:setImage( RegisterImage( @"uie_ui_menu_callingcards_stpatricks_f1_ruin" ) ) --[[ @ 0]]
	self:addElement( ruin ) --[[ @ 0]]
	self.ruin = ruin --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_stpatricks1.__resetProperties = function ( f2_arg0 )
	f2_arg0.speedlines:completeAnimation() --[[ @ 0]]
	f2_arg0.clouds:completeAnimation() --[[ @ 0]]
	f2_arg0.ruin:completeAnimation() --[[ @ 0]]
	f2_arg0.speedlines:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.speedlines:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.speedlines:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.clouds:setLeftRight( 0, 0, -168.5, 1061.5 ) --[[ @ 0]]
	f2_arg0.clouds:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.ruin:setScale( 0.5, 0.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_stpatricks1.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				f3_arg0.clouds:beginAnimation( 1000, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f3_arg0.clouds:setLeftRight( 0, 0, -158.5, 1071.5 ) --[[ @ 0]]
				f3_arg0.clouds:setScale( 0.9, 0.9 ) --[[ @ 0]]
				f3_arg0.clouds:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.clouds:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.clouds:completeAnimation() --[[ @ 0]]
			f3_arg0.clouds:setLeftRight( 0, 0, -138.5, 1091.5 ) --[[ @ 0]]
			f3_arg0.clouds:setScale( 1, 1 ) --[[ @ 0]]
			f3_local0( f3_arg0.clouds ) --[[ @ 0]]
			local f3_local1 = function ( f5_arg0 )
				f3_arg0.speedlines:playClip( "DefaultClip" ) --[[ @ 0]]
				f3_arg0.speedlines:beginAnimation( 1000, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f3_arg0.speedlines:setAlpha( 0.6 ) --[[ @ 0]]
				f3_arg0.speedlines:setScale( 1, 1 ) --[[ @ 0]]
				f3_arg0.speedlines:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.speedlines:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "DefaultClip" ) --[[ @ 0]]
					f3_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.speedlines:completeAnimation() --[[ @ 0]]
			f3_arg0.speedlines:setAlpha( 0.4 ) --[[ @ 0]]
			f3_arg0.speedlines:setZRot( 0 ) --[[ @ 0]]
			f3_arg0.speedlines:setScale( 0.7, 0.7 ) --[[ @ 0]]
			f3_local1( f3_arg0.speedlines ) --[[ @ 0]]
			local f3_local2 = function ( f7_arg0 )
				f3_arg0.ruin:beginAnimation( 1000, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f3_arg0.ruin:setScale( 2, 2 ) --[[ @ 0]]
				f3_arg0.ruin:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.ruin:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.ruin:completeAnimation() --[[ @ 0]]
			f3_arg0.ruin:setScale( 0.7, 0.7 ) --[[ @ 0]]
			f3_local2( f3_arg0.ruin ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ui_icon_callingcards_stpatricks1.__onClose = function ( f8_arg0 )
	f8_arg0.speedlines:close() --[[ @ 0]]
end
 --[[ @ 0]]
