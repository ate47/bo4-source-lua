-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/codcaster/codcasterplayerlistheaderwidget" ) --[[ @ 0]]

CoD.CodCasterPlayerListHeaderWidgetContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterPlayerListHeaderWidgetContainer.__defaultWidth = 408 --[[ @ 0]]
CoD.CodCasterPlayerListHeaderWidgetContainer.__defaultHeight = 8 --[[ @ 0]]
CoD.CodCasterPlayerListHeaderWidgetContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterPlayerListHeaderWidgetContainer ) --[[ @ 0]]
	self.id = "CodCasterPlayerListHeaderWidgetContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bg = LUI.UIImage.new( 1, 1, -193, 0, 1, 1, -4, 0 ) --[[ @ 0]]
	bg:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local Header = CoD.CodCasterPlayerListHeaderWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, -203, 201, 0, 0, 0, 4 ) --[[ @ 0]]
	self:addElement( Header ) --[[ @ 0]]
	self.Header = Header --[[ @ 0]]
	
	local ListenIn = LUI.UIImage.new( 1.15, 1.15, -493, -472, 0, 0, 27, 48 ) --[[ @ 0]]
	ListenIn:setImage( RegisterImage( @"uie_t7_core_hud_voiptemp-01" ) ) --[[ @ 0]]
	self:addElement( ListenIn ) --[[ @ 0]]
	self.ListenIn = ListenIn --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CodCasterPlayerListHeaderWidgetContainer.__resetProperties = function ( f2_arg0 )
	f2_arg0.Header:completeAnimation() --[[ @ 0]]
	f2_arg0.ListenIn:completeAnimation() --[[ @ 0]]
	f2_arg0.Header:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.ListenIn:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCasterPlayerListHeaderWidgetContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f3_arg0.Header:completeAnimation() --[[ @ 0]]
			f3_arg0.Header:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Header ) --[[ @ 0]]
			f3_arg0.ListenIn:completeAnimation() --[[ @ 0]]
			f3_arg0.ListenIn:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.ListenIn ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.ListenIn:completeAnimation() --[[ @ 0]]
			f4_arg0.ListenIn:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.ListenIn ) --[[ @ 0]]
		end
	},
	VisibleWithListenIn = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CodCasterPlayerListHeaderWidgetContainer.__onClose = function ( f6_arg0 )
	f6_arg0.Header:close() --[[ @ 0]]
end
 --[[ @ 0]]
