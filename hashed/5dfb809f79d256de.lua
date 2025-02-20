-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.KillcamKilledByEquipmentItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.KillcamKilledByEquipmentItem.__defaultWidth = 120 --[[ @ 0]]
CoD.KillcamKilledByEquipmentItem.__defaultHeight = 100 --[[ @ 0]]
CoD.KillcamKilledByEquipmentItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.KillcamKilledByEquipmentItem ) --[[ @ 0]]
	self.id = "KillcamKilledByEquipmentItem" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local ItemName = LUI.UIText.new( 0, 0, 0, 120, 0, 0, 69, 87 ) --[[ @ 0]]
	ItemName:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	ItemName:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_56250C6FCAC36BD4" ) ) --[[ @ 0]]
	ItemName:setShaderVector( 0, 0.2, 0, 0, 0 ) --[[ @ 0]]
	ItemName:setShaderVector( 1, 0, 0, 0, 1 ) --[[ @ 0]]
	ItemName:setLetterSpacing( 1 ) --[[ @ 0]]
	ItemName:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	ItemName:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	ItemName:linkToElementModel( self, "name", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ItemName:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ItemName ) --[[ @ 0]]
	self.ItemName = ItemName --[[ @ 0]]
	
	local ItemIcon2 = LUI.UIFixedAspectRatioImage.new( 0, 0, 28, 92, 0, 0, 5, 69 ) --[[ @ 0]]
	ItemIcon2:linkToElementModel( self, "icon", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ItemIcon2:setImage( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ItemIcon2 ) --[[ @ 0]]
	self.ItemIcon2 = ItemIcon2 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.KillcamKilledByEquipmentItem.__onClose = function ( f4_arg0 )
	f4_arg0.ItemName:close() --[[ @ 0]]
	f4_arg0.ItemIcon2:close() --[[ @ 0]]
end
 --[[ @ 0]]
