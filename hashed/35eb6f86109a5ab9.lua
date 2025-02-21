-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:34ea348be4e00fe1" ) --[[ @ 0]]

CoD.DupeMeterInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DupeMeterInternal.__defaultWidth = 118 --[[ @ 0]]
CoD.DupeMeterInternal.__defaultHeight = 27 --[[ @ 0]]
CoD.DupeMeterInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DupeMeterInternal ) --[[ @ 0]]
	self.id = "DupeMeterInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Dupe01 = CoD.DupeMeterIcon.new( f1_arg0, f1_arg1, 0, 0, 0, 20, 0, 0, 3, 23 ) --[[ @ 0]]
	Dupe01:mergeStateConditions( {
		{
			stateName = "Full",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueGreaterThan( f1_arg1, "LootStreamProgress.dupes", 0 )
			end
		}
	} ) --[[ @ 0]]
	local Dupe03 = Dupe01 --[[ @ 0]]
	local Dupe02 = Dupe01.subscribeToModel --[[ @ 0]]
	local RerollIcon = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Dupe02( Dupe03, RerollIcon["LootStreamProgress.dupes"], function ( f3_arg0 )
		f1_arg0:updateElementState( Dupe01, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "LootStreamProgress.dupes"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Dupe01:linkToElementModel( self, nil, false, function ( model )
		Dupe01:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Dupe01 ) --[[ @ 0]]
	self.Dupe01 = Dupe01 --[[ @ 0]]
	
	Dupe02 = CoD.DupeMeterIcon.new( f1_arg0, f1_arg1, 0, 0, 25, 45, 0, 0, 3, 23 ) --[[ @ 0]]
	Dupe02:mergeStateConditions( {
		{
			stateName = "Full",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueGreaterThan( f1_arg1, "LootStreamProgress.dupes", 1 )
			end
		}
	} ) --[[ @ 0]]
	RerollIcon = Dupe02 --[[ @ 0]]
	Dupe03 = Dupe02.subscribeToModel --[[ @ 0]]
	local RerollIconPulse = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Dupe03( RerollIcon, RerollIconPulse["LootStreamProgress.dupes"], function ( f6_arg0 )
		f1_arg0:updateElementState( Dupe02, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "LootStreamProgress.dupes"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Dupe02:linkToElementModel( self, nil, false, function ( model )
		Dupe02:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Dupe02 ) --[[ @ 0]]
	self.Dupe02 = Dupe02 --[[ @ 0]]
	
	Dupe03 = CoD.DupeMeterIcon.new( f1_arg0, f1_arg1, 0, 0, 50, 70, 0, 0, 3, 23 ) --[[ @ 0]]
	self:addElement( Dupe03 ) --[[ @ 0]]
	self.Dupe03 = Dupe03 --[[ @ 0]]
	
	RerollIcon = LUI.UIImage.new( 0, 0, 97.5, 117.5, 0, 0, 3, 23 ) --[[ @ 0]]
	RerollIcon:setRGB( 0.54, 0.87, 0.31 ) --[[ @ 0]]
	RerollIcon:setScale( 1.3, 1.3 ) --[[ @ 0]]
	RerollIcon:setImage( RegisterImage( @"hash_7B259D817A83EFDB" ) ) --[[ @ 0]]
	self:addElement( RerollIcon ) --[[ @ 0]]
	self.RerollIcon = RerollIcon --[[ @ 0]]
	
	RerollIconPulse = LUI.UIImage.new( 0, 0, 97.5, 117.5, 0, 0, 3, 23 ) --[[ @ 0]]
	RerollIconPulse:setRGB( 0.54, 0.87, 0.31 ) --[[ @ 0]]
	RerollIconPulse:setAlpha( 0 ) --[[ @ 0]]
	RerollIconPulse:setScale( 1.3, 1.3 ) --[[ @ 0]]
	RerollIconPulse:setImage( RegisterImage( @"hash_7B259D817A83EFDB" ) ) --[[ @ 0]]
	RerollIconPulse:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( RerollIconPulse ) --[[ @ 0]]
	self.RerollIconPulse = RerollIconPulse --[[ @ 0]]
	
	local Linker = LUI.UIImage.new( 0, 0, 82.5, 86.5, 0, 0, 0, 27 ) --[[ @ 0]]
	Linker:setAlpha( 0.6 ) --[[ @ 0]]
	Linker:setZRot( 90 ) --[[ @ 0]]
	Linker:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	Linker:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Linker:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Linker:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( Linker ) --[[ @ 0]]
	self.Linker = Linker --[[ @ 0]]
	
	self:subscribeToGlobalModel( f1_arg1, "DupeMeterPulse", "pulseDupeIcon", function ( model )
		local f8_local0 = self --[[ @ 0]]
		if CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "DupeMeterPulse", "pulseDupeIcon" ) then
			PlayClipOnElement( self, {
				elementName = "Dupe01",
				clipName = "Pulse"
			}, f1_arg1 ) --[[ @ 0]]
			PlayClipOnElement( self, {
				elementName = "Dupe02",
				clipName = "Pulse"
			}, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "DupeMeterPulse", "pulseRerollIcon", function ( model )
		local f9_local0 = self --[[ @ 0]]
		if CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "DupeMeterPulse", "pulseRerollIcon" ) then
			PlayClip( self, "Pulse", f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DupeMeterInternal.__resetProperties = function ( f10_arg0 )
	f10_arg0.RerollIconPulse:completeAnimation() --[[ @ 0]]
	f10_arg0.RerollIcon:completeAnimation() --[[ @ 0]]
	f10_arg0.RerollIconPulse:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.RerollIconPulse:setScale( 1.3, 1.3 ) --[[ @ 0]]
	f10_arg0.RerollIcon:setZRot( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DupeMeterInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Pulse = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f12_arg0.RerollIcon:completeAnimation() --[[ @ 0]]
			f12_arg0.RerollIcon:setZRot( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.RerollIcon ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					f14_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f14_arg0:setAlpha( 0 ) --[[ @ 0]]
					f14_arg0:setScale( 4, 4 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.RerollIconPulse:beginAnimation( 100 ) --[[ @ 0]]
				f12_arg0.RerollIconPulse:setAlpha( 1 ) --[[ @ 0]]
				f12_arg0.RerollIconPulse:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.RerollIconPulse:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.RerollIconPulse:completeAnimation() --[[ @ 0]]
			f12_arg0.RerollIconPulse:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.RerollIconPulse:setScale( 1.3, 1.3 ) --[[ @ 0]]
			f12_local0( f12_arg0.RerollIconPulse ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DupeMeterInternal.__onClose = function ( f15_arg0 )
	f15_arg0.Dupe01:close() --[[ @ 0]]
	f15_arg0.Dupe02:close() --[[ @ 0]]
	f15_arg0.Dupe03:close() --[[ @ 0]]
end
 --[[ @ 0]]
