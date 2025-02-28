-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:4315a48f43c443a5" ) --[[ @ 0]]
require( "x64:7ce2f5f6849507b6" ) --[[ @ 0]]

CoD.vhud_gunship_25mm_ammocounter = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_gunship_25mm_ammocounter.__defaultWidth = 148 --[[ @ 0]]
CoD.vhud_gunship_25mm_ammocounter.__defaultHeight = 118 --[[ @ 0]]
CoD.vhud_gunship_25mm_ammocounter.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_gunship_25mm_ammocounter ) --[[ @ 0]]
	self.id = "vhud_gunship_25mm_ammocounter" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local BackingFrame = CoD.vhud_gunship_ammocounterframe.new( f1_arg0, f1_arg1, 0.5, 0.5, -74, 74, 0.5, 0.5, -59, 59 ) --[[ @ 0]]
	BackingFrame.AmmoName:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_41732BA28731D5E5" ) ) --[[ @ 0]]
	BackingFrame:linkToElementModel( self, "bindingCooldown2.cooldown", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			BackingFrame.BackingFillAnim:setShaderVector( 2, CoD.GetVectorComponentFromString( f2_local0, 1 ), CoD.GetVectorComponentFromString( f2_local0, 2 ), CoD.GetVectorComponentFromString( f2_local0, 3 ), CoD.GetVectorComponentFromString( f2_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BackingFrame ) --[[ @ 0]]
	self.BackingFrame = BackingFrame --[[ @ 0]]
	
	local AmmoCountInternal = CoD.vhud_gunship_ammo_count_internal.new( f1_arg0, f1_arg1, 0.5, 0.5, -59, 59, 0.4, 0.4, -18.5, 5.5 ) --[[ @ 0]]
	AmmoCountInternal.ammoBack:setImage( RegisterImage( @"hash_627CAD2982B726D9" ) ) --[[ @ 0]]
	AmmoCountInternal.ammoBack:setShaderVector( 0, 20, 1, 0, 0 ) --[[ @ 0]]
	AmmoCountInternal.ammoFront:setImage( RegisterImage( @"hash_627CAD2982B726D9" ) ) --[[ @ 0]]
	AmmoCountInternal.ammoFront:setShaderVector( 0, 20, 1, 0, 0 ) --[[ @ 0]]
	AmmoCountInternal.ammoFront.__ammoFront_Wipe_X_Start_X_End_Y_Start_Y_End = function ( f3_arg0 )
		local f3_local0 = f3_arg0:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			AmmoCountInternal.ammoFront:setShaderVector( 1, CoD.VehicleUtility.AC130ChaingunAmmoToWipeProgress( self:getModel(), CoD.GetVectorComponentFromString( f3_local0, 1 ), CoD.GetVectorComponentFromString( f3_local0, 2 ), CoD.GetVectorComponentFromString( f3_local0, 3 ), CoD.GetVectorComponentFromString( f3_local0, 4 ) ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	AmmoCountInternal:linkToElementModel( self, "ammo2Count", true, AmmoCountInternal.ammoFront.__ammoFront_Wipe_X_Start_X_End_Y_Start_Y_End ) --[[ @ 0]]
	AmmoCountInternal.ammoFront.__ammoFront_Wipe_X_Start_X_End_Y_Start_Y_End_FullPath = function ()
		local f4_local0 = self:getModel() --[[ @ 0]]
		if f4_local0 then
			f4_local0 = self:getModel() --[[ @ 0]]
			f4_local0 = f4_local0.ammo2Count --[[ @ 0]]
		end
		if f4_local0 then
			AmmoCountInternal.ammoFront.__ammoFront_Wipe_X_Start_X_End_Y_Start_Y_End( f4_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( AmmoCountInternal ) --[[ @ 0]]
	self.AmmoCountInternal = AmmoCountInternal --[[ @ 0]]
	
	local AmmoCountInternal2 = CoD.vhud_gunship_ammo_count_internal.new( f1_arg0, f1_arg1, 0.5, 0.5, -59, 59, 0.4, 0.4, 6.5, 30.5 ) --[[ @ 0]]
	AmmoCountInternal2.ammoBack:setImage( RegisterImage( @"hash_627CAD2982B726D9" ) ) --[[ @ 0]]
	AmmoCountInternal2.ammoBack:setShaderVector( 0, 20, 1, 0, 0 ) --[[ @ 0]]
	AmmoCountInternal2.ammoFront:setImage( RegisterImage( @"hash_627CAD2982B726D9" ) ) --[[ @ 0]]
	AmmoCountInternal2.ammoFront:setShaderVector( 0, 20, 1, 0, 0 ) --[[ @ 0]]
	AmmoCountInternal2.ammoFront.__ammoFront_Wipe_X_Start_X_End_Y_Start_Y_End = function ( f5_arg0 )
		local f5_local0 = f5_arg0:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			AmmoCountInternal2.ammoFront:setShaderVector( 1, CoD.VehicleUtility.AC130ChaingunAmmoToWipeProgress2( self:getModel(), CoD.GetVectorComponentFromString( f5_local0, 1 ), CoD.GetVectorComponentFromString( f5_local0, 2 ), CoD.GetVectorComponentFromString( f5_local0, 3 ), CoD.GetVectorComponentFromString( f5_local0, 4 ) ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	AmmoCountInternal2:linkToElementModel( self, "ammo2Count", true, AmmoCountInternal2.ammoFront.__ammoFront_Wipe_X_Start_X_End_Y_Start_Y_End ) --[[ @ 0]]
	AmmoCountInternal2.ammoFront.__ammoFront_Wipe_X_Start_X_End_Y_Start_Y_End_FullPath = function ()
		local f6_local0 = self:getModel() --[[ @ 0]]
		if f6_local0 then
			f6_local0 = self:getModel() --[[ @ 0]]
			f6_local0 = f6_local0.ammo2Count --[[ @ 0]]
		end
		if f6_local0 then
			AmmoCountInternal2.ammoFront.__ammoFront_Wipe_X_Start_X_End_Y_Start_Y_End( f6_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( AmmoCountInternal2 ) --[[ @ 0]]
	self.AmmoCountInternal2 = AmmoCountInternal2 --[[ @ 0]]
	
	AmmoCountInternal:linkToElementModel( self, "bindingCooldown2.cooldown", true, AmmoCountInternal.ammoFront.__ammoFront_Wipe_X_Start_X_End_Y_Start_Y_End_FullPath ) --[[ @ 0]]
	AmmoCountInternal2:linkToElementModel( self, "bindingCooldown2.cooldown", true, AmmoCountInternal2.ammoFront.__ammoFront_Wipe_X_Start_X_End_Y_Start_Y_End_FullPath ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_gunship_25mm_ammocounter.__onClose = function ( f7_arg0 )
	f7_arg0.BackingFrame:close() --[[ @ 0]]
	f7_arg0.AmmoCountInternal:close() --[[ @ 0]]
	f7_arg0.AmmoCountInternal2:close() --[[ @ 0]]
end
 --[[ @ 0]]
