-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.Hud_ZM_PlayerDeadMarker = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Hud_ZM_PlayerDeadMarker.__defaultWidth = 256 --[[ @ 0]]
CoD.Hud_ZM_PlayerDeadMarker.__defaultHeight = 128 --[[ @ 0]]
CoD.Hud_ZM_PlayerDeadMarker.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Hud_ZM_PlayerDeadMarker ) --[[ @ 0]]
	self.id = "Hud_ZM_PlayerDeadMarker" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Disabled = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Disabled:setImage( RegisterImage( @"hash_469BEFB7E55FBA50" ) ) --[[ @ 0]]
	self:addElement( Disabled ) --[[ @ 0]]
	self.Disabled = Disabled --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "dead" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "dead", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "dead"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Hud_ZM_PlayerDeadMarker.__resetProperties = function ( f4_arg0 )
	f4_arg0.Disabled:completeAnimation() --[[ @ 0]]
	f4_arg0.Disabled:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Hud_ZM_PlayerDeadMarker.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.Disabled:completeAnimation() --[[ @ 0]]
			f5_arg0.Disabled:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Disabled ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.Disabled:completeAnimation() --[[ @ 0]]
			f6_arg0.Disabled:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Disabled ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
