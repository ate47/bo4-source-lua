-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:6bdc4956715f81d7" ) --[[ @ 0]]

CoD.PC_PaintjobEditor_View = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_PaintjobEditor_View.__defaultWidth = 250 --[[ @ 0]]
CoD.PC_PaintjobEditor_View.__defaultHeight = 45 --[[ @ 0]]
CoD.PC_PaintjobEditor_View.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_PaintjobEditor_View ) --[[ @ 0]]
	self.id = "PC_PaintjobEditor_View" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setAlpha( 0.5 ) --[[ @ 0]]
	Backing:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	Backing:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.75 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local ViewName = LUI.UIText.new( 0.5, 0.5, -71, 71, 0.5, 0.5, -7.5, 7.5 ) --[[ @ 0]]
	ViewName:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	ViewName:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	ViewName:setLetterSpacing( 6 ) --[[ @ 0]]
	ViewName:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ViewName:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	ViewName:subscribeToGlobalModel( f1_arg1, "Customization", "view_string_ref", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ViewName:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ViewName ) --[[ @ 0]]
	self.ViewName = ViewName --[[ @ 0]]
	
	local ChangeViewRight = CoD.CyclingList_Arrow.new( f1_arg0, f1_arg1, 1, 1, -45, 0, 0.5, 0.5, -22.5, 22.5 ) --[[ @ 0]]
	ChangeViewRight.Image:setRGB( 1, 1, 1 ) --[[ @ 0]]
	ChangeViewRight:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ChangeViewRight, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		CoD.CraftUtility.Paintshop_ChangeViewRightBumper( menu, element, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( ChangeViewRight ) --[[ @ 0]]
	self.ChangeViewRight = ChangeViewRight --[[ @ 0]]
	
	local ChangeViewLeft = CoD.CyclingList_Arrow.new( f1_arg0, f1_arg1, 0, 0, 0, 45, 0.5, 0.5, -22.5, 22.5 ) --[[ @ 0]]
	ChangeViewLeft:setZRot( 180 ) --[[ @ 0]]
	ChangeViewLeft.Image:setRGB( 1, 1, 1 ) --[[ @ 0]]
	ChangeViewLeft:registerEventHandler( "gain_focus", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f6_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f6_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ChangeViewLeft, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		CoD.CraftUtility.Paintshop_ChangeViewLeftBumper( menu, element, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( ChangeViewLeft ) --[[ @ 0]]
	self.ChangeViewLeft = ChangeViewLeft --[[ @ 0]]
	
	ChangeViewRight.id = "ChangeViewRight" --[[ @ 0]]
	ChangeViewLeft.id = "ChangeViewLeft" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_PaintjobEditor_View.__onClose = function ( f9_arg0 )
	f9_arg0.ViewName:close() --[[ @ 0]]
	f9_arg0.ChangeViewRight:close() --[[ @ 0]]
	f9_arg0.ChangeViewLeft:close() --[[ @ 0]]
end
 --[[ @ 0]]
