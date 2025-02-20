-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:736c7e8836ea401a" ) --[[ @ 0]]

CoD.WZCompassMinor = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZCompassMinor.__defaultWidth = 62 --[[ @ 0]]
CoD.WZCompassMinor.__defaultHeight = 37 --[[ @ 0]]
CoD.WZCompassMinor.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WZCompassMinor ) --[[ @ 0]]
	self.id = "WZCompassMinor" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local TextAndPip = CoD.WZCompassMinorInternal.new( f1_arg0, f1_arg1, 0, 0, 0, 62, 0, 0, -6, 37 ) --[[ @ 0]]
	TextAndPip:linkToElementModel( self, "alpha", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			TextAndPip:setAlpha( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	TextAndPip:linkToElementModel( self, nil, false, function ( model )
		TextAndPip:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( TextAndPip ) --[[ @ 0]]
	self.TextAndPip = TextAndPip --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WZCompassMinor.__onClose = function ( f4_arg0 )
	f4_arg0.TextAndPip:close() --[[ @ 0]]
end
 --[[ @ 0]]
