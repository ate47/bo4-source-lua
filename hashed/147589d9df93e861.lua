-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/common/commoncenteredpopup" ) --[[ @ 0]]
require( "ui/uieditor/widgets/store/storecommontextbacking" ) --[[ @ 0]]
require( "ui/uieditor/widgets/verticalscrollingtextbox" ) --[[ @ 0]]

CoD.SpecialistBio = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.SpecialistBio = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "SpecialistBio", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.BaseUtility.SetPropertiesFromUserData( self, f1_arg1 ) --[[ @ 0]]
	MenuHidesFreeCursor( f1_local1, f1_arg0 ) --[[ @ 0]]
	self:setClass( CoD.SpecialistBio ) --[[ @ 0]]
	self.soundSet = "MultiplayerMain" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CommomCenteredPopup = CoD.CommonCenteredPopup.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CommomCenteredPopup.TitleText:setText( "" ) --[[ @ 0]]
	CommomCenteredPopup.HeaderBackground:setAlpha( 0 ) --[[ @ 0]]
	CommomCenteredPopup.HeaderTopBar:setAlpha( 0 ) --[[ @ 0]]
	CommomCenteredPopup.HeaderBottomBar:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( CommomCenteredPopup ) --[[ @ 0]]
	self.CommomCenteredPopup = CommomCenteredPopup --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0.5, 0.5, -271.5, 271.5, 0.5, 0.5, -423, -231 ) --[[ @ 0]]
	Image:subscribeToGlobalModel( f1_arg0, "SpecialistHeadquarters", "ChosenSpecialistID", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Image:setImage( RegisterImage( CoD.CTUtility.PlayerRoleIndexToBioHeaderImage( f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local DescBacking = CoD.StoreCommonTextBacking.new( f1_local1, f1_arg0, 0.5, 0.5, -271.5, 271.5, 0.5, 0.5, -49, 341 ) --[[ @ 0]]
	DescBacking:setAlpha( 0.4 ) --[[ @ 0]]
	DescBacking.TiledShaderImage:setupNineSliceShader( 42, 42 ) --[[ @ 0]]
	self:addElement( DescBacking ) --[[ @ 0]]
	self.DescBacking = DescBacking --[[ @ 0]]
	
	local SpecialistName = LUI.UIText.new( 0.5, 0.5, -271.5, 271.5, 0.5, 0.5, -224, -134 ) --[[ @ 0]]
	SpecialistName:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
	SpecialistName:setAlpha( 0.7 ) --[[ @ 0]]
	SpecialistName:setZoom( 3 ) --[[ @ 0]]
	SpecialistName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	SpecialistName:setLetterSpacing( 10 ) --[[ @ 0]]
	SpecialistName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	SpecialistName:subscribeToGlobalModel( f1_arg0, "SpecialistHeadquarters", "ChosenSpecialistID", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			SpecialistName:setText( LocalizeToUpperString( CoD.CTUtility.PlayerRoleIndexToName( f3_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SpecialistName ) --[[ @ 0]]
	self.SpecialistName = SpecialistName --[[ @ 0]]
	
	local BioHeader = LUI.UIText.new( 0.5, 0.5, -271.5, 271.5, 0.5, 0.5, -83, -59 ) --[[ @ 0]]
	BioHeader:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	BioHeader:setText( LocalizeToUpperString( @"hash_2BECB6115D1FE883" ) ) --[[ @ 0]]
	BioHeader:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	BioHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	BioHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( BioHeader ) --[[ @ 0]]
	self.BioHeader = BioHeader --[[ @ 0]]
	
	local Bio = CoD.verticalScrollingTextBox.new( f1_local1, f1_arg0, 0.5, 0.5, -262, 270, 0.5, 0.5, -31, 324 ) --[[ @ 0]]
	Bio:subscribeToGlobalModel( f1_arg0, "SpecialistDossier", "bioFull", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			Bio.textBox.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Bio ) --[[ @ 0]]
	self.Bio = Bio --[[ @ 0]]
	
	local DescBackingTopBar = LUI.UIImage.new( 0.5, 0.5, -4, 0, 0.5, 0.5, -320.5, 222.5 ) --[[ @ 0]]
	DescBackingTopBar:setAlpha( 0.09 ) --[[ @ 0]]
	DescBackingTopBar:setZRot( 90 ) --[[ @ 0]]
	DescBackingTopBar:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	DescBackingTopBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	DescBackingTopBar:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DescBackingTopBar:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( DescBackingTopBar ) --[[ @ 0]]
	self.DescBackingTopBar = DescBackingTopBar --[[ @ 0]]
	
	local DescBackingBottomBar = LUI.UIImage.new( 0.5, 0.5, -4, 0, 0.5, 0.5, 69.5, 612.5 ) --[[ @ 0]]
	DescBackingBottomBar:setAlpha( 0.09 ) --[[ @ 0]]
	DescBackingBottomBar:setZRot( 90 ) --[[ @ 0]]
	DescBackingBottomBar:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	DescBackingBottomBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	DescBackingBottomBar:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DescBackingBottomBar:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( DescBackingBottomBar ) --[[ @ 0]]
	self.DescBackingBottomBar = DescBackingBottomBar --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], "ESCAPE", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"mp/back", nil, "ESCAPE" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	CommomCenteredPopup.buttons:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		CommomCenteredPopup.id = "CommomCenteredPopup" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = CommomCenteredPopup --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SpecialistBio.__resetProperties = function ( f8_arg0 )
	f8_arg0.BioHeader:completeAnimation() --[[ @ 0]]
	f8_arg0.DescBacking:completeAnimation() --[[ @ 0]]
	f8_arg0.Bio:completeAnimation() --[[ @ 0]]
	f8_arg0.DescBackingTopBar:completeAnimation() --[[ @ 0]]
	f8_arg0.BioHeader:setTopBottom( 0.5, 0.5, -83, -59 ) --[[ @ 0]]
	f8_arg0.DescBacking:setTopBottom( 0.5, 0.5, -49, 341 ) --[[ @ 0]]
	f8_arg0.Bio:setTopBottom( 0.5, 0.5, -31, 324 ) --[[ @ 0]]
	f8_arg0.DescBackingTopBar:setTopBottom( 0.5, 0.5, -320.5, 222.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SpecialistBio.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f10_arg0.DescBacking:completeAnimation() --[[ @ 0]]
			f10_arg0.DescBacking:setTopBottom( 0.5, 0.5, -90, 341 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.DescBacking ) --[[ @ 0]]
			f10_arg0.BioHeader:completeAnimation() --[[ @ 0]]
			f10_arg0.BioHeader:setTopBottom( 0.5, 0.5, -123, -99 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.BioHeader ) --[[ @ 0]]
			f10_arg0.Bio:completeAnimation() --[[ @ 0]]
			f10_arg0.Bio:setTopBottom( 0.5, 0.5, -84, 330 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Bio ) --[[ @ 0]]
			f10_arg0.DescBackingTopBar:completeAnimation() --[[ @ 0]]
			f10_arg0.DescBackingTopBar:setTopBottom( 0.5, 0.5, -361.5, 181.5 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.DescBackingTopBar ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.SpecialistBio.__onClose = function ( f11_arg0 )
	f11_arg0.CommomCenteredPopup:close() --[[ @ 0]]
	f11_arg0.Image:close() --[[ @ 0]]
	f11_arg0.DescBacking:close() --[[ @ 0]]
	f11_arg0.SpecialistName:close() --[[ @ 0]]
	f11_arg0.Bio:close() --[[ @ 0]]
end
 --[[ @ 0]]
