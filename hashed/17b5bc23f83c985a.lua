-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/menus/charactercustomization/personalizecharacter" ) --[[ @ 0]]
require( "x64:362080ad3aaa22da" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/layoutelements/commonbglayoutlinkline" ) --[[ @ 0]]
require( "x64:c3fa19037d61cad" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]

CoD.StartMenu_Personalization_ZM = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Personalization_ZM.__defaultWidth = 1920 --[[ @ 0]]
CoD.StartMenu_Personalization_ZM.__defaultHeight = 780 --[[ @ 0]]
CoD.StartMenu_Personalization_ZM.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Personalization_ZM ) --[[ @ 0]]
	self.id = "StartMenu_Personalization_ZM" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CommonBgLayoutLinkLine = CoD.CommonBgLayoutLinkLine.new( f1_arg0, f1_arg1, 0.5, 0.5, 234, 943, 0.5, 0.5, -335.5, -306.5 ) --[[ @ 0]]
	CommonBgLayoutLinkLine:setAlpha( 0.5 ) --[[ @ 0]]
	CommonBgLayoutLinkLine:setZRot( 180 ) --[[ @ 0]]
	self:addElement( CommonBgLayoutLinkLine ) --[[ @ 0]]
	self.CommonBgLayoutLinkLine = CommonBgLayoutLinkLine --[[ @ 0]]
	
	local CommonBgLayoutLinkLine2 = CoD.CommonBgLayoutLinkLine.new( f1_arg0, f1_arg1, 0.5, 0.5, -30.5, 678.5, 0.5, 0.5, -88.5, -59.5 ) --[[ @ 0]]
	CommonBgLayoutLinkLine2:setAlpha( 0.9 ) --[[ @ 0]]
	CommonBgLayoutLinkLine2:setZRot( -90 ) --[[ @ 0]]
	self:addElement( CommonBgLayoutLinkLine2 ) --[[ @ 0]]
	self.CommonBgLayoutLinkLine2 = CommonBgLayoutLinkLine2 --[[ @ 0]]
	
	local CommonInformationFrame = CoD.CommonInformationFrame.new( f1_arg0, f1_arg1, 0.5, 0.5, 324, 811, 0.5, 0.5, -228, 275 ) --[[ @ 0]]
	CommonInformationFrame.SceneBlur:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( CommonInformationFrame ) --[[ @ 0]]
	self.CommonInformationFrame = CommonInformationFrame --[[ @ 0]]
	
	local specialists = LUI.UIList.new( f1_arg0, f1_arg1, 12, 0, nil, false, false, false, false ) --[[ @ 0]]
	specialists:setLeftRight( 0.5, 0.5, -589, 55 ) --[[ @ 0]]
	specialists:setTopBottom( 0.5, 0.5, -271.5, 271.5 ) --[[ @ 0]]
	specialists:setWidgetType( CoD.HubSpecialist_character ) --[[ @ 0]]
	specialists:setHorizontalCount( 4 ) --[[ @ 0]]
	specialists:setVerticalCount( 3 ) --[[ @ 0]]
	specialists:setSpacing( 12 ) --[[ @ 0]]
	specialists:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	specialists:setFilter( function ( f2_arg0 )
		return f2_arg0.hasCustomization:get() == true
	end ) --[[ @ 0]]
	specialists:setDataSource( "PositionLoadoutList" ) --[[ @ 0]]
	specialists:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( specialists, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
		CoD.ZMStoryUtility.UpdateSelectedCharacterStory( element, controller ) --[[ @ 0]]
		OpenOverlay( self, "PersonalizeCharacter", controller, {
			model = element:getModel(),
			properties = {
				_sessionMode = menu._sessionMode,
				_storageLoadoutBuffer = menu._storageLoadoutBuffer
			}
		} ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( specialists ) --[[ @ 0]]
	self.specialists = specialists --[[ @ 0]]
	
	local SpecialistCornerTR = LUI.UIImage.new( 0.5, 0.5, 75, 99, 0.5, 0.5, -288, -264 ) --[[ @ 0]]
	SpecialistCornerTR:setAlpha( 0.25 ) --[[ @ 0]]
	SpecialistCornerTR:setZRot( -90 ) --[[ @ 0]]
	SpecialistCornerTR:setScale( 0.5, 0.5 ) --[[ @ 0]]
	SpecialistCornerTR:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_window_corner" ) ) --[[ @ 0]]
	SpecialistCornerTR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SpecialistCornerTR:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SpecialistCornerTR ) --[[ @ 0]]
	self.SpecialistCornerTR = SpecialistCornerTR --[[ @ 0]]
	
	local SpecialistCornerTL = LUI.UIImage.new( 0.5, 0.5, -634, -610, 0.5, 0.5, -288, -264 ) --[[ @ 0]]
	SpecialistCornerTL:setAlpha( 0.2 ) --[[ @ 0]]
	SpecialistCornerTL:setScale( 0.5, 0.5 ) --[[ @ 0]]
	SpecialistCornerTL:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_window_corner" ) ) --[[ @ 0]]
	SpecialistCornerTL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SpecialistCornerTL:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SpecialistCornerTL ) --[[ @ 0]]
	self.SpecialistCornerTL = SpecialistCornerTL --[[ @ 0]]
	
	local SpecialistCornerBR = LUI.UIImage.new( 0.5, 0.5, 75, 99, 0.5, 0.5, 288.5, 312.5 ) --[[ @ 0]]
	SpecialistCornerBR:setAlpha( 0.2 ) --[[ @ 0]]
	SpecialistCornerBR:setZRot( 180 ) --[[ @ 0]]
	SpecialistCornerBR:setScale( 0.5, 0.5 ) --[[ @ 0]]
	SpecialistCornerBR:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_window_corner" ) ) --[[ @ 0]]
	SpecialistCornerBR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SpecialistCornerBR:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SpecialistCornerBR ) --[[ @ 0]]
	self.SpecialistCornerBR = SpecialistCornerBR --[[ @ 0]]
	
	local SpecialistCornerBL = LUI.UIImage.new( 0.5, 0.5, -634, -610, 0.5, 0.5, 288.5, 312.5 ) --[[ @ 0]]
	SpecialistCornerBL:setAlpha( 0.2 ) --[[ @ 0]]
	SpecialistCornerBL:setZRot( 90 ) --[[ @ 0]]
	SpecialistCornerBL:setScale( 0.5, 0.5 ) --[[ @ 0]]
	SpecialistCornerBL:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_window_corner" ) ) --[[ @ 0]]
	SpecialistCornerBL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SpecialistCornerBL:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SpecialistCornerBL ) --[[ @ 0]]
	self.SpecialistCornerBL = SpecialistCornerBL --[[ @ 0]]
	
	local verticalCounter = CoD.verticalCounter.new( f1_arg0, f1_arg1, 0.5, 0.5, -417, -117, 0.5, 0.5, 299.5, 336.5 ) --[[ @ 0]]
	self:addElement( verticalCounter ) --[[ @ 0]]
	self.verticalCounter = verticalCounter --[[ @ 0]]
	
	CommonInformationFrame:linkToElementModel( specialists, "jobTitle", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			CommonInformationFrame.altHeader:setText( Engine[@"hash_4F9F1239CFD921FE"]( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CommonInformationFrame:linkToElementModel( specialists, "name", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			CommonInformationFrame.header:setText( LocalizeToUpperString( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CommonInformationFrame:linkToElementModel( specialists, "detailedDesc", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			CommonInformationFrame.description:setText( Engine[@"hash_4F9F1239CFD921FE"]( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	local f1_local10 = self --[[ @ 0]]
	local f1_local11 = self.subscribeToModel --[[ @ 0]]
	local f1_local12 = DataSources.CharacterBreadcrumbs.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local11( f1_local10, f1_local12.breadcrumbCount, function ( f9_arg0, f9_arg1 )
		CoD.Menu.UpdateButtonShownState( f9_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_rstick_pressed"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( self, f1_arg1, Enum[@"luibutton"][@"lui_key_rstick_pressed"], "ui_contextual_2", function ( element, menu, controller, model )
		if CoD.ModelUtility.IsGlobalDataSourceModelValueGreaterThan( controller, "CharacterBreadcrumbs", "breadcrumbCount", 0 ) and not IsPC() then
			CoD.BreadcrumbUtility.ClearAllPersonalizationBreadcrumbs( menu, controller ) --[[ @ 0]]
			UpdateElementState( self, "specialists", controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsGlobalDataSourceModelValueGreaterThan( controller, "CharacterBreadcrumbs", "breadcrumbCount", 0 ) and not IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_rstick_pressed"], @"hash_65619D8212EDA599", nil, "ui_contextual_2" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	specialists.id = "specialists" --[[ @ 0]]
	verticalCounter.id = "verticalCounter" --[[ @ 0]]
	self.__defaultFocus = specialists --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local11 = self --[[ @ 0]]
	SetAsListVerticalCounter( self, verticalCounter, "specialists" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Personalization_ZM.__resetProperties = function ( f12_arg0 )
	f12_arg0.SpecialistCornerBL:completeAnimation() --[[ @ 0]]
	f12_arg0.SpecialistCornerBR:completeAnimation() --[[ @ 0]]
	f12_arg0.SpecialistCornerTL:completeAnimation() --[[ @ 0]]
	f12_arg0.SpecialistCornerTR:completeAnimation() --[[ @ 0]]
	f12_arg0.specialists:completeAnimation() --[[ @ 0]]
	f12_arg0.CommonInformationFrame:completeAnimation() --[[ @ 0]]
	f12_arg0.verticalCounter:completeAnimation() --[[ @ 0]]
	f12_arg0.SpecialistCornerBL:setAlpha( 0.2 ) --[[ @ 0]]
	f12_arg0.SpecialistCornerBR:setAlpha( 0.2 ) --[[ @ 0]]
	f12_arg0.SpecialistCornerTL:setAlpha( 0.2 ) --[[ @ 0]]
	f12_arg0.SpecialistCornerTR:setAlpha( 0.25 ) --[[ @ 0]]
	f12_arg0.specialists:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.CommonInformationFrame:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.verticalCounter:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Personalization_ZM.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					f15_arg0:beginAnimation( 160 ) --[[ @ 0]]
					f15_arg0:setAlpha( 1 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.CommonInformationFrame:beginAnimation( 340 ) --[[ @ 0]]
				f13_arg0.CommonInformationFrame:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.CommonInformationFrame:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.CommonInformationFrame:completeAnimation() --[[ @ 0]]
			f13_arg0.CommonInformationFrame:setAlpha( 0 ) --[[ @ 0]]
			f13_local0( f13_arg0.CommonInformationFrame ) --[[ @ 0]]
			local f13_local1 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					f17_arg0:beginAnimation( 150 ) --[[ @ 0]]
					f17_arg0:setAlpha( 1 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.specialists:beginAnimation( 100 ) --[[ @ 0]]
				f13_arg0.specialists:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.specialists:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.specialists:completeAnimation() --[[ @ 0]]
			f13_arg0.specialists:setAlpha( 0 ) --[[ @ 0]]
			f13_local1( f13_arg0.specialists ) --[[ @ 0]]
			local f13_local2 = function ( f18_arg0 )
				f13_arg0.SpecialistCornerTR:beginAnimation( 150 ) --[[ @ 0]]
				f13_arg0.SpecialistCornerTR:setAlpha( 0.25 ) --[[ @ 0]]
				f13_arg0.SpecialistCornerTR:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.SpecialistCornerTR:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.SpecialistCornerTR:completeAnimation() --[[ @ 0]]
			f13_arg0.SpecialistCornerTR:setAlpha( 0 ) --[[ @ 0]]
			f13_local2( f13_arg0.SpecialistCornerTR ) --[[ @ 0]]
			local f13_local3 = function ( f19_arg0 )
				f13_arg0.SpecialistCornerTL:beginAnimation( 150 ) --[[ @ 0]]
				f13_arg0.SpecialistCornerTL:setAlpha( 0.2 ) --[[ @ 0]]
				f13_arg0.SpecialistCornerTL:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.SpecialistCornerTL:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.SpecialistCornerTL:completeAnimation() --[[ @ 0]]
			f13_arg0.SpecialistCornerTL:setAlpha( 0 ) --[[ @ 0]]
			f13_local3( f13_arg0.SpecialistCornerTL ) --[[ @ 0]]
			local f13_local4 = function ( f20_arg0 )
				f13_arg0.SpecialistCornerBR:beginAnimation( 150 ) --[[ @ 0]]
				f13_arg0.SpecialistCornerBR:setAlpha( 0.2 ) --[[ @ 0]]
				f13_arg0.SpecialistCornerBR:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.SpecialistCornerBR:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.SpecialistCornerBR:completeAnimation() --[[ @ 0]]
			f13_arg0.SpecialistCornerBR:setAlpha( 0 ) --[[ @ 0]]
			f13_local4( f13_arg0.SpecialistCornerBR ) --[[ @ 0]]
			local f13_local5 = function ( f21_arg0 )
				f13_arg0.SpecialistCornerBL:beginAnimation( 150 ) --[[ @ 0]]
				f13_arg0.SpecialistCornerBL:setAlpha( 0.2 ) --[[ @ 0]]
				f13_arg0.SpecialistCornerBL:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.SpecialistCornerBL:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.SpecialistCornerBL:completeAnimation() --[[ @ 0]]
			f13_arg0.SpecialistCornerBL:setAlpha( 0 ) --[[ @ 0]]
			f13_local5( f13_arg0.SpecialistCornerBL ) --[[ @ 0]]
			local f13_local6 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					f23_arg0:beginAnimation( 150 ) --[[ @ 0]]
					f23_arg0:setAlpha( 1 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.verticalCounter:beginAnimation( 250 ) --[[ @ 0]]
				f13_arg0.verticalCounter:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.verticalCounter:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.verticalCounter:completeAnimation() --[[ @ 0]]
			f13_arg0.verticalCounter:setAlpha( 0 ) --[[ @ 0]]
			f13_local6( f13_arg0.verticalCounter ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_Personalization_ZM.__onClose = function ( f24_arg0 )
	f24_arg0.CommonInformationFrame:close() --[[ @ 0]]
	f24_arg0.CommonBgLayoutLinkLine:close() --[[ @ 0]]
	f24_arg0.CommonBgLayoutLinkLine2:close() --[[ @ 0]]
	f24_arg0.specialists:close() --[[ @ 0]]
	f24_arg0.verticalCounter:close() --[[ @ 0]]
end
 --[[ @ 0]]
