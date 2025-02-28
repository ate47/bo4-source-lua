-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.LeaderboardHeader = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LeaderboardHeader.__defaultWidth = 1170 --[[ @ 0]]
CoD.LeaderboardHeader.__defaultHeight = 36 --[[ @ 0]]
CoD.LeaderboardHeader.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LeaderboardHeader ) --[[ @ 0]]
	self.id = "LeaderboardHeader" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BG = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 36 ) --[[ @ 0]]
	BG:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	BG:setAlpha( 0.05 ) --[[ @ 0]]
	self:addElement( BG ) --[[ @ 0]]
	self.BG = BG --[[ @ 0]]
	
	local PixelGridTiledBacking = LUI.UIImage.new( 0.02, 0.02, -24, 1150, 0.31, 0.31, -10.5, 24.5 ) --[[ @ 0]]
	PixelGridTiledBacking:setAlpha( 0.08 ) --[[ @ 0]]
	PixelGridTiledBacking:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGridTiledBacking:setupNineSliceShader( 128, 128 ) --[[ @ 0]]
	self:addElement( PixelGridTiledBacking ) --[[ @ 0]]
	self.PixelGridTiledBacking = PixelGridTiledBacking --[[ @ 0]]
	
	local Position = LUI.UIText.new( 0, 0, 8, 118, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	Position:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	Position:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Position:setLetterSpacing( 1 ) --[[ @ 0]]
	Position:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Position:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Position:linkToElementModel( self, "position", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Position:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Position ) --[[ @ 0]]
	self.Position = Position --[[ @ 0]]
	
	local Rank = LUI.UIText.new( 0, 0, 124, 192, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	Rank:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	Rank:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Rank:setLetterSpacing( 1 ) --[[ @ 0]]
	Rank:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	Rank:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Rank:linkToElementModel( self, "rank", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Rank:setText( Engine[@"hash_4F9F1239CFD921FE"]( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Rank ) --[[ @ 0]]
	self.Rank = Rank --[[ @ 0]]
	
	local Name = LUI.UIText.new( 0, 0, 210.5, 465.5, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	Name:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	Name:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Name:setLetterSpacing( 1 ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Name:linkToElementModel( self, "name", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			Name:setText( Engine[@"hash_4F9F1239CFD921FE"]( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Name ) --[[ @ 0]]
	self.Name = Name --[[ @ 0]]
	
	local Column0 = LUI.UIText.new( 0, 0, 469, 599, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	Column0:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	Column0:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Column0:setLetterSpacing( 1 ) --[[ @ 0]]
	Column0:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	Column0:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Column0:linkToElementModel( self, "column0", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			Column0:setText( Engine[@"hash_4F9F1239CFD921FE"]( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Column0 ) --[[ @ 0]]
	self.Column0 = Column0 --[[ @ 0]]
	
	local Column1 = LUI.UIText.new( 0, 0, 607, 737, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	Column1:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	Column1:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Column1:setLetterSpacing( 1 ) --[[ @ 0]]
	Column1:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	Column1:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Column1:linkToElementModel( self, "column1", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			Column1:setText( Engine[@"hash_4F9F1239CFD921FE"]( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Column1 ) --[[ @ 0]]
	self.Column1 = Column1 --[[ @ 0]]
	
	local Column2 = LUI.UIText.new( 0, 0, 748, 878, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	Column2:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	Column2:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Column2:setLetterSpacing( 1 ) --[[ @ 0]]
	Column2:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	Column2:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Column2:linkToElementModel( self, "column2", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			Column2:setText( Engine[@"hash_4F9F1239CFD921FE"]( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Column2 ) --[[ @ 0]]
	self.Column2 = Column2 --[[ @ 0]]
	
	local Column3 = LUI.UIText.new( 0, 0, 888, 1018, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	Column3:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	Column3:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Column3:setLetterSpacing( 1 ) --[[ @ 0]]
	Column3:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	Column3:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	Column3:linkToElementModel( self, "column3", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			Column3:setText( Engine[@"hash_4F9F1239CFD921FE"]( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Column3 ) --[[ @ 0]]
	self.Column3 = Column3 --[[ @ 0]]
	
	local Column4 = LUI.UIText.new( 1, 1, -138, -8, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	Column4:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	Column4:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Column4:setLetterSpacing( 1 ) --[[ @ 0]]
	Column4:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	Column4:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	Column4:linkToElementModel( self, "column4", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			Column4:setText( Engine[@"hash_4F9F1239CFD921FE"]( f9_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Column4 ) --[[ @ 0]]
	self.Column4 = Column4 --[[ @ 0]]
	
	local TopFrame = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 8 ) --[[ @ 0]]
	TopFrame:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	TopFrame:setZRot( 180 ) --[[ @ 0]]
	TopFrame:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	TopFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	TopFrame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TopFrame:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( TopFrame ) --[[ @ 0]]
	self.TopFrame = TopFrame --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "DefaultStateArabic",
			condition = function ( menu, element, event )
				return IsCurrentLanguageArabic()
			end
		},
		{
			stateName = "AsianLanguage",
			condition = function ( menu, element, event )
				return CoD.BaseUtility.IsCurrentLanguageAsian()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LeaderboardHeader.__resetProperties = function ( f12_arg0 )
	f12_arg0.Rank:completeAnimation() --[[ @ 0]]
	f12_arg0.Name:completeAnimation() --[[ @ 0]]
	f12_arg0.Position:completeAnimation() --[[ @ 0]]
	f12_arg0.Column0:completeAnimation() --[[ @ 0]]
	f12_arg0.Column1:completeAnimation() --[[ @ 0]]
	f12_arg0.Column2:completeAnimation() --[[ @ 0]]
	f12_arg0.Column3:completeAnimation() --[[ @ 0]]
	f12_arg0.Column4:completeAnimation() --[[ @ 0]]
	f12_arg0.Rank:setTopBottom( 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	f12_arg0.Rank:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	f12_arg0.Name:setTopBottom( 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	f12_arg0.Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	f12_arg0.Position:setTopBottom( 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	f12_arg0.Position:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	f12_arg0.Column0:setTopBottom( 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	f12_arg0.Column1:setTopBottom( 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	f12_arg0.Column2:setTopBottom( 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	f12_arg0.Column3:setTopBottom( 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	f12_arg0.Column4:setLeftRight( 1, 1, -138, -8 ) --[[ @ 0]]
	f12_arg0.Column4:setTopBottom( 0.5, 0.5, -9, 9 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LeaderboardHeader.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	DefaultStateArabic = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f14_arg0.Position:completeAnimation() --[[ @ 0]]
			f14_arg0.Position:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Position ) --[[ @ 0]]
			f14_arg0.Rank:completeAnimation() --[[ @ 0]]
			f14_arg0.Rank:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Rank ) --[[ @ 0]]
			f14_arg0.Name:completeAnimation() --[[ @ 0]]
			f14_arg0.Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Name ) --[[ @ 0]]
		end
	},
	AsianLanguage = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f15_arg0.Position:completeAnimation() --[[ @ 0]]
			f15_arg0.Position:setTopBottom( 0.5, 0.5, -2.5, 12.5 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Position ) --[[ @ 0]]
			f15_arg0.Rank:completeAnimation() --[[ @ 0]]
			f15_arg0.Rank:setTopBottom( 0.5, 0.5, -2.5, 12.5 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Rank ) --[[ @ 0]]
			f15_arg0.Name:completeAnimation() --[[ @ 0]]
			f15_arg0.Name:setTopBottom( 0.5, 0.5, -2.5, 12.5 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Name ) --[[ @ 0]]
			f15_arg0.Column0:completeAnimation() --[[ @ 0]]
			f15_arg0.Column0:setTopBottom( 0.5, 0.5, -2.5, 12.5 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Column0 ) --[[ @ 0]]
			f15_arg0.Column1:completeAnimation() --[[ @ 0]]
			f15_arg0.Column1:setTopBottom( 0.5, 0.5, -2.5, 12.5 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Column1 ) --[[ @ 0]]
			f15_arg0.Column2:completeAnimation() --[[ @ 0]]
			f15_arg0.Column2:setTopBottom( 0.5, 0.5, -2.5, 12.5 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Column2 ) --[[ @ 0]]
			f15_arg0.Column3:completeAnimation() --[[ @ 0]]
			f15_arg0.Column3:setTopBottom( 0.5, 0.5, -2.5, 12.5 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Column3 ) --[[ @ 0]]
			f15_arg0.Column4:completeAnimation() --[[ @ 0]]
			f15_arg0.Column4:setLeftRight( 1, 1, -137, -7 ) --[[ @ 0]]
			f15_arg0.Column4:setTopBottom( 0.5, 0.5, -2.5, 12.5 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Column4 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.LeaderboardHeader.__onClose = function ( f16_arg0 )
	f16_arg0.Position:close() --[[ @ 0]]
	f16_arg0.Rank:close() --[[ @ 0]]
	f16_arg0.Name:close() --[[ @ 0]]
	f16_arg0.Column0:close() --[[ @ 0]]
	f16_arg0.Column1:close() --[[ @ 0]]
	f16_arg0.Column2:close() --[[ @ 0]]
	f16_arg0.Column3:close() --[[ @ 0]]
	f16_arg0.Column4:close() --[[ @ 0]]
end
 --[[ @ 0]]
