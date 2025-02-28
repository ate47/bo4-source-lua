-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/vehiclehuds/hellstorm/vhud_hellstorm_notificationarmed" ) --[[ @ 0]]
require( "ui/uieditor/widgets/vehiclehuds/hellstorm/vhud_hellstorm_notificationcluster" ) --[[ @ 0]]

CoD.vhud_hellstorm_WeaponModeWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_hellstorm_WeaponModeWidget.__defaultWidth = 220 --[[ @ 0]]
CoD.vhud_hellstorm_WeaponModeWidget.__defaultHeight = 276 --[[ @ 0]]
CoD.vhud_hellstorm_WeaponModeWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_hellstorm_WeaponModeWidget ) --[[ @ 0]]
	self.id = "vhud_hellstorm_WeaponModeWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Cluster = CoD.vhud_hellstorm_NotificationCluster.new( f1_arg0, f1_arg1, 0.5, 0.5, -110, 110, 1, 1, -248, -226 ) --[[ @ 0]]
	Cluster.Base:setAlpha( 0.1 ) --[[ @ 0]]
	self:addElement( Cluster ) --[[ @ 0]]
	self.Cluster = Cluster --[[ @ 0]]
	
	local LockOn = CoD.vhud_hellstorm_NotificationArmed.new( f1_arg0, f1_arg1, 0.5, 0.5, -110, 110, 1, 1, -276, -254 ) --[[ @ 0]]
	LockOn.Base:setAlpha( 0.1 ) --[[ @ 0]]
	self:addElement( LockOn ) --[[ @ 0]]
	self.LockOn = LockOn --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "DockLockOn",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "hudItems.remoteMissilePhase2", 0 )
			end
		},
		{
			stateName = "DockLockOff",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "hudItems.remoteMissilePhase2", 0 )
			end
		},
		{
			stateName = "BothOn",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "rocketAmmo", 0 )
			end
		},
		{
			stateName = "ClusterOn",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "rocketAmmo", 0 )
			end
		},
		{
			stateName = "LockOn",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["hudItems.remoteMissilePhase2"], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "hudItems.remoteMissilePhase2"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "rocketAmmo", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "rocketAmmo"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local4 = self --[[ @ 0]]
	if IsPC() then
		SizeToHudArea( f1_local4, f1_arg1 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.vhud_hellstorm_WeaponModeWidget.__resetProperties = function ( f9_arg0 )
	f9_arg0.Cluster:completeAnimation() --[[ @ 0]]
	f9_arg0.LockOn:completeAnimation() --[[ @ 0]]
	f9_arg0.Cluster:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.Cluster.Base:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f9_arg0.Cluster.Base:setAlpha( 0.1 ) --[[ @ 0]]
	f9_arg0.Cluster.InnerGlow:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.Cluster.Frame:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f9_arg0.Cluster.Frame:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.Cluster.GlowBot:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.Cluster.GlowTop:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.LockOn:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.LockOn.Base:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f9_arg0.LockOn.Base:setAlpha( 0.1 ) --[[ @ 0]]
	f9_arg0.LockOn.InnerGlow:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.LockOn.Frame:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f9_arg0.LockOn.Frame:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.LockOn.GlowBot:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.LockOn.GlowTop:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vhud_hellstorm_WeaponModeWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	DockLockOn = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f11_arg0.Cluster:completeAnimation() --[[ @ 0]]
			f11_arg0.Cluster:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Cluster ) --[[ @ 0]]
			f11_arg0.LockOn:completeAnimation() --[[ @ 0]]
			f11_arg0.LockOn.Base:completeAnimation() --[[ @ 0]]
			f11_arg0.LockOn.InnerGlow:completeAnimation() --[[ @ 0]]
			f11_arg0.LockOn.Frame:completeAnimation() --[[ @ 0]]
			f11_arg0.LockOn.GlowBot:completeAnimation() --[[ @ 0]]
			f11_arg0.LockOn.GlowTop:completeAnimation() --[[ @ 0]]
			f11_arg0.LockOn:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.LockOn.Base:setRGB( ColorSet.EnemyOrange_Bright.r, ColorSet.EnemyOrange_Bright.g, ColorSet.EnemyOrange_Bright.b ) --[[ @ 0]]
			f11_arg0.LockOn.Base:setAlpha( 0.3 ) --[[ @ 0]]
			f11_arg0.LockOn.InnerGlow:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.LockOn.Frame:setRGB( ColorSet.EnemyOrange_Bright.r, ColorSet.EnemyOrange_Bright.g, ColorSet.EnemyOrange_Bright.b ) --[[ @ 0]]
			f11_arg0.LockOn.Frame:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.LockOn.GlowBot:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.LockOn.GlowTop:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.LockOn ) --[[ @ 0]]
		end
	},
	DockLockOff = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f12_arg0.Cluster:completeAnimation() --[[ @ 0]]
			f12_arg0.Cluster:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Cluster ) --[[ @ 0]]
			f12_arg0.LockOn:completeAnimation() --[[ @ 0]]
			f12_arg0.LockOn:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.LockOn ) --[[ @ 0]]
		end
	},
	BothOn = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f13_arg0.Cluster:completeAnimation() --[[ @ 0]]
			f13_arg0.Cluster.Base:completeAnimation() --[[ @ 0]]
			f13_arg0.Cluster.InnerGlow:completeAnimation() --[[ @ 0]]
			f13_arg0.Cluster.Frame:completeAnimation() --[[ @ 0]]
			f13_arg0.Cluster.GlowBot:completeAnimation() --[[ @ 0]]
			f13_arg0.Cluster.GlowTop:completeAnimation() --[[ @ 0]]
			f13_arg0.Cluster.Base:setRGB( ColorSet.EnemyOrange_Bright.r, ColorSet.EnemyOrange_Bright.g, ColorSet.EnemyOrange_Bright.b ) --[[ @ 0]]
			f13_arg0.Cluster.Base:setAlpha( 0.3 ) --[[ @ 0]]
			f13_arg0.Cluster.InnerGlow:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.Cluster.Frame:setRGB( ColorSet.EnemyOrange_Bright.r, ColorSet.EnemyOrange_Bright.g, ColorSet.EnemyOrange_Bright.b ) --[[ @ 0]]
			f13_arg0.Cluster.GlowBot:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.Cluster.GlowTop:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Cluster ) --[[ @ 0]]
			f13_arg0.LockOn:completeAnimation() --[[ @ 0]]
			f13_arg0.LockOn.Base:completeAnimation() --[[ @ 0]]
			f13_arg0.LockOn.InnerGlow:completeAnimation() --[[ @ 0]]
			f13_arg0.LockOn.Frame:completeAnimation() --[[ @ 0]]
			f13_arg0.LockOn.GlowBot:completeAnimation() --[[ @ 0]]
			f13_arg0.LockOn.GlowTop:completeAnimation() --[[ @ 0]]
			f13_arg0.LockOn.Base:setRGB( ColorSet.EnemyOrange_Bright.r, ColorSet.EnemyOrange_Bright.g, ColorSet.EnemyOrange_Bright.b ) --[[ @ 0]]
			f13_arg0.LockOn.Base:setAlpha( 0.3 ) --[[ @ 0]]
			f13_arg0.LockOn.InnerGlow:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.LockOn.Frame:setRGB( ColorSet.EnemyOrange_Bright.r, ColorSet.EnemyOrange_Bright.g, ColorSet.EnemyOrange_Bright.b ) --[[ @ 0]]
			f13_arg0.LockOn.GlowBot:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.LockOn.GlowTop:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.LockOn ) --[[ @ 0]]
		end
	},
	ClusterOn = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.Cluster:completeAnimation() --[[ @ 0]]
			f14_arg0.Cluster.Base:completeAnimation() --[[ @ 0]]
			f14_arg0.Cluster.InnerGlow:completeAnimation() --[[ @ 0]]
			f14_arg0.Cluster.Frame:completeAnimation() --[[ @ 0]]
			f14_arg0.Cluster.GlowBot:completeAnimation() --[[ @ 0]]
			f14_arg0.Cluster.GlowTop:completeAnimation() --[[ @ 0]]
			f14_arg0.Cluster.Base:setRGB( ColorSet.EnemyOrange_Bright.r, ColorSet.EnemyOrange_Bright.g, ColorSet.EnemyOrange_Bright.b ) --[[ @ 0]]
			f14_arg0.Cluster.Base:setAlpha( 0.3 ) --[[ @ 0]]
			f14_arg0.Cluster.InnerGlow:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.Cluster.Frame:setRGB( ColorSet.EnemyOrange_Bright.r, ColorSet.EnemyOrange_Bright.g, ColorSet.EnemyOrange_Bright.b ) --[[ @ 0]]
			f14_arg0.Cluster.Frame:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.Cluster.GlowBot:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.Cluster.GlowTop:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Cluster ) --[[ @ 0]]
			f14_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	LockOn = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f15_arg0.Cluster:completeAnimation() --[[ @ 0]]
			f15_arg0.Cluster.Base:completeAnimation() --[[ @ 0]]
			f15_arg0.Cluster.Frame:completeAnimation() --[[ @ 0]]
			f15_arg0.Cluster.Base:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f15_arg0.Cluster.Frame:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Cluster ) --[[ @ 0]]
			f15_arg0.LockOn:completeAnimation() --[[ @ 0]]
			f15_arg0.LockOn.Base:completeAnimation() --[[ @ 0]]
			f15_arg0.LockOn.InnerGlow:completeAnimation() --[[ @ 0]]
			f15_arg0.LockOn.Frame:completeAnimation() --[[ @ 0]]
			f15_arg0.LockOn.GlowBot:completeAnimation() --[[ @ 0]]
			f15_arg0.LockOn.GlowTop:completeAnimation() --[[ @ 0]]
			f15_arg0.LockOn.Base:setRGB( ColorSet.EnemyOrange_Bright.r, ColorSet.EnemyOrange_Bright.g, ColorSet.EnemyOrange_Bright.b ) --[[ @ 0]]
			f15_arg0.LockOn.Base:setAlpha( 0.3 ) --[[ @ 0]]
			f15_arg0.LockOn.InnerGlow:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.LockOn.Frame:setRGB( ColorSet.EnemyOrange_Bright.r, ColorSet.EnemyOrange_Bright.g, ColorSet.EnemyOrange_Bright.b ) --[[ @ 0]]
			f15_arg0.LockOn.GlowBot:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.LockOn.GlowTop:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.LockOn ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.vhud_hellstorm_WeaponModeWidget.__onClose = function ( f16_arg0 )
	f16_arg0.Cluster:close() --[[ @ 0]]
	f16_arg0.LockOn:close() --[[ @ 0]]
end
 --[[ @ 0]]
