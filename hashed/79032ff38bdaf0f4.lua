-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:69220087c645f831" ) --[[ @ 0]]
require( "x64:5edc0771252f0eb7" ) --[[ @ 0]]

CoD.ZMPerkVaporIcon = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMPerkVaporIcon.__defaultWidth = 50 --[[ @ 0]]
CoD.ZMPerkVaporIcon.__defaultHeight = 50 --[[ @ 0]]
CoD.ZMPerkVaporIcon.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZMPerkVaporIcon ) --[[ @ 0]]
	self.id = "ZMPerkVaporIcon" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local vaporImageBacking = LUI.UIImage.new( 0, 0, 0, 50, 0, 0, 0, 50 ) --[[ @ 0]]
	vaporImageBacking:setRGB( 0.45, 0.45, 0.45 ) --[[ @ 0]]
	vaporImageBacking:setYRot( 360 ) --[[ @ 0]]
	vaporImageBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	vaporImageBacking:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	vaporImageBacking:linkToElementModel( self, "itemIndex", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			vaporImageBacking:setImage( RegisterImage( GetItemImageFromIndex( Enum[@"statindexoffset"][@"hash_49AF82A21BAD026D"], f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( vaporImageBacking ) --[[ @ 0]]
	self.vaporImageBacking = vaporImageBacking --[[ @ 0]]
	
	local vaporImageFull = LUI.UIImage.new( 0, 0, 0, 50, 0, 0, 0, 50 ) --[[ @ 0]]
	vaporImageFull:setYRot( 360 ) --[[ @ 0]]
	vaporImageFull:linkToElementModel( self, "itemIndex", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			vaporImageFull:setImage( RegisterImage( GetItemImageFromIndex( Enum[@"statindexoffset"][@"hash_49AF82A21BAD026D"], f3_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( vaporImageFull ) --[[ @ 0]]
	self.vaporImageFull = vaporImageFull --[[ @ 0]]
	
	local CooldownAndTimerEffects = CoD.ZMPerkVaporCooldownPulse.new( f1_arg0, f1_arg1, 0, 0, 0, 50, 0, 0, 0, 50 ) --[[ @ 0]]
	CooldownAndTimerEffects:linkToElementModel( self, nil, false, function ( model )
		CooldownAndTimerEffects:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CooldownAndTimerEffects ) --[[ @ 0]]
	self.CooldownAndTimerEffects = CooldownAndTimerEffects --[[ @ 0]]
	
	local PhDSliderEffect = CoD.ZMPerkVaporPhDSliderEffect.new( f1_arg0, f1_arg1, 0, 0, 0, 50, 0, 0, 0, 50 ) --[[ @ 0]]
	PhDSliderEffect:linkToElementModel( self, nil, false, function ( model )
		PhDSliderEffect:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( PhDSliderEffect ) --[[ @ 0]]
	self.PhDSliderEffect = PhDSliderEffect --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Active",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "timerActive", 1 )
			end
		},
		{
			stateName = "Available",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "state", CoD.ZMPerkUtility.PerkVaporStates.DEFAULT )
			end
		},
		{
			stateName = "Consumed",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "state", CoD.ZMPerkUtility.PerkVaporStates.CONSUMED )
			end
		},
		{
			stateName = "CoolingDown",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "state", CoD.ZMPerkUtility.PerkVaporStates.COOLING_DOWN )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "timerActive", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "timerActive"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "state", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "state"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMPerkVaporIcon.__resetProperties = function ( f12_arg0 )
	f12_arg0.vaporImageBacking:completeAnimation() --[[ @ 0]]
	f12_arg0.CooldownAndTimerEffects:completeAnimation() --[[ @ 0]]
	f12_arg0.vaporImageFull:completeAnimation() --[[ @ 0]]
	f12_arg0.vaporImageBacking:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.CooldownAndTimerEffects:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.vaporImageFull:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMPerkVaporIcon.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f13_arg0.vaporImageBacking:completeAnimation() --[[ @ 0]]
			f13_arg0.vaporImageBacking:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.vaporImageBacking ) --[[ @ 0]]
			f13_arg0.vaporImageFull:completeAnimation() --[[ @ 0]]
			f13_arg0.vaporImageFull:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.vaporImageFull ) --[[ @ 0]]
			f13_arg0.CooldownAndTimerEffects:completeAnimation() --[[ @ 0]]
			f13_arg0.CooldownAndTimerEffects:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.CooldownAndTimerEffects ) --[[ @ 0]]
		end
	},
	Active = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f14_arg0.vaporImageBacking:completeAnimation() --[[ @ 0]]
			f14_arg0.vaporImageBacking:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.vaporImageBacking ) --[[ @ 0]]
			f14_arg0.vaporImageFull:completeAnimation() --[[ @ 0]]
			f14_arg0.vaporImageFull:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.vaporImageFull ) --[[ @ 0]]
			f14_arg0.CooldownAndTimerEffects:completeAnimation() --[[ @ 0]]
			f14_arg0.CooldownAndTimerEffects:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.CooldownAndTimerEffects ) --[[ @ 0]]
		end
	},
	Available = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f15_arg0.vaporImageFull:completeAnimation() --[[ @ 0]]
			f15_arg0.vaporImageFull:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.vaporImageFull ) --[[ @ 0]]
			f15_arg0.CooldownAndTimerEffects:completeAnimation() --[[ @ 0]]
			f15_arg0.CooldownAndTimerEffects:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.CooldownAndTimerEffects ) --[[ @ 0]]
		end
	},
	Consumed = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f16_arg0.vaporImageFull:completeAnimation() --[[ @ 0]]
			f16_arg0.vaporImageFull:setAlpha( 1 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.vaporImageFull ) --[[ @ 0]]
			f16_arg0.CooldownAndTimerEffects:completeAnimation() --[[ @ 0]]
			f16_arg0.CooldownAndTimerEffects:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.CooldownAndTimerEffects ) --[[ @ 0]]
		end
	},
	CoolingDown = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f17_arg0.vaporImageBacking:completeAnimation() --[[ @ 0]]
			f17_arg0.vaporImageBacking:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.vaporImageBacking ) --[[ @ 0]]
			f17_arg0.vaporImageFull:completeAnimation() --[[ @ 0]]
			f17_arg0.vaporImageFull:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.vaporImageFull ) --[[ @ 0]]
			f17_arg0.CooldownAndTimerEffects:completeAnimation() --[[ @ 0]]
			f17_arg0.CooldownAndTimerEffects:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.CooldownAndTimerEffects ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ZMPerkVaporIcon.__onClose = function ( f18_arg0 )
	f18_arg0.vaporImageBacking:close() --[[ @ 0]]
	f18_arg0.vaporImageFull:close() --[[ @ 0]]
	f18_arg0.CooldownAndTimerEffects:close() --[[ @ 0]]
	f18_arg0.PhDSliderEffect:close() --[[ @ 0]]
end
 --[[ @ 0]]
