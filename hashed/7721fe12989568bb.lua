-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "ui/uieditor/widgets/lobby/common/fe_panelnoblur" ) --[[ @ 0]]

CoD.PlayerCard_Label = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PlayerCard_Label.__defaultWidth = 170 --[[ @ 0]]
CoD.PlayerCard_Label.__defaultHeight = 28 --[[ @ 0]]
CoD.PlayerCard_Label.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PlayerCard_Label ) --[[ @ 0]]
	self.id = "PlayerCard_Label" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Panel = CoD.FE_PanelNoBlur.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Panel:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Panel:setAlpha( 0.7 ) --[[ @ 0]]
	self:addElement( Panel ) --[[ @ 0]]
	self.Panel = Panel --[[ @ 0]]
	
	local itemName = LUI.UIText.new( 0, 0, 0, 240, 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	itemName:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	itemName:setTTF( "notosans_regular" ) --[[ @ 0]]
	itemName:setLetterSpacing( 1.5 ) --[[ @ 0]]
	itemName:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	itemName:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	itemName:linkToElementModel( self, "name", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			itemName:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( itemName, "setText", function ( element, controller )
		ScaleWidgetToLabel( self, element, 2 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( itemName ) --[[ @ 0]]
	self.itemName = itemName --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PlayerCard_Label.__resetProperties = function ( f4_arg0 )
	f4_arg0.itemName:completeAnimation() --[[ @ 0]]
	f4_arg0.itemName:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PlayerCard_Label.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PlayerYellow = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.itemName:completeAnimation() --[[ @ 0]]
			f6_arg0.itemName:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.itemName ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PlayerCard_Label.__onClose = function ( f7_arg0 )
	f7_arg0.Panel:close() --[[ @ 0]]
	f7_arg0.itemName:close() --[[ @ 0]]
end
 --[[ @ 0]]
