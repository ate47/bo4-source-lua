-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:21ff1c0d96dd8207" ) --[[ @ 0]]
require( "x64:35c0334ae187f881" ) --[[ @ 0]]

CoD.SprintMeter = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SprintMeter.__defaultWidth = 255 --[[ @ 0]]
CoD.SprintMeter.__defaultHeight = 60 --[[ @ 0]]
CoD.SprintMeter.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	SetProperty( self, "_lastScalableWidth", -1 ) --[[ @ 0]]
	self:setClass( CoD.SprintMeter ) --[[ @ 0]]
	self.id = "SprintMeter" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Bg = LUI.UIImage.new( 0.5, 0.5, -124, 120, 0.5, 0.5, -33, 40 ) --[[ @ 0]]
	Bg:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Bg:setAlpha( 0.5 ) --[[ @ 0]]
	Bg:setYRot( 180 ) --[[ @ 0]]
	Bg:setImage( RegisterImage( @"uie_hud_sprintmeter_bg" ) ) --[[ @ 0]]
	self:addElement( Bg ) --[[ @ 0]]
	self.Bg = Bg --[[ @ 0]]
	
	local sprintMeter = CoD.SprintMeterDots.new( f1_arg0, f1_arg1, 0.5, 0.5, -105.5, 101.5, 1, 1, -54, 0 ) --[[ @ 0]]
	sprintMeter:setYRot( 180 ) --[[ @ 0]]
	self:addElement( sprintMeter ) --[[ @ 0]]
	self.sprintMeter = sprintMeter --[[ @ 0]]
	
	local sprintArrows = CoD.SprintMeterArrows.new( f1_arg0, f1_arg1, 0.5, 0.5, -11, 11, 1, 1, -449, 1 ) --[[ @ 0]]
	sprintArrows.right1:setZRot( 27 ) --[[ @ 0]]
	self:addElement( sprintArrows ) --[[ @ 0]]
	self.sprintArrows = sprintArrows --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "SprintDecay",
			condition = function ( menu, element, event )
				return IsUsingSprintDecay()
			end
		},
		{
			stateName = "Exhausted",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueTrue( f1_arg1, "playerAbilities.playerSprintExhausted" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = self --[[ @ 0]]
	local f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["playerAbilities.playerSprintExhausted"], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "playerAbilities.playerSprintExhausted"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "PlayerAbilities", "playerSprintRatio", function ( model )
		local f5_local0 = self --[[ @ 0]]
		CoD.HUDUtility.UpdateThrustMeter( self, self.sprintMeter, self.sprintArrows, f1_arg1, model ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SprintMeter.__resetProperties = function ( f6_arg0 )
	f6_arg0.sprintArrows:completeAnimation() --[[ @ 0]]
	f6_arg0.Bg:completeAnimation() --[[ @ 0]]
	f6_arg0.sprintMeter:completeAnimation() --[[ @ 0]]
	f6_arg0.sprintArrows:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.Bg:setRGB( 0, 0, 0 ) --[[ @ 0]]
	f6_arg0.Bg:setAlpha( 0.5 ) --[[ @ 0]]
	f6_arg0.sprintMeter:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SprintMeter.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	SprintDecay = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.Bg:completeAnimation() --[[ @ 0]]
			f8_arg0.Bg:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Bg ) --[[ @ 0]]
			f8_arg0.sprintArrows:completeAnimation() --[[ @ 0]]
			f8_arg0.sprintArrows:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.sprintArrows ) --[[ @ 0]]
		end
	},
	Exhausted = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f9_arg0.Bg:completeAnimation() --[[ @ 0]]
			f9_arg0.Bg:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f9_arg0.Bg:setAlpha( 0.3 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Bg ) --[[ @ 0]]
			f9_arg0.sprintMeter:completeAnimation() --[[ @ 0]]
			f9_arg0.sprintMeter:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.sprintMeter ) --[[ @ 0]]
			f9_arg0.sprintArrows:completeAnimation() --[[ @ 0]]
			f9_arg0.sprintArrows:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.sprintArrows ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.SprintMeter.__onClose = function ( f10_arg0 )
	f10_arg0.sprintMeter:close() --[[ @ 0]]
	f10_arg0.sprintArrows:close() --[[ @ 0]]
end
 --[[ @ 0]]
