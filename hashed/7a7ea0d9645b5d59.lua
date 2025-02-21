-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/pc/startmenu/graphicsoptions/pc_startmenu_options_safeareaborder_horiz" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/startmenu/graphicsoptions/pc_startmenu_options_safeareaborder_vert" ) --[[ @ 0]]

CoD.StartMenu_Options_SafeArea_Container = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Options_SafeArea_Container.__defaultWidth = 1920 --[[ @ 0]]
CoD.StartMenu_Options_SafeArea_Container.__defaultHeight = 1080 --[[ @ 0]]
CoD.StartMenu_Options_SafeArea_Container.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Options_SafeArea_Container ) --[[ @ 0]]
	self.id = "StartMenu_Options_SafeArea_Container" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local backgroundImage = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	backgroundImage:setRGB( 0, 0, 0 ) --[[ @ 0]]
	backgroundImage:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( backgroundImage ) --[[ @ 0]]
	self.backgroundImage = backgroundImage --[[ @ 0]]
	
	local PCBackingBackground = nil --[[ @ 0]]
	
	PCBackingBackground = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	PCBackingBackground:setRGB( 0.69, 0.69, 0.69 ) --[[ @ 0]]
	PCBackingBackground:setAlpha( 0 ) --[[ @ 0]]
	PCBackingBackground:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( PCBackingBackground ) --[[ @ 0]]
	self.PCBackingBackground = PCBackingBackground --[[ @ 0]]
	
	local upArrow = LUI.UIImage.new( 0.5, 0.5, -48, 48, 0, 0, 0, 96 ) --[[ @ 0]]
	upArrow:setZRot( 270 ) --[[ @ 0]]
	upArrow:setImage( RegisterImage( @"safe_area_arrow" ) ) --[[ @ 0]]
	self:addElement( upArrow ) --[[ @ 0]]
	self.upArrow = upArrow --[[ @ 0]]
	
	local downArrow = LUI.UIImage.new( 0.5, 0.5, -48, 48, 1, 1, -96, 0 ) --[[ @ 0]]
	downArrow:setZRot( 90 ) --[[ @ 0]]
	downArrow:setImage( RegisterImage( @"safe_area_arrow" ) ) --[[ @ 0]]
	self:addElement( downArrow ) --[[ @ 0]]
	self.downArrow = downArrow --[[ @ 0]]
	
	local leftArrow = LUI.UIImage.new( 0, 0, 0, 96, 0.5, 0.5, -48, 48 ) --[[ @ 0]]
	leftArrow:setImage( RegisterImage( @"safe_area_arrow" ) ) --[[ @ 0]]
	self:addElement( leftArrow ) --[[ @ 0]]
	self.leftArrow = leftArrow --[[ @ 0]]
	
	local rightArrow = LUI.UIImage.new( 1, 1, -96, 0, 0.5, 0.5, -48, 48 ) --[[ @ 0]]
	rightArrow:setZRot( 180 ) --[[ @ 0]]
	rightArrow:setImage( RegisterImage( @"safe_area_arrow" ) ) --[[ @ 0]]
	self:addElement( rightArrow ) --[[ @ 0]]
	self.rightArrow = rightArrow --[[ @ 0]]
	
	local RBorder = nil --[[ @ 0]]
	
	RBorder = CoD.PC_StartMenu_Options_SafeAreaBorder_Horiz.new( f1_arg0, f1_arg1, 1, 1, -100, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	RBorder:setZRot( 180 ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( RBorder, "childFocusGained", function ( element )
		PlayClipOnElement( self, {
			elementName = "LBorder",
			clipName = "GainChildFocus"
		}, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( RBorder, "childFocusLost", function ( element )
		PlayClipOnElement( self, {
			elementName = "LBorder",
			clipName = "LoseChildFocus"
		}, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( RBorder ) --[[ @ 0]]
	self.RBorder = RBorder --[[ @ 0]]
	
	local LBorder = nil --[[ @ 0]]
	
	LBorder = CoD.PC_StartMenu_Options_SafeAreaBorder_Horiz.new( f1_arg0, f1_arg1, 0, 0, 0, 100, 0, 1, 0, 0 ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( LBorder, "childFocusGained", function ( element )
		PlayClipOnElement( self, {
			elementName = "RBorder",
			clipName = "GainChildFocus"
		}, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( LBorder, "childFocusLost", function ( element )
		PlayClipOnElement( self, {
			elementName = "RBorder",
			clipName = "LoseChildFocus"
		}, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( LBorder ) --[[ @ 0]]
	self.LBorder = LBorder --[[ @ 0]]
	
	local TBorder = nil --[[ @ 0]]
	
	TBorder = CoD.PC_StartMenu_Options_SafeAreaBorder_Vert.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 100 ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( TBorder, "childFocusGained", function ( element )
		PlayClipOnElement( self, {
			elementName = "BBorder",
			clipName = "GainChildFocus"
		}, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( TBorder, "childFocusLost", function ( element )
		PlayClipOnElement( self, {
			elementName = "BBorder",
			clipName = "LoseChildFocus"
		}, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( TBorder ) --[[ @ 0]]
	self.TBorder = TBorder --[[ @ 0]]
	
	local BBorder = nil --[[ @ 0]]
	
	BBorder = CoD.PC_StartMenu_Options_SafeAreaBorder_Vert.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 1, 1, -100, 0 ) --[[ @ 0]]
	BBorder:setZRot( 180 ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( BBorder, "childFocusGained", function ( element )
		PlayClipOnElement( self, {
			elementName = "TBorder",
			clipName = "GainChildFocus"
		}, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( BBorder, "childFocusLost", function ( element )
		PlayClipOnElement( self, {
			elementName = "TBorder",
			clipName = "LoseChildFocus"
		}, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( BBorder ) --[[ @ 0]]
	self.BBorder = BBorder --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "FirstTime",
			condition = function ( menu, element, event )
				return IsMainFirstTimeSetup( f1_arg1 )
			end
		},
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	if CoD.isPC then
		RBorder.id = "RBorder" --[[ @ 0]]
	end
	if CoD.isPC then
		LBorder.id = "LBorder" --[[ @ 0]]
	end
	if CoD.isPC then
		TBorder.id = "TBorder" --[[ @ 0]]
	end
	if CoD.isPC then
		BBorder.id = "BBorder" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Options_SafeArea_Container.__resetProperties = function ( f12_arg0 )
	f12_arg0.backgroundImage:completeAnimation() --[[ @ 0]]
	f12_arg0.rightArrow:completeAnimation() --[[ @ 0]]
	f12_arg0.leftArrow:completeAnimation() --[[ @ 0]]
	f12_arg0.downArrow:completeAnimation() --[[ @ 0]]
	f12_arg0.upArrow:completeAnimation() --[[ @ 0]]
	f12_arg0.PCBackingBackground:completeAnimation() --[[ @ 0]]
	f12_arg0.backgroundImage:setAlpha( 0 ) --[[ @ 0]]
	f12_arg0.rightArrow:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.leftArrow:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.downArrow:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.upArrow:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.PCBackingBackground:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Options_SafeArea_Container.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f13_arg0.backgroundImage:completeAnimation() --[[ @ 0]]
			f13_arg0.backgroundImage:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.backgroundImage ) --[[ @ 0]]
		end
	},
	FirstTime = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f15_arg0.backgroundImage:completeAnimation() --[[ @ 0]]
			f15_arg0.backgroundImage:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.backgroundImage ) --[[ @ 0]]
			f15_arg0.PCBackingBackground:completeAnimation() --[[ @ 0]]
			f15_arg0.PCBackingBackground:setAlpha( 0.02 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.PCBackingBackground ) --[[ @ 0]]
			f15_arg0.upArrow:completeAnimation() --[[ @ 0]]
			f15_arg0.upArrow:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.upArrow ) --[[ @ 0]]
			f15_arg0.downArrow:completeAnimation() --[[ @ 0]]
			f15_arg0.downArrow:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.downArrow ) --[[ @ 0]]
			f15_arg0.leftArrow:completeAnimation() --[[ @ 0]]
			f15_arg0.leftArrow:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.leftArrow ) --[[ @ 0]]
			f15_arg0.rightArrow:completeAnimation() --[[ @ 0]]
			f15_arg0.rightArrow:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.rightArrow ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_Options_SafeArea_Container.__onClose = function ( f16_arg0 )
	f16_arg0.RBorder:close() --[[ @ 0]]
	f16_arg0.LBorder:close() --[[ @ 0]]
	f16_arg0.TBorder:close() --[[ @ 0]]
	f16_arg0.BBorder:close() --[[ @ 0]]
end
 --[[ @ 0]]
