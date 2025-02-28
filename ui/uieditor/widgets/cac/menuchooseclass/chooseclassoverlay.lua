-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.ChooseClassOverlay = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ChooseClassOverlay.__defaultWidth = 1920 --[[ @ 0]]
CoD.ChooseClassOverlay.__defaultHeight = 1080 --[[ @ 0]]
CoD.ChooseClassOverlay.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ChooseClassOverlay ) --[[ @ 0]]
	self.id = "ChooseClassOverlay" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BgOverlayTopWildcard = LUI.UIImage.new( -0.12, 1.12, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BgOverlayTopWildcard:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BgOverlayTopWildcard:setAlpha( 0 ) --[[ @ 0]]
	BgOverlayTopWildcard:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	BgOverlayTopWildcard:registerEventHandler( "menu_loaded", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f2_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f2_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if IsPC() then
			SizeToWidthOfScreen( element, f1_arg1 ) --[[ @ 0]]
		end
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( BgOverlayTopWildcard ) --[[ @ 0]]
	self.BgOverlayTopWildcard = BgOverlayTopWildcard --[[ @ 0]]
	
	local BgOverlayRightPerks = LUI.UIImage.new( 0.5, 0.5, 707, 1201, 1, 1, -515, 1 ) --[[ @ 0]]
	BgOverlayRightPerks:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BgOverlayRightPerks:setAlpha( 0 ) --[[ @ 0]]
	BgOverlayRightPerks:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	self:addElement( BgOverlayRightPerks ) --[[ @ 0]]
	self.BgOverlayRightPerks = BgOverlayRightPerks --[[ @ 0]]
	
	local BgOverlayBottomPerks = LUI.UIImage.new( 0.5, 0.5, 325, 707, 1, 1, -295, 1 ) --[[ @ 0]]
	BgOverlayBottomPerks:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BgOverlayBottomPerks:setAlpha( 0 ) --[[ @ 0]]
	BgOverlayBottomPerks:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	self:addElement( BgOverlayBottomPerks ) --[[ @ 0]]
	self.BgOverlayBottomPerks = BgOverlayBottomPerks --[[ @ 0]]
	
	local BgOverlayLeftPerks = LUI.UIImage.new( 0.5, 0.5, -1200, 325, 1, 1, -515, 1 ) --[[ @ 0]]
	BgOverlayLeftPerks:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BgOverlayLeftPerks:setAlpha( 0 ) --[[ @ 0]]
	BgOverlayLeftPerks:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	self:addElement( BgOverlayLeftPerks ) --[[ @ 0]]
	self.BgOverlayLeftPerks = BgOverlayLeftPerks --[[ @ 0]]
	
	local BgOverlayMiddlePerks = LUI.UIImage.new( 0.5, 0.5, 325, 707, 1, 1, -515, -295 ) --[[ @ 0]]
	BgOverlayMiddlePerks:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BgOverlayMiddlePerks:setAlpha( 0 ) --[[ @ 0]]
	BgOverlayMiddlePerks:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	self:addElement( BgOverlayMiddlePerks ) --[[ @ 0]]
	self.BgOverlayMiddlePerks = BgOverlayMiddlePerks --[[ @ 0]]
	
	local BgOverlayLeftSecondary = LUI.UIImage.new( 0.5, 0.5, -1200, -305, 1, 1, -515, 1 ) --[[ @ 0]]
	BgOverlayLeftSecondary:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BgOverlayLeftSecondary:setAlpha( 0 ) --[[ @ 0]]
	BgOverlayLeftSecondary:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	self:addElement( BgOverlayLeftSecondary ) --[[ @ 0]]
	self.BgOverlayLeftSecondary = BgOverlayLeftSecondary --[[ @ 0]]
	
	local BgOverlayRightSecondary = LUI.UIImage.new( 0.5, 0.5, 66, 1200, 1, 1, -515, 1 ) --[[ @ 0]]
	BgOverlayRightSecondary:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BgOverlayRightSecondary:setAlpha( 0 ) --[[ @ 0]]
	BgOverlayRightSecondary:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	self:addElement( BgOverlayRightSecondary ) --[[ @ 0]]
	self.BgOverlayRightSecondary = BgOverlayRightSecondary --[[ @ 0]]
	
	local BgOverlayBottomSecondary = LUI.UIImage.new( 0.5, 0.5, -305, 66, 1, 1, -91, 1 ) --[[ @ 0]]
	BgOverlayBottomSecondary:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BgOverlayBottomSecondary:setAlpha( 0 ) --[[ @ 0]]
	BgOverlayBottomSecondary:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	self:addElement( BgOverlayBottomSecondary ) --[[ @ 0]]
	self.BgOverlayBottomSecondary = BgOverlayBottomSecondary --[[ @ 0]]
	
	local BgOverlayMiddleSecondary = LUI.UIImage.new( 0.5, 0.5, -305, 66, 1, 1, -515, -91 ) --[[ @ 0]]
	BgOverlayMiddleSecondary:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BgOverlayMiddleSecondary:setAlpha( 0 ) --[[ @ 0]]
	BgOverlayMiddleSecondary:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	self:addElement( BgOverlayMiddleSecondary ) --[[ @ 0]]
	self.BgOverlayMiddleSecondary = BgOverlayMiddleSecondary --[[ @ 0]]
	
	local BgOverlayLeftPrimary = LUI.UIImage.new( 0.5, 0.5, -1200, -685, 1, 1, -515, 1 ) --[[ @ 0]]
	BgOverlayLeftPrimary:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BgOverlayLeftPrimary:setAlpha( 0 ) --[[ @ 0]]
	BgOverlayLeftPrimary:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	self:addElement( BgOverlayLeftPrimary ) --[[ @ 0]]
	self.BgOverlayLeftPrimary = BgOverlayLeftPrimary --[[ @ 0]]
	
	local BgOverlayMiddlePrimary = LUI.UIImage.new( 0.5, 0.5, -685, -317, 1, 1, -515, -91 ) --[[ @ 0]]
	BgOverlayMiddlePrimary:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BgOverlayMiddlePrimary:setAlpha( 0 ) --[[ @ 0]]
	BgOverlayMiddlePrimary:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	self:addElement( BgOverlayMiddlePrimary ) --[[ @ 0]]
	self.BgOverlayMiddlePrimary = BgOverlayMiddlePrimary --[[ @ 0]]
	
	local BgOverlayBottomPrimary = LUI.UIImage.new( 0.5, 0.5, -685, -317, 1, 1, -91, 1 ) --[[ @ 0]]
	BgOverlayBottomPrimary:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BgOverlayBottomPrimary:setAlpha( 0 ) --[[ @ 0]]
	BgOverlayBottomPrimary:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	self:addElement( BgOverlayBottomPrimary ) --[[ @ 0]]
	self.BgOverlayBottomPrimary = BgOverlayBottomPrimary --[[ @ 0]]
	
	local BgOverlayRightPrimary = LUI.UIImage.new( 0.5, 0.5, -317.5, 1199.5, 1, 1, -515, 1 ) --[[ @ 0]]
	BgOverlayRightPrimary:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BgOverlayRightPrimary:setAlpha( 0 ) --[[ @ 0]]
	BgOverlayRightPrimary:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	self:addElement( BgOverlayRightPrimary ) --[[ @ 0]]
	self.BgOverlayRightPrimary = BgOverlayRightPrimary --[[ @ 0]]
	
	local BgOverlayTop = LUI.UIImage.new( -0.12, 1.12, 0, 0, 1, 1, -1080, -515 ) --[[ @ 0]]
	BgOverlayTop:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BgOverlayTop:setAlpha( 0 ) --[[ @ 0]]
	BgOverlayTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	BgOverlayTop:registerEventHandler( "menu_loaded", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f3_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f3_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if IsPC() then
			SizeToWidthOfScreen( element, f1_arg1 ) --[[ @ 0]]
		end
		if not f3_local0 then
			f3_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	self:addElement( BgOverlayTop ) --[[ @ 0]]
	self.BgOverlayTop = BgOverlayTop --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "WildcardPrimary",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueTrue( f1_arg1, "WildcardMenuOpen" ) and CoD.BonuscardUtility.IsBonuscardModifiedEnumPrimary( f1_arg1 )
			end
		},
		{
			stateName = "WildcardSecondary",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueTrue( f1_arg1, "WildcardMenuOpen" ) and CoD.BonuscardUtility.IsBonuscardModifiedEnumSecondary( f1_arg1 )
			end
		},
		{
			stateName = "WildcardPerks",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueTrue( f1_arg1, "WildcardMenuOpen" ) and CoD.BonuscardUtility.IsBonuscardModifiedEnumPerks( f1_arg1 )
			end
		},
		{
			stateName = "WildcardOverlay",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueTrue( f1_arg1, "WildcardMenuOpen" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local15 = self --[[ @ 0]]
	local f1_local16 = self.subscribeToModel --[[ @ 0]]
	local f1_local17 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local16( f1_local15, f1_local17.WildcardMenuOpen, function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "WildcardMenuOpen"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local15 = self --[[ @ 0]]
	f1_local16 = self.subscribeToModel --[[ @ 0]]
	f1_local17 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local16( f1_local15, f1_local17.BonuscardModifiedSlotEnum, function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "BonuscardModifiedSlotEnum"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ChooseClassOverlay.__resetProperties = function ( f10_arg0 )
	f10_arg0.BgOverlayTop:completeAnimation() --[[ @ 0]]
	f10_arg0.BgOverlayLeftPrimary:completeAnimation() --[[ @ 0]]
	f10_arg0.BgOverlayRightPrimary:completeAnimation() --[[ @ 0]]
	f10_arg0.BgOverlayMiddlePrimary:completeAnimation() --[[ @ 0]]
	f10_arg0.BgOverlayBottomPrimary:completeAnimation() --[[ @ 0]]
	f10_arg0.BgOverlayRightSecondary:completeAnimation() --[[ @ 0]]
	f10_arg0.BgOverlayLeftSecondary:completeAnimation() --[[ @ 0]]
	f10_arg0.BgOverlayMiddleSecondary:completeAnimation() --[[ @ 0]]
	f10_arg0.BgOverlayBottomSecondary:completeAnimation() --[[ @ 0]]
	f10_arg0.BgOverlayLeftPerks:completeAnimation() --[[ @ 0]]
	f10_arg0.BgOverlayBottomPerks:completeAnimation() --[[ @ 0]]
	f10_arg0.BgOverlayRightPerks:completeAnimation() --[[ @ 0]]
	f10_arg0.BgOverlayMiddlePerks:completeAnimation() --[[ @ 0]]
	f10_arg0.BgOverlayTopWildcard:completeAnimation() --[[ @ 0]]
	f10_arg0.BgOverlayTop:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.BgOverlayLeftPrimary:setLeftRight( 0.5, 0.5, -1200, -685 ) --[[ @ 0]]
	f10_arg0.BgOverlayLeftPrimary:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.BgOverlayRightPrimary:setLeftRight( 0.5, 0.5, -317.5, 1199.5 ) --[[ @ 0]]
	f10_arg0.BgOverlayRightPrimary:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.BgOverlayMiddlePrimary:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.BgOverlayBottomPrimary:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.BgOverlayRightSecondary:setLeftRight( 0.5, 0.5, 66, 1200 ) --[[ @ 0]]
	f10_arg0.BgOverlayRightSecondary:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.BgOverlayLeftSecondary:setLeftRight( 0.5, 0.5, -1200, -305 ) --[[ @ 0]]
	f10_arg0.BgOverlayLeftSecondary:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.BgOverlayMiddleSecondary:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.BgOverlayBottomSecondary:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.BgOverlayLeftPerks:setLeftRight( 0.5, 0.5, -1200, 325 ) --[[ @ 0]]
	f10_arg0.BgOverlayLeftPerks:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.BgOverlayBottomPerks:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.BgOverlayRightPerks:setLeftRight( 0.5, 0.5, 707, 1201 ) --[[ @ 0]]
	f10_arg0.BgOverlayRightPerks:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.BgOverlayMiddlePerks:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.BgOverlayTopWildcard:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ChooseClassOverlay.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	WildcardPrimary = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f12_arg0.BgOverlayLeftPrimary:completeAnimation() --[[ @ 0]]
			f12_arg0.BgOverlayLeftPrimary:setLeftRight( 0.5, 0.5, -1936, -685 ) --[[ @ 0]]
			f12_arg0.BgOverlayLeftPrimary:setAlpha( 0.9 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.BgOverlayLeftPrimary ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.BgOverlayMiddlePrimary:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.BgOverlayMiddlePrimary:setAlpha( 0 ) --[[ @ 0]]
				f12_arg0.BgOverlayMiddlePrimary:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.BgOverlayMiddlePrimary:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.BgOverlayMiddlePrimary:completeAnimation() --[[ @ 0]]
			f12_arg0.BgOverlayMiddlePrimary:setAlpha( 0.9 ) --[[ @ 0]]
			f12_local0( f12_arg0.BgOverlayMiddlePrimary ) --[[ @ 0]]
			f12_arg0.BgOverlayBottomPrimary:completeAnimation() --[[ @ 0]]
			f12_arg0.BgOverlayBottomPrimary:setAlpha( 0.9 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.BgOverlayBottomPrimary ) --[[ @ 0]]
			f12_arg0.BgOverlayRightPrimary:completeAnimation() --[[ @ 0]]
			f12_arg0.BgOverlayRightPrimary:setLeftRight( 0.5, 0.5, -317.5, 1943.5 ) --[[ @ 0]]
			f12_arg0.BgOverlayRightPrimary:setAlpha( 0.9 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.BgOverlayRightPrimary ) --[[ @ 0]]
			f12_arg0.BgOverlayTop:completeAnimation() --[[ @ 0]]
			f12_arg0.BgOverlayTop:setAlpha( 0.9 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.BgOverlayTop ) --[[ @ 0]]
		end
	},
	WildcardSecondary = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f14_arg0.BgOverlayLeftSecondary:completeAnimation() --[[ @ 0]]
			f14_arg0.BgOverlayLeftSecondary:setLeftRight( 0.5, 0.5, -2388, -305 ) --[[ @ 0]]
			f14_arg0.BgOverlayLeftSecondary:setAlpha( 0.9 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.BgOverlayLeftSecondary ) --[[ @ 0]]
			f14_arg0.BgOverlayRightSecondary:completeAnimation() --[[ @ 0]]
			f14_arg0.BgOverlayRightSecondary:setLeftRight( 0.5, 0.5, 66, 2395 ) --[[ @ 0]]
			f14_arg0.BgOverlayRightSecondary:setAlpha( 0.9 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.BgOverlayRightSecondary ) --[[ @ 0]]
			f14_arg0.BgOverlayBottomSecondary:completeAnimation() --[[ @ 0]]
			f14_arg0.BgOverlayBottomSecondary:setAlpha( 0.9 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.BgOverlayBottomSecondary ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				f14_arg0.BgOverlayMiddleSecondary:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.BgOverlayMiddleSecondary:setAlpha( 0 ) --[[ @ 0]]
				f14_arg0.BgOverlayMiddleSecondary:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.BgOverlayMiddleSecondary:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.BgOverlayMiddleSecondary:completeAnimation() --[[ @ 0]]
			f14_arg0.BgOverlayMiddleSecondary:setAlpha( 0.9 ) --[[ @ 0]]
			f14_local0( f14_arg0.BgOverlayMiddleSecondary ) --[[ @ 0]]
			f14_arg0.BgOverlayTop:completeAnimation() --[[ @ 0]]
			f14_arg0.BgOverlayTop:setAlpha( 0.9 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.BgOverlayTop ) --[[ @ 0]]
		end
	},
	WildcardPerks = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f16_arg0.BgOverlayRightPerks:completeAnimation() --[[ @ 0]]
			f16_arg0.BgOverlayRightPerks:setLeftRight( 0.5, 0.5, 707, 2395 ) --[[ @ 0]]
			f16_arg0.BgOverlayRightPerks:setAlpha( 0.8 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.BgOverlayRightPerks ) --[[ @ 0]]
			f16_arg0.BgOverlayBottomPerks:completeAnimation() --[[ @ 0]]
			f16_arg0.BgOverlayBottomPerks:setAlpha( 0.8 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.BgOverlayBottomPerks ) --[[ @ 0]]
			f16_arg0.BgOverlayLeftPerks:completeAnimation() --[[ @ 0]]
			f16_arg0.BgOverlayLeftPerks:setLeftRight( 0.5, 0.5, -2394, 325 ) --[[ @ 0]]
			f16_arg0.BgOverlayLeftPerks:setAlpha( 0.8 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.BgOverlayLeftPerks ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.BgOverlayMiddlePerks:beginAnimation( 200 ) --[[ @ 0]]
				f16_arg0.BgOverlayMiddlePerks:setAlpha( 0 ) --[[ @ 0]]
				f16_arg0.BgOverlayMiddlePerks:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.BgOverlayMiddlePerks:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.BgOverlayMiddlePerks:completeAnimation() --[[ @ 0]]
			f16_arg0.BgOverlayMiddlePerks:setAlpha( 0.8 ) --[[ @ 0]]
			f16_local0( f16_arg0.BgOverlayMiddlePerks ) --[[ @ 0]]
			f16_arg0.BgOverlayTop:completeAnimation() --[[ @ 0]]
			f16_arg0.BgOverlayTop:setAlpha( 0.8 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.BgOverlayTop ) --[[ @ 0]]
		end
	},
	WildcardOverlay = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f18_arg0.BgOverlayTopWildcard:completeAnimation() --[[ @ 0]]
			f18_arg0.BgOverlayTopWildcard:setAlpha( 0.8 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.BgOverlayTopWildcard ) --[[ @ 0]]
			f18_arg0.BgOverlayTop:completeAnimation() --[[ @ 0]]
			f18_arg0.BgOverlayTop:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.BgOverlayTop ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
