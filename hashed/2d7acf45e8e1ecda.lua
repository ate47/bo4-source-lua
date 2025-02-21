-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.PositionDraft_SearchingForPlayers = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PositionDraft_SearchingForPlayers.__defaultWidth = 326 --[[ @ 0]]
CoD.PositionDraft_SearchingForPlayers.__defaultHeight = 37 --[[ @ 0]]
CoD.PositionDraft_SearchingForPlayers.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PositionDraft_SearchingForPlayers ) --[[ @ 0]]
	self.id = "PositionDraft_SearchingForPlayers" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Background:setRGB( 0.21, 0.2, 0.2 ) --[[ @ 0]]
	Background:setAlpha( 0.8 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local BackgroundAdd = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackgroundAdd:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	BackgroundAdd:setAlpha( 0.1 ) --[[ @ 0]]
	BackgroundAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_scanlines" ) ) --[[ @ 0]]
	BackgroundAdd:setShaderVector( 0, 0.31, 0, 0, 0 ) --[[ @ 0]]
	BackgroundAdd:setShaderVector( 1, 0.84, 0, 0, 0 ) --[[ @ 0]]
	BackgroundAdd:setShaderVector( 2, 0.05, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BackgroundAdd ) --[[ @ 0]]
	self.BackgroundAdd = BackgroundAdd --[[ @ 0]]
	
	local PositionDraftSearchingForPlayers = LUI.UIText.new( 0.02, 0.97, 0, 0, 0.16, 0.86, 0, 0 ) --[[ @ 0]]
	PositionDraftSearchingForPlayers:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	PositionDraftSearchingForPlayers:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1B0DCC02393CEC4E" ) ) --[[ @ 0]]
	PositionDraftSearchingForPlayers:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	PositionDraftSearchingForPlayers:setLetterSpacing( 4 ) --[[ @ 0]]
	PositionDraftSearchingForPlayers:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( PositionDraftSearchingForPlayers ) --[[ @ 0]]
	self.PositionDraftSearchingForPlayers = PositionDraftSearchingForPlayers --[[ @ 0]]
	
	local barTop = LUI.UIImage.new( 0, 1, 24, 0, 0, 0, -7, 0 ) --[[ @ 0]]
	barTop:setRGB( 0.28, 0.27, 0.27 ) --[[ @ 0]]
	self:addElement( barTop ) --[[ @ 0]]
	self.barTop = barTop --[[ @ 0]]
	
	local barTop3 = LUI.UIImage.new( 0, 0, 0, 24, 0, 0, -7, 0 ) --[[ @ 0]]
	barTop3:setRGB( 0.16, 0.15, 0.15 ) --[[ @ 0]]
	self:addElement( barTop3 ) --[[ @ 0]]
	self.barTop3 = barTop3 --[[ @ 0]]
	
	local LineTop01 = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 36, 37 ) --[[ @ 0]]
	LineTop01:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	LineTop01:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( LineTop01 ) --[[ @ 0]]
	self.LineTop01 = LineTop01 --[[ @ 0]]
	
	local Corner01 = LUI.UIImage.new( 0, 0, 0, 1, 0, 0, 24, 25 ) --[[ @ 0]]
	Corner01:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Corner01:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( Corner01 ) --[[ @ 0]]
	self.Corner01 = Corner01 --[[ @ 0]]
	
	local Corner = LUI.UIImage.new( 1, 1, -1, 0, 0, 0, 25, 26 ) --[[ @ 0]]
	Corner:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Corner:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( Corner ) --[[ @ 0]]
	self.Corner = Corner --[[ @ 0]]
	
	local Corner2 = LUI.UIImage.new( 1, 1, -1, 0, 0, 0, 30, 36 ) --[[ @ 0]]
	Corner2:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Corner2:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( Corner2 ) --[[ @ 0]]
	self.Corner2 = Corner2 --[[ @ 0]]
	
	local Corner3 = LUI.UIImage.new( 0, 0, 0, 1, 0, 0, 30, 36 ) --[[ @ 0]]
	Corner3:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Corner3:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( Corner3 ) --[[ @ 0]]
	self.Corner3 = Corner3 --[[ @ 0]]
	
	local arrow = LUI.UIImage.new( 0, 0, 9.5, 14.5, 0, 0, -6, -1 ) --[[ @ 0]]
	arrow:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	arrow:setImage( RegisterImage( @"uie_ui_hud_common_line_arrow" ) ) --[[ @ 0]]
	self:addElement( arrow ) --[[ @ 0]]
	self.arrow = arrow --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalModelValueEqualTo( "PositionDraft.waitingForPlayers", 0 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local12 = self --[[ @ 0]]
	local f1_local13 = self.subscribeToModel --[[ @ 0]]
	local f1_local14 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local13( f1_local12, f1_local14["PositionDraft.waitingForPlayers"], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "PositionDraft.waitingForPlayers"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PositionDraft_SearchingForPlayers.__resetProperties = function ( f4_arg0 )
	f4_arg0.PositionDraftSearchingForPlayers:completeAnimation() --[[ @ 0]]
	f4_arg0.arrow:completeAnimation() --[[ @ 0]]
	f4_arg0.Corner3:completeAnimation() --[[ @ 0]]
	f4_arg0.Corner2:completeAnimation() --[[ @ 0]]
	f4_arg0.Corner:completeAnimation() --[[ @ 0]]
	f4_arg0.Corner01:completeAnimation() --[[ @ 0]]
	f4_arg0.LineTop01:completeAnimation() --[[ @ 0]]
	f4_arg0.barTop3:completeAnimation() --[[ @ 0]]
	f4_arg0.barTop:completeAnimation() --[[ @ 0]]
	f4_arg0.BackgroundAdd:completeAnimation() --[[ @ 0]]
	f4_arg0.Background:completeAnimation() --[[ @ 0]]
	f4_arg0.PositionDraftSearchingForPlayers:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.arrow:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.Corner3:setAlpha( 0.5 ) --[[ @ 0]]
	f4_arg0.Corner2:setAlpha( 0.5 ) --[[ @ 0]]
	f4_arg0.Corner:setAlpha( 0.5 ) --[[ @ 0]]
	f4_arg0.Corner01:setAlpha( 0.5 ) --[[ @ 0]]
	f4_arg0.LineTop01:setAlpha( 0.5 ) --[[ @ 0]]
	f4_arg0.barTop3:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.barTop:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.BackgroundAdd:setAlpha( 0.1 ) --[[ @ 0]]
	f4_arg0.Background:setAlpha( 0.8 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PositionDraft_SearchingForPlayers.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 11 ) --[[ @ 0]]
			f5_arg0.Background:completeAnimation() --[[ @ 0]]
			f5_arg0.Background:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Background ) --[[ @ 0]]
			f5_arg0.BackgroundAdd:completeAnimation() --[[ @ 0]]
			f5_arg0.BackgroundAdd:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.BackgroundAdd ) --[[ @ 0]]
			f5_arg0.PositionDraftSearchingForPlayers:completeAnimation() --[[ @ 0]]
			f5_arg0.PositionDraftSearchingForPlayers:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.PositionDraftSearchingForPlayers ) --[[ @ 0]]
			f5_arg0.barTop:completeAnimation() --[[ @ 0]]
			f5_arg0.barTop:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.barTop ) --[[ @ 0]]
			f5_arg0.barTop3:completeAnimation() --[[ @ 0]]
			f5_arg0.barTop3:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.barTop3 ) --[[ @ 0]]
			f5_arg0.LineTop01:completeAnimation() --[[ @ 0]]
			f5_arg0.LineTop01:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.LineTop01 ) --[[ @ 0]]
			f5_arg0.Corner01:completeAnimation() --[[ @ 0]]
			f5_arg0.Corner01:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Corner01 ) --[[ @ 0]]
			f5_arg0.Corner:completeAnimation() --[[ @ 0]]
			f5_arg0.Corner:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Corner ) --[[ @ 0]]
			f5_arg0.Corner2:completeAnimation() --[[ @ 0]]
			f5_arg0.Corner2:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Corner2 ) --[[ @ 0]]
			f5_arg0.Corner3:completeAnimation() --[[ @ 0]]
			f5_arg0.Corner3:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Corner3 ) --[[ @ 0]]
			f5_arg0.arrow:completeAnimation() --[[ @ 0]]
			f5_arg0.arrow:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.arrow ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			f6_arg0.PositionDraftSearchingForPlayers:completeAnimation() --[[ @ 0]]
			f6_arg0.PositionDraftSearchingForPlayers:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.PositionDraftSearchingForPlayers ) --[[ @ 0]]
			f6_arg0.barTop:completeAnimation() --[[ @ 0]]
			f6_arg0.barTop:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.barTop ) --[[ @ 0]]
			f6_arg0.barTop3:completeAnimation() --[[ @ 0]]
			f6_arg0.barTop3:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.barTop3 ) --[[ @ 0]]
			f6_arg0.LineTop01:completeAnimation() --[[ @ 0]]
			f6_arg0.LineTop01:setAlpha( 0.5 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.LineTop01 ) --[[ @ 0]]
			f6_arg0.Corner01:completeAnimation() --[[ @ 0]]
			f6_arg0.Corner01:setAlpha( 0.5 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Corner01 ) --[[ @ 0]]
			f6_arg0.Corner:completeAnimation() --[[ @ 0]]
			f6_arg0.Corner:setAlpha( 0.5 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Corner ) --[[ @ 0]]
			f6_arg0.Corner2:completeAnimation() --[[ @ 0]]
			f6_arg0.Corner2:setAlpha( 0.5 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Corner2 ) --[[ @ 0]]
			f6_arg0.Corner3:completeAnimation() --[[ @ 0]]
			f6_arg0.Corner3:setAlpha( 0.5 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Corner3 ) --[[ @ 0]]
			f6_arg0.arrow:completeAnimation() --[[ @ 0]]
			f6_arg0.arrow:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.arrow ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
