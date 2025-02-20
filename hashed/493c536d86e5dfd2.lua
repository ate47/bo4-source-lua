-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:3c409b01f207c25a" ) --[[ @ 0]]

CoD.ArenaRubyProgressThreeWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArenaRubyProgressThreeWidget.__defaultWidth = 926 --[[ @ 0]]
CoD.ArenaRubyProgressThreeWidget.__defaultHeight = 40 --[[ @ 0]]
CoD.ArenaRubyProgressThreeWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ArenaRubyProgressThreeWidget ) --[[ @ 0]]
	self.id = "ArenaRubyProgressThreeWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local RedBar01 = CoD.ArenaRubyProgressRedBar.new( f1_arg0, f1_arg1, 0, 0, -90, 390, 0, 0, -7, 43 ) --[[ @ 0]]
	self:addElement( RedBar01 ) --[[ @ 0]]
	self.RedBar01 = RedBar01 --[[ @ 0]]
	
	local RedBar03 = CoD.ArenaRubyProgressRedBar.new( f1_arg0, f1_arg1, 0, 0, 536, 1016, 0, 0, -7, 43 ) --[[ @ 0]]
	self:addElement( RedBar03 ) --[[ @ 0]]
	self.RedBar03 = RedBar03 --[[ @ 0]]
	
	local RedBar02 = CoD.ArenaRubyProgressRedBar.new( f1_arg0, f1_arg1, 0, 0, 223, 703, 0, 0, -7, 43 ) --[[ @ 0]]
	self:addElement( RedBar02 ) --[[ @ 0]]
	self.RedBar02 = RedBar02 --[[ @ 0]]
	
	local frame1 = LUI.UIImage.new( 0, 0, 130, 170, 0, 0, 0, 40 ) --[[ @ 0]]
	frame1:setImage( RegisterImage( @"uie_ui_menu_arena_rubyframe" ) ) --[[ @ 0]]
	self:addElement( frame1 ) --[[ @ 0]]
	self.frame1 = frame1 --[[ @ 0]]
	
	local gem1 = LUI.UIImage.new( 0, 0, 130, 170, 0, 0, 0, 40 ) --[[ @ 0]]
	gem1:setAlpha( 0 ) --[[ @ 0]]
	gem1:setImage( RegisterImage( @"uie_ui_menu_arena_ruby" ) ) --[[ @ 0]]
	self:addElement( gem1 ) --[[ @ 0]]
	self.gem1 = gem1 --[[ @ 0]]
	
	local frame2 = LUI.UIImage.new( 0, 0, 443, 483, 0, 0, 0, 40 ) --[[ @ 0]]
	frame2:setImage( RegisterImage( @"uie_ui_menu_arena_rubyframe" ) ) --[[ @ 0]]
	self:addElement( frame2 ) --[[ @ 0]]
	self.frame2 = frame2 --[[ @ 0]]
	
	local gem2 = LUI.UIImage.new( 0, 0, 443, 483, 0, 0, 0, 40 ) --[[ @ 0]]
	gem2:setAlpha( 0 ) --[[ @ 0]]
	gem2:setImage( RegisterImage( @"uie_ui_menu_arena_ruby" ) ) --[[ @ 0]]
	self:addElement( gem2 ) --[[ @ 0]]
	self.gem2 = gem2 --[[ @ 0]]
	
	local frame3 = LUI.UIImage.new( 0, 0, 756, 796, 0, 0, 0, 40 ) --[[ @ 0]]
	frame3:setImage( RegisterImage( @"uie_ui_menu_arena_rubyframe" ) ) --[[ @ 0]]
	self:addElement( frame3 ) --[[ @ 0]]
	self.frame3 = frame3 --[[ @ 0]]
	
	local gem3 = LUI.UIImage.new( 0, 0, 756, 796, 0, 0, 0, 40 ) --[[ @ 0]]
	gem3:setAlpha( 0 ) --[[ @ 0]]
	gem3:setImage( RegisterImage( @"uie_ui_menu_arena_ruby" ) ) --[[ @ 0]]
	self:addElement( gem3 ) --[[ @ 0]]
	self.gem3 = gem3 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ArenaRubyProgressThreeWidget.__resetProperties = function ( f2_arg0 )
	f2_arg0.RedBar01:completeAnimation() --[[ @ 0]]
	f2_arg0.RedBar02:completeAnimation() --[[ @ 0]]
	f2_arg0.RedBar03:completeAnimation() --[[ @ 0]]
	f2_arg0.gem1:completeAnimation() --[[ @ 0]]
	f2_arg0.gem2:completeAnimation() --[[ @ 0]]
	f2_arg0.gem3:completeAnimation() --[[ @ 0]]
	f2_arg0.RedBar01.RedBar01:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.RedBar01.FocusGlow01:setAlpha( 0.2 ) --[[ @ 0]]
	f2_arg0.RedBar01.Dot01:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.RedBar02.RedBar01:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.RedBar02.FocusGlow01:setAlpha( 0.2 ) --[[ @ 0]]
	f2_arg0.RedBar02.Dot01:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.RedBar03.RedBar01:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.RedBar03.FocusGlow01:setAlpha( 0.2 ) --[[ @ 0]]
	f2_arg0.RedBar03.Dot01:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.gem1:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.gem2:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.gem3:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ArenaRubyProgressThreeWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f3_arg0.RedBar01:completeAnimation() --[[ @ 0]]
			f3_arg0.RedBar01.RedBar01:completeAnimation() --[[ @ 0]]
			f3_arg0.RedBar01.FocusGlow01:completeAnimation() --[[ @ 0]]
			f3_arg0.RedBar01.Dot01:completeAnimation() --[[ @ 0]]
			f3_arg0.RedBar01.RedBar01:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.RedBar01.FocusGlow01:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.RedBar01.Dot01:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.RedBar01 ) --[[ @ 0]]
			f3_arg0.RedBar03:completeAnimation() --[[ @ 0]]
			f3_arg0.RedBar03.RedBar01:completeAnimation() --[[ @ 0]]
			f3_arg0.RedBar03.FocusGlow01:completeAnimation() --[[ @ 0]]
			f3_arg0.RedBar03.Dot01:completeAnimation() --[[ @ 0]]
			f3_arg0.RedBar03.RedBar01:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.RedBar03.FocusGlow01:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.RedBar03.Dot01:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.RedBar03 ) --[[ @ 0]]
			f3_arg0.RedBar02:completeAnimation() --[[ @ 0]]
			f3_arg0.RedBar02.RedBar01:completeAnimation() --[[ @ 0]]
			f3_arg0.RedBar02.FocusGlow01:completeAnimation() --[[ @ 0]]
			f3_arg0.RedBar02.Dot01:completeAnimation() --[[ @ 0]]
			f3_arg0.RedBar02.RedBar01:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.RedBar02.FocusGlow01:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.RedBar02.Dot01:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.RedBar02 ) --[[ @ 0]]
		end
	},
	OneRuby = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				f4_arg0.RedBar01:beginAnimation( 300 ) --[[ @ 0]]
				f4_arg0.RedBar01.RedBar01:beginAnimation( 300 ) --[[ @ 0]]
				f4_arg0.RedBar01.FocusGlow01:beginAnimation( 300 ) --[[ @ 0]]
				f4_arg0.RedBar01.Dot01:beginAnimation( 300 ) --[[ @ 0]]
				f4_arg0.RedBar01.RedBar01:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.RedBar01.FocusGlow01:setAlpha( 0.2 ) --[[ @ 0]]
				f4_arg0.RedBar01.Dot01:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.RedBar01:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.RedBar01:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.RedBar01:completeAnimation() --[[ @ 0]]
			f4_arg0.RedBar01.RedBar01:completeAnimation() --[[ @ 0]]
			f4_arg0.RedBar01.FocusGlow01:completeAnimation() --[[ @ 0]]
			f4_arg0.RedBar01.Dot01:completeAnimation() --[[ @ 0]]
			f4_arg0.RedBar01.RedBar01:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.RedBar01.FocusGlow01:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.RedBar01.Dot01:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.RedBar01 ) --[[ @ 0]]
			f4_arg0.RedBar03:completeAnimation() --[[ @ 0]]
			f4_arg0.RedBar03.RedBar01:completeAnimation() --[[ @ 0]]
			f4_arg0.RedBar03.FocusGlow01:completeAnimation() --[[ @ 0]]
			f4_arg0.RedBar03.Dot01:completeAnimation() --[[ @ 0]]
			f4_arg0.RedBar03.RedBar01:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.RedBar03.FocusGlow01:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.RedBar03.Dot01:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.RedBar03 ) --[[ @ 0]]
			f4_arg0.RedBar02:completeAnimation() --[[ @ 0]]
			f4_arg0.RedBar02.RedBar01:completeAnimation() --[[ @ 0]]
			f4_arg0.RedBar02.FocusGlow01:completeAnimation() --[[ @ 0]]
			f4_arg0.RedBar02.Dot01:completeAnimation() --[[ @ 0]]
			f4_arg0.RedBar02.RedBar01:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.RedBar02.FocusGlow01:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.RedBar02.Dot01:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.RedBar02 ) --[[ @ 0]]
			local f4_local1 = function ( f6_arg0 )
				f4_arg0.gem1:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f4_arg0.gem1:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.gem1:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.gem1:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.gem1:completeAnimation() --[[ @ 0]]
			f4_arg0.gem1:setAlpha( 0 ) --[[ @ 0]]
			f4_local1( f4_arg0.gem1 ) --[[ @ 0]]
		end
	},
	TwoRubies = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f7_arg0.RedBar01:completeAnimation() --[[ @ 0]]
			f7_arg0.RedBar01.RedBar01:completeAnimation() --[[ @ 0]]
			f7_arg0.RedBar01.FocusGlow01:completeAnimation() --[[ @ 0]]
			f7_arg0.RedBar01.Dot01:completeAnimation() --[[ @ 0]]
			f7_arg0.RedBar01.RedBar01:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.RedBar01.FocusGlow01:setAlpha( 0.2 ) --[[ @ 0]]
			f7_arg0.RedBar01.Dot01:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.RedBar01 ) --[[ @ 0]]
			f7_arg0.RedBar03:completeAnimation() --[[ @ 0]]
			f7_arg0.RedBar03.RedBar01:completeAnimation() --[[ @ 0]]
			f7_arg0.RedBar03.FocusGlow01:completeAnimation() --[[ @ 0]]
			f7_arg0.RedBar03.Dot01:completeAnimation() --[[ @ 0]]
			f7_arg0.RedBar03.RedBar01:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.RedBar03.FocusGlow01:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.RedBar03.Dot01:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.RedBar03 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.RedBar02:beginAnimation( 300 ) --[[ @ 0]]
				f7_arg0.RedBar02.RedBar01:beginAnimation( 300 ) --[[ @ 0]]
				f7_arg0.RedBar02.FocusGlow01:beginAnimation( 300 ) --[[ @ 0]]
				f7_arg0.RedBar02.Dot01:beginAnimation( 300 ) --[[ @ 0]]
				f7_arg0.RedBar02.RedBar01:setAlpha( 1 ) --[[ @ 0]]
				f7_arg0.RedBar02.FocusGlow01:setAlpha( 0.2 ) --[[ @ 0]]
				f7_arg0.RedBar02.Dot01:setAlpha( 1 ) --[[ @ 0]]
				f7_arg0.RedBar02:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.RedBar02:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.RedBar02:completeAnimation() --[[ @ 0]]
			f7_arg0.RedBar02.RedBar01:completeAnimation() --[[ @ 0]]
			f7_arg0.RedBar02.FocusGlow01:completeAnimation() --[[ @ 0]]
			f7_arg0.RedBar02.Dot01:completeAnimation() --[[ @ 0]]
			f7_arg0.RedBar02.RedBar01:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.RedBar02.FocusGlow01:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.RedBar02.Dot01:setAlpha( 0 ) --[[ @ 0]]
			f7_local0( f7_arg0.RedBar02 ) --[[ @ 0]]
			f7_arg0.gem1:completeAnimation() --[[ @ 0]]
			f7_arg0.gem1:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.gem1 ) --[[ @ 0]]
			local f7_local1 = function ( f9_arg0 )
				f7_arg0.gem2:beginAnimation( 300 ) --[[ @ 0]]
				f7_arg0.gem2:setAlpha( 1 ) --[[ @ 0]]
				f7_arg0.gem2:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.gem2:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.gem2:completeAnimation() --[[ @ 0]]
			f7_arg0.gem2:setAlpha( 0 ) --[[ @ 0]]
			f7_local1( f7_arg0.gem2 ) --[[ @ 0]]
		end
	},
	ThreeRubies = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f10_arg0.RedBar01:completeAnimation() --[[ @ 0]]
			f10_arg0.RedBar01.RedBar01:completeAnimation() --[[ @ 0]]
			f10_arg0.RedBar01.FocusGlow01:completeAnimation() --[[ @ 0]]
			f10_arg0.RedBar01.Dot01:completeAnimation() --[[ @ 0]]
			f10_arg0.RedBar01.RedBar01:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.RedBar01.FocusGlow01:setAlpha( 0.2 ) --[[ @ 0]]
			f10_arg0.RedBar01.Dot01:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.RedBar01 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				f10_arg0.RedBar03:beginAnimation( 300 ) --[[ @ 0]]
				f10_arg0.RedBar03.RedBar01:beginAnimation( 300 ) --[[ @ 0]]
				f10_arg0.RedBar03.FocusGlow01:beginAnimation( 300 ) --[[ @ 0]]
				f10_arg0.RedBar03.Dot01:beginAnimation( 300 ) --[[ @ 0]]
				f10_arg0.RedBar03.RedBar01:setAlpha( 1 ) --[[ @ 0]]
				f10_arg0.RedBar03.FocusGlow01:setAlpha( 0.2 ) --[[ @ 0]]
				f10_arg0.RedBar03.Dot01:setAlpha( 1 ) --[[ @ 0]]
				f10_arg0.RedBar03:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.RedBar03:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.RedBar03:completeAnimation() --[[ @ 0]]
			f10_arg0.RedBar03.RedBar01:completeAnimation() --[[ @ 0]]
			f10_arg0.RedBar03.FocusGlow01:completeAnimation() --[[ @ 0]]
			f10_arg0.RedBar03.Dot01:completeAnimation() --[[ @ 0]]
			f10_arg0.RedBar03.RedBar01:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.RedBar03.FocusGlow01:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.RedBar03.Dot01:setAlpha( 0 ) --[[ @ 0]]
			f10_local0( f10_arg0.RedBar03 ) --[[ @ 0]]
			f10_arg0.RedBar02:completeAnimation() --[[ @ 0]]
			f10_arg0.RedBar02.RedBar01:completeAnimation() --[[ @ 0]]
			f10_arg0.RedBar02.FocusGlow01:completeAnimation() --[[ @ 0]]
			f10_arg0.RedBar02.Dot01:completeAnimation() --[[ @ 0]]
			f10_arg0.RedBar02.RedBar01:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.RedBar02.FocusGlow01:setAlpha( 0.2 ) --[[ @ 0]]
			f10_arg0.RedBar02.Dot01:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.RedBar02 ) --[[ @ 0]]
			f10_arg0.gem1:completeAnimation() --[[ @ 0]]
			f10_arg0.gem1:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.gem1 ) --[[ @ 0]]
			f10_arg0.gem2:completeAnimation() --[[ @ 0]]
			f10_arg0.gem2:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.gem2 ) --[[ @ 0]]
			local f10_local1 = function ( f12_arg0 )
				f10_arg0.gem3:beginAnimation( 300 ) --[[ @ 0]]
				f10_arg0.gem3:setAlpha( 1 ) --[[ @ 0]]
				f10_arg0.gem3:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.gem3:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.gem3:completeAnimation() --[[ @ 0]]
			f10_arg0.gem3:setAlpha( 0 ) --[[ @ 0]]
			f10_local1( f10_arg0.gem3 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ArenaRubyProgressThreeWidget.__onClose = function ( f13_arg0 )
	f13_arg0.RedBar01:close() --[[ @ 0]]
	f13_arg0.RedBar03:close() --[[ @ 0]]
	f13_arg0.RedBar02:close() --[[ @ 0]]
end
 --[[ @ 0]]
