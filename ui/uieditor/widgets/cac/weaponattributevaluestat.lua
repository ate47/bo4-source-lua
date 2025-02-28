-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.WeaponAttributeValueStat = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WeaponAttributeValueStat.__defaultWidth = 100 --[[ @ 0]]
CoD.WeaponAttributeValueStat.__defaultHeight = 18 --[[ @ 0]]
CoD.WeaponAttributeValueStat.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 3, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.WeaponAttributeValueStat ) --[[ @ 0]]
	self.id = "WeaponAttributeValueStat" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local AttributeBaseValue = LUI.UIText.new( 0, 0, 0, 32, 0, 1, 0, 0 ) --[[ @ 0]]
	AttributeBaseValue:setText( "" ) --[[ @ 0]]
	AttributeBaseValue:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	AttributeBaseValue:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( AttributeBaseValue ) --[[ @ 0]]
	self.AttributeBaseValue = AttributeBaseValue --[[ @ 0]]
	
	local AttributeAddedValue = LUI.UIText.new( 0, 0, 35, 67, 0, 0, 0, 18 ) --[[ @ 0]]
	AttributeAddedValue:setRGB( 0, 1, 0 ) --[[ @ 0]]
	AttributeAddedValue:setText( "" ) --[[ @ 0]]
	AttributeAddedValue:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	AttributeAddedValue:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( AttributeAddedValue ) --[[ @ 0]]
	self.AttributeAddedValue = AttributeAddedValue --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WeaponAttributeValueStat.__resetProperties = function ( f2_arg0 )
	f2_arg0.AttributeAddedValue:completeAnimation() --[[ @ 0]]
	f2_arg0.AttributeAddedValue:setRGB( 0, 1, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WeaponAttributeValueStat.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.AttributeAddedValue:completeAnimation() --[[ @ 0]]
			f3_arg0.AttributeAddedValue:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.AttributeAddedValue ) --[[ @ 0]]
		end
	},
	PositiveAddValue = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.AttributeAddedValue:completeAnimation() --[[ @ 0]]
			f4_arg0.AttributeAddedValue:setRGB( 0, 1, 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.AttributeAddedValue ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
