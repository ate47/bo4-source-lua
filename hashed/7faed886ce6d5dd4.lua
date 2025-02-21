-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/playercard/callingcard" ) --[[ @ 0]]
require( "x64:ade61cc095aa2bc" ) --[[ @ 0]]
require( "x64:742713807971f727" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/featureoverlay_button" ) --[[ @ 0]]

CoD.systemOverlay_reportPlayer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.systemOverlay_reportPlayer.__defaultWidth = 1920 --[[ @ 0]]
CoD.systemOverlay_reportPlayer.__defaultHeight = 480 --[[ @ 0]]
CoD.systemOverlay_reportPlayer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.systemOverlay_reportPlayer ) --[[ @ 0]]
	self.id = "systemOverlay_reportPlayer" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Background:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Background:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local blur = LUI.UIImage.new( 0, 0, 0, 1920, 0, 0, 0, 525 ) --[[ @ 0]]
	blur:setAlpha( 0 ) --[[ @ 0]]
	blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( blur ) --[[ @ 0]]
	self.blur = blur --[[ @ 0]]
	
	local backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 480 ) --[[ @ 0]]
	backing:setRGB( 0.19, 0.19, 0.19 ) --[[ @ 0]]
	backing:setAlpha( 0.7 ) --[[ @ 0]]
	self:addElement( backing ) --[[ @ 0]]
	self.backing = backing --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0.09, 0.09, -44.5, 439.5 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.65 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0.5, 0.5, -342, 864, 0, 0, 10, 44 ) --[[ @ 0]]
	Title:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7A9BFB932EE4FB07" ) ) --[[ @ 0]]
	Title:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Title:setLetterSpacing( 6 ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local f1_local6 = nil --[[ @ 0]]
	self.Description = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local7 = nil --[[ @ 0]]
	f1_local7 = LUI.UIElement.createFake() --[[ @ 0]]
	self.ButtonList = f1_local7 --[[ @ 0]]
	local ReportTextBox = nil --[[ @ 0]]
	
	ReportTextBox = CoD.PC_ReportTextBox.new( f1_arg0, f1_arg1, 0.5, 0.5, -340, 236, 0, 0, 175, 331 ) --[[ @ 0]]
	ReportTextBox:setRGB( 0.85, 0.85, 0.85 ) --[[ @ 0]]
	self:addElement( ReportTextBox ) --[[ @ 0]]
	self.ReportTextBox = ReportTextBox --[[ @ 0]]
	
	local ReportTextBoxLabel = nil --[[ @ 0]]
	
	ReportTextBoxLabel = LUI.UIText.new( 0.5, 0.5, -340, 236, 0, 0, 150, 169 ) --[[ @ 0]]
	ReportTextBoxLabel:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
	ReportTextBoxLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1F4902B629151E78" ) ) --[[ @ 0]]
	ReportTextBoxLabel:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ReportTextBoxLabel:setLetterSpacing( 2 ) --[[ @ 0]]
	ReportTextBoxLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ReportTextBoxLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( ReportTextBoxLabel ) --[[ @ 0]]
	self.ReportTextBoxLabel = ReportTextBoxLabel --[[ @ 0]]
	
	local ReportTextBoxLimit = nil --[[ @ 0]]
	
	ReportTextBoxLimit = LUI.UIText.new( 0.5, 0.5, -340, 236, 0, 0, 331, 350 ) --[[ @ 0]]
	ReportTextBoxLimit:setRGB( 0.42, 0.42, 0.42 ) --[[ @ 0]]
	ReportTextBoxLimit:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6DD2240592242F36" ) ) --[[ @ 0]]
	ReportTextBoxLimit:setTTF( "notosans_regular" ) --[[ @ 0]]
	ReportTextBoxLimit:setLetterSpacing( 1 ) --[[ @ 0]]
	ReportTextBoxLimit:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	ReportTextBoxLimit:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( ReportTextBoxLimit ) --[[ @ 0]]
	self.ReportTextBoxLimit = ReportTextBoxLimit --[[ @ 0]]
	
	local VerticalLine = nil --[[ @ 0]]
	
	VerticalLine = LUI.UIImage.new( 0.5, 0.5, 267, 268, 0, 0, 68, 346 ) --[[ @ 0]]
	VerticalLine:setRGB( 0.21, 0.21, 0.21 ) --[[ @ 0]]
	self:addElement( VerticalLine ) --[[ @ 0]]
	self.VerticalLine = VerticalLine --[[ @ 0]]
	
	local ConfirmationText = nil --[[ @ 0]]
	
	ConfirmationText = LUI.UIText.new( 0.5, 0.5, -340, 236, 0, 0, 357, 378 ) --[[ @ 0]]
	ConfirmationText:setRGB( 0.74, 0.17, 0.17 ) --[[ @ 0]]
	ConfirmationText:setAlpha( 0 ) --[[ @ 0]]
	ConfirmationText:setTTF( "notosans_regular" ) --[[ @ 0]]
	ConfirmationText:setLetterSpacing( 2 ) --[[ @ 0]]
	ConfirmationText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ConfirmationText:subscribeToGlobalModel( f1_arg1, "ReportPlayerDropDown", "currentValue", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ConfirmationText:setText( CoD.BaseUtility.LocalizeIfXHash( CoD.PCWidgetUtility.ReportReasonToConfirmation( f1_arg1, f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ConfirmationText ) --[[ @ 0]]
	self.ConfirmationText = ConfirmationText --[[ @ 0]]
	
	local ReportButton = nil --[[ @ 0]]
	
	ReportButton = CoD.featureOverlay_Button.new( f1_arg0, f1_arg1, 0.5, 0.5, -340, -140, 0, 0, 370, 430 ) --[[ @ 0]]
	ReportButton:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return CoD.PCWidgetUtility.IsReportDefault( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local ReportDescription = ReportButton --[[ @ 0]]
	local CancelButton = ReportButton.subscribeToModel --[[ @ 0]]
	local ReportDropdown = DataSources.ReportPlayerDropDown.getModel( f1_arg1 ) --[[ @ 0]]
	CancelButton( ReportDescription, ReportDropdown.currentValue, function ( f4_arg0 )
		f1_arg0:updateElementState( ReportButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "currentValue"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ReportButton.ButtonContainer.Title:setText( LocalizeToUpperString( @"menu/report_player" ) ) --[[ @ 0]]
	ReportButton:registerEventHandler( "gain_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f5_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f5_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ReportButton, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		CoD.PCWidgetUtility.SendReportPlayer( self, controller ) --[[ @ 0]]
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( ReportButton ) --[[ @ 0]]
	self.ReportButton = ReportButton --[[ @ 0]]
	
	CancelButton = nil --[[ @ 0]]
	
	CancelButton = CoD.featureOverlay_Button.new( f1_arg0, f1_arg1, 0.5, 0.5, -123, 77, 0, 0, 370, 430 ) --[[ @ 0]]
	CancelButton.ButtonContainer.Title:setText( LocalizeToUpperString( @"menu/cancel" ) ) --[[ @ 0]]
	CancelButton:registerEventHandler( "gain_focus", function ( element, event )
		local f8_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f8_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f8_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f8_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( CancelButton, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( CancelButton ) --[[ @ 0]]
	self.CancelButton = CancelButton --[[ @ 0]]
	
	ReportDescription = nil --[[ @ 0]]
	
	ReportDescription = LUI.UIText.new( 0.5, 0.5, 293, 674, 0, 0, 66, 86 ) --[[ @ 0]]
	ReportDescription:setRGB( 0.54, 0.54, 0.54 ) --[[ @ 0]]
	ReportDescription:setTTF( "notosans_regular" ) --[[ @ 0]]
	ReportDescription:setLetterSpacing( 1 ) --[[ @ 0]]
	ReportDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ReportDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	ReportDescription:subscribeToGlobalModel( f1_arg1, "ReportPlayerDropDown", "currentValue", function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			ReportDescription:setText( CoD.BaseUtility.LocalizeIfXHash( CoD.PCWidgetUtility.ReportReasonToDescription( f1_arg1, f11_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ReportDescription ) --[[ @ 0]]
	self.ReportDescription = ReportDescription --[[ @ 0]]
	
	ReportDropdown = nil --[[ @ 0]]
	
	ReportDropdown = CoD.ReportDropdown_Container.new( f1_arg0, f1_arg1, 0.5, 0.5, -340, 236, 0, 0, 68, 128 ) --[[ @ 0]]
	ReportDropdown:subscribeToGlobalModel( f1_arg1, "ReportPlayerDropDown", nil, function ( model )
		ReportDropdown:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ReportDropdown ) --[[ @ 0]]
	self.ReportDropdown = ReportDropdown --[[ @ 0]]
	
	local CallingCard = CoD.CallingCard.new( f1_arg0, f1_arg1, 0.5, 0.5, -737, -310, 0, 0, 397, 515 ) --[[ @ 0]]
	CallingCard.CallingCardsFrameWidget.CardIconFrame:setScale( 0.66, 1 ) --[[ @ 0]]
	CallingCard:linkToElementModel( self, nil, false, function ( model )
		CallingCard:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CallingCard:linkToElementModel( self, nil, false, function ( model )
		CallingCard.CallingCardsFrameWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CallingCard ) --[[ @ 0]]
	self.CallingCard = CallingCard --[[ @ 0]]
	
	local emblembackplate = LUI.UIImage.new( 0.5, 0.5, -742, -388, 0, 0, 18.5, 382.5 ) --[[ @ 0]]
	emblembackplate:setRGB( 0, 0, 0 ) --[[ @ 0]]
	emblembackplate:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( emblembackplate ) --[[ @ 0]]
	self.emblembackplate = emblembackplate --[[ @ 0]]
	
	local emblem = LUI.UIImage.new( 0.5, 0.5, -737.5, -392.5, 0, 0, 27.5, 372.5 ) --[[ @ 0]]
	emblem:linkToElementModel( self, "xuid", true, function ( model )
		local f15_local0 = model:get() --[[ @ 0]]
		if f15_local0 ~= nil then
			emblem:setupPlayerEmblemByXUID( f15_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( emblem ) --[[ @ 0]]
	self.emblem = emblem --[[ @ 0]]
	
	local optionTextBracketR = LUI.UIImage.new( 0.5, 0.5, -388, -376, 0, 0, 211, 223 ) --[[ @ 0]]
	optionTextBracketR:setAlpha( 0.5 ) --[[ @ 0]]
	optionTextBracketR:setImage( RegisterImage( @"hash_634B555F15CDD010" ) ) --[[ @ 0]]
	optionTextBracketR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	optionTextBracketR:setShaderVector( 0, 3, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( optionTextBracketR ) --[[ @ 0]]
	self.optionTextBracketR = optionTextBracketR --[[ @ 0]]
	
	local optionTextBracketL = LUI.UIImage.new( 0.5, 0.5, -756, -744, 0, 0, 211, 223 ) --[[ @ 0]]
	optionTextBracketL:setAlpha( 0.5 ) --[[ @ 0]]
	optionTextBracketL:setZRot( 180 ) --[[ @ 0]]
	optionTextBracketL:setImage( RegisterImage( @"hash_634B555F15CDD010" ) ) --[[ @ 0]]
	optionTextBracketL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	optionTextBracketL:setShaderVector( 0, 3, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( optionTextBracketL ) --[[ @ 0]]
	self.optionTextBracketL = optionTextBracketL --[[ @ 0]]
	
	local cornerBracket = LUI.UIImage.new( 0.5, 0.5, -748, -736, 0, 0, 13, 25 ) --[[ @ 0]]
	cornerBracket:setAlpha( 0.5 ) --[[ @ 0]]
	cornerBracket:setZRot( 180 ) --[[ @ 0]]
	cornerBracket:setImage( RegisterImage( @"hash_7535662F512D5F90" ) ) --[[ @ 0]]
	cornerBracket:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( cornerBracket ) --[[ @ 0]]
	self.cornerBracket = cornerBracket --[[ @ 0]]
	
	local cornerBracket4 = LUI.UIImage.new( 0.5, 0.5, -748, -736, 0, 0, 377, 389 ) --[[ @ 0]]
	cornerBracket4:setAlpha( 0.5 ) --[[ @ 0]]
	cornerBracket4:setZRot( 270 ) --[[ @ 0]]
	cornerBracket4:setImage( RegisterImage( @"hash_7535662F512D5F90" ) ) --[[ @ 0]]
	cornerBracket4:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( cornerBracket4 ) --[[ @ 0]]
	self.cornerBracket4 = cornerBracket4 --[[ @ 0]]
	
	local cornerBracket2 = LUI.UIImage.new( 0.5, 0.5, -394, -382, 0, 0, 13, 25 ) --[[ @ 0]]
	cornerBracket2:setAlpha( 0.5 ) --[[ @ 0]]
	cornerBracket2:setZRot( 90 ) --[[ @ 0]]
	cornerBracket2:setImage( RegisterImage( @"hash_7535662F512D5F90" ) ) --[[ @ 0]]
	cornerBracket2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( cornerBracket2 ) --[[ @ 0]]
	self.cornerBracket2 = cornerBracket2 --[[ @ 0]]
	
	local cornerBracket3 = LUI.UIImage.new( 0.5, 0.5, -394, -382, 0, 0, 377, 389 ) --[[ @ 0]]
	cornerBracket3:setAlpha( 0.5 ) --[[ @ 0]]
	cornerBracket3:setImage( RegisterImage( @"hash_7535662F512D5F90" ) ) --[[ @ 0]]
	cornerBracket3:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( cornerBracket3 ) --[[ @ 0]]
	self.cornerBracket3 = cornerBracket3 --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0.5, 0.5, -733, -397, 0, 0, 15, 17 ) --[[ @ 0]]
	Image:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local Image2 = LUI.UIImage.new( 0.5, 0.5, -733, -397, 0, 0, 385, 387 ) --[[ @ 0]]
	Image2:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( Image2 ) --[[ @ 0]]
	self.Image2 = Image2 --[[ @ 0]]
	
	f1_local7.id = "ButtonList" --[[ @ 0]]
	if CoD.isPC then
		ReportTextBox.id = "ReportTextBox" --[[ @ 0]]
	end
	if CoD.isPC then
		ReportButton.id = "ReportButton" --[[ @ 0]]
	end
	if CoD.isPC then
		CancelButton.id = "CancelButton" --[[ @ 0]]
	end
	if CoD.isPC then
		ReportDropdown.id = "ReportDropdown" --[[ @ 0]]
	end
	CallingCard.id = "CallingCard" --[[ @ 0]]
	self.__defaultFocus = f1_local7 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.systemOverlay_reportPlayer.__onClose = function ( f16_arg0 )
	f16_arg0.ButtonList:close() --[[ @ 0]]
	f16_arg0.ReportTextBox:close() --[[ @ 0]]
	f16_arg0.ConfirmationText:close() --[[ @ 0]]
	f16_arg0.ReportButton:close() --[[ @ 0]]
	f16_arg0.CancelButton:close() --[[ @ 0]]
	f16_arg0.ReportDescription:close() --[[ @ 0]]
	f16_arg0.ReportDropdown:close() --[[ @ 0]]
	f16_arg0.CallingCard:close() --[[ @ 0]]
	f16_arg0.emblem:close() --[[ @ 0]]
end
 --[[ @ 0]]
