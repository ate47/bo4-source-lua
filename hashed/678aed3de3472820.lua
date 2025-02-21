-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.multi_stage_target_lockon = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.multi_stage_target_lockon = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "multi_stage_target_lockon", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.multi_stage_target_lockon ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.ignoreCursor = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Reticle = LUI.UIImage.new( 0.5, 0.5, -40, 40, 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	Reticle:setRGB( ColorSet.EnemyOrange_Bright.r, ColorSet.EnemyOrange_Bright.g, ColorSet.EnemyOrange_Bright.b ) --[[ @ 0]]
	Reticle:setAlpha( 0 ) --[[ @ 0]]
	Reticle:setImage( RegisterImage( @"uie_ui_hud_vehicle_hellstorm_enemyindicator" ) ) --[[ @ 0]]
	self:addElement( Reticle ) --[[ @ 0]]
	self.Reticle = Reticle --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, f1_arg0, "targetState", 0 )
			end
		},
		{
			stateName = "TargetIdentified",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, f1_arg0, "targetState", 1 )
			end
		},
		{
			stateName = "LockingOn",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, f1_arg0, "targetState", 2 )
			end
		},
		{
			stateName = "LockedOn",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, f1_arg0, "targetState", 3 )
			end
		},
		{
			stateName = "Tracking",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, f1_arg0, "targetState", 4 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "targetState", true, function ( model )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "targetState"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local3 = self --[[ @ 0]]
	if IsPC() then
		CoD.HUDUtility.LinkSetupEntityContainerToModel( self, "entNum", false, false, 0, 0, 0 ) --[[ @ 0]]
		CoD.PCUtility.DisableKeyboardNavigationInMenu( f1_local1 ) --[[ @ 0]]
	else
		CoD.HUDUtility.LinkSetupEntityContainerToModel( self, "entNum", false, false, 0, 0, 0 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.multi_stage_target_lockon.__resetProperties = function ( f8_arg0 )
	f8_arg0.Reticle:completeAnimation() --[[ @ 0]]
	f8_arg0.Reticle:setRGB( ColorSet.EnemyOrange_Bright.r, ColorSet.EnemyOrange_Bright.g, ColorSet.EnemyOrange_Bright.b ) --[[ @ 0]]
	f8_arg0.Reticle:setAlpha( 0 ) --[[ @ 0]]
	f8_arg0.Reticle:setZRot( 0 ) --[[ @ 0]]
	f8_arg0.Reticle:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.multi_stage_target_lockon.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.Reticle:completeAnimation() --[[ @ 0]]
			f10_arg0.Reticle:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Reticle ) --[[ @ 0]]
		end
	},
	TargetIdentified = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.Reticle:completeAnimation() --[[ @ 0]]
			f11_arg0.Reticle:setRGB( 0.98, 0, 0 ) --[[ @ 0]]
			f11_arg0.Reticle:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Reticle ) --[[ @ 0]]
		end
	},
	LockingOn = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.Reticle:beginAnimation( 3000 ) --[[ @ 0]]
				f12_arg0.Reticle:setZRot( -360 ) --[[ @ 0]]
				f12_arg0.Reticle:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.Reticle:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.Reticle:completeAnimation() --[[ @ 0]]
			f12_arg0.Reticle:setRGB( 0.98, 0, 0 ) --[[ @ 0]]
			f12_arg0.Reticle:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.Reticle:setZRot( 0 ) --[[ @ 0]]
			f12_local0( f12_arg0.Reticle ) --[[ @ 0]]
			f12_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	LockedOn = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.Reticle:completeAnimation() --[[ @ 0]]
			f14_arg0.Reticle:setRGB( 0.98, 0, 0 ) --[[ @ 0]]
			f14_arg0.Reticle:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.Reticle:setZRot( 45 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Reticle ) --[[ @ 0]]
		end
	},
	Tracking = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.Reticle:completeAnimation() --[[ @ 0]]
			f15_arg0.Reticle:setRGB( 0.98, 0, 0 ) --[[ @ 0]]
			f15_arg0.Reticle:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.Reticle:setZRot( 45 ) --[[ @ 0]]
			f15_arg0.Reticle:setScale( 0.25, 0.25 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Reticle ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.multi_stage_target_lockon.__onClose = function ( f16_arg0 )
	
end
 --[[ @ 0]]
