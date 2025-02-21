-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.CodCasterPortraitPlayerListEntryDeathMarker = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterPortraitPlayerListEntryDeathMarker.__defaultWidth = 43 --[[ @ 0]]
CoD.CodCasterPortraitPlayerListEntryDeathMarker.__defaultHeight = 43 --[[ @ 0]]
CoD.CodCasterPortraitPlayerListEntryDeathMarker.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterPortraitPlayerListEntryDeathMarker ) --[[ @ 0]]
	self.id = "CodCasterPortraitPlayerListEntryDeathMarker" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PlayerXDead = LUI.UIImage.new( 0, 0, 0, 43, 0, 0, 0, 43 ) --[[ @ 0]]
	PlayerXDead:setAlpha( 0 ) --[[ @ 0]]
	PlayerXDead:setImage( RegisterImage( @"hash_51B2A931534C28C1" ) ) --[[ @ 0]]
	self:addElement( PlayerXDead ) --[[ @ 0]]
	self.PlayerXDead = PlayerXDead --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "health.healthValue", 0 )
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
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CodCasterPortraitPlayerListEntryDeathMarker.__resetProperties = function ( f4_arg0 )
	f4_arg0.PlayerXDead:completeAnimation() --[[ @ 0]]
	f4_arg0.PlayerXDead:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCasterPortraitPlayerListEntryDeathMarker.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.PlayerXDead:completeAnimation() --[[ @ 0]]
			f6_arg0.PlayerXDead:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.PlayerXDead ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
