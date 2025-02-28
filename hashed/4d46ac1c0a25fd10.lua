-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.ArmorOverheadName = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArmorOverheadName.__defaultWidth = 30 --[[ @ 0]]
CoD.ArmorOverheadName.__defaultHeight = 30 --[[ @ 0]]
CoD.ArmorOverheadName.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModelIfNotSet( f1_arg1, "hudItems.armorIsOnCooldown", 0 ) --[[ @ 0]]
	self:setClass( CoD.ArmorOverheadName ) --[[ @ 0]]
	self.id = "ArmorOverheadName" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local armor = LUI.UIImage.new( 0, 0, 0, 30, 0, 0, 0, 30 ) --[[ @ 0]]
	armor:setAlpha( 0 ) --[[ @ 0]]
	armor:setImage( RegisterImage( @"hash_4B5BC23908F1D357" ) ) --[[ @ 0]]
	self:addElement( armor ) --[[ @ 0]]
	self.armor = armor --[[ @ 0]]
	
	local armordamage1 = LUI.UIImage.new( 0, 0, 0, 30, 0, 0, 0, 30 ) --[[ @ 0]]
	armordamage1:setAlpha( 0 ) --[[ @ 0]]
	armordamage1:setImage( RegisterImage( @"hash_7F27C140343E5BBF" ) ) --[[ @ 0]]
	self:addElement( armordamage1 ) --[[ @ 0]]
	self.armordamage1 = armordamage1 --[[ @ 0]]
	
	local armordamage2 = LUI.UIImage.new( 0, 0, 0, 30, 0, 0, 0, 30 ) --[[ @ 0]]
	armordamage2:setAlpha( 0 ) --[[ @ 0]]
	armordamage2:setImage( RegisterImage( @"hash_7F27C240343E5D72" ) ) --[[ @ 0]]
	self:addElement( armordamage2 ) --[[ @ 0]]
	self.armordamage2 = armordamage2 --[[ @ 0]]
	
	local armordamage3 = LUI.UIImage.new( 0, 0, 0, 30, 0, 0, 0, 30 ) --[[ @ 0]]
	armordamage3:setAlpha( 0 ) --[[ @ 0]]
	armordamage3:setImage( RegisterImage( @"hash_7F27C340343E5F25" ) ) --[[ @ 0]]
	self:addElement( armordamage3 ) --[[ @ 0]]
	self.armordamage3 = armordamage3 --[[ @ 0]]
	
	local armordamage4 = LUI.UIImage.new( 0, 0, 0, 30, 0, 0, 0, 30 ) --[[ @ 0]]
	armordamage4:setAlpha( 0 ) --[[ @ 0]]
	armordamage4:setImage( RegisterImage( @"hash_7F27BC40343E5340" ) ) --[[ @ 0]]
	self:addElement( armordamage4 ) --[[ @ 0]]
	self.armordamage4 = armordamage4 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HaveArmorLeft",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( self, f1_arg1, "armor", 0 )
			end
		},
		{
			stateName = "ArmorDestroyed",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "armor", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "armor"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "armorTookDamage", true, function ( model )
		local f5_local0 = self --[[ @ 0]]
		if AlwaysFalse() then
			CoD.HUDUtility.PlayArmorDamageClip( self, model ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "PerController", "hudItems.playerSpawned", function ( model )
		local f6_local0 = self --[[ @ 0]]
		PlayClip( self, "Intro", f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local6 = self --[[ @ 0]]
	CoD.HUDUtility.SetupMonitorForClipActive( self ) --[[ @ 0]]
	CoD.HUDUtility.RegisterArmorDamageStageClip( self, "1", "TookDamageArmorHigh" ) --[[ @ 0]]
	CoD.HUDUtility.RegisterArmorDamageStageClip( self, "2", "TookDamageArmorLow" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ArmorOverheadName.__resetProperties = function ( f7_arg0 )
	f7_arg0.armor:completeAnimation() --[[ @ 0]]
	f7_arg0.armordamage4:completeAnimation() --[[ @ 0]]
	f7_arg0.armordamage3:completeAnimation() --[[ @ 0]]
	f7_arg0.armordamage1:completeAnimation() --[[ @ 0]]
	f7_arg0.armor:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.armordamage4:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.armordamage3:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f7_arg0.armordamage3:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.armordamage1:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f7_arg0.armordamage1:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ArmorOverheadName.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.armor:completeAnimation() --[[ @ 0]]
			f8_arg0.armor:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.armor ) --[[ @ 0]]
		end
	},
	HaveArmorLeft = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.armor:completeAnimation() --[[ @ 0]]
			f9_arg0.armor:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.armor ) --[[ @ 0]]
		end,
		ArmorDestroyed = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				f10_arg0.armordamage4:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.armordamage4:setAlpha( 0 ) --[[ @ 0]]
				f10_arg0.armordamage4:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.armordamage4:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.armordamage4:completeAnimation() --[[ @ 0]]
			f10_arg0.armordamage4:setAlpha( 1 ) --[[ @ 0]]
			f10_local0( f10_arg0.armordamage4 ) --[[ @ 0]]
			f10_arg0.nextClip = "ArmorDestroyed" --[[ @ 0]]
		end,
		TookDamageArmorLow = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					f14_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f14_arg0:setRGB( 1, 1, 1 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.armordamage3:beginAnimation( 100 ) --[[ @ 0]]
				f12_arg0.armordamage3:setRGB( 1, 0, 0 ) --[[ @ 0]]
				f12_arg0.armordamage3:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.armordamage3:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.armordamage3:completeAnimation() --[[ @ 0]]
			f12_arg0.armordamage3:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f12_arg0.armordamage3:setAlpha( 1 ) --[[ @ 0]]
			f12_local0( f12_arg0.armordamage3 ) --[[ @ 0]]
		end,
		TookDamageArmorHigh = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					f17_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f17_arg0:setRGB( 1, 1, 1 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0.armordamage1:beginAnimation( 100 ) --[[ @ 0]]
				f15_arg0.armordamage1:setRGB( 1, 0, 0 ) --[[ @ 0]]
				f15_arg0.armordamage1:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.armordamage1:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.armordamage1:completeAnimation() --[[ @ 0]]
			f15_arg0.armordamage1:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f15_arg0.armordamage1:setAlpha( 1 ) --[[ @ 0]]
			f15_local0( f15_arg0.armordamage1 ) --[[ @ 0]]
		end
	},
	ArmorDestroyed = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f18_arg0.armordamage4:completeAnimation() --[[ @ 0]]
			f18_arg0.armordamage4:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.armordamage4 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
