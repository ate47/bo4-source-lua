-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]
require( "x64:4f02462d210e1771" ) --[[ @ 0]]
require( "x64:5d705ab885782def" ) --[[ @ 0]]

CoD.WarzoneSplitInventory_PC = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneSplitInventory_PC.__defaultWidth = 100 --[[ @ 0]]
CoD.WarzoneSplitInventory_PC.__defaultHeight = 100 --[[ @ 0]]
CoD.WarzoneSplitInventory_PC.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneSplitInventory_PC ) --[[ @ 0]]
	self.id = "WarzoneSplitInventory_PC" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Blur = LUI.UIImage.new( 0.5, 0.5, -52.5, 52.5, 0, 0, 20, 102 ) --[[ @ 0]]
	Blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	Blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Blur ) --[[ @ 0]]
	self.Blur = Blur --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0.5, 0.5, -52.5, 52.5, 0, 0, 20, 102 ) --[[ @ 0]]
	Background:setRGB( 0.04, 0.04, 0.04 ) --[[ @ 0]]
	Background:setAlpha( 0.96 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local CounterBackground = LUI.UIImage.new( 0.5, 0.5, -50, 50, 0, 0, 76, 99 ) --[[ @ 0]]
	CounterBackground:setRGB( 0.55, 0.54, 0.49 ) --[[ @ 0]]
	self:addElement( CounterBackground ) --[[ @ 0]]
	self.CounterBackground = CounterBackground --[[ @ 0]]
	
	local FocusBlocker = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0, 1, -20, 20, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( FocusBlocker ) --[[ @ 0]]
	self.FocusBlocker = FocusBlocker --[[ @ 0]]
	
	local TotalCount = LUI.UIText.new( 0.5, 0.5, 5.5, 30.5, 0, 0, 79, 100 ) --[[ @ 0]]
	TotalCount:setRGB( 0.04, 0.04, 0.04 ) --[[ @ 0]]
	TotalCount:setTTF( "dinnext_regular" ) --[[ @ 0]]
	TotalCount:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TotalCount:subscribeToGlobalModel( f1_arg1, "WarzoneSplitInventory", "max", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			TotalCount:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TotalCount ) --[[ @ 0]]
	self.TotalCount = TotalCount --[[ @ 0]]
	
	local Slash = LUI.UIText.new( 0.5, 0.5, -6.5, 6.5, 0, 0, 79, 100 ) --[[ @ 0]]
	Slash:setRGB( 0.04, 0.04, 0.04 ) --[[ @ 0]]
	Slash:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"mp/slash" ) ) --[[ @ 0]]
	Slash:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Slash:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Slash:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Slash ) --[[ @ 0]]
	self.Slash = Slash --[[ @ 0]]
	
	local DropCount = LUI.UIText.new( 0.5, 0.5, -30.5, -5.5, 0, 0, 79, 100 ) --[[ @ 0]]
	DropCount:setRGB( 0.04, 0.04, 0.04 ) --[[ @ 0]]
	DropCount:setTTF( "dinnext_regular" ) --[[ @ 0]]
	DropCount:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	DropCount:subscribeToGlobalModel( f1_arg1, "WarzoneSplitInventory", "current", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			DropCount:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( DropCount ) --[[ @ 0]]
	self.DropCount = DropCount --[[ @ 0]]
	
	local ApplyButton = CoD.WarzoneSplitInventory_PC_TextButton.new( f1_arg0, f1_arg1, 0, 0, -1, 101, 0, 0, 22, 48 ) --[[ @ 0]]
	ApplyButton.Label:setText( LocalizeToUpperString( @"hash_67D14DF1D6CBE990" ) ) --[[ @ 0]]
	ApplyButton:registerEventHandler( "gain_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f4_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f4_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ApplyButton, f1_arg1, Enum[@"luibutton"][@"lui_key_none"], "MOUSE1", function ( element, menu, controller, model )
		CoD.WZUtility.ApplyPCSplitterWidget( self, menu, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( ApplyButton ) --[[ @ 0]]
	self.ApplyButton = ApplyButton --[[ @ 0]]
	
	local AddButton = CoD.WarzoneSplitInventory_PC_ImageButton.new( f1_arg0, f1_arg1, 0, 0, 50, 100, 0, 0, 50, 74 ) --[[ @ 0]]
	AddButton:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "WarzoneSplitInventory", "canIncrement" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local10 = AddButton --[[ @ 0]]
	local RemoveButton = AddButton.subscribeToModel --[[ @ 0]]
	local f1_local12 = DataSources.WarzoneSplitInventory.getModel( f1_arg1 ) --[[ @ 0]]
	RemoveButton( f1_local10, f1_local12.canIncrement, function ( f8_arg0 )
		f1_arg0:updateElementState( AddButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "canIncrement"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	AddButton:registerEventHandler( "gain_focus", function ( element, event )
		local f9_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f9_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f9_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
		return f9_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( AddButton, f1_arg1, Enum[@"luibutton"][@"lui_key_none"], "MOUSE1", function ( element, menu, controller, model )
		CoD.WZUtility.IncrementSplitCount( controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( AddButton ) --[[ @ 0]]
	self.AddButton = AddButton --[[ @ 0]]
	
	RemoveButton = CoD.WarzoneSplitInventory_PC_ImageButton.new( f1_arg0, f1_arg1, 0, 0, 0, 50, 0, 0, 50, 74 ) --[[ @ 0]]
	RemoveButton:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "WarzoneSplitInventory", "canDecrement" )
			end
		}
	} ) --[[ @ 0]]
	f1_local12 = RemoveButton --[[ @ 0]]
	f1_local10 = RemoveButton.subscribeToModel --[[ @ 0]]
	local f1_local13 = DataSources.WarzoneSplitInventory.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local12, f1_local13.canDecrement, function ( f13_arg0 )
		f1_arg0:updateElementState( RemoveButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "canDecrement"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	RemoveButton.Image:setImage( RegisterImage( @"uie_ui_menu_common_remove_minus" ) ) --[[ @ 0]]
	RemoveButton.add:setImage( RegisterImage( @"uie_ui_menu_common_remove_minus" ) ) --[[ @ 0]]
	RemoveButton:registerEventHandler( "gain_focus", function ( element, event )
		local f14_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f14_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f14_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
		return f14_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( RemoveButton, f1_arg1, Enum[@"luibutton"][@"lui_key_none"], "MOUSE1", function ( element, menu, controller, model )
		CoD.WZUtility.DecrementSplitCount( controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( RemoveButton ) --[[ @ 0]]
	self.RemoveButton = RemoveButton --[[ @ 0]]
	
	f1_arg0:AddButtonCallbackFunction( self, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		CoD.WZUtility.ApplyPCSplitterWidget( self, menu, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( self, f1_arg1, Enum[@"luibutton"][@"lui_key_none"], "MOUSE1", function ( element, menu, controller, model )
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "WarzoneInventory", "isOpen", function ( model )
		local f21_local0 = self --[[ @ 0]]
		if not CoD.WZUtility.IsInventoryOpen( f1_arg1 ) then
			CoD.WZUtility.ClosePCSplitterWidget( self, f1_arg0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	FocusBlocker.id = "FocusBlocker" --[[ @ 0]]
	ApplyButton.id = "ApplyButton" --[[ @ 0]]
	AddButton.id = "AddButton" --[[ @ 0]]
	RemoveButton.id = "RemoveButton" --[[ @ 0]]
	self.__defaultFocus = ApplyButton --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local10 = self --[[ @ 0]]
	DisableKeyboardNavigationByElement( FocusBlocker ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.WarzoneSplitInventory_PC.__resetProperties = function ( f22_arg0 )
	f22_arg0.RemoveButton:completeAnimation() --[[ @ 0]]
	f22_arg0.AddButton:completeAnimation() --[[ @ 0]]
	f22_arg0.ApplyButton:completeAnimation() --[[ @ 0]]
	f22_arg0.DropCount:completeAnimation() --[[ @ 0]]
	f22_arg0.Slash:completeAnimation() --[[ @ 0]]
	f22_arg0.TotalCount:completeAnimation() --[[ @ 0]]
	f22_arg0.CounterBackground:completeAnimation() --[[ @ 0]]
	f22_arg0.FocusBlocker:completeAnimation() --[[ @ 0]]
	f22_arg0.Background:completeAnimation() --[[ @ 0]]
	f22_arg0.Blur:completeAnimation() --[[ @ 0]]
	f22_arg0.RemoveButton:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.AddButton:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.ApplyButton:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.DropCount:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.Slash:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.TotalCount:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.CounterBackground:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.FocusBlocker:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.Background:setAlpha( 0.96 ) --[[ @ 0]]
	f22_arg0.Blur:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneSplitInventory_PC.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 10 ) --[[ @ 0]]
			f23_arg0.Blur:completeAnimation() --[[ @ 0]]
			f23_arg0.Blur:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.Blur ) --[[ @ 0]]
			f23_arg0.Background:completeAnimation() --[[ @ 0]]
			f23_arg0.Background:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.Background ) --[[ @ 0]]
			f23_arg0.CounterBackground:completeAnimation() --[[ @ 0]]
			f23_arg0.CounterBackground:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.CounterBackground ) --[[ @ 0]]
			f23_arg0.FocusBlocker:completeAnimation() --[[ @ 0]]
			f23_arg0.FocusBlocker:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.FocusBlocker ) --[[ @ 0]]
			f23_arg0.TotalCount:completeAnimation() --[[ @ 0]]
			f23_arg0.TotalCount:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.TotalCount ) --[[ @ 0]]
			f23_arg0.Slash:completeAnimation() --[[ @ 0]]
			f23_arg0.Slash:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.Slash ) --[[ @ 0]]
			f23_arg0.DropCount:completeAnimation() --[[ @ 0]]
			f23_arg0.DropCount:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.DropCount ) --[[ @ 0]]
			f23_arg0.ApplyButton:completeAnimation() --[[ @ 0]]
			f23_arg0.ApplyButton:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.ApplyButton ) --[[ @ 0]]
			f23_arg0.AddButton:completeAnimation() --[[ @ 0]]
			f23_arg0.AddButton:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.AddButton ) --[[ @ 0]]
			f23_arg0.RemoveButton:completeAnimation() --[[ @ 0]]
			f23_arg0.RemoveButton:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.RemoveButton ) --[[ @ 0]]
		end
	},
	Open = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WarzoneSplitInventory_PC.__onClose = function ( f25_arg0 )
	f25_arg0.FocusBlocker:close() --[[ @ 0]]
	f25_arg0.TotalCount:close() --[[ @ 0]]
	f25_arg0.DropCount:close() --[[ @ 0]]
	f25_arg0.ApplyButton:close() --[[ @ 0]]
	f25_arg0.AddButton:close() --[[ @ 0]]
	f25_arg0.RemoveButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
