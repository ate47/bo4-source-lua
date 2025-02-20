-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.uplinkReticle = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.uplinkReticle.__defaultWidth = 195 --[[ @ 0]]
CoD.uplinkReticle.__defaultHeight = 195 --[[ @ 0]]
CoD.uplinkReticle.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "ballGametype.passOption" ) --[[ @ 0]]
	self:setClass( CoD.uplinkReticle ) --[[ @ 0]]
	self.id = "uplinkReticle" --[[ @ 0]]
	self.soundSet = "CAC_PrimaryWeapon" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local reticleNew = LUI.UIImage.new( 0.5, 0.5, -98, 98, 0.5, 0.5, -98, 98 ) --[[ @ 0]]
	reticleNew:setAlpha( 0.9 ) --[[ @ 0]]
	reticleNew:setScale( 0.7, 0.7 ) --[[ @ 0]]
	reticleNew:setImage( RegisterImage( @"uie_reticle_uplink" ) ) --[[ @ 0]]
	self:addElement( reticleNew ) --[[ @ 0]]
	self.reticleNew = reticleNew --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "PassTarget",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "ballGametype.passOption", 1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["ballGametype.passOption"], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "ballGametype.passOption"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.uplinkReticle.__resetProperties = function ( f4_arg0 )
	f4_arg0.reticleNew:completeAnimation() --[[ @ 0]]
	f4_arg0.reticleNew:setRGB( 1, 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.uplinkReticle.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PassTarget = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.reticleNew:completeAnimation() --[[ @ 0]]
			f6_arg0.reticleNew:setRGB( ColorSet.FriendlyBlue.r, ColorSet.FriendlyBlue.g, ColorSet.FriendlyBlue.b ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.reticleNew ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
