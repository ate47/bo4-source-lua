-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
LUI.UIImage = InheritFrom( LUI.UIElement ) --[[ @ 0]]
LUI.UIImage.Materials = {} --[[ @ 0]]
LUI.UIImage.DefaultImage = RegisterImage( "$white" ) --[[ @ 0]]
LUI.UIImage.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7 )
	local self = LUI.UIElement.new( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7 ) --[[ @ 0]]
	self:setClass( LUI.UIImage ) --[[ @ 0]]
	self:setupUIImage() --[[ @ 0]]
	return self
end
 --[[ @ 0]]
LUI.UIImage.GetCachedMaterial = function ( f2_arg0 )
	local f2_local0 = LUI.UIImage.Materials[f2_arg0] --[[ @ 0]]
	if f2_local0 == nil then
		f2_local0 = RegisterMaterial( f2_arg0 ) --[[ @ 0]]
		LUI.UIImage.Materials[f2_arg0] = f2_local0 --[[ @ 0]]
	end
	return f2_local0
end
 --[[ @ 0]]
LUI.UIImage.id = "LUIImage" --[[ @ 0]]
