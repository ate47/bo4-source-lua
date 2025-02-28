-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:753a1a33ed8c3d04" ) --[[ @ 0]]

CoD[@"hash_1687E459DB800FBA"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_1687E459DB800FBA"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_1687E459DB800FBA"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_1687E459DB800FBA"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_1687E459DB800FBA"] ) --[[ @ 0]]
	self.id = "callingcards_loot2_warriorcreatures" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bg = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	bg:setImage( RegisterImage( @"uie_ui_menu_callingcards_warriorcreatures_bg" ) ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local character02 = LUI.UIImage.new( 0, 0, 93, 157, 0, 0, 20, 108 ) --[[ @ 0]]
	character02:setImage( RegisterImage( @"uie_ui_menu_callingcards_warriorcreatures_char2" ) ) --[[ @ 0]]
	self:addElement( character02 ) --[[ @ 0]]
	self.character02 = character02 --[[ @ 0]]
	
	local helmet = LUI.UIImage.new( 0, 0, 0, 272, 0, 0, 48, 240 ) --[[ @ 0]]
	helmet:setImage( RegisterImage( @"uie_ui_menu_callingcards_warriorcreatures_helmet" ) ) --[[ @ 0]]
	self:addElement( helmet ) --[[ @ 0]]
	self.helmet = helmet --[[ @ 0]]
	
	local arrow = LUI.UIImage.new( 0, 0, 101, 397, 0, 0, -72, 120 ) --[[ @ 0]]
	arrow:setImage( RegisterImage( @"uie_ui_menu_callingcards_warriorcreatures_arrow" ) ) --[[ @ 0]]
	self:addElement( arrow ) --[[ @ 0]]
	self.arrow = arrow --[[ @ 0]]
	
	local character01 = CoD.callingcards_loot2_warriorcreatures_character.new( f1_arg0, f1_arg1, 0, 0, 294, 933, 0, 0, -88, 240 ) --[[ @ 0]]
	self:addElement( character01 ) --[[ @ 0]]
	self.character01 = character01 --[[ @ 0]]
	
	local arrow01 = LUI.UIImage.new( 0, 0, -55, 305, 0, 0, -144, -88 ) --[[ @ 0]]
	arrow01:setZRot( -38 ) --[[ @ 0]]
	arrow01:setImage( RegisterImage( @"uie_ui_menu_callingcards_warriorcreatures_arrow02" ) ) --[[ @ 0]]
	self:addElement( arrow01 ) --[[ @ 0]]
	self.arrow01 = arrow01 --[[ @ 0]]
	
	local arrow02 = LUI.UIImage.new( 0, 0, -379, -19, 0, 0, -124, -68 ) --[[ @ 0]]
	arrow02:setZRot( -29 ) --[[ @ 0]]
	arrow02:setImage( RegisterImage( @"uie_ui_menu_callingcards_warriorcreatures_arrow02" ) ) --[[ @ 0]]
	self:addElement( arrow02 ) --[[ @ 0]]
	self.arrow02 = arrow02 --[[ @ 0]]
	
	local arrow03 = LUI.UIImage.new( 0, 0, -55, 305, 0, 0, -144, -88 ) --[[ @ 0]]
	arrow03:setZRot( -38 ) --[[ @ 0]]
	arrow03:setImage( RegisterImage( @"uie_ui_menu_callingcards_warriorcreatures_arrow02" ) ) --[[ @ 0]]
	self:addElement( arrow03 ) --[[ @ 0]]
	self.arrow03 = arrow03 --[[ @ 0]]
	
	local arrow04 = LUI.UIImage.new( 0, 0, -379, -19, 0, 0, -124, -68 ) --[[ @ 0]]
	arrow04:setZRot( -29 ) --[[ @ 0]]
	arrow04:setImage( RegisterImage( @"uie_ui_menu_callingcards_warriorcreatures_arrow02" ) ) --[[ @ 0]]
	self:addElement( arrow04 ) --[[ @ 0]]
	self.arrow04 = arrow04 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_1687E459DB800FBA"].__resetProperties = function ( f2_arg0 )
	f2_arg0.character01:completeAnimation() --[[ @ 0]]
	f2_arg0.arrow01:completeAnimation() --[[ @ 0]]
	f2_arg0.arrow02:completeAnimation() --[[ @ 0]]
	f2_arg0.arrow04:completeAnimation() --[[ @ 0]]
	f2_arg0.arrow03:completeAnimation() --[[ @ 0]]
	f2_arg0.character01:setLeftRight( 0, 0, 294, 933 ) --[[ @ 0]]
	f2_arg0.arrow01:setLeftRight( 0, 0, -55, 305 ) --[[ @ 0]]
	f2_arg0.arrow01:setTopBottom( 0, 0, -144, -88 ) --[[ @ 0]]
	f2_arg0.arrow02:setLeftRight( 0, 0, -379, -19 ) --[[ @ 0]]
	f2_arg0.arrow02:setTopBottom( 0, 0, -124, -68 ) --[[ @ 0]]
	f2_arg0.arrow04:setLeftRight( 0, 0, -379, -19 ) --[[ @ 0]]
	f2_arg0.arrow04:setTopBottom( 0, 0, -124, -68 ) --[[ @ 0]]
	f2_arg0.arrow03:setLeftRight( 0, 0, -55, 305 ) --[[ @ 0]]
	f2_arg0.arrow03:setTopBottom( 0, 0, -144, -88 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_1687E459DB800FBA"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 1500, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f5_arg0:setLeftRight( 0, 0, 320, 959 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
						element:playClip( "DefaultClip" ) --[[ @ 0]]
						f3_arg0.clipFinished( element, event ) --[[ @ 0]]
					end ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.character01:playClip( "DefaultClip" ) --[[ @ 0]]
				f3_arg0.character01:beginAnimation( 1500, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f3_arg0.character01:setLeftRight( 0, 0, 260, 899 ) --[[ @ 0]]
				f3_arg0.character01:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.character01:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.character01:completeAnimation() --[[ @ 0]]
			f3_arg0.character01:setLeftRight( 0, 0, 320, 959 ) --[[ @ 0]]
			f3_local0( f3_arg0.character01 ) --[[ @ 0]]
			local f3_local1 = function ( f7_arg0 )
				f7_arg0:beginAnimation( 390, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f7_arg0:setLeftRight( 0, 0, 440, 800 ) --[[ @ 0]]
				f7_arg0:setTopBottom( 0, 0, 330, 386 ) --[[ @ 0]]
				f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.arrow01:beginAnimation( 310 ) --[[ @ 0]]
			f3_arg0.arrow01:setLeftRight( 0, 0, -55, 305 ) --[[ @ 0]]
			f3_arg0.arrow01:setTopBottom( 0, 0, -144, -88 ) --[[ @ 0]]
			f3_arg0.arrow01:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.arrow01:registerEventHandler( "transition_complete_keyframe", f3_local1 ) --[[ @ 0]]
			local f3_local2 = function ( f8_arg0 )
				f8_arg0:beginAnimation( 399, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f8_arg0:setLeftRight( 0, 0, 341, 701 ) --[[ @ 0]]
				f8_arg0:setTopBottom( 0, 0, 308, 364 ) --[[ @ 0]]
				f8_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.arrow02:beginAnimation( 600 ) --[[ @ 0]]
			f3_arg0.arrow02:setLeftRight( 0, 0, -339, 21 ) --[[ @ 0]]
			f3_arg0.arrow02:setTopBottom( 0, 0, -130, -74 ) --[[ @ 0]]
			f3_arg0.arrow02:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.arrow02:registerEventHandler( "transition_complete_keyframe", f3_local2 ) --[[ @ 0]]
			local f3_local3 = function ( f9_arg0 )
				f9_arg0:beginAnimation( 399 ) --[[ @ 0]]
				f9_arg0:setLeftRight( 0, 0, 341, 701 ) --[[ @ 0]]
				f9_arg0:setTopBottom( 0, 0, 308, 364 ) --[[ @ 0]]
				f9_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.arrow03:beginAnimation( 1720 ) --[[ @ 0]]
			f3_arg0.arrow03:setLeftRight( 0, 0, -253, 107 ) --[[ @ 0]]
			f3_arg0.arrow03:setTopBottom( 0, 0, -148, -92 ) --[[ @ 0]]
			f3_arg0.arrow03:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.arrow03:registerEventHandler( "transition_complete_keyframe", f3_local3 ) --[[ @ 0]]
			local f3_local4 = function ( f10_arg0 )
				f10_arg0:beginAnimation( 399 ) --[[ @ 0]]
				f10_arg0:setLeftRight( 0, 0, 341, 701 ) --[[ @ 0]]
				f10_arg0:setTopBottom( 0, 0, 308, 364 ) --[[ @ 0]]
				f10_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.arrow04:beginAnimation( 1390 ) --[[ @ 0]]
			f3_arg0.arrow04:setLeftRight( 0, 0, -339, 21 ) --[[ @ 0]]
			f3_arg0.arrow04:setTopBottom( 0, 0, -130, -74 ) --[[ @ 0]]
			f3_arg0.arrow04:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.arrow04:registerEventHandler( "transition_complete_keyframe", f3_local4 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD[@"hash_1687E459DB800FBA"].__onClose = function ( f11_arg0 )
	f11_arg0.character01:close() --[[ @ 0]]
end
 --[[ @ 0]]
