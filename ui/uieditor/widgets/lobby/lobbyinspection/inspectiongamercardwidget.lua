-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/lobby/lobbyinspection/inspectiongamercardinternalwidget" ) --[[ @ 0]]
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]

CoD.InspectionGamerCardWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.InspectionGamerCardWidget.__defaultWidth = 348 --[[ @ 0]]
CoD.InspectionGamerCardWidget.__defaultHeight = 87 --[[ @ 0]]
CoD.InspectionGamerCardWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.InspectionGamerCardWidget ) --[[ @ 0]]
	self.id = "InspectionGamerCardWidget" --[[ @ 0]]
	self.soundSet = "ModeSelection" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local InspectionGamerCardInternalWidget0 = CoD.InspectionGamerCardInternalWidget.new( f1_arg0, f1_arg1, 0.24, 0.24, -83.5, 264.5, 0.36, 0.36, -31, 56 ) --[[ @ 0]]
	InspectionGamerCardInternalWidget0:linkToElementModel( self, nil, false, function ( model )
		InspectionGamerCardInternalWidget0:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( InspectionGamerCardInternalWidget0 ) --[[ @ 0]]
	self.InspectionGamerCardInternalWidget0 = InspectionGamerCardInternalWidget0 --[[ @ 0]]
	
	local FELabelSubHeadingE0 = LUI.UIText.new( 0, 0, 15, 469, 0, 0, 41, 66 ) --[[ @ 0]]
	FELabelSubHeadingE0:setTTF( "notosans_regular" ) --[[ @ 0]]
	FELabelSubHeadingE0:setLetterSpacing( 0.5 ) --[[ @ 0]]
	FELabelSubHeadingE0:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	FELabelSubHeadingE0:setBackingType( 3 ) --[[ @ 0]]
	FELabelSubHeadingE0:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	FELabelSubHeadingE0:setBackingAlpha( 0.7 ) --[[ @ 0]]
	FELabelSubHeadingE0:setBackingXPadding( 16 ) --[[ @ 0]]
	FELabelSubHeadingE0:setBackingYPadding( 2 ) --[[ @ 0]]
	FELabelSubHeadingE0:setBackingImage( RegisterImage( @"uie_t7_menu_frontend_listsubheadpanelfull" ) ) --[[ @ 0]]
	FELabelSubHeadingE0:setBackingMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	FELabelSubHeadingE0:setBackingShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FELabelSubHeadingE0:setupBackingNineSliceShader( 24, 6 ) --[[ @ 0]]
	FELabelSubHeadingE0:linkToElementModel( self, "clantag", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			FELabelSubHeadingE0:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( FELabelSubHeadingE0 ) --[[ @ 0]]
	self.FELabelSubHeadingE0 = FELabelSubHeadingE0 --[[ @ 0]]
	
	local FELabelSubHeadingE1 = LUI.UIText.new( 0, 0, 15, 469, 0, 0, 14, 39 ) --[[ @ 0]]
	FELabelSubHeadingE1.__Color = function ()
		FELabelSubHeadingE1:setRGB( CoD.DirectorUtility.LobbyPlayerColorByXUIDElseDefaultSelfModel( self:getModel(), "xuid", 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	FELabelSubHeadingE1.__Color() --[[ @ 0]]
	FELabelSubHeadingE1:setTTF( "notosans_bold" ) --[[ @ 0]]
	FELabelSubHeadingE1:setLetterSpacing( 0.5 ) --[[ @ 0]]
	FELabelSubHeadingE1:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	FELabelSubHeadingE1:setBackingType( 3 ) --[[ @ 0]]
	FELabelSubHeadingE1:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	FELabelSubHeadingE1:setBackingAlpha( 0.7 ) --[[ @ 0]]
	FELabelSubHeadingE1:setBackingXPadding( 16 ) --[[ @ 0]]
	FELabelSubHeadingE1:setBackingYPadding( 2 ) --[[ @ 0]]
	FELabelSubHeadingE1:setBackingImage( RegisterImage( @"uie_t7_menu_frontend_listsubheadpanelfull" ) ) --[[ @ 0]]
	FELabelSubHeadingE1:setBackingMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	FELabelSubHeadingE1:setBackingShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FELabelSubHeadingE1:setupBackingNineSliceShader( 24, 6 ) --[[ @ 0]]
	FELabelSubHeadingE1:linkToElementModel( self, "gamertag", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			FELabelSubHeadingE1:setText( CoD.SocialUtility.CleanGamerTag( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( FELabelSubHeadingE1 ) --[[ @ 0]]
	self.FELabelSubHeadingE1 = FELabelSubHeadingE1 --[[ @ 0]]
	
	local emptyFocusable = nil --[[ @ 0]]
	
	emptyFocusable = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( emptyFocusable ) --[[ @ 0]]
	self.emptyFocusable = emptyFocusable --[[ @ 0]]
	
	FELabelSubHeadingE1:linkToElementModel( self, "xuid", true, FELabelSubHeadingE1.__Color ) --[[ @ 0]]
	InspectionGamerCardInternalWidget0.id = "InspectionGamerCardInternalWidget0" --[[ @ 0]]
	if CoD.isPC then
		emptyFocusable.id = "emptyFocusable" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.InspectionGamerCardWidget.__onClose = function ( f6_arg0 )
	f6_arg0.InspectionGamerCardInternalWidget0:close() --[[ @ 0]]
	f6_arg0.FELabelSubHeadingE0:close() --[[ @ 0]]
	f6_arg0.FELabelSubHeadingE1:close() --[[ @ 0]]
	f6_arg0.emptyFocusable:close() --[[ @ 0]]
end
 --[[ @ 0]]
