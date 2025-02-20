-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.TabbedScoreboardTab = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TabbedScoreboardTab.__defaultWidth = 170 --[[ @ 0]]
CoD.TabbedScoreboardTab.__defaultHeight = 34 --[[ @ 0]]
CoD.TabbedScoreboardTab.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TabbedScoreboardTab ) --[[ @ 0]]
	self.id = "TabbedScoreboardTab" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TabBacker2 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	TabBacker2:setRGB( 0.46, 0.46, 0.51 ) --[[ @ 0]]
	TabBacker2:setAlpha( 0.1 ) --[[ @ 0]]
	self:addElement( TabBacker2 ) --[[ @ 0]]
	self.TabBacker2 = TabBacker2 --[[ @ 0]]
	
	local TopBar = LUI.UIImage.new( -0.02, 1.03, 0, 0, 1, 1, -7, 2 ) --[[ @ 0]]
	TopBar:setAlpha( 0.1 ) --[[ @ 0]]
	TopBar:setImage( RegisterImage( @"uie_ui_menu_cac_secondary_button_top_bar" ) ) --[[ @ 0]]
	TopBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( TopBar ) --[[ @ 0]]
	self.TopBar = TopBar --[[ @ 0]]
	
	local NameNotFocus = LUI.UIText.new( -0, 1, 0, 0, 0.5, 0.5, -11, 10 ) --[[ @ 0]]
	NameNotFocus:setRGB( 0.38, 0.38, 0.4 ) --[[ @ 0]]
	NameNotFocus:setAlpha( 0 ) --[[ @ 0]]
	NameNotFocus:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	NameNotFocus:setLetterSpacing( 3 ) --[[ @ 0]]
	NameNotFocus:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	NameNotFocus:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	NameNotFocus:linkToElementModel( self, "tabName", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			NameNotFocus:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( NameNotFocus ) --[[ @ 0]]
	self.NameNotFocus = NameNotFocus --[[ @ 0]]
	
	local NameFocus = LUI.UIText.new( -0, 1, 0, 0, 0.5, 0.5, -11, 10 ) --[[ @ 0]]
	NameFocus:setRGB( 0.38, 0.38, 0.4 ) --[[ @ 0]]
	NameFocus:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	NameFocus:setLetterSpacing( 3 ) --[[ @ 0]]
	NameFocus:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	NameFocus:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	NameFocus:linkToElementModel( self, "tabName", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			NameFocus:setText( Engine[@"hash_4F9F1239CFD921FE"]( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( NameFocus ) --[[ @ 0]]
	self.NameFocus = NameFocus --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.TabbedScoreboardTab.__resetProperties = function ( f4_arg0 )
	f4_arg0.NameFocus:completeAnimation() --[[ @ 0]]
	f4_arg0.TopBar:completeAnimation() --[[ @ 0]]
	f4_arg0.TabBacker2:completeAnimation() --[[ @ 0]]
	f4_arg0.NameNotFocus:completeAnimation() --[[ @ 0]]
	f4_arg0.NameFocus:setRGB( 0.38, 0.38, 0.4 ) --[[ @ 0]]
	f4_arg0.NameFocus:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.TopBar:setAlpha( 0.1 ) --[[ @ 0]]
	f4_arg0.TabBacker2:setAlpha( 0.1 ) --[[ @ 0]]
	f4_arg0.NameNotFocus:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TabbedScoreboardTab.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f5_arg0.TabBacker2:completeAnimation() --[[ @ 0]]
			f5_arg0.TabBacker2:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.TabBacker2 ) --[[ @ 0]]
			f5_arg0.TopBar:completeAnimation() --[[ @ 0]]
			f5_arg0.TopBar:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.TopBar ) --[[ @ 0]]
			f5_arg0.NameNotFocus:completeAnimation() --[[ @ 0]]
			f5_arg0.NameNotFocus:setAlpha( 1 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.NameNotFocus ) --[[ @ 0]]
			f5_arg0.NameFocus:completeAnimation() --[[ @ 0]]
			f5_arg0.NameFocus:setRGB( 0.38, 0.38, 0.4 ) --[[ @ 0]]
			f5_arg0.NameFocus:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.NameFocus ) --[[ @ 0]]
		end,
		Active = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.TabBacker2:beginAnimation( 300 ) --[[ @ 0]]
				f6_arg0.TabBacker2:setAlpha( 0.1 ) --[[ @ 0]]
				f6_arg0.TabBacker2:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.TabBacker2:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.TabBacker2:completeAnimation() --[[ @ 0]]
			f6_arg0.TabBacker2:setAlpha( 0 ) --[[ @ 0]]
			f6_local0( f6_arg0.TabBacker2 ) --[[ @ 0]]
			local f6_local1 = function ( f8_arg0 )
				f6_arg0.TopBar:beginAnimation( 300 ) --[[ @ 0]]
				f6_arg0.TopBar:setAlpha( 0.1 ) --[[ @ 0]]
				f6_arg0.TopBar:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.TopBar:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.TopBar:completeAnimation() --[[ @ 0]]
			f6_arg0.TopBar:setAlpha( 0 ) --[[ @ 0]]
			f6_local1( f6_arg0.TopBar ) --[[ @ 0]]
			local f6_local2 = function ( f9_arg0 )
				f6_arg0.NameFocus:beginAnimation( 300 ) --[[ @ 0]]
				f6_arg0.NameFocus:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
				f6_arg0.NameFocus:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.NameFocus:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.NameFocus:completeAnimation() --[[ @ 0]]
			f6_arg0.NameFocus:setRGB( 0.38, 0.38, 0.4 ) --[[ @ 0]]
			f6_arg0.NameFocus:setAlpha( 1 ) --[[ @ 0]]
			f6_local2( f6_arg0.NameFocus ) --[[ @ 0]]
		end,
		Focus = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.NameFocus:completeAnimation() --[[ @ 0]]
			f10_arg0.NameFocus:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.NameFocus ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
if not CoD.isPC then
	CoD.TabbedScoreboardTab.__clipsPerState.DefaultState.Focus = nil --[[ @ 0]]
end
CoD.TabbedScoreboardTab.__onClose = function ( f11_arg0 )
	f11_arg0.NameNotFocus:close() --[[ @ 0]]
	f11_arg0.NameFocus:close() --[[ @ 0]]
end
 --[[ @ 0]]
