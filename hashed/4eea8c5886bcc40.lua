-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/notifications/perks/perkinfo" ) --[[ @ 0]]

CoD.Notification_Perks = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Notification_Perks.__defaultWidth = 750 --[[ @ 0]]
CoD.Notification_Perks.__defaultHeight = 279 --[[ @ 0]]
CoD.Notification_Perks.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Notification_Perks ) --[[ @ 0]]
	self.id = "Notification_Perks" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PerkInfo2 = CoD.PerkInfo.new( f1_arg0, f1_arg1, 1, 1, -750, 0, 0, 0, 180, 255 ) --[[ @ 0]]
	PerkInfo2:mergeStateConditions( {
		{
			stateName = "SinglePerk",
			condition = function ( menu, element, event )
				return HasOnePerkInSlot2( f1_arg1 )
			end
		},
		{
			stateName = "DoublePerk",
			condition = function ( menu, element, event )
				return HasTwoPerksInSlot2( f1_arg1 ) and not IsCurrentLanguageReversed()
			end
		},
		{
			stateName = "DoublePerkArabic",
			condition = function ( menu, element, event )
				return HasTwoPerksInSlot2( f1_arg1 ) and IsCurrentLanguageReversed()
			end
		}
	} ) --[[ @ 0]]
	local PerkInfo0 = PerkInfo2 --[[ @ 0]]
	local PerkInfo1 = PerkInfo2.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	PerkInfo1( PerkInfo0, f1_local4["perks.perk2_count"], function ( f5_arg0 )
		f1_arg0:updateElementState( PerkInfo2, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "perks.perk2_count"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PerkInfo2.DoublePerkDescription:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_522BB851D29DEC00" ) ) --[[ @ 0]]
	PerkInfo2.DoublePerkDescriptionArabic:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_522BB851D29DEC00" ) ) --[[ @ 0]]
	PerkInfo2:subscribeToGlobalModel( f1_arg1, "Perks", "perk2_1.image", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			PerkInfo2.PerkImage1:setImage( RegisterImage( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PerkInfo2:subscribeToGlobalModel( f1_arg1, "Perks", "perk2_0.image", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			PerkInfo2.PerkImage0:setImage( RegisterImage( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PerkInfo2:subscribeToGlobalModel( f1_arg1, "Perks", "perk2_0.name", function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			PerkInfo2.SinglePerkDescription:setText( CoD.BaseUtility.AlreadyLocalized( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PerkInfo2 ) --[[ @ 0]]
	self.PerkInfo2 = PerkInfo2 --[[ @ 0]]
	
	PerkInfo1 = CoD.PerkInfo.new( f1_arg0, f1_arg1, 1, 1, -750, 0, 0, 0, 90, 165 ) --[[ @ 0]]
	PerkInfo1:mergeStateConditions( {
		{
			stateName = "SinglePerk",
			condition = function ( menu, element, event )
				return HasOnePerkInSlot1( f1_arg1 )
			end
		},
		{
			stateName = "DoublePerk",
			condition = function ( menu, element, event )
				return HasTwoPerksInSlot1( f1_arg1 ) and not IsCurrentLanguageReversed()
			end
		},
		{
			stateName = "DoublePerkArabic",
			condition = function ( menu, element, event )
				return HasTwoPerksInSlot1( f1_arg1 ) and IsCurrentLanguageReversed()
			end
		}
	} ) --[[ @ 0]]
	f1_local4 = PerkInfo1 --[[ @ 0]]
	PerkInfo0 = PerkInfo1.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	PerkInfo0( f1_local4, f1_local5["perks.perk1_count"], function ( f12_arg0 )
		f1_arg0:updateElementState( PerkInfo1, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "perks.perk1_count"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PerkInfo1.DoublePerkDescription:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_522BBB51D29DF119" ) ) --[[ @ 0]]
	PerkInfo1.DoublePerkDescriptionArabic:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_522BBB51D29DF119" ) ) --[[ @ 0]]
	PerkInfo1:subscribeToGlobalModel( f1_arg1, "Perks", "perk1_1.image", function ( model )
		local f13_local0 = model:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			PerkInfo1.PerkImage1:setImage( RegisterImage( f13_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PerkInfo1:subscribeToGlobalModel( f1_arg1, "Perks", "perk1_0.image", function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			PerkInfo1.PerkImage0:setImage( RegisterImage( f14_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PerkInfo1:subscribeToGlobalModel( f1_arg1, "Perks", "perk1_0.name", function ( model )
		local f15_local0 = model:get() --[[ @ 0]]
		if f15_local0 ~= nil then
			PerkInfo1.SinglePerkDescription:setText( CoD.BaseUtility.AlreadyLocalized( f15_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PerkInfo1 ) --[[ @ 0]]
	self.PerkInfo1 = PerkInfo1 --[[ @ 0]]
	
	PerkInfo0 = CoD.PerkInfo.new( f1_arg0, f1_arg1, 1, 1, -750, 0, 0, 0, 0, 75 ) --[[ @ 0]]
	PerkInfo0:mergeStateConditions( {
		{
			stateName = "SinglePerk",
			condition = function ( menu, element, event )
				return HasOnePerkInSlot0( f1_arg1 )
			end
		},
		{
			stateName = "DoublePerk",
			condition = function ( menu, element, event )
				return HasTwoPerksInSlot0( f1_arg1 ) and not IsCurrentLanguageReversed()
			end
		},
		{
			stateName = "DoublePerkArabic",
			condition = function ( menu, element, event )
				return HasTwoPerksInSlot0( f1_arg1 ) and IsCurrentLanguageReversed()
			end
		}
	} ) --[[ @ 0]]
	f1_local5 = PerkInfo0 --[[ @ 0]]
	f1_local4 = PerkInfo0.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local5, f1_local6["perks.perk0_count"], function ( f19_arg0 )
		f1_arg0:updateElementState( PerkInfo0, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f19_arg0:get(),
			modelName = "perks.perk0_count"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PerkInfo0.DoublePerkDescription:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_522BBA51D29DEF66" ) ) --[[ @ 0]]
	PerkInfo0.DoublePerkDescriptionArabic:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_522BBA51D29DEF66" ) ) --[[ @ 0]]
	PerkInfo0:subscribeToGlobalModel( f1_arg1, "Perks", "perk0_1.image", function ( model )
		local f20_local0 = model:get() --[[ @ 0]]
		if f20_local0 ~= nil then
			PerkInfo0.PerkImage1:setImage( RegisterImage( f20_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PerkInfo0:subscribeToGlobalModel( f1_arg1, "Perks", "perk0_0.image", function ( model )
		local f21_local0 = model:get() --[[ @ 0]]
		if f21_local0 ~= nil then
			PerkInfo0.PerkImage0:setImage( RegisterImage( f21_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PerkInfo0:subscribeToGlobalModel( f1_arg1, "Perks", "perk0_0.name", function ( model )
		local f22_local0 = model:get() --[[ @ 0]]
		if f22_local0 ~= nil then
			PerkInfo0.SinglePerkDescription:setText( CoD.BaseUtility.AlreadyLocalized( f22_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PerkInfo0 ) --[[ @ 0]]
	self.PerkInfo0 = PerkInfo0 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Notification_Perks.__resetProperties = function ( f23_arg0 )
	f23_arg0.PerkInfo2:completeAnimation() --[[ @ 0]]
	f23_arg0.PerkInfo1:completeAnimation() --[[ @ 0]]
	f23_arg0.PerkInfo0:completeAnimation() --[[ @ 0]]
	f23_arg0.PerkInfo2:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
	f23_arg0.PerkInfo2:setTopBottom( 0, 0, 180, 255 ) --[[ @ 0]]
	f23_arg0.PerkInfo2:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.PerkInfo1:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
	f23_arg0.PerkInfo1:setTopBottom( 0, 0, 90, 165 ) --[[ @ 0]]
	f23_arg0.PerkInfo1:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.PerkInfo0:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
	f23_arg0.PerkInfo0:setTopBottom( 0, 0, 0, 75 ) --[[ @ 0]]
	f23_arg0.PerkInfo0:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Notification_Perks.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Perk0 = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f25_arg0.PerkInfo2:completeAnimation() --[[ @ 0]]
			f25_arg0.PerkInfo2:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f25_arg0.PerkInfo2:setTopBottom( 0, 0, 255, 330 ) --[[ @ 0]]
			f25_arg0.PerkInfo2:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.PerkInfo2 ) --[[ @ 0]]
			f25_arg0.PerkInfo1:completeAnimation() --[[ @ 0]]
			f25_arg0.PerkInfo1:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f25_arg0.PerkInfo1:setTopBottom( 0, 0, -75, 0 ) --[[ @ 0]]
			f25_arg0.PerkInfo1:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.PerkInfo1 ) --[[ @ 0]]
			f25_arg0.PerkInfo0:completeAnimation() --[[ @ 0]]
			f25_arg0.PerkInfo0:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f25_arg0.PerkInfo0:setTopBottom( 0, 0, 93, 186 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.PerkInfo0 ) --[[ @ 0]]
		end
	},
	Perk0_Perk1_Perk2 = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f26_arg0.PerkInfo2:completeAnimation() --[[ @ 0]]
			f26_arg0.PerkInfo2:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f26_arg0.PerkInfo2:setTopBottom( 0, 0, 186, 279 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.PerkInfo2 ) --[[ @ 0]]
			f26_arg0.PerkInfo1:completeAnimation() --[[ @ 0]]
			f26_arg0.PerkInfo1:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f26_arg0.PerkInfo1:setTopBottom( 0, 0, 93, 186 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.PerkInfo1 ) --[[ @ 0]]
			f26_arg0.PerkInfo0:completeAnimation() --[[ @ 0]]
			f26_arg0.PerkInfo0:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f26_arg0.PerkInfo0:setTopBottom( 0, 0, 0, 93 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.PerkInfo0 ) --[[ @ 0]]
		end
	},
	Perk0_Perk1 = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f27_arg0.PerkInfo2:completeAnimation() --[[ @ 0]]
			f27_arg0.PerkInfo2:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f27_arg0.PerkInfo2:setTopBottom( 0, 0, 255, 330 ) --[[ @ 0]]
			f27_arg0.PerkInfo2:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.PerkInfo2 ) --[[ @ 0]]
			f27_arg0.PerkInfo1:completeAnimation() --[[ @ 0]]
			f27_arg0.PerkInfo1:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f27_arg0.PerkInfo1:setTopBottom( 0, 0, 139, 232 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.PerkInfo1 ) --[[ @ 0]]
			f27_arg0.PerkInfo0:completeAnimation() --[[ @ 0]]
			f27_arg0.PerkInfo0:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f27_arg0.PerkInfo0:setTopBottom( 0, 0, 47, 140 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.PerkInfo0 ) --[[ @ 0]]
		end
	},
	Perk0_Perk2 = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f28_arg0.PerkInfo2:completeAnimation() --[[ @ 0]]
			f28_arg0.PerkInfo2:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f28_arg0.PerkInfo2:setTopBottom( 0, 0, 139, 232 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.PerkInfo2 ) --[[ @ 0]]
			f28_arg0.PerkInfo1:completeAnimation() --[[ @ 0]]
			f28_arg0.PerkInfo1:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f28_arg0.PerkInfo1:setTopBottom( 0, 0, 390, 465 ) --[[ @ 0]]
			f28_arg0.PerkInfo1:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.PerkInfo1 ) --[[ @ 0]]
			f28_arg0.PerkInfo0:completeAnimation() --[[ @ 0]]
			f28_arg0.PerkInfo0:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f28_arg0.PerkInfo0:setTopBottom( 0, 0, 47, 140 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.PerkInfo0 ) --[[ @ 0]]
		end
	},
	Perk1 = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f29_arg0.PerkInfo2:completeAnimation() --[[ @ 0]]
			f29_arg0.PerkInfo2:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f29_arg0.PerkInfo2:setTopBottom( 0, 0, 255, 330 ) --[[ @ 0]]
			f29_arg0.PerkInfo2:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.PerkInfo2 ) --[[ @ 0]]
			f29_arg0.PerkInfo1:completeAnimation() --[[ @ 0]]
			f29_arg0.PerkInfo1:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f29_arg0.PerkInfo1:setTopBottom( 0, 0, 93, 186 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.PerkInfo1 ) --[[ @ 0]]
			f29_arg0.PerkInfo0:completeAnimation() --[[ @ 0]]
			f29_arg0.PerkInfo0:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f29_arg0.PerkInfo0:setTopBottom( 0, 0, -75, 0 ) --[[ @ 0]]
			f29_arg0.PerkInfo0:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.PerkInfo0 ) --[[ @ 0]]
		end
	},
	Perk1_Perk2 = {
		DefaultClip = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f30_arg0.PerkInfo2:completeAnimation() --[[ @ 0]]
			f30_arg0.PerkInfo2:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f30_arg0.PerkInfo2:setTopBottom( 0, 0, 139, 232 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.PerkInfo2 ) --[[ @ 0]]
			f30_arg0.PerkInfo1:completeAnimation() --[[ @ 0]]
			f30_arg0.PerkInfo1:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f30_arg0.PerkInfo1:setTopBottom( 0, 0, 47, 140 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.PerkInfo1 ) --[[ @ 0]]
			f30_arg0.PerkInfo0:completeAnimation() --[[ @ 0]]
			f30_arg0.PerkInfo0:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f30_arg0.PerkInfo0:setTopBottom( 0, 0, -75, 0 ) --[[ @ 0]]
			f30_arg0.PerkInfo0:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.PerkInfo0 ) --[[ @ 0]]
		end
	},
	Perk2 = {
		DefaultClip = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f31_arg0.PerkInfo2:completeAnimation() --[[ @ 0]]
			f31_arg0.PerkInfo2:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f31_arg0.PerkInfo2:setTopBottom( 0, 0, 93, 186 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.PerkInfo2 ) --[[ @ 0]]
			f31_arg0.PerkInfo1:completeAnimation() --[[ @ 0]]
			f31_arg0.PerkInfo1:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f31_arg0.PerkInfo1:setTopBottom( 0, 0, 255, 330 ) --[[ @ 0]]
			f31_arg0.PerkInfo1:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.PerkInfo1 ) --[[ @ 0]]
			f31_arg0.PerkInfo0:completeAnimation() --[[ @ 0]]
			f31_arg0.PerkInfo0:setLeftRight( 1, 1, -750, 0 ) --[[ @ 0]]
			f31_arg0.PerkInfo0:setTopBottom( 0, 0, -75, 0 ) --[[ @ 0]]
			f31_arg0.PerkInfo0:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.PerkInfo0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Notification_Perks.__onClose = function ( f32_arg0 )
	f32_arg0.PerkInfo2:close() --[[ @ 0]]
	f32_arg0.PerkInfo1:close() --[[ @ 0]]
	f32_arg0.PerkInfo0:close() --[[ @ 0]]
end
 --[[ @ 0]]
