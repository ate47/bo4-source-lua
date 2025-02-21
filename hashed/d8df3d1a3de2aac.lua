-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/aar_t8/rewards/aarrewardbrackets" ) --[[ @ 0]]

CoD.DirectorInfoPanelBGZM = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorInfoPanelBGZM.__defaultWidth = 380 --[[ @ 0]]
CoD.DirectorInfoPanelBGZM.__defaultHeight = 182 --[[ @ 0]]
CoD.DirectorInfoPanelBGZM.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorInfoPanelBGZM ) --[[ @ 0]]
	self.id = "DirectorInfoPanelBGZM" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( 0.64, 0.24, 0.24 ) --[[ @ 0]]
	Backing:setAlpha( 0.04 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local Corner = CoD.AARRewardBrackets.new( f1_arg0, f1_arg1, 0, 1.01, -1, -1, 0, 1.01, -1, -1 ) --[[ @ 0]]
	Corner:setAlpha( 0.4 ) --[[ @ 0]]
	self:addElement( Corner ) --[[ @ 0]]
	self.Corner = Corner --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorInfoPanelBGZM.__onClose = function ( f2_arg0 )
	f2_arg0.Corner:close() --[[ @ 0]]
end
 --[[ @ 0]]
