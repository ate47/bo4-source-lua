-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:14875c56ab1b9ca8" ) --[[ @ 0]]
require( "ui/uieditor/widgets/onofftext" ) --[[ @ 0]]

CoD.NameAndXPBonus = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.NameAndXPBonus.__defaultWidth = 500 --[[ @ 0]]
CoD.NameAndXPBonus.__defaultHeight = 56 --[[ @ 0]]
CoD.NameAndXPBonus.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Bottom ) --[[ @ 0]]
	self:setClass( CoD.NameAndXPBonus ) --[[ @ 0]]
	self.id = "NameAndXPBonus" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local XPIcon = CoD.UnlockBonusAndXPIcon.new( f1_arg0, f1_arg1, 0, 0, 0, 223, 0, 0, 35, 56 ) --[[ @ 0]]
	XPIcon:linkToElementModel( self, nil, false, function ( model )
		XPIcon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( XPIcon ) --[[ @ 0]]
	self.XPIcon = XPIcon --[[ @ 0]]
	
	local MastercraftName = CoD.onOffText.new( f1_arg0, f1_arg1, 0, 0, 0, 347, 0, 0, 17, 35 ) --[[ @ 0]]
	MastercraftName:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isMastercraft" )
			end
		}
	} ) --[[ @ 0]]
	MastercraftName:linkToElementModel( MastercraftName, "isMastercraft", true, function ( model )
		f1_arg0:updateElementState( MastercraftName, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isMastercraft"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	MastercraftName:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	MastercraftName.TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	MastercraftName:linkToElementModel( self, nil, false, function ( model )
		MastercraftName:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	MastercraftName:linkToElementModel( self, "signatureVariantName", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			MastercraftName.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MastercraftName ) --[[ @ 0]]
	self.MastercraftName = MastercraftName --[[ @ 0]]
	
	local Spacer = LUI.UIImage.new( 0, 0, 0, 500, 0, 0, 7, 17 ) --[[ @ 0]]
	Spacer:setImage( RegisterImage( @"blacktransparent" ) ) --[[ @ 0]]
	self:addElement( Spacer ) --[[ @ 0]]
	self.Spacer = Spacer --[[ @ 0]]
	
	local Name = LUI.UIText.new( 0, 0, 0, 500, 0, 0, -25, 7 ) --[[ @ 0]]
	Name:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	Name:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Name:setLetterSpacing( 14 ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Name:linkToElementModel( self, "name", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			Name:setText( ConvertToUpperString( CoD.BaseUtility.LocalizeIfXHash( f7_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Name ) --[[ @ 0]]
	self.Name = Name --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.NameAndXPBonus.__onClose = function ( f8_arg0 )
	f8_arg0.XPIcon:close() --[[ @ 0]]
	f8_arg0.MastercraftName:close() --[[ @ 0]]
	f8_arg0.Name:close() --[[ @ 0]]
end
 --[[ @ 0]]
