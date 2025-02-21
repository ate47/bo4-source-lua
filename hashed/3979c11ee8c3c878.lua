-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:7efd07550eb9e4e8" ) --[[ @ 0]]
require( "x64:6b157ebcd8b4adcc" ) --[[ @ 0]]
require( "x64:12d64ca9d3c705ce" ) --[[ @ 0]]
require( "x64:3fcfc38ff6366a17" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]
require( "x64:1c13cdf83d1e2b76" ) --[[ @ 0]]

CoD.PurchasedContractsMenuContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PurchasedContractsMenuContainer.__defaultWidth = 1920 --[[ @ 0]]
CoD.PurchasedContractsMenuContainer.__defaultHeight = 1080 --[[ @ 0]]
CoD.PurchasedContractsMenuContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PurchasedContractsMenuContainer ) --[[ @ 0]]
	self.id = "PurchasedContractsMenuContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0.5, 0.5, -658, 658, 0.5, 0.5, -302, 328 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.4 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local DottedLineTop = LUI.UIImage.new( 0.5, 0.5, -658, 658, 0, 0, 221, 225 ) --[[ @ 0]]
	DottedLineTop:setAlpha( 0.35 ) --[[ @ 0]]
	DottedLineTop:setImage( RegisterImage( @"uie_ui_menu_social_emblem_dotline_tiled" ) ) --[[ @ 0]]
	DottedLineTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	DottedLineTop:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DottedLineTop:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( DottedLineTop ) --[[ @ 0]]
	self.DottedLineTop = DottedLineTop --[[ @ 0]]
	
	local DottedLineBtm = LUI.UIImage.new( 0.5, 0.5, -658, 658, 0, 0, 881, 885 ) --[[ @ 0]]
	DottedLineBtm:setAlpha( 0.35 ) --[[ @ 0]]
	DottedLineBtm:setImage( RegisterImage( @"uie_ui_menu_social_emblem_dotline_tiled" ) ) --[[ @ 0]]
	DottedLineBtm:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	DottedLineBtm:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DottedLineBtm:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( DottedLineBtm ) --[[ @ 0]]
	self.DottedLineBtm = DottedLineBtm --[[ @ 0]]
	
	local EmptySlots = CoD.PurchasedContractsEmptySlots.new( f1_arg0, f1_arg1, 0, 0, 316, 1604, 0, 0, 252.5, 853.5 ) --[[ @ 0]]
	self:addElement( EmptySlots ) --[[ @ 0]]
	self.EmptySlots = EmptySlots --[[ @ 0]]
	
	local FramingCornerBrackets = CoD.CommonCornerBrackets01.new( f1_arg0, f1_arg1, 0.5, 0.5, -690.5, 690.5, 0.5, 0.5, -334.5, 360.5 ) --[[ @ 0]]
	FramingCornerBrackets:setAlpha( 0.1 ) --[[ @ 0]]
	self:addElement( FramingCornerBrackets ) --[[ @ 0]]
	self.FramingCornerBrackets = FramingCornerBrackets --[[ @ 0]]
	
	local NoContractsString = LUI.UIText.new( 0.5, 0.5, -300, 300, 0.5, 0.5, -1, 27 ) --[[ @ 0]]
	NoContractsString:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	NoContractsString:setAlpha( 0 ) --[[ @ 0]]
	NoContractsString:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	NoContractsString:setLetterSpacing( 4 ) --[[ @ 0]]
	NoContractsString:setLineSpacing( 9 ) --[[ @ 0]]
	NoContractsString:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	NoContractsString:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	NoContractsString:setBackingType( 1 ) --[[ @ 0]]
	NoContractsString:setBackingWidget( CoD.StoreCommonTextBacking02, f1_arg0, f1_arg1 ) --[[ @ 0]]
	NoContractsString:setBackingXPadding( 30 ) --[[ @ 0]]
	NoContractsString:setBackingYPadding( 5 ) --[[ @ 0]]
	NoContractsString._backingElement.TiledShaderImage:setAlpha( 0.25 ) --[[ @ 0]]
	NoContractsString._backingElement.CommonCornerPips:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( NoContractsString ) --[[ @ 0]]
	self.NoContractsString = NoContractsString --[[ @ 0]]
	
	local ContractList = LUI.UIList.new( f1_arg0, f1_arg1, 17, 0, nil, false, false, false, false ) --[[ @ 0]]
	ContractList:setLeftRight( 0, 0, 316, 1604 ) --[[ @ 0]]
	ContractList:setTopBottom( 0, 0, 253, 854 ) --[[ @ 0]]
	ContractList:setWidgetType( CoD.ContractItem ) --[[ @ 0]]
	ContractList:setHorizontalCount( 3 ) --[[ @ 0]]
	ContractList:setVerticalCount( 3 ) --[[ @ 0]]
	ContractList:setSpacing( 17 ) --[[ @ 0]]
	ContractList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ContractList:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	ContractList:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ContractList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if not IsMenuInState( menu, "NoContracts" ) then
			CoD.ContractUtility.OpenContractDetails( self, element, controller ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsMenuInState( menu, "NoContracts" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( ContractList ) --[[ @ 0]]
	self.ContractList = ContractList --[[ @ 0]]
	
	local SafeAreaTabs = CoD.Challenges_SafeAreaWidget.new( f1_arg0, f1_arg1, 0, 0, 0, 1920, 0, 0, 0, 1080 ) --[[ @ 0]]
	SafeAreaTabs.FETabBar.Tabs.grid:setHorizontalCount( 2 ) --[[ @ 0]]
	SafeAreaTabs.FETabBar.Tabs.grid:setDataSource( "PurchasedContractsTabs" ) --[[ @ 0]]
	SafeAreaTabs:registerEventHandler( "list_active_changed", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		CoD.ChallengesUtility.UpdateCardListFromTabChanged( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	self:addElement( SafeAreaTabs ) --[[ @ 0]]
	self.SafeAreaTabs = SafeAreaTabs --[[ @ 0]]
	
	NoContractsString:linkToElementModel( SafeAreaTabs.FETabBar.Tabs.grid, "noContractsString", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			NoContractsString:setText( LocalizeToUpperString( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ContractList:linkToElementModel( SafeAreaTabs.FETabBar.Tabs.grid, "contractsListDatasource", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			ContractList:setDataSource( f7_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "NoContracts",
			condition = function ( menu, element, event )
				return not ListElementHasElements( self.ContractList )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "grid_updated", function ( f9_arg0, f9_arg1 )
		f9_arg1.menu = f9_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f9_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ContractList.id = "ContractList" --[[ @ 0]]
	SafeAreaTabs.id = "SafeAreaTabs" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local9 = self --[[ @ 0]]
	SizeToSafeArea( SafeAreaTabs, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.PurchasedContractsMenuContainer.__resetProperties = function ( f10_arg0 )
	f10_arg0.NoContractsString:completeAnimation() --[[ @ 0]]
	f10_arg0.ContractList:completeAnimation() --[[ @ 0]]
	f10_arg0.EmptySlots:completeAnimation() --[[ @ 0]]
	f10_arg0.NoContractsString:setTopBottom( 0.5, 0.5, -1, 27 ) --[[ @ 0]]
	f10_arg0.NoContractsString:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.ContractList:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.EmptySlots:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PurchasedContractsMenuContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	NoContracts = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f12_arg0.EmptySlots:completeAnimation() --[[ @ 0]]
			f12_arg0.EmptySlots:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.EmptySlots ) --[[ @ 0]]
			f12_arg0.NoContractsString:completeAnimation() --[[ @ 0]]
			f12_arg0.NoContractsString:setTopBottom( 0.5, 0.5, -1, 27 ) --[[ @ 0]]
			f12_arg0.NoContractsString:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.NoContractsString ) --[[ @ 0]]
			f12_arg0.ContractList:completeAnimation() --[[ @ 0]]
			f12_arg0.ContractList:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.ContractList ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PurchasedContractsMenuContainer.__onClose = function ( f13_arg0 )
	f13_arg0.NoContractsString:close() --[[ @ 0]]
	f13_arg0.ContractList:close() --[[ @ 0]]
	f13_arg0.EmptySlots:close() --[[ @ 0]]
	f13_arg0.FramingCornerBrackets:close() --[[ @ 0]]
	f13_arg0.SafeAreaTabs:close() --[[ @ 0]]
end
 --[[ @ 0]]
