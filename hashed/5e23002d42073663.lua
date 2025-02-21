-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/footer/footercontainer_frontend_right" ) --[[ @ 0]]
require( "x64:557cec604c8a7e98" ) --[[ @ 0]]
require( "x64:37d5f0d326cd7f45" ) --[[ @ 0]]
require( "x64:5f90425d9cc383e6" ) --[[ @ 0]]

CoD.Survey = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.Survey = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "Survey", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.Survey ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Blur = LUI.UIImage.new( 0.03, 1.03, -64, -64, 0.06, 1.06, -64, -64 ) --[[ @ 0]]
	Blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	Blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Blur ) --[[ @ 0]]
	self.Blur = Blur --[[ @ 0]]
	
	local BackgroundImage = CoD.SuveryBackground.new( f1_local1, f1_arg0, 0, 0, 240, 1680, 0, 0, 135, 945 ) --[[ @ 0]]
	self:addElement( BackgroundImage ) --[[ @ 0]]
	self.BackgroundImage = BackgroundImage --[[ @ 0]]
	
	local BackingOverlay = LUI.UIImage.new( 0, 0, 240, 1680, 0, 0, 135, 945 ) --[[ @ 0]]
	BackingOverlay:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BackingOverlay:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_gradient_normal" ) ) --[[ @ 0]]
	BackingOverlay:setShaderVector( 0, 0, 0, 0, 1 ) --[[ @ 0]]
	BackingOverlay:setShaderVector( 1, 1, 1, 1, 0.4 ) --[[ @ 0]]
	BackingOverlay:setShaderVector( 2, 0.65, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BackingOverlay ) --[[ @ 0]]
	self.BackingOverlay = BackingOverlay --[[ @ 0]]
	
	local ResponseFrame = LUI.UIFrame.new( f1_local1, f1_arg0, 0, 0, false ) --[[ @ 0]]
	ResponseFrame:setLeftRight( 0.5, 0.5, -610.5, 204.5 ) --[[ @ 0]]
	ResponseFrame:setTopBottom( 0.5, 0.5, -112, 316 ) --[[ @ 0]]
	ResponseFrame:subscribeToGlobalModel( f1_arg0, "SurveyQuestion", "responseWidget", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ResponseFrame:changeFrameWidget( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ResponseFrame ) --[[ @ 0]]
	self.ResponseFrame = ResponseFrame --[[ @ 0]]
	
	local QuestionText = CoD.SurveyTexts.new( f1_local1, f1_arg0, 0.5, 0.5, -610.5, 40.5, 0.5, 0.5, -327, -180 ) --[[ @ 0]]
	QuestionText:subscribeToGlobalModel( f1_arg0, "SurveyQuestion", nil, function ( model )
		QuestionText:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( QuestionText ) --[[ @ 0]]
	self.QuestionText = QuestionText --[[ @ 0]]
	
	local AnsweredSubTitle = CoD.SurveyThanks.new( f1_local1, f1_arg0, 0, 0, 349.5, 959.5, 0, 0, 479, 554 ) --[[ @ 0]]
	AnsweredSubTitle:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( AnsweredSubTitle ) --[[ @ 0]]
	self.AnsweredSubTitle = AnsweredSubTitle --[[ @ 0]]
	
	local FooterContainerFrontendRight = CoD.FooterContainer_Frontend_Right.new( f1_local1, f1_arg0, 0, 1, 0, 0, 1, 1, -48, 0 ) --[[ @ 0]]
	FooterContainerFrontendRight:subscribeToGlobalModel( f1_arg0, "StartMenuBreadcrumbs", "themenu", function ( model )
		FooterContainerFrontendRight.LeftContainerPC.PersistentLeftContainer.FooterButtonPlayerAccount.Spacer3.newIcon:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	FooterContainerFrontendRight:subscribeToGlobalModel( f1_arg0, "StartMenuBreadcrumbs", "themenu", function ( model )
		FooterContainerFrontendRight.CenterContainer.Options.newIcon:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	FooterContainerFrontendRight:registerEventHandler( "menu_loaded", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f6_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f6_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f6_local0 then
			f6_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f6_local0
	end ) --[[ @ 0]]
	self:addElement( FooterContainerFrontendRight ) --[[ @ 0]]
	self.FooterContainerFrontendRight = FooterContainerFrontendRight --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Answered",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg0, "SurveyQuestion", "answered" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local9 = self --[[ @ 0]]
	local f1_local10 = self.subscribeToModel --[[ @ 0]]
	local f1_local11 = DataSources.SurveyQuestion.getModel( f1_arg0 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11.answered, function ( f8_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f8_arg0:get(),
			modelName = "answered"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local9 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local11 = DataSources.SurveyQuestion.getModel( f1_arg0 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11.answered, function ( f9_arg0, f9_arg1 )
		CoD.Menu.UpdateButtonShownState( f9_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		CoD.SurveyUtility.CloseSurvey( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if not CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( controller, "SurveyQuestion", "answered" ) then
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( controller, "SurveyQuestion", "answered" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg0, "SurveyQuestion", "surveyQuestionIndex", function ( model )
		local f14_local0 = self --[[ @ 0]]
		UpdateDataSource( self, self.QuestionText, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ResponseFrame.id = "ResponseFrame" --[[ @ 0]]
	FooterContainerFrontendRight:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		FooterContainerFrontendRight.id = "FooterContainerFrontendRight" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = ResponseFrame --[[ @ 0]]
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
CoD.Survey.__resetProperties = function ( f15_arg0 )
	f15_arg0.QuestionText:completeAnimation() --[[ @ 0]]
	f15_arg0.ResponseFrame:completeAnimation() --[[ @ 0]]
	f15_arg0.AnsweredSubTitle:completeAnimation() --[[ @ 0]]
	f15_arg0.QuestionText:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.ResponseFrame:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.AnsweredSubTitle:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Survey.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Answered = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f17_arg0.ResponseFrame:completeAnimation() --[[ @ 0]]
			f17_arg0.ResponseFrame:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.ResponseFrame ) --[[ @ 0]]
			f17_arg0.QuestionText:completeAnimation() --[[ @ 0]]
			f17_arg0.QuestionText:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.QuestionText ) --[[ @ 0]]
			f17_arg0.AnsweredSubTitle:completeAnimation() --[[ @ 0]]
			f17_arg0.AnsweredSubTitle:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.AnsweredSubTitle ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Survey.__onClose = function ( f18_arg0 )
	f18_arg0.BackgroundImage:close() --[[ @ 0]]
	f18_arg0.ResponseFrame:close() --[[ @ 0]]
	f18_arg0.QuestionText:close() --[[ @ 0]]
	f18_arg0.AnsweredSubTitle:close() --[[ @ 0]]
	f18_arg0.FooterContainerFrontendRight:close() --[[ @ 0]]
end
 --[[ @ 0]]
