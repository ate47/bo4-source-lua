-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.PlayerListRowHealthValue = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PlayerListRowHealthValue.__defaultWidth = 47 --[[ @ 0]]
CoD.PlayerListRowHealthValue.__defaultHeight = 15 --[[ @ 0]]
CoD.PlayerListRowHealthValue.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PlayerListRowHealthValue ) --[[ @ 0]]
	self.id = "PlayerListRowHealthValue" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local HealthValue = LUI.UIText.new( 0, 0, 0, 47, 0.5, 0.5, -7.5, 7.5 ) --[[ @ 0]]
	HealthValue:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	HealthValue:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	HealthValue:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	HealthValue:linkToElementModel( self, "health.healthValue", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			HealthValue:setRGB( CoD.CodCasterUtility.HealthColor( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	HealthValue:linkToElementModel( self, "health.healthValue", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			HealthValue:setText( CoD.BaseUtility.AlreadyLocalized( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HealthValue ) --[[ @ 0]]
	self.HealthValue = HealthValue --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "AsianLanguage",
			condition = function ( menu, element, event )
				return CoD.BaseUtility.IsCurrentLanguageAsian()
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
CoD.PlayerListRowHealthValue.__resetProperties = function ( f5_arg0 )
	f5_arg0.HealthValue:completeAnimation() --[[ @ 0]]
	f5_arg0.HealthValue:setTopBottom( 0.5, 0.5, -7.5, 7.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PlayerListRowHealthValue.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	AsianLanguage = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.HealthValue:completeAnimation() --[[ @ 0]]
			f7_arg0.HealthValue:setTopBottom( 0.5, 0.5, -2.5, 7.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.HealthValue ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PlayerListRowHealthValue.__onClose = function ( f8_arg0 )
	f8_arg0.HealthValue:close() --[[ @ 0]]
end
 --[[ @ 0]]
