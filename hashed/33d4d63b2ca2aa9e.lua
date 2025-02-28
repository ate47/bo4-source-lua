-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:f2d4920f28ccd3c" ) --[[ @ 0]]

CoD.WarzoneInventoryHintItems = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneInventoryHintItems.__defaultWidth = 100 --[[ @ 0]]
CoD.WarzoneInventoryHintItems.__defaultHeight = 100 --[[ @ 0]]
CoD.WarzoneInventoryHintItems.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneInventoryHintItems ) --[[ @ 0]]
	self.id = "WarzoneInventoryHintItems" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local backingImage = LUI.UIImage.new( 0.5, 0.5, -32, 32, 0.5, 0.5, -32, 32 ) --[[ @ 0]]
	backingImage:setRGB( 0.12, 0.12, 0.12 ) --[[ @ 0]]
	backingImage:setAlpha( 0 ) --[[ @ 0]]
	backingImage:subscribeToGlobalModel( f1_arg1, "Controller", "dpad_all_button_image", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			backingImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( backingImage ) --[[ @ 0]]
	self.backingImage = backingImage --[[ @ 0]]
	
	local backingImage2 = LUI.UIImage.new( 0.5, 0.5, -32, 32, 0.5, 0.5, -32, 32 ) --[[ @ 0]]
	backingImage2:setRGB( 0, 0, 0 ) --[[ @ 0]]
	backingImage2:setAlpha( 0.9 ) --[[ @ 0]]
	backingImage2:setImage( RegisterImage( @"uie_ui_hud_wz_hud_core_qe_dpad_backer" ) ) --[[ @ 0]]
	self:addElement( backingImage2 ) --[[ @ 0]]
	self.backingImage2 = backingImage2 --[[ @ 0]]
	
	local backingImage3 = LUI.UIImage.new( 0.5, 0.5, -32, 32, 0.5, 0.5, -32, 32 ) --[[ @ 0]]
	backingImage3:setRGB( 0.51, 0.51, 0.51 ) --[[ @ 0]]
	backingImage3:setImage( RegisterImage( @"uie_ui_hud_wz_hud_core_qe_dpad_down" ) ) --[[ @ 0]]
	self:addElement( backingImage3 ) --[[ @ 0]]
	self.backingImage3 = backingImage3 --[[ @ 0]]
	
	local upImage = CoD.WarzoneDpadButton.new( f1_arg0, f1_arg1, 0.5, 0.5, -32, 32, 0.5, 0.5, -32, 32 ) --[[ @ 0]]
	upImage:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				local f3_local0 --[[ @ 0]]
				if not CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "WarzoneInventory", "open" ) then
					f3_local0 = CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "WarzoneInventory", "canUseQuickInventory" ) --[[ @ 0]]
				else
					f3_local0 = false --[[ @ 0]]
				end
				return f3_local0
			end
		}
	} ) --[[ @ 0]]
	local leftImage = upImage --[[ @ 0]]
	local downImage = upImage.subscribeToModel --[[ @ 0]]
	local rightImage = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	downImage( leftImage, rightImage.open, function ( f4_arg0 )
		f1_arg0:updateElementState( upImage, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "open"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	leftImage = upImage --[[ @ 0]]
	downImage = upImage.subscribeToModel --[[ @ 0]]
	rightImage = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	downImage( leftImage, rightImage.canUseQuickInventory, function ( f5_arg0 )
		f1_arg0:updateElementState( upImage, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "canUseQuickInventory"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( upImage ) --[[ @ 0]]
	self.upImage = upImage --[[ @ 0]]
	
	downImage = CoD.WarzoneDpadButton.new( f1_arg0, f1_arg1, 0.5, 0.5, -32, 32, 0.5, 0.5, -32, 32 ) --[[ @ 0]]
	downImage:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "WarzoneInventory", "open" )
			end
		}
	} ) --[[ @ 0]]
	rightImage = downImage --[[ @ 0]]
	leftImage = downImage.subscribeToModel --[[ @ 0]]
	local EMPbacker = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	leftImage( rightImage, EMPbacker.open, function ( f7_arg0 )
		f1_arg0:updateElementState( downImage, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "open"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	downImage:setZRot( 180 ) --[[ @ 0]]
	self:addElement( downImage ) --[[ @ 0]]
	self.downImage = downImage --[[ @ 0]]
	
	leftImage = CoD.WarzoneDpadButton.new( f1_arg0, f1_arg1, 0.5, 0.5, -32, 32, 0.5, 0.5, -32, 32 ) --[[ @ 0]]
	leftImage:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "WarzoneInventory", "open" ) and CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "WarzoneInventory", "canNavigateLeft" )
			end
		},
		{
			stateName = "VisibleForCallout",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "WarzoneInventory", "open" )
			end
		}
	} ) --[[ @ 0]]
	EMPbacker = leftImage --[[ @ 0]]
	rightImage = leftImage.subscribeToModel --[[ @ 0]]
	local EMP = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	rightImage( EMPbacker, EMP.open, function ( f10_arg0 )
		f1_arg0:updateElementState( leftImage, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "open"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	EMPbacker = leftImage --[[ @ 0]]
	rightImage = leftImage.subscribeToModel --[[ @ 0]]
	EMP = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	rightImage( EMPbacker, EMP.canNavigateLeft, function ( f11_arg0 )
		f1_arg0:updateElementState( leftImage, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "canNavigateLeft"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	leftImage:setZRot( 90 ) --[[ @ 0]]
	self:addElement( leftImage ) --[[ @ 0]]
	self.leftImage = leftImage --[[ @ 0]]
	
	rightImage = CoD.WarzoneDpadButton.new( f1_arg0, f1_arg1, 0.5, 0.5, -32, 32, 0.5, 0.5, -32, 32 ) --[[ @ 0]]
	rightImage:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "WarzoneInventory", "open" ) and CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "WarzoneInventory", "canNavigateRight" )
			end
		},
		{
			stateName = "VisibleForCallout",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "WarzoneInventory", "open" )
			end
		}
	} ) --[[ @ 0]]
	EMP = rightImage --[[ @ 0]]
	EMPbacker = rightImage.subscribeToModel --[[ @ 0]]
	local f1_local10 = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	EMPbacker( EMP, f1_local10.open, function ( f14_arg0 )
		f1_arg0:updateElementState( rightImage, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f14_arg0:get(),
			modelName = "open"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	EMP = rightImage --[[ @ 0]]
	EMPbacker = rightImage.subscribeToModel --[[ @ 0]]
	f1_local10 = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	EMPbacker( EMP, f1_local10.canNavigateRight, function ( f15_arg0 )
		f1_arg0:updateElementState( rightImage, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
			modelName = "canNavigateRight"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	rightImage:setZRot( 270 ) --[[ @ 0]]
	self:addElement( rightImage ) --[[ @ 0]]
	self.rightImage = rightImage --[[ @ 0]]
	
	EMPbacker = LUI.UIImage.new( 0, 0, 6, 94, 0, 0, 8, 92 ) --[[ @ 0]]
	EMPbacker:setAlpha( 0 ) --[[ @ 0]]
	EMPbacker:setImage( RegisterImage( @"hash_60A7390618CBB74" ) ) --[[ @ 0]]
	self:addElement( EMPbacker ) --[[ @ 0]]
	self.EMPbacker = EMPbacker --[[ @ 0]]
	
	EMP = LUI.UIImage.new( 0, 0, 6, 94, 0, 0, 7, 91 ) --[[ @ 0]]
	EMP:setAlpha( 0 ) --[[ @ 0]]
	EMP:setImage( RegisterImage( @"hash_1B3436B57B647EA3" ) ) --[[ @ 0]]
	EMP:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_emp" ) ) --[[ @ 0]]
	EMP:setShaderVector( 0, 35.93, 0, 0, 0 ) --[[ @ 0]]
	EMP:setShaderVector( 1, 0.83, 0, 0, 0 ) --[[ @ 0]]
	EMP:setShaderVector( 2, 0.49, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( EMP ) --[[ @ 0]]
	self.EMP = EMP --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "TabbedMultiPickupActive",
			condition = function ( menu, element, event )
				local f16_local0 = CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToEnum( f1_arg1, "MultiItemPickup", "status", Enum[@"hash_163CDAE6010C493"][@"hash_5C9FADA56582F80F"] ) --[[ @ 0]]
				if f16_local0 then
					if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_scoreboard_open"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_spectating_client"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) then
						f16_local0 = IsIntDvarNonZero( "tabbedMultiItemPickup" ) --[[ @ 0]]
					else
						f16_local0 = false --[[ @ 0]]
					end
				end
				return f16_local0
			end
		},
		{
			stateName = "MultiPickupActive",
			condition = function ( menu, element, event )
				local f17_local0 = CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToEnum( f1_arg1, "MultiItemPickup", "status", Enum[@"hash_163CDAE6010C493"][@"hash_5C9FADA56582F80F"] ) --[[ @ 0]]
				if f17_local0 then
					if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_scoreboard_open"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_spectating_client"] ) then
						f17_local0 = not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) --[[ @ 0]]
					else
						f17_local0 = false --[[ @ 0]]
					end
				end
				return f17_local0
			end
		},
		{
			stateName = "EMP",
			condition = function ( menu, element, event )
				local f18_local0 --[[ @ 0]]
				if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"] ) and Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_emp_active"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_game_ended"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_hardcore"] ) and Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_visible"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_guided_missile"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_scoreboard_open"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_selecting_location"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) then
					f18_local0 = not CoD.CodCasterUtility.CodCasterEnabledAndProfileVarEqualTo( f1_arg1, "shoutcaster_ds_inventory", false ) --[[ @ 0]]
				else
					f18_local0 = false --[[ @ 0]]
				end
				return f18_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local11 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	local f1_local12 = DataSources.MultiItemPickup.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local11, f1_local12.status, function ( f19_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f19_arg0:get(),
			modelName = "status"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local11, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]], function ( f20_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f20_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local11, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_spectating_client"]], function ( f21_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f21_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_spectating_client"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local11, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]], function ( f22_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f22_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local11, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]], function ( f23_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f23_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local11, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]], function ( f24_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f24_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local11, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_emp_active"]], function ( f25_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f25_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_emp_active"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local11, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]], function ( f26_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f26_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local11, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_hardcore"]], function ( f27_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f27_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_hardcore"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local11, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_visible"]], function ( f28_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f28_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_visible"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local11, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_guided_missile"]], function ( f29_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f29_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_guided_missile"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local11, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f30_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f30_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local11, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"]], function ( f31_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f31_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local11, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_selecting_location"]], function ( f32_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f32_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_selecting_location"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local10 = self --[[ @ 0]]
	CoD.WZUtility.SetUpPlayClipOnCustomFunction( self, "DefaultClip", f1_arg1, "_cancelInventoryHints" ) --[[ @ 0]]
	CoD.WZUtility.SetUpPlayClipOnCustomFunction( self, "DefaultClip", f1_arg1, "_showInventoryHints" ) --[[ @ 0]]
	CoD.WZUtility.SetUpPlayClipOnCustomFunction( self, "ShowAndFadeOut", f1_arg1, "_showInventoryHints_NoEquip" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.WarzoneInventoryHintItems.__resetProperties = function ( f33_arg0 )
	f33_arg0.backingImage:completeAnimation() --[[ @ 0]]
	f33_arg0.rightImage:completeAnimation() --[[ @ 0]]
	f33_arg0.leftImage:completeAnimation() --[[ @ 0]]
	f33_arg0.downImage:completeAnimation() --[[ @ 0]]
	f33_arg0.upImage:completeAnimation() --[[ @ 0]]
	f33_arg0.backingImage2:completeAnimation() --[[ @ 0]]
	f33_arg0.backingImage3:completeAnimation() --[[ @ 0]]
	f33_arg0.EMP:completeAnimation() --[[ @ 0]]
	f33_arg0.EMPbacker:completeAnimation() --[[ @ 0]]
	f33_arg0.backingImage:setAlpha( 0 ) --[[ @ 0]]
	f33_arg0.rightImage:setAlpha( 1 ) --[[ @ 0]]
	f33_arg0.leftImage:setAlpha( 1 ) --[[ @ 0]]
	f33_arg0.downImage:setAlpha( 1 ) --[[ @ 0]]
	f33_arg0.upImage:setAlpha( 1 ) --[[ @ 0]]
	f33_arg0.backingImage2:setAlpha( 0.9 ) --[[ @ 0]]
	f33_arg0.backingImage3:setAlpha( 1 ) --[[ @ 0]]
	f33_arg0.EMP:setAlpha( 0 ) --[[ @ 0]]
	f33_arg0.EMPbacker:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneInventoryHintItems.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f34_arg0, f34_arg1 )
			f34_arg0:__resetProperties() --[[ @ 0]]
			f34_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f34_arg0.backingImage:completeAnimation() --[[ @ 0]]
			f34_arg0.backingImage:setAlpha( 1 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.backingImage ) --[[ @ 0]]
		end,
		ShowAndFadeOut = function ( f35_arg0, f35_arg1 )
			f35_arg0:__resetProperties() --[[ @ 0]]
			f35_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f35_local0 = function ( f36_arg0 )
				f35_arg0.backingImage:beginAnimation( 3500 ) --[[ @ 0]]
				f35_arg0.backingImage:setAlpha( 0 ) --[[ @ 0]]
				f35_arg0.backingImage:registerEventHandler( "interrupted_keyframe", f35_arg0.clipInterrupted ) --[[ @ 0]]
				f35_arg0.backingImage:registerEventHandler( "transition_complete_keyframe", f35_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f35_arg0.backingImage:completeAnimation() --[[ @ 0]]
			f35_arg0.backingImage:setAlpha( 1 ) --[[ @ 0]]
			f35_local0( f35_arg0.backingImage ) --[[ @ 0]]
			local f35_local1 = function ( f37_arg0 )
				f35_arg0.upImage:beginAnimation( 3500 ) --[[ @ 0]]
				f35_arg0.upImage:setAlpha( 0 ) --[[ @ 0]]
				f35_arg0.upImage:registerEventHandler( "interrupted_keyframe", f35_arg0.clipInterrupted ) --[[ @ 0]]
				f35_arg0.upImage:registerEventHandler( "transition_complete_keyframe", f35_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f35_arg0.upImage:completeAnimation() --[[ @ 0]]
			f35_arg0.upImage:setAlpha( 1 ) --[[ @ 0]]
			f35_local1( f35_arg0.upImage ) --[[ @ 0]]
			local f35_local2 = function ( f38_arg0 )
				f35_arg0.downImage:beginAnimation( 3500 ) --[[ @ 0]]
				f35_arg0.downImage:setAlpha( 0 ) --[[ @ 0]]
				f35_arg0.downImage:registerEventHandler( "interrupted_keyframe", f35_arg0.clipInterrupted ) --[[ @ 0]]
				f35_arg0.downImage:registerEventHandler( "transition_complete_keyframe", f35_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f35_arg0.downImage:completeAnimation() --[[ @ 0]]
			f35_arg0.downImage:setAlpha( 1 ) --[[ @ 0]]
			f35_local2( f35_arg0.downImage ) --[[ @ 0]]
			local f35_local3 = function ( f39_arg0 )
				f35_arg0.leftImage:beginAnimation( 3500 ) --[[ @ 0]]
				f35_arg0.leftImage:setAlpha( 0 ) --[[ @ 0]]
				f35_arg0.leftImage:registerEventHandler( "interrupted_keyframe", f35_arg0.clipInterrupted ) --[[ @ 0]]
				f35_arg0.leftImage:registerEventHandler( "transition_complete_keyframe", f35_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f35_arg0.leftImage:completeAnimation() --[[ @ 0]]
			f35_arg0.leftImage:setAlpha( 1 ) --[[ @ 0]]
			f35_local3( f35_arg0.leftImage ) --[[ @ 0]]
			local f35_local4 = function ( f40_arg0 )
				f35_arg0.rightImage:beginAnimation( 3500 ) --[[ @ 0]]
				f35_arg0.rightImage:setAlpha( 0 ) --[[ @ 0]]
				f35_arg0.rightImage:registerEventHandler( "interrupted_keyframe", f35_arg0.clipInterrupted ) --[[ @ 0]]
				f35_arg0.rightImage:registerEventHandler( "transition_complete_keyframe", f35_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f35_arg0.rightImage:completeAnimation() --[[ @ 0]]
			f35_arg0.rightImage:setAlpha( 0.91 ) --[[ @ 0]]
			f35_local4( f35_arg0.rightImage ) --[[ @ 0]]
		end,
		Hidden = function ( f41_arg0, f41_arg1 )
			f41_arg0:__resetProperties() --[[ @ 0]]
			f41_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f41_arg0.backingImage:completeAnimation() --[[ @ 0]]
			f41_arg0.backingImage:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.backingImage ) --[[ @ 0]]
			f41_arg0.upImage:completeAnimation() --[[ @ 0]]
			f41_arg0.upImage:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.upImage ) --[[ @ 0]]
			f41_arg0.downImage:completeAnimation() --[[ @ 0]]
			f41_arg0.downImage:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.downImage ) --[[ @ 0]]
			f41_arg0.leftImage:completeAnimation() --[[ @ 0]]
			f41_arg0.leftImage:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.leftImage ) --[[ @ 0]]
			f41_arg0.rightImage:completeAnimation() --[[ @ 0]]
			f41_arg0.rightImage:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.rightImage ) --[[ @ 0]]
		end
	},
	TabbedMultiPickupActive = {
		DefaultClip = function ( f42_arg0, f42_arg1 )
			f42_arg0:__resetProperties() --[[ @ 0]]
			f42_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f42_arg0.backingImage:completeAnimation() --[[ @ 0]]
			f42_arg0.backingImage:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.backingImage ) --[[ @ 0]]
			f42_arg0.backingImage2:completeAnimation() --[[ @ 0]]
			f42_arg0.backingImage2:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.backingImage2 ) --[[ @ 0]]
			f42_arg0.backingImage3:completeAnimation() --[[ @ 0]]
			f42_arg0.backingImage3:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.backingImage3 ) --[[ @ 0]]
			f42_arg0.upImage:completeAnimation() --[[ @ 0]]
			f42_arg0.upImage:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.upImage ) --[[ @ 0]]
			f42_arg0.downImage:completeAnimation() --[[ @ 0]]
			f42_arg0.downImage:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.downImage ) --[[ @ 0]]
			f42_arg0.leftImage:completeAnimation() --[[ @ 0]]
			f42_arg0.leftImage:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.leftImage ) --[[ @ 0]]
			f42_arg0.rightImage:completeAnimation() --[[ @ 0]]
			f42_arg0.rightImage:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.rightImage ) --[[ @ 0]]
		end
	},
	MultiPickupActive = {
		DefaultClip = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f43_arg0.backingImage:completeAnimation() --[[ @ 0]]
			f43_arg0.backingImage:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.backingImage ) --[[ @ 0]]
			f43_arg0.upImage:completeAnimation() --[[ @ 0]]
			f43_arg0.upImage:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.upImage ) --[[ @ 0]]
			f43_arg0.downImage:completeAnimation() --[[ @ 0]]
			f43_arg0.downImage:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.downImage ) --[[ @ 0]]
			f43_arg0.leftImage:completeAnimation() --[[ @ 0]]
			f43_arg0.leftImage:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.leftImage ) --[[ @ 0]]
			f43_arg0.rightImage:completeAnimation() --[[ @ 0]]
			f43_arg0.rightImage:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.rightImage ) --[[ @ 0]]
		end
	},
	EMP = {
		DefaultClip = function ( f44_arg0, f44_arg1 )
			f44_arg0:__resetProperties() --[[ @ 0]]
			f44_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f44_arg0.backingImage:completeAnimation() --[[ @ 0]]
			f44_arg0.backingImage:setAlpha( 1 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.backingImage ) --[[ @ 0]]
			f44_arg0.EMPbacker:completeAnimation() --[[ @ 0]]
			f44_arg0.EMPbacker:setAlpha( 1 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.EMPbacker ) --[[ @ 0]]
			f44_arg0.EMP:completeAnimation() --[[ @ 0]]
			f44_arg0.EMP:setAlpha( 1 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.EMP ) --[[ @ 0]]
		end,
		ShowAndFadeOut = function ( f45_arg0, f45_arg1 )
			f45_arg0:__resetProperties() --[[ @ 0]]
			f45_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f45_local0 = function ( f46_arg0 )
				f45_arg0.backingImage:beginAnimation( 3500 ) --[[ @ 0]]
				f45_arg0.backingImage:setAlpha( 0 ) --[[ @ 0]]
				f45_arg0.backingImage:registerEventHandler( "interrupted_keyframe", f45_arg0.clipInterrupted ) --[[ @ 0]]
				f45_arg0.backingImage:registerEventHandler( "transition_complete_keyframe", f45_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f45_arg0.backingImage:completeAnimation() --[[ @ 0]]
			f45_arg0.backingImage:setAlpha( 1 ) --[[ @ 0]]
			f45_local0( f45_arg0.backingImage ) --[[ @ 0]]
			local f45_local1 = function ( f47_arg0 )
				f45_arg0.upImage:beginAnimation( 3500 ) --[[ @ 0]]
				f45_arg0.upImage:setAlpha( 0 ) --[[ @ 0]]
				f45_arg0.upImage:registerEventHandler( "interrupted_keyframe", f45_arg0.clipInterrupted ) --[[ @ 0]]
				f45_arg0.upImage:registerEventHandler( "transition_complete_keyframe", f45_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f45_arg0.upImage:completeAnimation() --[[ @ 0]]
			f45_arg0.upImage:setAlpha( 1 ) --[[ @ 0]]
			f45_local1( f45_arg0.upImage ) --[[ @ 0]]
			local f45_local2 = function ( f48_arg0 )
				f45_arg0.downImage:beginAnimation( 3500 ) --[[ @ 0]]
				f45_arg0.downImage:setAlpha( 0 ) --[[ @ 0]]
				f45_arg0.downImage:registerEventHandler( "interrupted_keyframe", f45_arg0.clipInterrupted ) --[[ @ 0]]
				f45_arg0.downImage:registerEventHandler( "transition_complete_keyframe", f45_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f45_arg0.downImage:completeAnimation() --[[ @ 0]]
			f45_arg0.downImage:setAlpha( 1 ) --[[ @ 0]]
			f45_local2( f45_arg0.downImage ) --[[ @ 0]]
			local f45_local3 = function ( f49_arg0 )
				f45_arg0.leftImage:beginAnimation( 3500 ) --[[ @ 0]]
				f45_arg0.leftImage:setAlpha( 0 ) --[[ @ 0]]
				f45_arg0.leftImage:registerEventHandler( "interrupted_keyframe", f45_arg0.clipInterrupted ) --[[ @ 0]]
				f45_arg0.leftImage:registerEventHandler( "transition_complete_keyframe", f45_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f45_arg0.leftImage:completeAnimation() --[[ @ 0]]
			f45_arg0.leftImage:setAlpha( 1 ) --[[ @ 0]]
			f45_local3( f45_arg0.leftImage ) --[[ @ 0]]
			local f45_local4 = function ( f50_arg0 )
				f45_arg0.rightImage:beginAnimation( 3500 ) --[[ @ 0]]
				f45_arg0.rightImage:setAlpha( 0 ) --[[ @ 0]]
				f45_arg0.rightImage:registerEventHandler( "interrupted_keyframe", f45_arg0.clipInterrupted ) --[[ @ 0]]
				f45_arg0.rightImage:registerEventHandler( "transition_complete_keyframe", f45_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f45_arg0.rightImage:completeAnimation() --[[ @ 0]]
			f45_arg0.rightImage:setAlpha( 0.91 ) --[[ @ 0]]
			f45_local4( f45_arg0.rightImage ) --[[ @ 0]]
		end,
		Hidden = function ( f51_arg0, f51_arg1 )
			f51_arg0:__resetProperties() --[[ @ 0]]
			f51_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f51_arg0.backingImage:completeAnimation() --[[ @ 0]]
			f51_arg0.backingImage:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.backingImage ) --[[ @ 0]]
			f51_arg0.upImage:completeAnimation() --[[ @ 0]]
			f51_arg0.upImage:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.upImage ) --[[ @ 0]]
			f51_arg0.downImage:completeAnimation() --[[ @ 0]]
			f51_arg0.downImage:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.downImage ) --[[ @ 0]]
			f51_arg0.leftImage:completeAnimation() --[[ @ 0]]
			f51_arg0.leftImage:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.leftImage ) --[[ @ 0]]
			f51_arg0.rightImage:completeAnimation() --[[ @ 0]]
			f51_arg0.rightImage:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.rightImage ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WarzoneInventoryHintItems.__onClose = function ( f52_arg0 )
	f52_arg0.backingImage:close() --[[ @ 0]]
	f52_arg0.upImage:close() --[[ @ 0]]
	f52_arg0.downImage:close() --[[ @ 0]]
	f52_arg0.leftImage:close() --[[ @ 0]]
	f52_arg0.rightImage:close() --[[ @ 0]]
end
 --[[ @ 0]]
