-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/footer/footercontainer_frontend_right" ) --[[ @ 0]]
require( "x64:2262783dc22b4707" ) --[[ @ 0]]
require( "x64:4606983d188de2b0" ) --[[ @ 0]]
require( "x64:73a1772776cde124" ) --[[ @ 0]]

CoD.PC_BnetStore = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.PC_BnetStore = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "PC_BnetStore", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.PC_BnetStore ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Background = LUI.UIImage.new( -0.1, 1.1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Background:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local PCBnetStoreKeyart = CoD.PC_BnetStore_Keyart.new( f1_local1, f1_arg0, 0.5, 0.5, -1160, 760, 1, 1, -1305, 0 ) --[[ @ 0]]
	self:addElement( PCBnetStoreKeyart ) --[[ @ 0]]
	self.PCBnetStoreKeyart = PCBnetStoreKeyart --[[ @ 0]]
	
	local DevsLogos = CoD.PC_BnetStore_DevsLogos.new( f1_local1, f1_arg0, 0.5, 0.5, -887.5, 887.5, 1, 1, -111.5, -86.5 ) --[[ @ 0]]
	self:addElement( DevsLogos ) --[[ @ 0]]
	self.DevsLogos = DevsLogos --[[ @ 0]]
	
	local FooterContainerFrontendRight = CoD.FooterContainer_Frontend_Right.new( f1_local1, f1_arg0, 0, 1, 0, 0, 1, 1, -48, 0 ) --[[ @ 0]]
	self:addElement( FooterContainerFrontendRight ) --[[ @ 0]]
	self.FooterContainerFrontendRight = FooterContainerFrontendRight --[[ @ 0]]
	
	local FooterBlocker = LUI.UIImage.new( -0.1, 1.1, 0, 0, 1, 1, -62, 66 ) --[[ @ 0]]
	FooterBlocker:setRGB( 0.07, 0.06, 0.06 ) --[[ @ 0]]
	FooterBlocker:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( FooterBlocker ) --[[ @ 0]]
	self.FooterBlocker = FooterBlocker --[[ @ 0]]
	
	local PCBnetStoreContainer = CoD.PC_BnetStore_Container.new( f1_local1, f1_arg0, 0.5, 0.5, 185, 825, 1, 1, -1007, -163 ) --[[ @ 0]]
	PCBnetStoreContainer.StageTitle:setText( LocalizeToUpperString( @"hash_54A067A2D7727CE4" ) ) --[[ @ 0]]
	self:addElement( PCBnetStoreContainer ) --[[ @ 0]]
	self.PCBnetStoreContainer = PCBnetStoreContainer --[[ @ 0]]
	
	local PrePurchase = LUI.UIText.new( 0.5, 0.5, -822, -528, 1, 1, -1018, -990 ) --[[ @ 0]]
	PrePurchase:setRGB( 0, 0, 0 ) --[[ @ 0]]
	PrePurchase:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_688BFFCBDA7E5396" ) ) --[[ @ 0]]
	PrePurchase:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	PrePurchase:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	PrePurchase:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( PrePurchase ) --[[ @ 0]]
	self.PrePurchase = PrePurchase --[[ @ 0]]
	
	local ReleaseDate = LUI.UIText.new( 0.5, 0.5, -822, -528, 1, 1, -990, -959 ) --[[ @ 0]]
	ReleaseDate:setRGB( 0.36, 0.36, 0.36 ) --[[ @ 0]]
	ReleaseDate:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_42CD01365C5A2E61" ) ) --[[ @ 0]]
	ReleaseDate:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	ReleaseDate:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( ReleaseDate ) --[[ @ 0]]
	self.ReleaseDate = ReleaseDate --[[ @ 0]]
	
	local ReleaseDate2 = LUI.UIText.new( 0.5, 0.5, -905.5, 905.5, 1, 1, -148, -131 ) --[[ @ 0]]
	ReleaseDate2:setAlpha( 0.15 ) --[[ @ 0]]
	ReleaseDate2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7F3200402A68058B" ) ) --[[ @ 0]]
	ReleaseDate2:setTTF( "dinnext_regular" ) --[[ @ 0]]
	ReleaseDate2:setLineSpacing( 2 ) --[[ @ 0]]
	ReleaseDate2:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ReleaseDate2:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( ReleaseDate2 ) --[[ @ 0]]
	self.ReleaseDate2 = ReleaseDate2 --[[ @ 0]]
	
	self:registerEventHandler( "close_all_ingame_menus", function ( self, event )
		local f2_local0 = nil --[[ @ 0]]
		CoD.PCUtility.ShortcutMenuGoBack( f1_local1, f1_arg0 ) --[[ @ 0]]
		if not f2_local0 then
			f2_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	FooterContainerFrontendRight:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		FooterContainerFrontendRight.id = "FooterContainerFrontendRight" --[[ @ 0]]
	end
	PCBnetStoreContainer.id = "PCBnetStoreContainer" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = FooterContainerFrontendRight --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local11 = self --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.PC_BnetStore.__onClose = function ( f5_arg0 )
	f5_arg0.PCBnetStoreKeyart:close() --[[ @ 0]]
	f5_arg0.DevsLogos:close() --[[ @ 0]]
	f5_arg0.FooterContainerFrontendRight:close() --[[ @ 0]]
	f5_arg0.PCBnetStoreContainer:close() --[[ @ 0]]
end
 --[[ @ 0]]
