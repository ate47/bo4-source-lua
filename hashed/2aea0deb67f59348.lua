-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:30c77bf9b3abfcf0" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/verticallistspacer" ) --[[ @ 0]]

CoD.BountyHunterPreviewMultiItems = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BountyHunterPreviewMultiItems.__defaultWidth = 330 --[[ @ 0]]
CoD.BountyHunterPreviewMultiItems.__defaultHeight = 320 --[[ @ 0]]
CoD.BountyHunterPreviewMultiItems.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Top ) --[[ @ 0]]
	self:setClass( CoD.BountyHunterPreviewMultiItems ) --[[ @ 0]]
	self.id = "BountyHunterPreviewMultiItems" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Item1 = CoD.BountyHunterPreviewItem.new( f1_arg0, f1_arg1, 0, 0, 0, 330, 0, 0, 0, 100 ) --[[ @ 0]]
	Item1:linkToElementModel( self, "item1", false, function ( model )
		Item1:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Item1 ) --[[ @ 0]]
	self.Item1 = Item1 --[[ @ 0]]
	
	local VerticalListSpacer = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 0, 330, 0, 0, 100, 120 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer ) --[[ @ 0]]
	self.VerticalListSpacer = VerticalListSpacer --[[ @ 0]]
	
	local Item2 = CoD.BountyHunterPreviewItem.new( f1_arg0, f1_arg1, 0, 0, 0, 330, 0, 0, 120, 220 ) --[[ @ 0]]
	Item2:linkToElementModel( self, "item2", false, function ( model )
		Item2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Item2 ) --[[ @ 0]]
	self.Item2 = Item2 --[[ @ 0]]
	
	local VerticalListSpacer2 = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 0, 330, 0, 0, 220, 240 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer2 ) --[[ @ 0]]
	self.VerticalListSpacer2 = VerticalListSpacer2 --[[ @ 0]]
	
	local Item3 = CoD.BountyHunterPreviewItem.new( f1_arg0, f1_arg1, 0, 0, 0, 330, 0, 0, 240, 340 ) --[[ @ 0]]
	Item3:linkToElementModel( self, "item3", false, function ( model )
		Item3:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Item3 ) --[[ @ 0]]
	self.Item3 = Item3 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoItem",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelPathNil( self, f1_arg1, "item1" )
			end
		},
		{
			stateName = "PrimaryWeaponNotSelected",
			condition = function ( menu, element, event )
				return CoD.BountyHunterUtility.IsPreviewPackageWeaponNotSelected( self )
			end
		},
		{
			stateName = "SecondaryWeaponNotSelected",
			condition = function ( menu, element, event )
				return CoD.BountyHunterUtility.IsPreviewPackageWeaponNotSelected( self )
			end
		},
		{
			stateName = "SingleItem",
			condition = function ( menu, element, event )
				return CoD.BountyHunterUtility.IsPreviewPackageSingleItem( self )
			end
		},
		{
			stateName = "DoubleItem",
			condition = function ( menu, element, event )
				return not CoD.BountyHunterUtility.IsPreviewPackageTripleItem( self )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "item1", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "item1"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "packageID", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "packageID"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "item2.displayName", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "item2.displayName"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "item2.trackTier", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "item2.trackTier"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "item3.displayName", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "item3.displayName"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "item3.trackTier", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "item3.trackTier"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.BountyHunterPreviewMultiItems.__resetProperties = function ( f16_arg0 )
	f16_arg0.Item1:completeAnimation() --[[ @ 0]]
	f16_arg0.Item2:completeAnimation() --[[ @ 0]]
	f16_arg0.Item3:completeAnimation() --[[ @ 0]]
	f16_arg0.Item1:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.Item2:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.Item3:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BountyHunterPreviewMultiItems.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	NoItem = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f18_arg0.Item1:completeAnimation() --[[ @ 0]]
			f18_arg0.Item1:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Item1 ) --[[ @ 0]]
			f18_arg0.Item2:completeAnimation() --[[ @ 0]]
			f18_arg0.Item2:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Item2 ) --[[ @ 0]]
			f18_arg0.Item3:completeAnimation() --[[ @ 0]]
			f18_arg0.Item3:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Item3 ) --[[ @ 0]]
		end
	},
	PrimaryWeaponNotSelected = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f19_arg0.Item1:completeAnimation() --[[ @ 0]]
			f19_arg0.Item1:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Item1 ) --[[ @ 0]]
			f19_arg0.Item2:completeAnimation() --[[ @ 0]]
			f19_arg0.Item2:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Item2 ) --[[ @ 0]]
			f19_arg0.Item3:completeAnimation() --[[ @ 0]]
			f19_arg0.Item3:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Item3 ) --[[ @ 0]]
		end
	},
	SecondaryWeaponNotSelected = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f20_arg0.Item1:completeAnimation() --[[ @ 0]]
			f20_arg0.Item1:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Item1 ) --[[ @ 0]]
			f20_arg0.Item2:completeAnimation() --[[ @ 0]]
			f20_arg0.Item2:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Item2 ) --[[ @ 0]]
			f20_arg0.Item3:completeAnimation() --[[ @ 0]]
			f20_arg0.Item3:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Item3 ) --[[ @ 0]]
		end
	},
	SingleItem = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f21_arg0.Item1:completeAnimation() --[[ @ 0]]
			f21_arg0.Item1:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.Item1 ) --[[ @ 0]]
			f21_arg0.Item2:completeAnimation() --[[ @ 0]]
			f21_arg0.Item2:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.Item2 ) --[[ @ 0]]
			f21_arg0.Item3:completeAnimation() --[[ @ 0]]
			f21_arg0.Item3:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.Item3 ) --[[ @ 0]]
		end
	},
	DoubleItem = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f22_arg0.Item3:completeAnimation() --[[ @ 0]]
			f22_arg0.Item3:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Item3 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.BountyHunterPreviewMultiItems.__onClose = function ( f23_arg0 )
	f23_arg0.Item1:close() --[[ @ 0]]
	f23_arg0.VerticalListSpacer:close() --[[ @ 0]]
	f23_arg0.Item2:close() --[[ @ 0]]
	f23_arg0.VerticalListSpacer2:close() --[[ @ 0]]
	f23_arg0.Item3:close() --[[ @ 0]]
end
 --[[ @ 0]]
