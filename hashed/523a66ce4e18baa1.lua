-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]
require( "x64:7610fa6ebdf6af8b" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/startmenu_frame_nobg" ) --[[ @ 0]]

CoD.PC_CoDAccount_EditableOption = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_CoDAccount_EditableOption.__defaultWidth = 750 --[[ @ 0]]
CoD.PC_CoDAccount_EditableOption.__defaultHeight = 60 --[[ @ 0]]
CoD.PC_CoDAccount_EditableOption.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_CoDAccount_EditableOption ) --[[ @ 0]]
	self.id = "PC_CoDAccount_EditableOption" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local emptyFocusable = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0, 0, 0, 750, 0, 0, 0, 60 ) --[[ @ 0]]
	self:addElement( emptyFocusable ) --[[ @ 0]]
	self.emptyFocusable = emptyFocusable --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, -344, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( 0.13, 0.12, 0.12 ) --[[ @ 0]]
	Backing:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local Frame = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 1, 0, -344, 0, 1, 0, 0 ) --[[ @ 0]]
	Frame:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
	Frame:setAlpha( 0.04 ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	local ActionText = LUI.UIText.new( 0, 0, 12, 352, 0.5, 0.5, -9.5, 10.5 ) --[[ @ 0]]
	ActionText:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
	ActionText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ActionText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ActionText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	ActionText:linkToElementModel( self, "displayText", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ActionText:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ActionText ) --[[ @ 0]]
	self.ActionText = ActionText --[[ @ 0]]
	
	local StartMenuframenoBG00 = CoD.StartMenu_frame_noBG.new( f1_arg0, f1_arg1, 0.58, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( StartMenuframenoBG00 ) --[[ @ 0]]
	self.StartMenuframenoBG00 = StartMenuframenoBG00 --[[ @ 0]]
	
	local CurrentText = CoD.PC_CoDAccount_EditableOption_EditBox.new( f1_arg0, f1_arg1, 1, 1, -340, 0, 0, 0, 0, 60 ) --[[ @ 0]]
	CurrentText:linkToElementModel( self, nil, false, function ( model )
		CurrentText:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CurrentText:linkToElementModel( self, "currentText", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			CurrentText.TextBox:setText( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CurrentText ) --[[ @ 0]]
	self.CurrentText = CurrentText --[[ @ 0]]
	
	emptyFocusable.id = "emptyFocusable" --[[ @ 0]]
	CurrentText.id = "CurrentText" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_CoDAccount_EditableOption.__resetProperties = function ( f5_arg0 )
	f5_arg0.Frame:completeAnimation() --[[ @ 0]]
	f5_arg0.Backing:completeAnimation() --[[ @ 0]]
	f5_arg0.Frame:setAlpha( 0.04 ) --[[ @ 0]]
	f5_arg0.Backing:setRGB( 0.13, 0.12, 0.12 ) --[[ @ 0]]
	f5_arg0.Backing:setAlpha( 0.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_CoDAccount_EditableOption.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.Backing:completeAnimation() --[[ @ 0]]
			f7_arg0.Backing:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
			f7_arg0.Backing:setAlpha( 0.2 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Backing ) --[[ @ 0]]
			f7_arg0.Frame:completeAnimation() --[[ @ 0]]
			f7_arg0.Frame:setAlpha( 0.6 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Frame ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PC_CoDAccount_EditableOption.__onClose = function ( f8_arg0 )
	f8_arg0.emptyFocusable:close() --[[ @ 0]]
	f8_arg0.Frame:close() --[[ @ 0]]
	f8_arg0.ActionText:close() --[[ @ 0]]
	f8_arg0.StartMenuframenoBG00:close() --[[ @ 0]]
	f8_arg0.CurrentText:close() --[[ @ 0]]
end
 --[[ @ 0]]
