-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:7857aae823214ba2" ) --[[ @ 0]]
require( "x64:67139dde30490cc8" ) --[[ @ 0]]
require( "x64:776b99ac28573661" ) --[[ @ 0]]
require( "x64:4be457f86919afa5" ) --[[ @ 0]]

CoD.ZMPerkVaporItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMPerkVaporItem.__defaultWidth = 70 --[[ @ 0]]
CoD.ZMPerkVaporItem.__defaultHeight = 98 --[[ @ 0]]
CoD.ZMPerkVaporItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZMPerkVaporItem ) --[[ @ 0]]
	self.id = "ZMPerkVaporItem" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local VaporIcon = CoD.ZMPerkVaporIcon.new( f1_arg0, f1_arg1, 0, 0, 10, 60, 0, 0, 23.5, 73.5 ) --[[ @ 0]]
	VaporIcon:setScale( 0.8, 0.8 ) --[[ @ 0]]
	VaporIcon:linkToElementModel( self, nil, false, function ( model )
		VaporIcon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( VaporIcon ) --[[ @ 0]]
	self.VaporIcon = VaporIcon --[[ @ 0]]
	
	local ModifierFrame = CoD.ZMPerkVaporModifierFrame.new( f1_arg0, f1_arg1, 0, 0, -1, 71, 0, 0, 13, 85 ) --[[ @ 0]]
	ModifierFrame:linkToElementModel( self, nil, false, function ( model )
		ModifierFrame:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ModifierFrame ) --[[ @ 0]]
	self.ModifierFrame = ModifierFrame --[[ @ 0]]
	
	local AltarName = LUI.UIText.new( 0.5, 1.5, -35, -35, 0, 0, 7, 24 ) --[[ @ 0]]
	AltarName:setTTF( "skorzhen" ) --[[ @ 0]]
	AltarName:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_56250C6FCAC36BD4" ) ) --[[ @ 0]]
	AltarName:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	AltarName:setShaderVector( 1, 0, 0, 0, 1 ) --[[ @ 0]]
	AltarName:setLetterSpacing( 2 ) --[[ @ 0]]
	AltarName:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	AltarName:linkToElementModel( self, "altarName", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			AltarName:setText( Engine[@"hash_4F9F1239CFD921FE"]( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AltarName ) --[[ @ 0]]
	self.AltarName = AltarName --[[ @ 0]]
	
	local Charges = CoD.ZMPerkVaporItemChargeCountListWidget.new( f1_arg0, f1_arg1, 0, 0, 39, 75, 0, 0, 50.5, 74.5 ) --[[ @ 0]]
	Charges:linkToElementModel( self, nil, false, function ( model )
		Charges:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Charges ) --[[ @ 0]]
	self.Charges = Charges --[[ @ 0]]
	
	local DeadshotCharges = CoD.ZMPerkVaporDeadshotCountList.new( f1_arg0, f1_arg1, 0, 0, 14, 56, 0, 0, 26, 70 ) --[[ @ 0]]
	DeadshotCharges:linkToElementModel( self, nil, false, function ( model )
		DeadshotCharges:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( DeadshotCharges ) --[[ @ 0]]
	self.DeadshotCharges = DeadshotCharges --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "state", CoD.ZMPerkUtility.PerkVaporStates.HIDDEN )
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
	self:linkToElementModel( self, "state", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "state"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "state", true, function ( model )
		local f12_local0 = self --[[ @ 0]]
		ForceNotifyControllerModel( f1_arg1, "PerkVaporStateUpdated" ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "itemIndex", true, function ( model )
		local f13_local0 = self --[[ @ 0]]
		ForceNotifyControllerModel( f1_arg1, "PerkVaporStateUpdated" ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMPerkVaporItem.__resetProperties = function ( f14_arg0 )
	f14_arg0.AltarName:completeAnimation() --[[ @ 0]]
	f14_arg0.VaporIcon:completeAnimation() --[[ @ 0]]
	f14_arg0.ModifierFrame:completeAnimation() --[[ @ 0]]
	f14_arg0.DeadshotCharges:completeAnimation() --[[ @ 0]]
	f14_arg0.Charges:completeAnimation() --[[ @ 0]]
	f14_arg0.AltarName:setLeftRight( 0.5, 1.5, -35, -35 ) --[[ @ 0]]
	f14_arg0.AltarName:setTopBottom( 0, 0, 7, 24 ) --[[ @ 0]]
	f14_arg0.AltarName:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f14_arg0.AltarName:setAlpha( 1 ) --[[ @ 0]]
	f14_arg0.VaporIcon:setAlpha( 1 ) --[[ @ 0]]
	f14_arg0.ModifierFrame:setAlpha( 1 ) --[[ @ 0]]
	f14_arg0.DeadshotCharges:setAlpha( 1 ) --[[ @ 0]]
	f14_arg0.Charges:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMPerkVaporItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f15_arg0.VaporIcon:completeAnimation() --[[ @ 0]]
			f15_arg0.VaporIcon:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.VaporIcon ) --[[ @ 0]]
			f15_arg0.ModifierFrame:completeAnimation() --[[ @ 0]]
			f15_arg0.ModifierFrame:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.ModifierFrame ) --[[ @ 0]]
			f15_arg0.AltarName:completeAnimation() --[[ @ 0]]
			f15_arg0.AltarName:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.AltarName ) --[[ @ 0]]
			f15_arg0.Charges:completeAnimation() --[[ @ 0]]
			f15_arg0.Charges:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Charges ) --[[ @ 0]]
			f15_arg0.DeadshotCharges:completeAnimation() --[[ @ 0]]
			f15_arg0.DeadshotCharges:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.DeadshotCharges ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f16_arg0.VaporIcon:completeAnimation() --[[ @ 0]]
			f16_arg0.VaporIcon:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.VaporIcon ) --[[ @ 0]]
			f16_arg0.ModifierFrame:completeAnimation() --[[ @ 0]]
			f16_arg0.ModifierFrame:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.ModifierFrame ) --[[ @ 0]]
			f16_arg0.AltarName:completeAnimation() --[[ @ 0]]
			f16_arg0.AltarName:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.AltarName ) --[[ @ 0]]
			f16_arg0.Charges:completeAnimation() --[[ @ 0]]
			f16_arg0.Charges:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Charges ) --[[ @ 0]]
			f16_arg0.DeadshotCharges:completeAnimation() --[[ @ 0]]
			f16_arg0.DeadshotCharges:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.DeadshotCharges ) --[[ @ 0]]
		end
	},
	Available = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f17_arg0.VaporIcon:completeAnimation() --[[ @ 0]]
			f17_arg0.VaporIcon:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.VaporIcon ) --[[ @ 0]]
			f17_arg0.AltarName:completeAnimation() --[[ @ 0]]
			f17_arg0.AltarName:setLeftRight( 0.5, 1.5, -35, -35 ) --[[ @ 0]]
			f17_arg0.AltarName:setTopBottom( 0, 0, 7, 24 ) --[[ @ 0]]
			f17_arg0.AltarName:setRGB( 0.45, 0.45, 0.45 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.AltarName ) --[[ @ 0]]
			f17_arg0.Charges:completeAnimation() --[[ @ 0]]
			f17_arg0.Charges:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Charges ) --[[ @ 0]]
			f17_arg0.DeadshotCharges:completeAnimation() --[[ @ 0]]
			f17_arg0.DeadshotCharges:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.DeadshotCharges ) --[[ @ 0]]
		end
	},
	Consumed = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f18_arg0.VaporIcon:completeAnimation() --[[ @ 0]]
			f18_arg0.VaporIcon:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.VaporIcon ) --[[ @ 0]]
			f18_arg0.AltarName:completeAnimation() --[[ @ 0]]
			f18_arg0.AltarName:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.AltarName ) --[[ @ 0]]
			f18_arg0.DeadshotCharges:completeAnimation() --[[ @ 0]]
			f18_arg0.DeadshotCharges:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.DeadshotCharges ) --[[ @ 0]]
		end
	},
	CoolingDown = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f19_arg0.VaporIcon:completeAnimation() --[[ @ 0]]
			f19_arg0.VaporIcon:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.VaporIcon ) --[[ @ 0]]
			f19_arg0.AltarName:completeAnimation() --[[ @ 0]]
			f19_arg0.AltarName:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.AltarName ) --[[ @ 0]]
			f19_arg0.DeadshotCharges:completeAnimation() --[[ @ 0]]
			f19_arg0.DeadshotCharges:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.DeadshotCharges ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ZMPerkVaporItem.__onClose = function ( f20_arg0 )
	f20_arg0.VaporIcon:close() --[[ @ 0]]
	f20_arg0.ModifierFrame:close() --[[ @ 0]]
	f20_arg0.AltarName:close() --[[ @ 0]]
	f20_arg0.Charges:close() --[[ @ 0]]
	f20_arg0.DeadshotCharges:close() --[[ @ 0]]
end
 --[[ @ 0]]
