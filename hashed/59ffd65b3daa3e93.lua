-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:12d64ca9d3c705ce" ) --[[ @ 0]]
require( "x64:787dfa54b5d08484" ) --[[ @ 0]]
require( "x64:a2cc8976ed23254" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]
require( "x64:40c7e896ee4bc3f8" ) --[[ @ 0]]

CoD.MPSpecialistHUBTags_TagFrame = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MPSpecialistHUBTags_TagFrame.__defaultWidth = 1920 --[[ @ 0]]
CoD.MPSpecialistHUBTags_TagFrame.__defaultHeight = 1080 --[[ @ 0]]
CoD.MPSpecialistHUBTags_TagFrame.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MPSpecialistHUBTags_TagFrame ) --[[ @ 0]]
	self.id = "MPSpecialistHUBTags_TagFrame" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FramingCornerBrackets = CoD.CommonCornerBrackets01.new( f1_arg0, f1_arg1, 0, 0, 295, 1162, 0, 0, 146, 878 ) --[[ @ 0]]
	FramingCornerBrackets:setAlpha( 0.1 ) --[[ @ 0]]
	self:addElement( FramingCornerBrackets ) --[[ @ 0]]
	self.FramingCornerBrackets = FramingCornerBrackets --[[ @ 0]]
	
	local emblemListBg = LUI.UIImage.new( 0, 0, 204.5, 1253.5, 0, 0, 81, 926 ) --[[ @ 0]]
	emblemListBg:setScale( 0.77, 0.77 ) --[[ @ 0]]
	emblemListBg:setImage( RegisterImage( @"uie_ui_menu_emblem_empty_bg" ) ) --[[ @ 0]]
	emblemListBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	emblemListBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	emblemListBg:setupNineSliceShader( 212, 212 ) --[[ @ 0]]
	self:addElement( emblemListBg ) --[[ @ 0]]
	self.emblemListBg = emblemListBg --[[ @ 0]]
	
	local tags = LUI.UIList.new( f1_arg0, f1_arg1, 11, 0, nil, true, false, false, false ) --[[ @ 0]]
	tags:setLeftRight( 0, 0, 327, 1131 ) --[[ @ 0]]
	tags:setTopBottom( 0, 0, 179, 820 ) --[[ @ 0]]
	tags:setWidgetType( CoD.HubTagButton ) --[[ @ 0]]
	tags:setHorizontalCount( 5 ) --[[ @ 0]]
	tags:setVerticalCount( 4 ) --[[ @ 0]]
	tags:setSpacing( 11 ) --[[ @ 0]]
	tags:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	tags:setDataSource( "SpecialistTagsList" ) --[[ @ 0]]
	tags:linkToElementModel( tags, "owned", true, function ( model, f2_arg1 )
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	tags:linkToElementModel( tags, "trialLocked", true, function ( model, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	tags:registerEventHandler( "list_item_lose_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		CoD.BreadcrumbUtility.SetSprayGestureAsOld( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	tags:registerEventHandler( "gain_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f5_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f5_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( tags, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "trialLocked" ) then
			PlaySoundAlias( "uin_main_edit" ) --[[ @ 0]]
			CoD.PlayerRoleUtility.BindGestureTagToSlot( menu, element, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "trialLocked" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( tags ) --[[ @ 0]]
	self.tags = tags --[[ @ 0]]
	
	local verticalCounter = CoD.verticalCounter.new( f1_arg0, f1_arg1, 0, 0, 327, 1131, 0, 0, 820, 857 ) --[[ @ 0]]
	self:addElement( verticalCounter ) --[[ @ 0]]
	self.verticalCounter = verticalCounter --[[ @ 0]]
	
	local DotLineTop = LUI.UIImage.new( 0.5, 0.5, -636.5, 174.5, 0, 0, 161, 165 ) --[[ @ 0]]
	DotLineTop:setAlpha( 0.4 ) --[[ @ 0]]
	DotLineTop:setImage( RegisterImage( @"uie_ui_menu_social_emblem_dotline" ) ) --[[ @ 0]]
	DotLineTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	DotLineTop:setShaderVector( 0, 1.2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( DotLineTop ) --[[ @ 0]]
	self.DotLineTop = DotLineTop --[[ @ 0]]
	
	local DotLineBottom = LUI.UIImage.new( 0.5, 0.5, -636.5, 174.5, 0, 0, 859, 863 ) --[[ @ 0]]
	DotLineBottom:setAlpha( 0.4 ) --[[ @ 0]]
	DotLineBottom:setImage( RegisterImage( @"uie_ui_menu_social_emblem_dotline" ) ) --[[ @ 0]]
	DotLineBottom:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	DotLineBottom:setShaderVector( 0, 1.2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( DotLineBottom ) --[[ @ 0]]
	self.DotLineBottom = DotLineBottom --[[ @ 0]]
	
	local HUBTagPreview = CoD.HUBTagPreview.new( f1_arg0, f1_arg1, 0, 0, 1216.5, 1763.5, 0, 0, 179, 869 ) --[[ @ 0]]
	self:addElement( HUBTagPreview ) --[[ @ 0]]
	self.HUBTagPreview = HUBTagPreview --[[ @ 0]]
	
	local TrialWidget = CoD.TrialInfoBannerWidget.new( f1_arg0, f1_arg1, 0, 0, 1216.5, 1763.5, 0, 0, 878, 913 ) --[[ @ 0]]
	TrialWidget:mergeStateConditions( {
		{
			stateName = "Shown",
			condition = function ( menu, element, event )
				return IsGameTrial() and CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "trialLocked" )
			end
		}
	} ) --[[ @ 0]]
	TrialWidget:linkToElementModel( TrialWidget, "trialLocked", true, function ( model )
		f1_arg0:updateElementState( TrialWidget, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "trialLocked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( TrialWidget ) --[[ @ 0]]
	self.TrialWidget = TrialWidget --[[ @ 0]]
	
	HUBTagPreview:linkToElementModel( tags, nil, false, function ( model )
		HUBTagPreview:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	TrialWidget:linkToElementModel( tags, nil, false, function ( model )
		TrialWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	tags.id = "tags" --[[ @ 0]]
	verticalCounter.id = "verticalCounter" --[[ @ 0]]
	self.__defaultFocus = tags --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local9 = self --[[ @ 0]]
	CoD.GridAndListUtility.SetFocusableBackingWidgetOnPC( tags ) --[[ @ 0]]
	SetAsListVerticalCounter( self, verticalCounter, "tags" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.MPSpecialistHUBTags_TagFrame.__resetProperties = function ( f12_arg0 )
	f12_arg0.tags:completeAnimation() --[[ @ 0]]
	f12_arg0.tags:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MPSpecialistHUBTags_TagFrame.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Intro = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				f15_arg0:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f15_arg0:setAlpha( 1 ) --[[ @ 0]]
				f15_arg0:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.tags:beginAnimation( 50 ) --[[ @ 0]]
			f14_arg0.tags:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.tags:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
			f14_arg0.tags:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.MPSpecialistHUBTags_TagFrame.__onClose = function ( f16_arg0 )
	f16_arg0.HUBTagPreview:close() --[[ @ 0]]
	f16_arg0.TrialWidget:close() --[[ @ 0]]
	f16_arg0.FramingCornerBrackets:close() --[[ @ 0]]
	f16_arg0.tags:close() --[[ @ 0]]
	f16_arg0.verticalCounter:close() --[[ @ 0]]
end
 --[[ @ 0]]
