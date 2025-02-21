-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:780c1e32038fe94" ) --[[ @ 0]]
require( "x64:54397d3e9a579e9c" ) --[[ @ 0]]
require( "x64:65a80a5001fdb28e" ) --[[ @ 0]]

CoD.ui_icon_callingcards_dystopian_character = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_character.__defaultWidth = 272 --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_character.__defaultHeight = 261 --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_character.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ui_icon_callingcards_dystopian_character ) --[[ @ 0]]
	self.id = "ui_icon_callingcards_dystopian_character" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local arm = CoD.ui_icon_callingcards_dystopian_armmove.new( f1_arg0, f1_arg1, 0, 0, 106.5, 116.5, 0, 0, 92.5, 102.5 ) --[[ @ 0]]
	self:addElement( arm ) --[[ @ 0]]
	self.arm = arm --[[ @ 0]]
	
	local body = CoD.ui_icon_callingcards_dystopian_bodyglow.new( f1_arg0, f1_arg1, 0, 0, 0, 272, 0, 0, 60.5, 260.5 ) --[[ @ 0]]
	self:addElement( body ) --[[ @ 0]]
	self.body = body --[[ @ 0]]
	
	local uiiconcallingcardsdystopianheadglow = CoD.ui_icon_callingcards_dystopian_headglow.new( f1_arg0, f1_arg1, 0, 0, 92.5, 188.5, 0, 0, 0, 112 ) --[[ @ 0]]
	self:addElement( uiiconcallingcardsdystopianheadglow ) --[[ @ 0]]
	self.uiiconcallingcardsdystopianheadglow = uiiconcallingcardsdystopianheadglow --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_character.__resetProperties = function ( f2_arg0 )
	f2_arg0.arm:completeAnimation() --[[ @ 0]]
	f2_arg0.body:completeAnimation() --[[ @ 0]]
	f2_arg0.uiiconcallingcardsdystopianheadglow:completeAnimation() --[[ @ 0]]
	f2_arg0.arm:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.uiiconcallingcardsdystopianheadglow:setLeftRight( 0, 0, 92.5, 188.5 ) --[[ @ 0]]
	f2_arg0.uiiconcallingcardsdystopianheadglow:setTopBottom( 0, 0, 0, 112 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_character.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 1500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f5_arg0:setZRot( 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
						element:playClip( "DefaultClip" ) --[[ @ 0]]
						f3_arg0.clipFinished( element, event ) --[[ @ 0]]
					end ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.arm:playClip( "DefaultClip" ) --[[ @ 0]]
				f3_arg0.arm:beginAnimation( 1500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f3_arg0.arm:setZRot( 24 ) --[[ @ 0]]
				f3_arg0.arm:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.arm:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.arm:completeAnimation() --[[ @ 0]]
			f3_arg0.arm:setZRot( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.arm ) --[[ @ 0]]
			f3_arg0.body:completeAnimation() --[[ @ 0]]
			f3_arg0.body:playClip( "DefaultClip" ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.body ) --[[ @ 0]]
			local f3_local1 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					local f8_local0 = function ( f9_arg0 )
						local f9_local0 = function ( f10_arg0 )
							local f10_local0 = function ( f11_arg0 )
								local f11_local0 = function ( f12_arg0 )
									f12_arg0:beginAnimation( 1100 ) --[[ @ 0]]
									f12_arg0:setTopBottom( 0, 0, 0, 112 ) --[[ @ 0]]
									f12_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
										element:playClip( "DefaultClip" ) --[[ @ 0]]
										f3_arg0.clipFinished( element, event ) --[[ @ 0]]
									end ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f11_arg0:beginAnimation( 199 ) --[[ @ 0]]
								f11_arg0:setTopBottom( 0, 0, -1, 111 ) --[[ @ 0]]
								f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f10_arg0:beginAnimation( 200 ) --[[ @ 0]]
							f10_arg0:setTopBottom( 0, 0, 5, 117 ) --[[ @ 0]]
							f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f9_arg0:beginAnimation( 1100 ) --[[ @ 0]]
						f9_arg0:setTopBottom( 0, 0, 4.15, 116.15 ) --[[ @ 0]]
						f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f8_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f8_arg0:setTopBottom( 0, 0, -0.5, 111.5 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.uiiconcallingcardsdystopianheadglow:playClip( "DefaultClip" ) --[[ @ 0]]
				f3_arg0.uiiconcallingcardsdystopianheadglow:beginAnimation( 200 ) --[[ @ 0]]
				f3_arg0.uiiconcallingcardsdystopianheadglow:setTopBottom( 0, 0, 5, 117 ) --[[ @ 0]]
				f3_arg0.uiiconcallingcardsdystopianheadglow:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.uiiconcallingcardsdystopianheadglow:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.uiiconcallingcardsdystopianheadglow:completeAnimation() --[[ @ 0]]
			f3_arg0.uiiconcallingcardsdystopianheadglow:setLeftRight( 0, 0, 92.5, 188.5 ) --[[ @ 0]]
			f3_arg0.uiiconcallingcardsdystopianheadglow:setTopBottom( 0, 0, 0, 112 ) --[[ @ 0]]
			f3_local1( f3_arg0.uiiconcallingcardsdystopianheadglow ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_character.__onClose = function ( f14_arg0 )
	f14_arg0.arm:close() --[[ @ 0]]
	f14_arg0.body:close() --[[ @ 0]]
	f14_arg0.uiiconcallingcardsdystopianheadglow:close() --[[ @ 0]]
end
 --[[ @ 0]]
