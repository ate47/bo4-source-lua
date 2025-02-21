-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.WaypointProgressRing = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WaypointProgressRing.__defaultWidth = 70 --[[ @ 0]]
CoD.WaypointProgressRing.__defaultHeight = 70 --[[ @ 0]]
CoD.WaypointProgressRing.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WaypointProgressRing ) --[[ @ 0]]
	self.id = "WaypointProgressRing" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local progressMeter = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	progressMeter:setAlpha( 0.9 ) --[[ @ 0]]
	progressMeter:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_domination_fill_02" ) ) --[[ @ 0]]
	progressMeter:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	progressMeter:setShaderVector( 0, 0.6, 0, 0, 0 ) --[[ @ 0]]
	progressMeter:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeter:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeter:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	progressMeter:linkToElementModel( self, "progress", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			progressMeter:setShaderVector( 4, CoD.GetVectorComponentFromString( f2_local0, 1 ), CoD.GetVectorComponentFromString( f2_local0, 2 ), CoD.GetVectorComponentFromString( f2_local0, 3 ), CoD.GetVectorComponentFromString( f2_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( progressMeter ) --[[ @ 0]]
	self.progressMeter = progressMeter --[[ @ 0]]
	
	local progressMeterColoredByUsing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByUsing:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_domination_fill_02" ) ) --[[ @ 0]]
	progressMeterColoredByUsing:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	progressMeterColoredByUsing:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByUsing:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByUsing:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByUsing:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByUsing.__Color = function ( f3_arg0 )
		local f3_local0 = f3_arg0:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			progressMeterColoredByUsing:setRGB( CoD.HUDUtility.GetFriendlyOrEnemyColorByObjId( f1_arg1, f3_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	progressMeterColoredByUsing:linkToElementModel( self, "objId", true, progressMeterColoredByUsing.__Color ) --[[ @ 0]]
	progressMeterColoredByUsing.__Color_FullPath = function ()
		local f4_local0 = self:getModel() --[[ @ 0]]
		if f4_local0 then
			f4_local0 = self:getModel() --[[ @ 0]]
			f4_local0 = f4_local0.objId --[[ @ 0]]
		end
		if f4_local0 then
			progressMeterColoredByUsing.__Color( f4_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	progressMeterColoredByUsing:linkToElementModel( self, "progress", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			progressMeterColoredByUsing:setShaderVector( 0, CoD.GetVectorComponentFromString( f5_local0, 1 ), CoD.GetVectorComponentFromString( f5_local0, 2 ), CoD.GetVectorComponentFromString( f5_local0, 3 ), CoD.GetVectorComponentFromString( f5_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( progressMeterColoredByUsing ) --[[ @ 0]]
	self.progressMeterColoredByUsing = progressMeterColoredByUsing --[[ @ 0]]
	
	local progressMeterColoredByUsing2 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByUsing2:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_domination_fill_02" ) ) --[[ @ 0]]
	progressMeterColoredByUsing2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_add" ) ) --[[ @ 0]]
	progressMeterColoredByUsing2:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByUsing2:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByUsing2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByUsing2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByUsing2.__Color = function ( f6_arg0 )
		local f6_local0 = f6_arg0:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			progressMeterColoredByUsing2:setRGB( CoD.HUDUtility.GetFriendlyOrEnemyMutedColorByObjId( f1_arg1, f6_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	progressMeterColoredByUsing2:linkToElementModel( self, "objId", true, progressMeterColoredByUsing2.__Color ) --[[ @ 0]]
	progressMeterColoredByUsing2.__Color_FullPath = function ()
		local f7_local0 = self:getModel() --[[ @ 0]]
		if f7_local0 then
			f7_local0 = self:getModel() --[[ @ 0]]
			f7_local0 = f7_local0.objId --[[ @ 0]]
		end
		if f7_local0 then
			progressMeterColoredByUsing2.__Color( f7_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	progressMeterColoredByUsing2:linkToElementModel( self, "progress", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			progressMeterColoredByUsing2:setShaderVector( 0, CoD.GetVectorComponentFromString( f8_local0, 1 ), CoD.GetVectorComponentFromString( f8_local0, 2 ), CoD.GetVectorComponentFromString( f8_local0, 3 ), CoD.GetVectorComponentFromString( f8_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( progressMeterColoredByUsing2 ) --[[ @ 0]]
	self.progressMeterColoredByUsing2 = progressMeterColoredByUsing2 --[[ @ 0]]
	
	local progressMeterColoredByUsing3 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByUsing3:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_domination_fill_02" ) ) --[[ @ 0]]
	progressMeterColoredByUsing3:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	progressMeterColoredByUsing3:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByUsing3:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByUsing3:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByUsing3:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByUsing3.__Color = function ( f9_arg0 )
		local f9_local0 = f9_arg0:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			progressMeterColoredByUsing3:setRGB( CoD.HUDUtility.GetFriendlyOrEnemyBrightColorByObjId( f1_arg1, f9_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	progressMeterColoredByUsing3:linkToElementModel( self, "objId", true, progressMeterColoredByUsing3.__Color ) --[[ @ 0]]
	progressMeterColoredByUsing3.__Color_FullPath = function ()
		local f10_local0 = self:getModel() --[[ @ 0]]
		if f10_local0 then
			f10_local0 = self:getModel() --[[ @ 0]]
			f10_local0 = f10_local0.objId --[[ @ 0]]
		end
		if f10_local0 then
			progressMeterColoredByUsing3.__Color( f10_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	progressMeterColoredByUsing3:linkToElementModel( self, "progress", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			progressMeterColoredByUsing3:setShaderVector( 0, CoD.GetVectorComponentFromString( f11_local0, 1 ), CoD.GetVectorComponentFromString( f11_local0, 2 ), CoD.GetVectorComponentFromString( f11_local0, 3 ), CoD.GetVectorComponentFromString( f11_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( progressMeterColoredByUsing3 ) --[[ @ 0]]
	self.progressMeterColoredByUsing3 = progressMeterColoredByUsing3 --[[ @ 0]]
	
	local progressMeterColoredByFlags = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByFlags:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_domination_fill_02" ) ) --[[ @ 0]]
	progressMeterColoredByFlags:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	progressMeterColoredByFlags:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByFlags:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByFlags:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByFlags:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByFlags.__Color = function ( f12_arg0 )
		local f12_local0 = f12_arg0:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			progressMeterColoredByFlags:setRGB( CoD.HUDUtility.GetFriendlyOrEnemyColorByFlags( self:getModel(), f1_arg1, f12_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	progressMeterColoredByFlags:linkToElementModel( self, "gamemodeFlags", true, progressMeterColoredByFlags.__Color ) --[[ @ 0]]
	progressMeterColoredByFlags.__Color_FullPath = function ()
		local f13_local0 = self:getModel() --[[ @ 0]]
		if f13_local0 then
			f13_local0 = self:getModel() --[[ @ 0]]
			f13_local0 = f13_local0.gamemodeFlags --[[ @ 0]]
		end
		if f13_local0 then
			progressMeterColoredByFlags.__Color( f13_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	progressMeterColoredByFlags:linkToElementModel( self, "progress", true, function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			progressMeterColoredByFlags:setShaderVector( 0, CoD.GetVectorComponentFromString( f14_local0, 1 ), CoD.GetVectorComponentFromString( f14_local0, 2 ), CoD.GetVectorComponentFromString( f14_local0, 3 ), CoD.GetVectorComponentFromString( f14_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( progressMeterColoredByFlags ) --[[ @ 0]]
	self.progressMeterColoredByFlags = progressMeterColoredByFlags --[[ @ 0]]
	
	local progressMeterColoredByFlags2 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByFlags2:setAlpha( 0.4 ) --[[ @ 0]]
	progressMeterColoredByFlags2:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_domination_fill_02" ) ) --[[ @ 0]]
	progressMeterColoredByFlags2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	progressMeterColoredByFlags2:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByFlags2:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByFlags2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByFlags2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByFlags2.__Color = function ( f15_arg0 )
		local f15_local0 = f15_arg0:get() --[[ @ 0]]
		if f15_local0 ~= nil then
			progressMeterColoredByFlags2:setRGB( CoD.HUDUtility.GetFriendlyOrEnemyMutedColorByFlags( self:getModel(), f1_arg1, f15_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	progressMeterColoredByFlags2:linkToElementModel( self, "gamemodeFlags", true, progressMeterColoredByFlags2.__Color ) --[[ @ 0]]
	progressMeterColoredByFlags2.__Color_FullPath = function ()
		local f16_local0 = self:getModel() --[[ @ 0]]
		if f16_local0 then
			f16_local0 = self:getModel() --[[ @ 0]]
			f16_local0 = f16_local0.gamemodeFlags --[[ @ 0]]
		end
		if f16_local0 then
			progressMeterColoredByFlags2.__Color( f16_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	progressMeterColoredByFlags2:linkToElementModel( self, "progress", true, function ( model )
		local f17_local0 = model:get() --[[ @ 0]]
		if f17_local0 ~= nil then
			progressMeterColoredByFlags2:setShaderVector( 0, CoD.GetVectorComponentFromString( f17_local0, 1 ), CoD.GetVectorComponentFromString( f17_local0, 2 ), CoD.GetVectorComponentFromString( f17_local0, 3 ), CoD.GetVectorComponentFromString( f17_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( progressMeterColoredByFlags2 ) --[[ @ 0]]
	self.progressMeterColoredByFlags2 = progressMeterColoredByFlags2 --[[ @ 0]]
	
	local progressMeterColoredByFlags3 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByFlags3:setAlpha( 0.5 ) --[[ @ 0]]
	progressMeterColoredByFlags3:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_domination_fill_02" ) ) --[[ @ 0]]
	progressMeterColoredByFlags3:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_add" ) ) --[[ @ 0]]
	progressMeterColoredByFlags3:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByFlags3:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByFlags3:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByFlags3:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	progressMeterColoredByFlags3.__Color = function ( f18_arg0 )
		local f18_local0 = f18_arg0:get() --[[ @ 0]]
		if f18_local0 ~= nil then
			progressMeterColoredByFlags3:setRGB( CoD.HUDUtility.GetFriendlyOrEnemyBrightColorByFlags( self:getModel(), f1_arg1, f18_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	progressMeterColoredByFlags3:linkToElementModel( self, "gamemodeFlags", true, progressMeterColoredByFlags3.__Color ) --[[ @ 0]]
	progressMeterColoredByFlags3.__Color_FullPath = function ()
		local f19_local0 = self:getModel() --[[ @ 0]]
		if f19_local0 then
			f19_local0 = self:getModel() --[[ @ 0]]
			f19_local0 = f19_local0.gamemodeFlags --[[ @ 0]]
		end
		if f19_local0 then
			progressMeterColoredByFlags3.__Color( f19_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	progressMeterColoredByFlags3:linkToElementModel( self, "progress", true, function ( model )
		local f20_local0 = model:get() --[[ @ 0]]
		if f20_local0 ~= nil then
			progressMeterColoredByFlags3:setShaderVector( 0, CoD.GetVectorComponentFromString( f20_local0, 1 ), CoD.GetVectorComponentFromString( f20_local0, 2 ), CoD.GetVectorComponentFromString( f20_local0, 3 ), CoD.GetVectorComponentFromString( f20_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( progressMeterColoredByFlags3 ) --[[ @ 0]]
	self.progressMeterColoredByFlags3 = progressMeterColoredByFlags3 --[[ @ 0]]
	
	local f1_local8 = progressMeterColoredByUsing --[[ @ 0]]
	local f1_local9 = progressMeterColoredByUsing.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["factions.playerFactionTeamEnum"], progressMeterColoredByUsing.__Color_FullPath ) --[[ @ 0]]
	progressMeterColoredByUsing:linkToElementModel( self, "clientUseMask", true, progressMeterColoredByUsing.__Color_FullPath ) --[[ @ 0]]
	f1_local8 = progressMeterColoredByUsing --[[ @ 0]]
	f1_local9 = progressMeterColoredByUsing.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["profile.colorblindMode"], progressMeterColoredByUsing.__Color_FullPath ) --[[ @ 0]]
	f1_local8 = progressMeterColoredByUsing2 --[[ @ 0]]
	f1_local9 = progressMeterColoredByUsing2.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["factions.playerFactionTeamEnum"], progressMeterColoredByUsing2.__Color_FullPath ) --[[ @ 0]]
	progressMeterColoredByUsing2:linkToElementModel( self, "clientUseMask", true, progressMeterColoredByUsing2.__Color_FullPath ) --[[ @ 0]]
	f1_local8 = progressMeterColoredByUsing2 --[[ @ 0]]
	f1_local9 = progressMeterColoredByUsing2.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["profile.colorblindMode"], progressMeterColoredByUsing2.__Color_FullPath ) --[[ @ 0]]
	f1_local8 = progressMeterColoredByUsing3 --[[ @ 0]]
	f1_local9 = progressMeterColoredByUsing3.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["factions.playerFactionTeamEnum"], progressMeterColoredByUsing3.__Color_FullPath ) --[[ @ 0]]
	progressMeterColoredByUsing3:linkToElementModel( self, "clientUseMask", true, progressMeterColoredByUsing3.__Color_FullPath ) --[[ @ 0]]
	f1_local8 = progressMeterColoredByUsing3 --[[ @ 0]]
	f1_local9 = progressMeterColoredByUsing3.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["profile.colorblindMode"], progressMeterColoredByUsing3.__Color_FullPath ) --[[ @ 0]]
	f1_local8 = progressMeterColoredByFlags --[[ @ 0]]
	f1_local9 = progressMeterColoredByFlags.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["profile.colorblindMode"], progressMeterColoredByFlags.__Color_FullPath ) --[[ @ 0]]
	f1_local8 = progressMeterColoredByFlags2 --[[ @ 0]]
	f1_local9 = progressMeterColoredByFlags2.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["profile.colorblindMode"], progressMeterColoredByFlags2.__Color_FullPath ) --[[ @ 0]]
	f1_local8 = progressMeterColoredByFlags3 --[[ @ 0]]
	f1_local9 = progressMeterColoredByFlags3.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["profile.colorblindMode"], progressMeterColoredByFlags3.__Color_FullPath ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "ColorByTeamUsingWaypoint",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsObjectiveXHashPropertyValueEqualTo( self, @"hash_531D5237C084FF4B", 1 )
			end
		},
		{
			stateName = "ColorByFlags",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "id", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "id"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WaypointProgressRing.__resetProperties = function ( f24_arg0 )
	f24_arg0.progressMeterColoredByUsing:completeAnimation() --[[ @ 0]]
	f24_arg0.progressMeter:completeAnimation() --[[ @ 0]]
	f24_arg0.progressMeterColoredByFlags:completeAnimation() --[[ @ 0]]
	f24_arg0.progressMeterColoredByUsing3:completeAnimation() --[[ @ 0]]
	f24_arg0.progressMeterColoredByUsing2:completeAnimation() --[[ @ 0]]
	f24_arg0.progressMeterColoredByFlags3:completeAnimation() --[[ @ 0]]
	f24_arg0.progressMeterColoredByFlags2:completeAnimation() --[[ @ 0]]
	f24_arg0.progressMeterColoredByUsing:setAlpha( 1 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByUsing:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByUsing:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByUsing:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByUsing:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByUsing:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f24_arg0.progressMeter:setAlpha( 0.9 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByFlags:setAlpha( 1 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByUsing3:setAlpha( 1 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByUsing3:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByUsing3:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByUsing3:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByUsing3:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByUsing3:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByUsing2:setAlpha( 1 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByFlags3:setAlpha( 0.5 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByFlags2:setAlpha( 0.4 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByFlags2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByFlags2:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByFlags2:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByFlags2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f24_arg0.progressMeterColoredByFlags2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WaypointProgressRing.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f25_arg0.progressMeter:completeAnimation() --[[ @ 0]]
			f25_arg0.progressMeter:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.progressMeter ) --[[ @ 0]]
			f25_arg0.progressMeterColoredByUsing:completeAnimation() --[[ @ 0]]
			f25_arg0.progressMeterColoredByUsing:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.progressMeterColoredByUsing ) --[[ @ 0]]
			f25_arg0.progressMeterColoredByUsing2:completeAnimation() --[[ @ 0]]
			f25_arg0.progressMeterColoredByUsing2:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.progressMeterColoredByUsing2 ) --[[ @ 0]]
			f25_arg0.progressMeterColoredByUsing3:completeAnimation() --[[ @ 0]]
			f25_arg0.progressMeterColoredByUsing3:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.progressMeterColoredByUsing3 ) --[[ @ 0]]
			f25_arg0.progressMeterColoredByFlags:completeAnimation() --[[ @ 0]]
			f25_arg0.progressMeterColoredByFlags:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.progressMeterColoredByFlags ) --[[ @ 0]]
			f25_arg0.progressMeterColoredByFlags2:completeAnimation() --[[ @ 0]]
			f25_arg0.progressMeterColoredByFlags2:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.progressMeterColoredByFlags2 ) --[[ @ 0]]
			f25_arg0.progressMeterColoredByFlags3:completeAnimation() --[[ @ 0]]
			f25_arg0.progressMeterColoredByFlags3:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.progressMeterColoredByFlags3 ) --[[ @ 0]]
		end
	},
	ColorByTeamUsingWaypoint = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f26_arg0.progressMeter:completeAnimation() --[[ @ 0]]
			f26_arg0.progressMeter:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.progressMeter ) --[[ @ 0]]
			f26_arg0.progressMeterColoredByUsing:completeAnimation() --[[ @ 0]]
			f26_arg0.progressMeterColoredByUsing:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.progressMeterColoredByUsing:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
			f26_arg0.progressMeterColoredByUsing:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
			f26_arg0.progressMeterColoredByUsing:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
			f26_arg0.progressMeterColoredByUsing:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f26_arg0.progressMeterColoredByUsing:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.progressMeterColoredByUsing ) --[[ @ 0]]
			f26_arg0.progressMeterColoredByUsing2:completeAnimation() --[[ @ 0]]
			f26_arg0.progressMeterColoredByUsing2:setAlpha( 0.25 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.progressMeterColoredByUsing2 ) --[[ @ 0]]
			f26_arg0.progressMeterColoredByUsing3:completeAnimation() --[[ @ 0]]
			f26_arg0.progressMeterColoredByUsing3:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.progressMeterColoredByUsing3:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_add" ) ) --[[ @ 0]]
			f26_arg0.progressMeterColoredByUsing3:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
			f26_arg0.progressMeterColoredByUsing3:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
			f26_arg0.progressMeterColoredByUsing3:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f26_arg0.progressMeterColoredByUsing3:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.progressMeterColoredByUsing3 ) --[[ @ 0]]
			f26_arg0.progressMeterColoredByFlags:completeAnimation() --[[ @ 0]]
			f26_arg0.progressMeterColoredByFlags:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.progressMeterColoredByFlags ) --[[ @ 0]]
			f26_arg0.progressMeterColoredByFlags2:completeAnimation() --[[ @ 0]]
			f26_arg0.progressMeterColoredByFlags2:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.progressMeterColoredByFlags2 ) --[[ @ 0]]
			f26_arg0.progressMeterColoredByFlags3:completeAnimation() --[[ @ 0]]
			f26_arg0.progressMeterColoredByFlags3:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.progressMeterColoredByFlags3 ) --[[ @ 0]]
		end
	},
	ColorByFlags = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f27_arg0.progressMeter:completeAnimation() --[[ @ 0]]
			f27_arg0.progressMeter:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.progressMeter ) --[[ @ 0]]
			f27_arg0.progressMeterColoredByUsing:completeAnimation() --[[ @ 0]]
			f27_arg0.progressMeterColoredByUsing:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.progressMeterColoredByUsing ) --[[ @ 0]]
			f27_arg0.progressMeterColoredByUsing2:completeAnimation() --[[ @ 0]]
			f27_arg0.progressMeterColoredByUsing2:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.progressMeterColoredByUsing2 ) --[[ @ 0]]
			f27_arg0.progressMeterColoredByUsing3:completeAnimation() --[[ @ 0]]
			f27_arg0.progressMeterColoredByUsing3:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.progressMeterColoredByUsing3 ) --[[ @ 0]]
			f27_arg0.progressMeterColoredByFlags:completeAnimation() --[[ @ 0]]
			f27_arg0.progressMeterColoredByFlags:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.progressMeterColoredByFlags ) --[[ @ 0]]
			f27_arg0.progressMeterColoredByFlags2:completeAnimation() --[[ @ 0]]
			f27_arg0.progressMeterColoredByFlags2:setAlpha( 0.75 ) --[[ @ 0]]
			f27_arg0.progressMeterColoredByFlags2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_add" ) ) --[[ @ 0]]
			f27_arg0.progressMeterColoredByFlags2:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
			f27_arg0.progressMeterColoredByFlags2:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
			f27_arg0.progressMeterColoredByFlags2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f27_arg0.progressMeterColoredByFlags2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.progressMeterColoredByFlags2 ) --[[ @ 0]]
			f27_arg0.progressMeterColoredByFlags3:completeAnimation() --[[ @ 0]]
			f27_arg0.progressMeterColoredByFlags3:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.progressMeterColoredByFlags3 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WaypointProgressRing.__onClose = function ( f28_arg0 )
	f28_arg0.progressMeter:close() --[[ @ 0]]
	f28_arg0.progressMeterColoredByUsing:close() --[[ @ 0]]
	f28_arg0.progressMeterColoredByUsing2:close() --[[ @ 0]]
	f28_arg0.progressMeterColoredByUsing3:close() --[[ @ 0]]
	f28_arg0.progressMeterColoredByFlags:close() --[[ @ 0]]
	f28_arg0.progressMeterColoredByFlags2:close() --[[ @ 0]]
	f28_arg0.progressMeterColoredByFlags3:close() --[[ @ 0]]
end
 --[[ @ 0]]
