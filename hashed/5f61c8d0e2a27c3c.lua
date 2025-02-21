-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/director/directordividerwithgradient" ) --[[ @ 0]]

CoD.ZMSpecialWeapon_StageDescriptionInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMSpecialWeapon_StageDescriptionInternal.__defaultWidth = 600 --[[ @ 0]]
CoD.ZMSpecialWeapon_StageDescriptionInternal.__defaultHeight = 63 --[[ @ 0]]
CoD.ZMSpecialWeapon_StageDescriptionInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZMSpecialWeapon_StageDescriptionInternal ) --[[ @ 0]]
	self.id = "ZMSpecialWeapon_StageDescriptionInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Name = LUI.UIText.new( 0, 0, -401, 600, 0, 0, 0, 32 ) --[[ @ 0]]
	Name:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
	Name:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Name:setLetterSpacing( 14 ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	Name:linkToElementModel( self, "itemName", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Name:setText( LocalizeToUpperString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Name ) --[[ @ 0]]
	self.Name = Name --[[ @ 0]]
	
	local Description = LUI.UIText.new( 0, 0, -108, 600, 0, 0, 45, 63 ) --[[ @ 0]]
	Description:setRGB( 0.8, 0.79, 0.78 ) --[[ @ 0]]
	Description:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Description:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	Description:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Description:linkToElementModel( self, "description", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Description:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Description ) --[[ @ 0]]
	self.Description = Description --[[ @ 0]]
	
	local Divider = CoD.DirectorDividerWithGradient.new( f1_arg0, f1_arg1, 0, 0, 200, 600, 0, 0, 36.5, 37.5 ) --[[ @ 0]]
	Divider:setAlpha( 0.25 ) --[[ @ 0]]
	Divider:setZRot( 180 ) --[[ @ 0]]
	self:addElement( Divider ) --[[ @ 0]]
	self.Divider = Divider --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMSpecialWeapon_StageDescriptionInternal.__onClose = function ( f4_arg0 )
	f4_arg0.Name:close() --[[ @ 0]]
	f4_arg0.Description:close() --[[ @ 0]]
	f4_arg0.Divider:close() --[[ @ 0]]
end
 --[[ @ 0]]
