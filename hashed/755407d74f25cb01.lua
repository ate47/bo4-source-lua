-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.CODCasterTeamBaseGlow = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CODCasterTeamBaseGlow.__defaultWidth = 366 --[[ @ 0]]
CoD.CODCasterTeamBaseGlow.__defaultHeight = 865 --[[ @ 0]]
CoD.CODCasterTeamBaseGlow.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CODCasterTeamBaseGlow ) --[[ @ 0]]
	self.id = "CODCasterTeamBaseGlow" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local GlowCODCaster = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	GlowCODCaster:setAlpha( 0 ) --[[ @ 0]]
	GlowCODCaster:setImage( RegisterImage( @"hash_C71A85C6EC3CE40" ) ) --[[ @ 0]]
	GlowCODCaster:subscribeToGlobalModel( f1_arg1, "DeadSpectate", "playerIndex", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			GlowCODCaster:setRGB( TeamColorFromPlayerIndex( f1_arg1, f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GlowCODCaster ) --[[ @ 0]]
	self.GlowCODCaster = GlowCODCaster --[[ @ 0]]
	
	local GlowDefault = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	GlowDefault:setRGB( 0.74, 0.3, 0 ) --[[ @ 0]]
	GlowDefault:setAlpha( 0 ) --[[ @ 0]]
	GlowDefault:setImage( RegisterImage( @"hash_C71A85C6EC3CE40" ) ) --[[ @ 0]]
	self:addElement( GlowDefault ) --[[ @ 0]]
	self.GlowDefault = GlowDefault --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "CODCaster",
			condition = function ( menu, element, event )
				return IsCodCaster( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["factions.isCoDCaster"], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "factions.isCoDCaster"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CODCasterTeamBaseGlow.__resetProperties = function ( f5_arg0 )
	f5_arg0.GlowDefault:completeAnimation() --[[ @ 0]]
	f5_arg0.GlowCODCaster:completeAnimation() --[[ @ 0]]
	f5_arg0.GlowDefault:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.GlowCODCaster:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CODCasterTeamBaseGlow.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.GlowCODCaster:completeAnimation() --[[ @ 0]]
			f6_arg0.GlowCODCaster:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.GlowCODCaster ) --[[ @ 0]]
			f6_arg0.GlowDefault:completeAnimation() --[[ @ 0]]
			f6_arg0.GlowDefault:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.GlowDefault ) --[[ @ 0]]
		end
	},
	CODCaster = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.GlowCODCaster:completeAnimation() --[[ @ 0]]
			f7_arg0.GlowCODCaster:setAlpha( 0.8 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.GlowCODCaster ) --[[ @ 0]]
			f7_arg0.GlowDefault:completeAnimation() --[[ @ 0]]
			f7_arg0.GlowDefault:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.GlowDefault ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CODCasterTeamBaseGlow.__onClose = function ( f8_arg0 )
	f8_arg0.GlowCODCaster:close() --[[ @ 0]]
end
 --[[ @ 0]]
