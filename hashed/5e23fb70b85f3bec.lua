-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:7fbffc86e9a93477" ) --[[ @ 0]]
require( "ui/uieditor/widgets/craft/emblemeditor/emblemdrawwidgetnew" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scoreboard/tabbedscoreboardfuibox" ) --[[ @ 0]]

CoD.DecalPreview = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DecalPreview.__defaultWidth = 540 --[[ @ 0]]
CoD.DecalPreview.__defaultHeight = 725 --[[ @ 0]]
CoD.DecalPreview.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DecalPreview ) --[[ @ 0]]
	self.id = "DecalPreview" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = CoD.isPC --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local emblemDraw = CoD.EmblemDrawWidgetNew.new( f1_arg0, f1_arg1, 0.5, 0.5, -270, 270, 0, 0, 8, 548 ) --[[ @ 0]]
	emblemDraw:linkToElementModel( self, nil, false, function ( model )
		emblemDraw:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	emblemDraw:registerEventHandler( "menu_loaded", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f3_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f3_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		MakeNotFocusable( element, f1_arg1 ) --[[ @ 0]]
		if not f3_local0 then
			f3_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	self:addElement( emblemDraw ) --[[ @ 0]]
	self.emblemDraw = emblemDraw --[[ @ 0]]
	
	local TabbedScoreboardFuiBox = CoD.TabbedScoreboardFuiBox.new( f1_arg0, f1_arg1, 0, 0, 2, 114, 0, 0, -8, 8 ) --[[ @ 0]]
	self:addElement( TabbedScoreboardFuiBox ) --[[ @ 0]]
	self.TabbedScoreboardFuiBox = TabbedScoreboardFuiBox --[[ @ 0]]
	
	local ItemInfoPanel = CoD.BM_ItemInfoPanel.new( f1_arg0, f1_arg1, 1, 1, -540, 0, 1, 1, -177, -27 ) --[[ @ 0]]
	ItemInfoPanel:linkToElementModel( self, nil, false, function ( model )
		ItemInfoPanel:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ItemInfoPanel ) --[[ @ 0]]
	self.ItemInfoPanel = ItemInfoPanel --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HideInfoPanel",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	if CoD.isPC then
		emblemDraw.id = "emblemDraw" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DecalPreview.__resetProperties = function ( f6_arg0 )
	f6_arg0.ItemInfoPanel:completeAnimation() --[[ @ 0]]
	f6_arg0.ItemInfoPanel:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DecalPreview.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	HideInfoPanel = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.ItemInfoPanel:completeAnimation() --[[ @ 0]]
			f8_arg0.ItemInfoPanel:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.ItemInfoPanel ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DecalPreview.__onClose = function ( f9_arg0 )
	f9_arg0.emblemDraw:close() --[[ @ 0]]
	f9_arg0.TabbedScoreboardFuiBox:close() --[[ @ 0]]
	f9_arg0.ItemInfoPanel:close() --[[ @ 0]]
end
 --[[ @ 0]]
