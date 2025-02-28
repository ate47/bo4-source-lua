-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.WeaponNameWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WeaponNameWidget.__defaultWidth = 154 --[[ @ 0]]
CoD.WeaponNameWidget.__defaultHeight = 51 --[[ @ 0]]
CoD.WeaponNameWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WeaponNameWidget ) --[[ @ 0]]
	self.id = "WeaponNameWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local weaponNameLabel = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -22, 23 ) --[[ @ 0]]
	weaponNameLabel:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	weaponNameLabel:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	weaponNameLabel:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	weaponNameLabel:setLetterSpacing( 5.6 ) --[[ @ 0]]
	weaponNameLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	weaponNameLabel:linkToElementModel( self, "name", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			weaponNameLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( weaponNameLabel, "setText", function ( element, controller )
		ScaleWidgetToLabel( self, element, 2 ) --[[ @ 0]]
		SetStateFromText( self, element, "DefaultState", "NoText", f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( weaponNameLabel ) --[[ @ 0]]
	self.weaponNameLabel = weaponNameLabel --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoText",
			condition = function ( menu, element, event )
				return IsSelfInState( self, "NoText" )
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WeaponNameWidget.__resetProperties = function ( f5_arg0 )
	f5_arg0.weaponNameLabel:completeAnimation() --[[ @ 0]]
	f5_arg0.weaponNameLabel:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WeaponNameWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	NoText = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.weaponNameLabel:completeAnimation() --[[ @ 0]]
			f7_arg0.weaponNameLabel:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.weaponNameLabel ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WeaponNameWidget.__onClose = function ( f8_arg0 )
	f8_arg0.weaponNameLabel:close() --[[ @ 0]]
end
 --[[ @ 0]]
