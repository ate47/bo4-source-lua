-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/hud/scoreinfo/scoreinfo_panelscalecontainer" ) --[[ @ 0]]

CoD.ScoreInfo_PanelScale = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreInfo_PanelScale.__defaultWidth = 84 --[[ @ 0]]
CoD.ScoreInfo_PanelScale.__defaultHeight = 84 --[[ @ 0]]
CoD.ScoreInfo_PanelScale.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScoreInfo_PanelScale ) --[[ @ 0]]
	self.id = "ScoreInfo_PanelScale" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ScoreInfoPanelScaleContainer0 = CoD.ScoreInfo_PanelScaleContainer.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ScoreInfoPanelScaleContainer0:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"uie_scene_blur_pass_2_highquality" ) ) --[[ @ 0]]
	ScoreInfoPanelScaleContainer0:setShaderVector( 0, 30, 10, 0, 0 ) --[[ @ 0]]
	self:addElement( ScoreInfoPanelScaleContainer0 ) --[[ @ 0]]
	self.ScoreInfoPanelScaleContainer0 = ScoreInfoPanelScaleContainer0 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ScoreInfo_PanelScale.__resetProperties = function ( f2_arg0 )
	f2_arg0.ScoreInfoPanelScaleContainer0:completeAnimation() --[[ @ 0]]
	f2_arg0.ScoreInfoPanelScaleContainer0:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ScoreInfo_PanelScale.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Invisible = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.ScoreInfoPanelScaleContainer0:completeAnimation() --[[ @ 0]]
			f4_arg0.ScoreInfoPanelScaleContainer0:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.ScoreInfoPanelScaleContainer0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ScoreInfo_PanelScale.__onClose = function ( f5_arg0 )
	f5_arg0.ScoreInfoPanelScaleContainer0:close() --[[ @ 0]]
end
 --[[ @ 0]]
