-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.PaintCanCost = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PaintCanCost.__defaultWidth = 480 --[[ @ 0]]
CoD.PaintCanCost.__defaultHeight = 27 --[[ @ 0]]
CoD.PaintCanCost.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PaintCanCost ) --[[ @ 0]]
	self.id = "PaintCanCost" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local PaintCanCost = LUI.UIText.new( 0, 0, 0, 480, 0, 0, -5, 13 ) --[[ @ 0]]
	PaintCanCost:setRGB( 0.8, 0.79, 0.78 ) --[[ @ 0]]
	PaintCanCost:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	PaintCanCost:setLetterSpacing( 1 ) --[[ @ 0]]
	PaintCanCost:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	PaintCanCost:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	PaintCanCost:linkToElementModel( self, "paintCanCost", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			PaintCanCost:setText( LocalizeIntoString( @"hash_3DF564F24968E2DB", f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PaintCanCost ) --[[ @ 0]]
	self.PaintCanCost = PaintCanCost --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local2 = self --[[ @ 0]]
	if IsCurrentLanguageReversed() then
		ReverseChildrenOrder( self ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.PaintCanCost.__onClose = function ( f3_arg0 )
	f3_arg0.PaintCanCost:close() --[[ @ 0]]
end
 --[[ @ 0]]
