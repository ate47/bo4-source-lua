-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:7fbffc86e9a93477" ) --[[ @ 0]]
require( "x64:12d64ca9d3c705ce" ) --[[ @ 0]]
require( "x64:51e49bf76681d2a3" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]
require( "x64:40c7e896ee4bc3f8" ) --[[ @ 0]]
require( "x64:10e092a33d3fffe9" ) --[[ @ 0]]

CoD.MPSpecialistHUBGesturesInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MPSpecialistHUBGesturesInternal.__defaultWidth = 1920 --[[ @ 0]]
CoD.MPSpecialistHUBGesturesInternal.__defaultHeight = 1080 --[[ @ 0]]
CoD.MPSpecialistHUBGesturesInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.PlayerRoleUtility.SendClientNotifyGestureMenu( f1_arg0, f1_arg1 ) --[[ @ 0]]
	CoD.PlayerRoleUtility.RefreshAnim( f1_arg1 ) --[[ @ 0]]
	self:setClass( CoD.MPSpecialistHUBGesturesInternal ) --[[ @ 0]]
	self.id = "MPSpecialistHUBGesturesInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FramingCornerBrackets = CoD.CommonCornerBrackets01.new( f1_arg0, f1_arg1, 0, 0, 299.5, 1166.5, 0, 0, 139.5, 871.5 ) --[[ @ 0]]
	FramingCornerBrackets:setAlpha( 0.1 ) --[[ @ 0]]
	self:addElement( FramingCornerBrackets ) --[[ @ 0]]
	self.FramingCornerBrackets = FramingCornerBrackets --[[ @ 0]]
	
	local emblemListBg = LUI.UIImage.new( 0, 0, 209, 1258, 0, 0, 74.5, 919.5 ) --[[ @ 0]]
	emblemListBg:setScale( 0.77, 0.77 ) --[[ @ 0]]
	emblemListBg:setImage( RegisterImage( @"uie_ui_menu_emblem_empty_bg" ) ) --[[ @ 0]]
	emblemListBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	emblemListBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	emblemListBg:setupNineSliceShader( 212, 212 ) --[[ @ 0]]
	self:addElement( emblemListBg ) --[[ @ 0]]
	self.emblemListBg = emblemListBg --[[ @ 0]]
	
	local gestures = LUI.UIList.new( f1_arg0, f1_arg1, 11, 0, nil, true, false, false, false ) --[[ @ 0]]
	gestures:setLeftRight( 0, 0, 331.5, 1135.5 ) --[[ @ 0]]
	gestures:setTopBottom( 0, 0, 172.5, 813.5 ) --[[ @ 0]]
	gestures:setWidgetType( CoD.HubGestureButton ) --[[ @ 0]]
	gestures:setHorizontalCount( 5 ) --[[ @ 0]]
	gestures:setVerticalCount( 4 ) --[[ @ 0]]
	gestures:setSpacing( 11 ) --[[ @ 0]]
	gestures:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	gestures:setDataSource( "SpecialistGesturesList" ) --[[ @ 0]]
	gestures:linkToElementModel( gestures, "owned", true, function ( model, f2_arg1 )
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	gestures:linkToElementModel( gestures, "trialLocked", true, function ( model, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	gestures:appendEventHandler( "input_source_changed", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local verticalCounter = gestures --[[ @ 0]]
	local PreviewMessagePC = gestures.subscribeToModel --[[ @ 0]]
	local ItemInfoPanel = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	PreviewMessagePC( verticalCounter, ItemInfoPanel.LastInput, function ( f5_arg0, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	gestures:linkToElementModel( gestures, "available", true, function ( model, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	gestures:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if IsMouseOrKeyboard( f1_arg1 ) and CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "available" ) then
			CoD.PlayerRoleUtility.PreviewGesture( f1_arg0, element, f1_arg1, false ) --[[ @ 0]]
		end
		return f7_local0
	end ) --[[ @ 0]]
	gestures:registerEventHandler( "list_item_lose_focus", function ( element, event )
		local f8_local0 = nil --[[ @ 0]]
		CoD.BreadcrumbUtility.SetSprayGestureAsOld( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
		return f8_local0
	end ) --[[ @ 0]]
	gestures:registerEventHandler( "gain_focus", function ( element, event )
		local f9_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f9_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f9_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"] ) --[[ @ 0]]
		return f9_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( gestures, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
		if not IsPC() and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "trialLocked" ) then
			PlaySoundAlias( "uin_main_edit" ) --[[ @ 0]]
			CoD.PlayerRoleUtility.BindGestureTagToSlot( menu, element, controller ) --[[ @ 0]]
			return true
		elseif IsPC() and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "trialLocked" ) then
			CoD.PlayerRoleUtility.PreviewGesture( menu, element, controller, false ) --[[ @ 0]]
			PlaySoundAlias( "uin_main_edit" ) --[[ @ 0]]
			CoD.PlayerRoleUtility.BindGestureTagToSlot( menu, element, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsPC() and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "trialLocked" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, nil ) --[[ @ 0]]
			return true
		elseif IsPC() and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "trialLocked" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( gestures, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"], nil, function ( element, menu, controller, model )
		if IsGamepad( controller ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "available" ) then
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			CoD.PlayerRoleUtility.PreviewGesture( menu, element, controller, true ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsGamepad( controller ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "available" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"], @"hash_52FB29ED3A3CA79", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( gestures, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], "MOUSE2", function ( element, menu, controller, model )
		if CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "available" ) then
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			CoD.PlayerRoleUtility.PreviewGesture( menu, element, controller, true ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "available" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], @"hash_0", nil, "MOUSE2" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( gestures ) --[[ @ 0]]
	self.gestures = gestures --[[ @ 0]]
	
	PreviewMessagePC = nil --[[ @ 0]]
	
	PreviewMessagePC = CoD.PCStartMenuOptionsUnbindKeybindMessage.new( f1_arg0, f1_arg1, 0, 0, 152.5, 278.5, 0, 0, 181.5, 205.5 ) --[[ @ 0]]
	PreviewMessagePC:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	PreviewMessagePC:appendEventHandler( "input_source_changed", function ( f17_arg0, f17_arg1 )
		f17_arg1.menu = f17_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( PreviewMessagePC, f17_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ItemInfoPanel = PreviewMessagePC --[[ @ 0]]
	verticalCounter = PreviewMessagePC.subscribeToModel --[[ @ 0]]
	local DotLineBottom = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	verticalCounter( ItemInfoPanel, DotLineBottom.LastInput, function ( f18_arg0 )
		f1_arg0:updateElementState( PreviewMessagePC, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PreviewMessagePC:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	PreviewMessagePC:setAlpha( 0 ) --[[ @ 0]]
	PreviewMessagePC.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_66325526C09EADAB" ) ) --[[ @ 0]]
	self:addElement( PreviewMessagePC ) --[[ @ 0]]
	self.PreviewMessagePC = PreviewMessagePC --[[ @ 0]]
	
	verticalCounter = CoD.verticalCounter.new( f1_arg0, f1_arg1, 0, 0, 331.5, 1135.5, 0, 0, 813.5, 850.5 ) --[[ @ 0]]
	self:addElement( verticalCounter ) --[[ @ 0]]
	self.verticalCounter = verticalCounter --[[ @ 0]]
	
	ItemInfoPanel = CoD.BM_ItemInfoPanel.new( f1_arg0, f1_arg1, 1, 1, -692.5, -152.5, 0.5, 0.5, 247.5, 397.5 ) --[[ @ 0]]
	self:addElement( ItemInfoPanel ) --[[ @ 0]]
	self.ItemInfoPanel = ItemInfoPanel --[[ @ 0]]
	
	DotLineBottom = LUI.UIImage.new( 0, 0, 328, 1139, 0, 0, 852.5, 856.5 ) --[[ @ 0]]
	DotLineBottom:setAlpha( 0.4 ) --[[ @ 0]]
	DotLineBottom:setImage( RegisterImage( @"uie_ui_menu_social_emblem_dotline" ) ) --[[ @ 0]]
	DotLineBottom:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	DotLineBottom:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( DotLineBottom ) --[[ @ 0]]
	self.DotLineBottom = DotLineBottom --[[ @ 0]]
	
	local DotLineTop = LUI.UIImage.new( 0, 0, 328, 1139, 0, 0, 154.5, 158.5 ) --[[ @ 0]]
	DotLineTop:setAlpha( 0.4 ) --[[ @ 0]]
	DotLineTop:setImage( RegisterImage( @"uie_ui_menu_social_emblem_dotline" ) ) --[[ @ 0]]
	DotLineTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	DotLineTop:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( DotLineTop ) --[[ @ 0]]
	self.DotLineTop = DotLineTop --[[ @ 0]]
	
	local TrialWidget = CoD.TrialInfoBannerWidget.new( f1_arg0, f1_arg1, 1, 1, -692.5, -152.5, 0.5, 0.5, 204.5, 239.5 ) --[[ @ 0]]
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
	
	local TrialWidgetLocked = CoD.TrialInfoBannerWidget.new( f1_arg0, f1_arg1, 1, 1, -692.5, -152.5, 0.5, 0.5, 204.5, 239.5 ) --[[ @ 0]]
	TrialWidgetLocked:mergeStateConditions( {
		{
			stateName = "Shown",
			condition = function ( menu, element, event )
				return IsGameTrial() and CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "lootLocked" )
			end
		}
	} ) --[[ @ 0]]
	TrialWidgetLocked:linkToElementModel( TrialWidgetLocked, "lootLocked", true, function ( model )
		f1_arg0:updateElementState( TrialWidgetLocked, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "lootLocked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	TrialWidgetLocked.InfoText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_48C8E3A75045BE50" ) ) --[[ @ 0]]
	self:addElement( TrialWidgetLocked ) --[[ @ 0]]
	self.TrialWidgetLocked = TrialWidgetLocked --[[ @ 0]]
	
	ItemInfoPanel:linkToElementModel( gestures, nil, false, function ( model )
		ItemInfoPanel:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	TrialWidget:linkToElementModel( gestures, nil, false, function ( model )
		TrialWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	TrialWidgetLocked:linkToElementModel( gestures, nil, false, function ( model )
		TrialWidgetLocked:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		SendCustomClientScriptMenuChangeNotify( f1_arg1, "MPSpecialistHUBGestures", false ) --[[ @ 0]]
		SetControllerModelValue( f1_arg1, "MPSpecialistHUBBindWheel.NoBackground", false ) --[[ @ 0]]
		CoD.PlayerRoleUtility.StopGesturePreview( f1_arg0, f1_arg1 ) --[[ @ 0]]
		CoD.PlayerRoleUtility.RefreshAnim( f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	gestures.id = "gestures" --[[ @ 0]]
	verticalCounter.id = "verticalCounter" --[[ @ 0]]
	self.__defaultFocus = gestures --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local11 = self --[[ @ 0]]
	SetControllerModelValue( f1_arg1, "MPSpecialistHUBBindWheel.NoBackground", true ) --[[ @ 0]]
	SetAsListVerticalCounter( self, verticalCounter, "gestures" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.MPSpecialistHUBGesturesInternal.__resetProperties = function ( f27_arg0 )
	f27_arg0.gestures:completeAnimation() --[[ @ 0]]
	f27_arg0.ItemInfoPanel:completeAnimation() --[[ @ 0]]
	f27_arg0.gestures:setAlpha( 1 ) --[[ @ 0]]
	f27_arg0.ItemInfoPanel:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MPSpecialistHUBGesturesInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f28_local0 = function ( f29_arg0 )
				f29_arg0:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f29_arg0:setAlpha( 1 ) --[[ @ 0]]
				f29_arg0:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.gestures:beginAnimation( 100 ) --[[ @ 0]]
			f28_arg0.gestures:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.gestures:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
			f28_arg0.gestures:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
			local f28_local1 = function ( f30_arg0 )
				f30_arg0:beginAnimation( 149 ) --[[ @ 0]]
				f30_arg0:setAlpha( 1 ) --[[ @ 0]]
				f30_arg0:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.ItemInfoPanel:beginAnimation( 300 ) --[[ @ 0]]
			f28_arg0.ItemInfoPanel:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.ItemInfoPanel:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
			f28_arg0.ItemInfoPanel:registerEventHandler( "transition_complete_keyframe", f28_local1 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.MPSpecialistHUBGesturesInternal.__onClose = function ( f31_arg0 )
	f31_arg0.ItemInfoPanel:close() --[[ @ 0]]
	f31_arg0.TrialWidget:close() --[[ @ 0]]
	f31_arg0.TrialWidgetLocked:close() --[[ @ 0]]
	f31_arg0.FramingCornerBrackets:close() --[[ @ 0]]
	f31_arg0.gestures:close() --[[ @ 0]]
	f31_arg0.PreviewMessagePC:close() --[[ @ 0]]
	f31_arg0.verticalCounter:close() --[[ @ 0]]
end
 --[[ @ 0]]
