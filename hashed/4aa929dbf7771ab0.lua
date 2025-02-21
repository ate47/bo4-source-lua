-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.FooterButton_Player_Emblem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FooterButton_Player_Emblem.__defaultWidth = 42 --[[ @ 0]]
CoD.FooterButton_Player_Emblem.__defaultHeight = 42 --[[ @ 0]]
CoD.FooterButton_Player_Emblem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.FooterButton_Player_Emblem ) --[[ @ 0]]
	self.id = "FooterButton_Player_Emblem" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local emblem = LUI.UIImage.new( 0.5, 0.5, -100, 100, 0.5, 0.5, -100, 100 ) --[[ @ 0]]
	emblem:setScale( 0.2, 0.2 ) --[[ @ 0]]
	emblem:subscribeToGlobalModel( f1_arg1, "PerController", "identityBadge.xuid", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			emblem:setupPlayerEmblemByXUID( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( emblem ) --[[ @ 0]]
	self.emblem = emblem --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.FooterButton_Player_Emblem.__onClose = function ( f3_arg0 )
	f3_arg0.emblem:close() --[[ @ 0]]
end
 --[[ @ 0]]
