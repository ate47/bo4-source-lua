-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/rightstickpagination" ) --[[ @ 0]]

CoD.PCSocialMenu_PlayersFilterTab = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PCSocialMenu_PlayersFilterTab.__defaultWidth = 200 --[[ @ 0]]
CoD.PCSocialMenu_PlayersFilterTab.__defaultHeight = 26 --[[ @ 0]]
CoD.PCSocialMenu_PlayersFilterTab.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PCSocialMenu_PlayersFilterTab ) --[[ @ 0]]
	self.id = "PCSocialMenu_PlayersFilterTab" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Sound = LUI.UIElement.new( 0, 0, 84, 116, 0, 0, -49, -17 ) --[[ @ 0]]
	self:addElement( Sound ) --[[ @ 0]]
	self.Sound = Sound --[[ @ 0]]
	
	local GlowPC = nil --[[ @ 0]]
	
	GlowPC = LUI.UIImage.new( 0, 1, 17, -17, 0, 0, 8, 34 ) --[[ @ 0]]
	GlowPC:setAlpha( 0 ) --[[ @ 0]]
	GlowPC:setImage( RegisterImage( @"uie_director_mode_text_tab_glow_pc" ) ) --[[ @ 0]]
	self:addElement( GlowPC ) --[[ @ 0]]
	self.GlowPC = GlowPC --[[ @ 0]]
	
	local Name = LUI.UIText.new( 0, 0, 0, 200, 0, 0, 7, 25 ) --[[ @ 0]]
	Name:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	Name:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Name:setLetterSpacing( 4 ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Name:linkToElementModel( self, "name", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Name:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Name ) --[[ @ 0]]
	self.Name = Name --[[ @ 0]]
	
	local RightStickPagination = CoD.RightStickPagination.new( f1_arg0, f1_arg1, 0.5, 0.5, -62, 62, 0, 0, 19, 49 ) --[[ @ 0]]
	RightStickPagination:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	RightStickPagination:setAlpha( 0 ) --[[ @ 0]]
	RightStickPagination:setScale( 0.85, 0.85 ) --[[ @ 0]]
	self:addElement( RightStickPagination ) --[[ @ 0]]
	self.RightStickPagination = RightStickPagination --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local5 = self --[[ @ 0]]
	EnableMouseButton( self, f1_arg1 ) --[[ @ 0]]
	EnableMouseMove( self, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.PCSocialMenu_PlayersFilterTab.__resetProperties = function ( f3_arg0 )
	f3_arg0.Name:completeAnimation() --[[ @ 0]]
	f3_arg0.RightStickPagination:completeAnimation() --[[ @ 0]]
	f3_arg0.GlowPC:completeAnimation() --[[ @ 0]]
	f3_arg0.Name:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	f3_arg0.Name:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.RightStickPagination:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	f3_arg0.RightStickPagination:setAlpha( 0 ) --[[ @ 0]]
	f3_arg0.GlowPC:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PCSocialMenu_PlayersFilterTab.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Active = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f5_arg0.Name:completeAnimation() --[[ @ 0]]
			f5_arg0.Name:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Name ) --[[ @ 0]]
			f5_arg0.RightStickPagination:completeAnimation() --[[ @ 0]]
			f5_arg0.RightStickPagination:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
			f5_arg0.RightStickPagination:setAlpha( 1 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.RightStickPagination ) --[[ @ 0]]
		end,
		ActiveAndFocus = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f6_arg0.GlowPC:completeAnimation() --[[ @ 0]]
			f6_arg0.GlowPC:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.GlowPC ) --[[ @ 0]]
			f6_arg0.Name:completeAnimation() --[[ @ 0]]
			f6_arg0.Name:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Name ) --[[ @ 0]]
			f6_arg0.RightStickPagination:completeAnimation() --[[ @ 0]]
			f6_arg0.RightStickPagination:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
			f6_arg0.RightStickPagination:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.RightStickPagination ) --[[ @ 0]]
		end,
		Focus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.GlowPC:completeAnimation() --[[ @ 0]]
			f7_arg0.GlowPC:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.GlowPC ) --[[ @ 0]]
			f7_arg0.Name:completeAnimation() --[[ @ 0]]
			f7_arg0.Name:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
			f7_arg0.Name:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Name ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.Name:completeAnimation() --[[ @ 0]]
			f8_arg0.Name:setAlpha( 0.1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Name ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
if not CoD.isPC then
	CoD.PCSocialMenu_PlayersFilterTab.__clipsPerState.DefaultState.ActiveAndFocus = nil --[[ @ 0]]
	CoD.PCSocialMenu_PlayersFilterTab.__clipsPerState.DefaultState.Focus = nil --[[ @ 0]]
end
CoD.PCSocialMenu_PlayersFilterTab.__onClose = function ( f9_arg0 )
	f9_arg0.Name:close() --[[ @ 0]]
	f9_arg0.RightStickPagination:close() --[[ @ 0]]
end
 --[[ @ 0]]
