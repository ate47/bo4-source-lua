-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/menus/craft/emblemeditor/emblemselectoptions" ) --[[ @ 0]]
require( "x64:12d64ca9d3c705ce" ) --[[ @ 0]]
require( "x64:597ab439bf0305bd" ) --[[ @ 0]]
require( "x64:72321aa5d656b975" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]

CoD.StickerSetFrame = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StickerSetFrame.__defaultWidth = 1920 --[[ @ 0]]
CoD.StickerSetFrame.__defaultHeight = 1080 --[[ @ 0]]
CoD.StickerSetFrame.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StickerSetFrame ) --[[ @ 0]]
	self.id = "StickerSetFrame" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FramingCornerBrackets = CoD.CommonCornerBrackets01.new( f1_arg0, f1_arg1, 0, 0, 133, 1162, 0, 0, 146, 878 ) --[[ @ 0]]
	FramingCornerBrackets:setAlpha( 0.1 ) --[[ @ 0]]
	self:addElement( FramingCornerBrackets ) --[[ @ 0]]
	self.FramingCornerBrackets = FramingCornerBrackets --[[ @ 0]]
	
	local emblemListBg2 = LUI.UIImage.new( 0, 0, 17.5, 1278.5, 0, 0, 81, 926 ) --[[ @ 0]]
	emblemListBg2:setScale( 0.77, 0.77 ) --[[ @ 0]]
	emblemListBg2:setImage( RegisterImage( @"uie_ui_menu_emblem_empty_bg" ) ) --[[ @ 0]]
	emblemListBg2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	emblemListBg2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	emblemListBg2:setupNineSliceShader( 212, 212 ) --[[ @ 0]]
	self:addElement( emblemListBg2 ) --[[ @ 0]]
	self.emblemListBg2 = emblemListBg2 --[[ @ 0]]
	
	local EmblemSelectPreviewWidget = CoD.EmblemSelectPreviewWidget.new( f1_arg0, f1_arg1, 0, 0, 1220, 1760, 0, 0, 167, 892 ) --[[ @ 0]]
	self:addElement( EmblemSelectPreviewWidget ) --[[ @ 0]]
	self.EmblemSelectPreviewWidget = EmblemSelectPreviewWidget --[[ @ 0]]
	
	local stickerSetList = LUI.UIList.new( f1_arg0, f1_arg1, 11, 0, nil, true, false, false, false ) --[[ @ 0]]
	stickerSetList:setLeftRight( 0, 0, 164, 1131 ) --[[ @ 0]]
	stickerSetList:setTopBottom( 0, 0, 180, 821 ) --[[ @ 0]]
	stickerSetList:setWidgetType( CoD.StickerSetItem ) --[[ @ 0]]
	stickerSetList:setHorizontalCount( 6 ) --[[ @ 0]]
	stickerSetList:setVerticalCount( 4 ) --[[ @ 0]]
	stickerSetList:setSpacing( 11 ) --[[ @ 0]]
	stickerSetList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	stickerSetList:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	stickerSetList:setDataSource( "StickerSetList" ) --[[ @ 0]]
	local DotLineBottom = stickerSetList --[[ @ 0]]
	local DotLineTop = stickerSetList.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	DotLineTop( DotLineBottom, f1_local7["lobbyRoot.lobbyNetworkMode"], function ( f2_arg0, f2_arg1 )
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DotLineBottom = stickerSetList --[[ @ 0]]
	DotLineTop = stickerSetList.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	DotLineTop( DotLineBottom, f1_local7["lobbyRoot.lobbyNav"], function ( f3_arg0, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	stickerSetList:linkToElementModel( stickerSetList, "isNonClickableEmblem", true, function ( model, f4_arg1 )
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	stickerSetList:linkToElementModel( stickerSetList, "trialLocked", true, function ( model, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	stickerSetList:linkToElementModel( stickerSetList, "emblemIndex", true, function ( model, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	stickerSetList:linkToElementModel( stickerSetList, "storageFileType", true, function ( model, f7_arg1 )
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	stickerSetList:linkToElementModel( stickerSetList, "owned", true, function ( model, f8_arg1 )
		CoD.Menu.UpdateButtonShownState( f8_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	stickerSetList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f9_local0 = nil --[[ @ 0]]
		CoD.CraftUtility.EmblemSelect_GainFocus( self, element, f1_arg1 ) --[[ @ 0]]
		UpdateElementState( self, "emblemDrawWidget", f1_arg1 ) --[[ @ 0]]
		return f9_local0
	end ) --[[ @ 0]]
	stickerSetList:registerEventHandler( "list_item_lose_focus", function ( element, event )
		local f10_local0 = nil --[[ @ 0]]
		CoD.BreadcrumbUtility.SetEmblemStickerIconAsOld( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
		return f10_local0
	end ) --[[ @ 0]]
	stickerSetList:registerEventHandler( "gain_focus", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f11_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f11_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f11_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( stickerSetList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if IsLive() and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and not IsElementInState( element, "BMClassified" ) and CoD.CraftUtility.Emblems_CanEnterEmblemEditor( element, controller ) and not CraftItemIsReadOnly( element, controller ) and not SelectingGroupEmblem( controller ) and CoD.CraftUtility.EmblemEditor_IsEditor( self, menu ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "trialLocked" ) then
			OpenEmblemEditor( element, menu, controller, model ) --[[ @ 0]]
			return true
		elseif CoD.CraftUtility.Emblem_IsOccupied( element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and not CoD.CraftUtility.EmblemEditor_IsEditor( self, menu ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "trialLocked" ) and not MenuPropertyIsTrue( menu, "_selectGroupEmblem" ) then
			CoD.CraftUtility.EmblemSelect_SetAsEmblem( self, element, controller ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			PlaySoundAlias( "cac_equipment_add" ) --[[ @ 0]]
			return true
		elseif CoD.CraftUtility.Emblem_IsOccupied( element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and not CoD.CraftUtility.EmblemEditor_IsEditor( self, menu ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and MenuPropertyIsTrue( menu, "_selectGroupEmblem" ) then
			GoBack( self, controller ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			PlaySoundAlias( "cac_equipment_add" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsLive() and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and not IsElementInState( element, "BMClassified" ) and CoD.CraftUtility.Emblems_CanEnterEmblemEditor( element, controller ) and not CraftItemIsReadOnly( element, controller ) and not SelectingGroupEmblem( controller ) and CoD.CraftUtility.EmblemEditor_IsEditor( self, menu ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "trialLocked" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_71A05463D63F902", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif CoD.CraftUtility.Emblem_IsOccupied( element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and not CoD.CraftUtility.EmblemEditor_IsEditor( self, menu ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "trialLocked" ) and not MenuPropertyIsTrue( menu, "_selectGroupEmblem" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_A24F9854A60C871", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif CoD.CraftUtility.Emblem_IsOccupied( element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and not CoD.CraftUtility.EmblemEditor_IsEditor( self, menu ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and MenuPropertyIsTrue( menu, "_selectGroupEmblem" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	stickerSetList:AddContextualMenuAction( f1_arg0, f1_arg1, @"menu/delete", function ( f14_arg0, f14_arg1, f14_arg2, f14_arg3 )
		if CoD.CraftUtility.Emblem_IsOccupied( f14_arg0, f14_arg2 ) and CoD.ModelUtility.IsSelfModelValueEqualTo( f14_arg0, f14_arg2, "isNonClickableEmblem", 0 ) and not IsPreBuiltEmblemTab( f14_arg2 ) and not SelectingGroupEmblem( f14_arg2 ) then
			return function ( f15_arg0, f15_arg1, f15_arg2, f15_arg3 )
				CoD.CraftUtility.EmblemClear( self, f15_arg0, f15_arg2, "", f15_arg1 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	stickerSetList:AddContextualMenuAction( f1_arg0, f1_arg1, @"menu/copy", function ( f16_arg0, f16_arg1, f16_arg2, f16_arg3 )
		if CoD.CraftUtility.Emblem_IsOccupied( f16_arg0, f16_arg2 ) and CoD.ModelUtility.IsSelfModelValueEqualTo( f16_arg0, f16_arg2, "isNonClickableEmblem", 0 ) and not IsPreBuiltEmblemTab( f16_arg2 ) and not SelectingGroupEmblem( f16_arg2 ) then
			return function ( f17_arg0, f17_arg1, f17_arg2, f17_arg3 )
				CoD.CraftUtility.EmblemSelect_CopyEmblem( self, f17_arg0, f17_arg2, f17_arg1 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	stickerSetList:AddContextualMenuAction( f1_arg0, f1_arg1, @"menu/options", function ( f18_arg0, f18_arg1, f18_arg2, f18_arg3 )
		if CoD.CraftUtility.Emblem_IsOccupied( f18_arg0, f18_arg2 ) and CoD.ModelUtility.IsSelfModelValueEqualTo( f18_arg0, f18_arg2, "isNonClickableEmblem", 0 ) and not IsPreBuiltEmblemTab( f18_arg2 ) and not SelectingGroupEmblem( f18_arg2 ) then
			return function ( f19_arg0, f19_arg1, f19_arg2, f19_arg3 )
				OpenPopup( self, "EmblemSelectOptions", f19_arg2, nil ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	self:addElement( stickerSetList ) --[[ @ 0]]
	self.stickerSetList = stickerSetList --[[ @ 0]]
	
	DotLineTop = LUI.UIImage.new( 0.5, 0.5, -799.5, 174.5, 0, 0, 161, 165 ) --[[ @ 0]]
	DotLineTop:setAlpha( 0.4 ) --[[ @ 0]]
	DotLineTop:setImage( RegisterImage( @"uie_ui_menu_social_emblem_dotline" ) ) --[[ @ 0]]
	DotLineTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	DotLineTop:setShaderVector( 0, 1.2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( DotLineTop ) --[[ @ 0]]
	self.DotLineTop = DotLineTop --[[ @ 0]]
	
	DotLineBottom = LUI.UIImage.new( 0.5, 0.5, -799.5, 174.5, 0, 0, 859, 863 ) --[[ @ 0]]
	DotLineBottom:setAlpha( 0.4 ) --[[ @ 0]]
	DotLineBottom:setImage( RegisterImage( @"uie_ui_menu_social_emblem_dotline" ) ) --[[ @ 0]]
	DotLineBottom:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	DotLineBottom:setShaderVector( 0, 1.2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( DotLineBottom ) --[[ @ 0]]
	self.DotLineBottom = DotLineBottom --[[ @ 0]]
	
	EmblemSelectPreviewWidget:linkToElementModel( stickerSetList, nil, false, function ( model )
		EmblemSelectPreviewWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "JP",
			condition = function ( menu, element, event )
				return IsJapaneseSku()
			end
		}
	} ) --[[ @ 0]]
	EmblemSelectPreviewWidget.id = "EmblemSelectPreviewWidget" --[[ @ 0]]
	stickerSetList.id = "stickerSetList" --[[ @ 0]]
	self.__defaultFocus = stickerSetList --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local7 = self --[[ @ 0]]
	CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_arg0, f1_arg0, f1_arg1 ) --[[ @ 0]]
	ForceCheckDefaultPCFocus( f1_arg0, f1_arg0, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.StickerSetFrame.__resetProperties = function ( f22_arg0 )
	f22_arg0.emblemListBg2:completeAnimation() --[[ @ 0]]
	f22_arg0.emblemListBg2:setLeftRight( 0, 0, 17.5, 1278.5 ) --[[ @ 0]]
	f22_arg0.emblemListBg2:setTopBottom( 0, 0, 81, 926 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StickerSetFrame.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	JP = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f24_arg0.emblemListBg2:completeAnimation() --[[ @ 0]]
			f24_arg0.emblemListBg2:setLeftRight( 0, 0, 38.5, 1095.5 ) --[[ @ 0]]
			f24_arg0.emblemListBg2:setTopBottom( 0, 0, 79, 924 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.emblemListBg2 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StickerSetFrame.__onClose = function ( f25_arg0 )
	f25_arg0.EmblemSelectPreviewWidget:close() --[[ @ 0]]
	f25_arg0.FramingCornerBrackets:close() --[[ @ 0]]
	f25_arg0.stickerSetList:close() --[[ @ 0]]
end
 --[[ @ 0]]
