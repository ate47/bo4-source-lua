-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:2329a92dee2ea1ff" ) --[[ @ 0]]

CoD.AARMedalsTabInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARMedalsTabInternal.__defaultWidth = 1920 --[[ @ 0]]
CoD.AARMedalsTabInternal.__defaultHeight = 900 --[[ @ 0]]
CoD.AARMedalsTabInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARMedalsTabInternal ) --[[ @ 0]]
	self.id = "AARMedalsTabInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local MedalsTitleGlow = LUI.UIText.new( 0.5, 0.5, -702, 859, 0, 0, -5.5, 69.5 ) --[[ @ 0]]
	MedalsTitleGlow:setRGB( ColorSet.T8_FactionTier_InProgress.r, ColorSet.T8_FactionTier_InProgress.g, ColorSet.T8_FactionTier_InProgress.b ) --[[ @ 0]]
	MedalsTitleGlow:setAlpha( 0 ) --[[ @ 0]]
	MedalsTitleGlow:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_8F69F5BDD4F7C26" ) ) --[[ @ 0]]
	MedalsTitleGlow:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	MedalsTitleGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	MedalsTitleGlow:setShaderVector( 0, 0.6, 0, 0, 0 ) --[[ @ 0]]
	MedalsTitleGlow:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	MedalsTitleGlow:setShaderVector( 2, 0.9, 0.7, 0.3, 0.2 ) --[[ @ 0]]
	MedalsTitleGlow:setLetterSpacing( 10 ) --[[ @ 0]]
	MedalsTitleGlow:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	MedalsTitleGlow:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( MedalsTitleGlow ) --[[ @ 0]]
	self.MedalsTitleGlow = MedalsTitleGlow --[[ @ 0]]
	
	local MedalsTitle = LUI.UIText.new( 0.5, 0.5, -702, 859, 0, 0, -5.5, 69.5 ) --[[ @ 0]]
	MedalsTitle:setRGB( ColorSet.T8_FactionTier_InProgress.r, ColorSet.T8_FactionTier_InProgress.g, ColorSet.T8_FactionTier_InProgress.b ) --[[ @ 0]]
	MedalsTitle:setAlpha( 0 ) --[[ @ 0]]
	MedalsTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_8F69F5BDD4F7C26" ) ) --[[ @ 0]]
	MedalsTitle:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	MedalsTitle:setLetterSpacing( 10 ) --[[ @ 0]]
	MedalsTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	MedalsTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( MedalsTitle ) --[[ @ 0]]
	self.MedalsTitle = MedalsTitle --[[ @ 0]]
	
	local GametypeImage = LUI.UIImage.new( 0, 0, 95, 208, 0, 0, -72.5, 40.5 ) --[[ @ 0]]
	GametypeImage:setAlpha( 0 ) --[[ @ 0]]
	GametypeImage:subscribeToGlobalModel( f1_arg1, "AARSummaryStats", "gametypeIcon", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			GametypeImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GametypeImage ) --[[ @ 0]]
	self.GametypeImage = GametypeImage --[[ @ 0]]
	
	local GametypeAndMap = LUI.UIText.new( 0, 0, 231, 1085, 0, 0, 11, 32 ) --[[ @ 0]]
	GametypeAndMap:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	GametypeAndMap:setAlpha( 0 ) --[[ @ 0]]
	GametypeAndMap:setTTF( "dinnext_regular" ) --[[ @ 0]]
	GametypeAndMap:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	GametypeAndMap:subscribeToGlobalModel( f1_arg1, "AARSummaryStats", "gametypeAndMap", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			GametypeAndMap:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GametypeAndMap ) --[[ @ 0]]
	self.GametypeAndMap = GametypeAndMap --[[ @ 0]]
	
	local MedalTabsInternal = CoD.MedalsTabInternal.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 0.5, 0.5, -386, 386 ) --[[ @ 0]]
	MedalTabsInternal.MedalsGrid:setDataSource( "AARMedalsList" ) --[[ @ 0]]
	self:addElement( MedalTabsInternal ) --[[ @ 0]]
	self.MedalTabsInternal = MedalTabsInternal --[[ @ 0]]
	
	MedalTabsInternal:linkToElementModel( MedalTabsInternal.MedalsGrid, nil, false, function ( model )
		MedalTabsInternal.MedalPreviewWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "NoMedals",
			condition = function ( menu, element, event )
				return not ListElementHasElements( self.MedalsGrid )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "grid_updated", function ( f6_arg0, f6_arg1 )
		f6_arg1.menu = f6_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f6_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	MedalTabsInternal.id = "MedalTabsInternal" --[[ @ 0]]
	self.__defaultFocus = MedalTabsInternal --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARMedalsTabInternal.__onClose = function ( f7_arg0 )
	f7_arg0.MedalTabsInternal:close() --[[ @ 0]]
	f7_arg0.GametypeImage:close() --[[ @ 0]]
	f7_arg0.GametypeAndMap:close() --[[ @ 0]]
end
 --[[ @ 0]]
