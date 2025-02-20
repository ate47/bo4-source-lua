-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.CodCasterPortraitPlayerListNumber = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterPortraitPlayerListNumber.__defaultWidth = 18 --[[ @ 0]]
CoD.CodCasterPortraitPlayerListNumber.__defaultHeight = 25 --[[ @ 0]]
CoD.CodCasterPortraitPlayerListNumber.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterPortraitPlayerListNumber ) --[[ @ 0]]
	self.id = "CodCasterPortraitPlayerListNumber" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Id = LUI.UIText.new( 1, 1, -18, 0, 0, 0, 3, 21 ) --[[ @ 0]]
	Id:setText( "" ) --[[ @ 0]]
	Id:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Id:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	Id:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( Id ) --[[ @ 0]]
	self.Id = Id --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "PlayerDead",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "health.healthValue", 0 )
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_playernumbers", 1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "health.healthValue", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "health.healthValue"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = DataSources.CodCaster.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.profileSettingsUpdated, function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "profileSettingsUpdated"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CodCasterPortraitPlayerListNumber.__resetProperties = function ( f6_arg0 )
	f6_arg0.Id:completeAnimation() --[[ @ 0]]
	f6_arg0.Id:setTopBottom( 0, 0, 3, 21 ) --[[ @ 0]]
	f6_arg0.Id:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCasterPortraitPlayerListNumber.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.Id:completeAnimation() --[[ @ 0]]
			f7_arg0.Id:setTopBottom( 0, 0, 2, 23 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Id ) --[[ @ 0]]
		end
	},
	PlayerDead = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.Id:completeAnimation() --[[ @ 0]]
			f8_arg0.Id:setAlpha( 0.03 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Id ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.Id:completeAnimation() --[[ @ 0]]
			f9_arg0.Id:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Id ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
