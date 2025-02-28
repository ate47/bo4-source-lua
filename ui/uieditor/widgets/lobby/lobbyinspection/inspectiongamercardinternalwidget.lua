-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/callingcards/callingcards_framewidget" ) --[[ @ 0]]

CoD.InspectionGamerCardInternalWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.InspectionGamerCardInternalWidget.__defaultWidth = 348 --[[ @ 0]]
CoD.InspectionGamerCardInternalWidget.__defaultHeight = 87 --[[ @ 0]]
CoD.InspectionGamerCardInternalWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.InspectionGamerCardInternalWidget ) --[[ @ 0]]
	self.id = "InspectionGamerCardInternalWidget" --[[ @ 0]]
	self.soundSet = "ModeSelection" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CallingCardsFrameWidget = CoD.CallingCards_FrameWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, -268.5, 268.5, 0.5, 0.5, -67, 67 ) --[[ @ 0]]
	CallingCardsFrameWidget:setScale( 0.65, 0.65 ) --[[ @ 0]]
	CallingCardsFrameWidget:linkToElementModel( self, nil, false, function ( model )
		CallingCardsFrameWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CallingCardsFrameWidget ) --[[ @ 0]]
	self.CallingCardsFrameWidget = CallingCardsFrameWidget --[[ @ 0]]
	
	CallingCardsFrameWidget.id = "CallingCardsFrameWidget" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.InspectionGamerCardInternalWidget.__resetProperties = function ( f3_arg0 )
	f3_arg0.CallingCardsFrameWidget:completeAnimation() --[[ @ 0]]
	f3_arg0.CallingCardsFrameWidget:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.InspectionGamerCardInternalWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Invisible = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.CallingCardsFrameWidget:completeAnimation() --[[ @ 0]]
			f5_arg0.CallingCardsFrameWidget:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.CallingCardsFrameWidget ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.InspectionGamerCardInternalWidget.__onClose = function ( f6_arg0 )
	f6_arg0.CallingCardsFrameWidget:close() --[[ @ 0]]
end
 --[[ @ 0]]
