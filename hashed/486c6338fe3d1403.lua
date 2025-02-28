-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:683fdf4983fb5894" ) --[[ @ 0]]

CoD.Toast_Container_ClansTeams_Baking = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Toast_Container_ClansTeams_Baking.__defaultWidth = 340 --[[ @ 0]]
CoD.Toast_Container_ClansTeams_Baking.__defaultHeight = 80 --[[ @ 0]]
CoD.Toast_Container_ClansTeams_Baking.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Toast_Container_ClansTeams_Baking ) --[[ @ 0]]
	self.id = "Toast_Container_ClansTeams_Baking" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local ToastBacking = CoD.Loot_BonusToastGenericBacking.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ToastBacking:setRGB( ColorSet.SelectedGreen.r, ColorSet.SelectedGreen.g, ColorSet.SelectedGreen.b ) --[[ @ 0]]
	self:addElement( ToastBacking ) --[[ @ 0]]
	self.ToastBacking = ToastBacking --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Toast_Container_ClansTeams_Baking.__onClose = function ( f2_arg0 )
	f2_arg0.ToastBacking:close() --[[ @ 0]]
end
 --[[ @ 0]]
