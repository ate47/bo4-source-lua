-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.DrawEmblemFocusable = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DrawEmblemFocusable.__defaultWidth = 1920 --[[ @ 0]]
CoD.DrawEmblemFocusable.__defaultHeight = 1080 --[[ @ 0]]
CoD.DrawEmblemFocusable.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DrawEmblemFocusable ) --[[ @ 0]]
	self.id = "DrawEmblemFocusable" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local DrawEmblem = nil --[[ @ 0]]
	
	DrawEmblem = LUI.UIElement.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	DrawEmblem:setAlpha( 0 ) --[[ @ 0]]
	DrawEmblem:setupEmblem( Enum[@"customizationtype"][@"customization_type_paintshop_view_left"] ) --[[ @ 0]]
	self:addElement( DrawEmblem ) --[[ @ 0]]
	self.DrawEmblem = DrawEmblem --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local2 = self --[[ @ 0]]
	f1_local2 = DrawEmblem --[[ @ 0]]
	if IsPC() then
		SetUsingFocusInterraction( f1_local2, true ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.DrawEmblemFocusable.__resetProperties = function ( f2_arg0 )
	f2_arg0.DrawEmblem:completeAnimation() --[[ @ 0]]
	f2_arg0.DrawEmblem:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DrawEmblemFocusable.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.DrawEmblem:completeAnimation() --[[ @ 0]]
			f4_arg0.DrawEmblem:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.DrawEmblem ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
if not CoD.isPC then
	CoD.DrawEmblemFocusable.__clipsPerState.DefaultState.Focus = nil --[[ @ 0]]
end
CoD.DrawEmblemFocusable.__onClose = function ( f5_arg0 )
	f5_arg0.DrawEmblem:close() --[[ @ 0]]
end
 --[[ @ 0]]
