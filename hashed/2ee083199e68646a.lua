-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]
require( "x64:6bdc4956715f81d7" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/startmenu/pc_highlightborder" ) --[[ @ 0]]

CoD.CyclingList_ItemControl = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CyclingList_ItemControl.__defaultWidth = 348 --[[ @ 0]]
CoD.CyclingList_ItemControl.__defaultHeight = 65 --[[ @ 0]]
CoD.CyclingList_ItemControl.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CyclingList_ItemControl ) --[[ @ 0]]
	self.id = "CyclingList_ItemControl" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local center = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0, 0, 0, 335, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( center ) --[[ @ 0]]
	self.center = center --[[ @ 0]]
	
	local TextBox = LUI.UIText.new( 0, 0.58, 6, 6, 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	TextBox:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
	TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	TextBox:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TextBox:setLetterSpacing( 1 ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( TextBox ) --[[ @ 0]]
	self.TextBox = TextBox --[[ @ 0]]
	
	local right = CoD.CyclingList_Arrow.new( f1_arg0, f1_arg1, 1, 1, -68, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	right:mergeStateConditions( {
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return IsSelfInState( self, "RightArrowHidden" )
			end
		}
	} ) --[[ @ 0]]
	self:addElement( right ) --[[ @ 0]]
	self.right = right --[[ @ 0]]
	
	local left = CoD.CyclingList_Arrow.new( f1_arg0, f1_arg1, 1, 1, -135, -67, 0, 1, 0, 0 ) --[[ @ 0]]
	left:mergeStateConditions( {
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return IsSelfInState( self, "LeftArrowHidden" )
			end
		}
	} ) --[[ @ 0]]
	left:setZRot( 180 ) --[[ @ 0]]
	self:addElement( left ) --[[ @ 0]]
	self.left = left --[[ @ 0]]
	
	local PCHighlightBorder = CoD.PC_HighlightBorder.new( f1_arg0, f1_arg1, 0, 0, 0, 214, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( PCHighlightBorder ) --[[ @ 0]]
	self.PCHighlightBorder = PCHighlightBorder --[[ @ 0]]
	
	local OptionCountBorder = LUI.UIImage.new( 0, 0, 0, 214, 1, 1, -5, -1 ) --[[ @ 0]]
	OptionCountBorder:setAlpha( 0.05 ) --[[ @ 0]]
	OptionCountBorder:setImage( RegisterImage( @"uie_hud_core_loadout_panel1" ) ) --[[ @ 0]]
	OptionCountBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_631E7B3C72564429" ) ) --[[ @ 0]]
	OptionCountBorder:setShaderVector( 0, 0, 0, 0.55, 0.13 ) --[[ @ 0]]
	OptionCountBorder:setShaderVector( 2, 0, 1, 0, 1 ) --[[ @ 0]]
	OptionCountBorder:setupNineSliceShader( 25, 4 ) --[[ @ 0]]
	OptionCountBorder:linkToElementModel( self, "optionCount", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			OptionCountBorder:setShaderVector( 1, SetVectorComponent( 2, 1, CoD.GetVectorComponentFromString( f4_local0, 1 ), CoD.GetVectorComponentFromString( f4_local0, 2 ), CoD.GetVectorComponentFromString( f4_local0, 3 ), CoD.GetVectorComponentFromString( f4_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( OptionCountBorder ) --[[ @ 0]]
	self.OptionCountBorder = OptionCountBorder --[[ @ 0]]
	
	local CurrentOptionBorder = LUI.UIImage.new( 0, 0, 0, 214, 1, 1, -5, -1 ) --[[ @ 0]]
	CurrentOptionBorder:setRGB( 0.8, 0.8, 0.8 ) --[[ @ 0]]
	CurrentOptionBorder:setImage( RegisterImage( @"uie_hud_core_loadout_panel1" ) ) --[[ @ 0]]
	CurrentOptionBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_631E7B3C72564429" ) ) --[[ @ 0]]
	CurrentOptionBorder:setShaderVector( 0, 0, 0, 0.55, 0.13 ) --[[ @ 0]]
	CurrentOptionBorder:setupNineSliceShader( 25, 4 ) --[[ @ 0]]
	CurrentOptionBorder:linkToElementModel( self, "optionCount", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			CurrentOptionBorder:setShaderVector( 1, SetVectorComponent( 2, 1, CoD.GetVectorComponentFromString( f5_local0, 1 ), CoD.GetVectorComponentFromString( f5_local0, 2 ), CoD.GetVectorComponentFromString( f5_local0, 3 ), CoD.GetVectorComponentFromString( f5_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CurrentOptionBorder:linkToElementModel( self, "currentValue", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			CurrentOptionBorder:setShaderVector( 2, CoD.PCWidgetUtility.GetSettingSliderPagination( self, self:getModel(), CoD.GetVectorComponentFromString( f6_local0, 1 ), CoD.GetVectorComponentFromString( f6_local0, 2 ), CoD.GetVectorComponentFromString( f6_local0, 3 ), CoD.GetVectorComponentFromString( f6_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CurrentOptionBorder ) --[[ @ 0]]
	self.CurrentOptionBorder = CurrentOptionBorder --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f7_arg2, f7_arg3, f7_arg4 )
		if IsElementInState( element, "DefaultState" ) then
			SetElementStateByElementName( self, "left", controller, "DefaultState" ) --[[ @ 0]]
			SetElementStateByElementName( self, "right", controller, "DefaultState" ) --[[ @ 0]]
		elseif IsElementInState( element, "ArrowsHidden" ) then
			SetElementStateByElementName( self, "left", controller, "Hidden" ) --[[ @ 0]]
			SetElementStateByElementName( self, "right", controller, "Hidden" ) --[[ @ 0]]
		else
			UpdateElementState( self, "left", controller ) --[[ @ 0]]
			UpdateElementState( self, "right", controller ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	center.id = "center" --[[ @ 0]]
	right.id = "right" --[[ @ 0]]
	left.id = "left" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local8 = self --[[ @ 0]]
	DisableKeyboardNavigationByElement( self.right ) --[[ @ 0]]
	DisableKeyboardNavigationByElement( self.left ) --[[ @ 0]]
	SetElementProperty( self.left, "_isLeft", true ) --[[ @ 0]]
	CoD.PCWidgetUtility.EnableShrinkToFit( TextBox ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.CyclingList_ItemControl.__resetProperties = function ( f8_arg0 )
	f8_arg0.left:completeAnimation() --[[ @ 0]]
	f8_arg0.right:completeAnimation() --[[ @ 0]]
	f8_arg0.TextBox:completeAnimation() --[[ @ 0]]
	f8_arg0.left:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.right:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.TextBox:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CyclingList_ItemControl.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Unavailable = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f10_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f10_arg0.TextBox:setAlpha( 0.3 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.TextBox ) --[[ @ 0]]
			f10_arg0.right:completeAnimation() --[[ @ 0]]
			f10_arg0.right:setAlpha( 0.3 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.right ) --[[ @ 0]]
			f10_arg0.left:completeAnimation() --[[ @ 0]]
			f10_arg0.left:setAlpha( 0.3 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.left ) --[[ @ 0]]
		end
	},
	ArrowsHidden = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f11_arg0.right:completeAnimation() --[[ @ 0]]
			f11_arg0.right:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.right ) --[[ @ 0]]
			f11_arg0.left:completeAnimation() --[[ @ 0]]
			f11_arg0.left:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.left ) --[[ @ 0]]
		end,
		ChildFocus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f12_arg0.right:completeAnimation() --[[ @ 0]]
			f12_arg0.right:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.right ) --[[ @ 0]]
			f12_arg0.left:completeAnimation() --[[ @ 0]]
			f12_arg0.left:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.left ) --[[ @ 0]]
		end
	},
	LeftArrowHidden = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	RightArrowHidden = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CyclingList_ItemControl.__onClose = function ( f15_arg0 )
	f15_arg0.center:close() --[[ @ 0]]
	f15_arg0.TextBox:close() --[[ @ 0]]
	f15_arg0.right:close() --[[ @ 0]]
	f15_arg0.left:close() --[[ @ 0]]
	f15_arg0.PCHighlightBorder:close() --[[ @ 0]]
	f15_arg0.OptionCountBorder:close() --[[ @ 0]]
	f15_arg0.CurrentOptionBorder:close() --[[ @ 0]]
end
 --[[ @ 0]]
