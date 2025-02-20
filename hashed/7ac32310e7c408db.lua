-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:4637063c9f34e6f3" ) --[[ @ 0]]
require( "x64:5eda3c59d915dd99" ) --[[ @ 0]]
require( "x64:1fd8754c012d4e07" ) --[[ @ 0]]

CoD.ScoreboardMapKeyWZ = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreboardMapKeyWZ.__defaultWidth = 271 --[[ @ 0]]
CoD.ScoreboardMapKeyWZ.__defaultHeight = 254 --[[ @ 0]]
CoD.ScoreboardMapKeyWZ.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScoreboardMapKeyWZ ) --[[ @ 0]]
	self.id = "ScoreboardMapKeyWZ" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local gameInfoBacking = LUI.UIImage.new( 1, 1, -313, -42, 1, 1, -354, -59 ) --[[ @ 0]]
	gameInfoBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	gameInfoBacking:setAlpha( 0.4 ) --[[ @ 0]]
	self:addElement( gameInfoBacking ) --[[ @ 0]]
	self.gameInfoBacking = gameInfoBacking --[[ @ 0]]
	
	local gameInfoBackingTint = LUI.UIImage.new( 1, 1, -313, -42, 1, 1, -354, -59 ) --[[ @ 0]]
	gameInfoBackingTint:setRGB( 0, 0, 0 ) --[[ @ 0]]
	gameInfoBackingTint:setAlpha( 0.8 ) --[[ @ 0]]
	gameInfoBackingTint:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	gameInfoBackingTint:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( gameInfoBackingTint ) --[[ @ 0]]
	self.gameInfoBackingTint = gameInfoBackingTint --[[ @ 0]]
	
	local MoveMarker = CoD.WarzoneMapKeyItemWithMarker.new( f1_arg0, f1_arg1, 1, 1, -298, -42, 1, 1, -346, -306 ) --[[ @ 0]]
	MoveMarker:mergeStateConditions( {
		{
			stateName = "NotAvailablePC",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and AlwaysFalse()
			end
		},
		{
			stateName = "NotAvailable",
			condition = function ( menu, element, event )
				local f3_local0 --[[ @ 0]]
				if not IsMouseOrKeyboard( f1_arg1 ) then
					f3_local0 = AlwaysFalse() --[[ @ 0]]
				else
					f3_local0 = false --[[ @ 0]]
				end
				return f3_local0
			end
		}
	} ) --[[ @ 0]]
	MoveMarker:appendEventHandler( "input_source_changed", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( MoveMarker, f4_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local Drag = MoveMarker --[[ @ 0]]
	local BringCursor = MoveMarker.subscribeToModel --[[ @ 0]]
	local ZoomOut = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	BringCursor( Drag, ZoomOut.LastInput, function ( f5_arg0 )
		f1_arg0:updateElementState( MoveMarker, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	MoveMarker.Action:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_784898F9A62F37B4" ) ) --[[ @ 0]]
	MoveMarker:subscribeToGlobalModel( f1_arg1, "Controller", "move_right_stick_button_image", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			MoveMarker.Image:setImage( RegisterImage( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MoveMarker ) --[[ @ 0]]
	self.MoveMarker = MoveMarker --[[ @ 0]]
	
	BringCursor = nil --[[ @ 0]]
	
	BringCursor = CoD.WarzoneMapKeyItem.new( f1_arg0, f1_arg1, 1, 1, -314, -58, 1, 1, -340, -300 ) --[[ @ 0]]
	BringCursor:mergeStateConditions( {
		{
			stateName = "Available",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "NotAvailablePC",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	BringCursor:appendEventHandler( "input_source_changed", function ( f9_arg0, f9_arg1 )
		f9_arg1.menu = f9_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( BringCursor, f9_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ZoomOut = BringCursor --[[ @ 0]]
	Drag = BringCursor.subscribeToModel --[[ @ 0]]
	local ZoomIn = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	Drag( ZoomOut, ZoomIn.LastInput, function ( f10_arg0 )
		f1_arg0:updateElementState( BringCursor, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	BringCursor:setAlpha( 0 ) --[[ @ 0]]
	BringCursor.ControllerDependentTextBox.KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7179672091387CD6" ) ) --[[ @ 0]]
	BringCursor.Action:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5E2C616EB9F5BBF6" ) ) --[[ @ 0]]
	BringCursor:subscribeToGlobalModel( f1_arg1, "Controller", "left_stick_button_image", function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			BringCursor.Image:setImage( RegisterImage( f11_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BringCursor ) --[[ @ 0]]
	self.BringCursor = BringCursor --[[ @ 0]]
	
	Drag = nil --[[ @ 0]]
	
	Drag = CoD.WarzoneMapKeyItem.new( f1_arg0, f1_arg1, 1, 1, -314, -58, 1, 1, -152, -112 ) --[[ @ 0]]
	Drag:mergeStateConditions( {
		{
			stateName = "Available",
			condition = function ( menu, element, event )
				local f12_local0 --[[ @ 0]]
				if not IsMouseOrKeyboard( f1_arg1 ) then
					f12_local0 = CoD.ModelUtility.IsGlobalDataSourceModelValueGreaterThan( f1_arg1, "WarzonePerController", "mapZoom", CoD.WZUtility.ZoomRange.MAP_ZOOM_MIN ) --[[ @ 0]]
				else
					f12_local0 = false --[[ @ 0]]
				end
				return f12_local0
			end
		},
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and CoD.ModelUtility.IsGlobalDataSourceModelValueGreaterThan( f1_arg1, "WarzonePerController", "mapZoom", CoD.WZUtility.ZoomRange.MAP_ZOOM_MIN )
			end
		}
	} ) --[[ @ 0]]
	Drag:appendEventHandler( "input_source_changed", function ( f14_arg0, f14_arg1 )
		f14_arg1.menu = f14_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( Drag, f14_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ZoomIn = Drag --[[ @ 0]]
	ZoomOut = Drag.subscribeToModel --[[ @ 0]]
	local PlaceWaypoint = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	ZoomOut( ZoomIn, PlaceWaypoint.LastInput, function ( f15_arg0 )
		f1_arg0:updateElementState( Drag, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ZoomIn = Drag --[[ @ 0]]
	ZoomOut = Drag.subscribeToModel --[[ @ 0]]
	PlaceWaypoint = DataSources.WarzonePerController.getModel( f1_arg1 ) --[[ @ 0]]
	ZoomOut( ZoomIn, PlaceWaypoint.mapZoom, function ( f16_arg0 )
		f1_arg0:updateElementState( Drag, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f16_arg0:get(),
			modelName = "mapZoom"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Drag:setAlpha( 0 ) --[[ @ 0]]
	Drag.ControllerDependentTextBox.KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7179672091387CD6" ) ) --[[ @ 0]]
	Drag.Action:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2FDAFCBF8344BA2A" ) ) --[[ @ 0]]
	Drag:subscribeToGlobalModel( f1_arg1, "Controller", "left_trigger_button_image", function ( model )
		local f17_local0 = model:get() --[[ @ 0]]
		if f17_local0 ~= nil then
			Drag.Image:setImage( RegisterImage( f17_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Drag ) --[[ @ 0]]
	self.Drag = Drag --[[ @ 0]]
	
	ZoomOut = CoD.WarzoneMapKeyItem.new( f1_arg0, f1_arg1, 1, 1, -298, -42, 1, 1, -262, -222 ) --[[ @ 0]]
	ZoomOut:mergeStateConditions( {
		{
			stateName = "Available",
			condition = function ( menu, element, event )
				local f18_local0 --[[ @ 0]]
				if not IsMouseOrKeyboard( f1_arg1 ) then
					f18_local0 = CoD.ModelUtility.IsGlobalDataSourceModelValueGreaterThan( f1_arg1, "WarzonePerController", "mapZoom", CoD.WZUtility.ZoomRange.MAP_ZOOM_MIN ) --[[ @ 0]]
				else
					f18_local0 = false --[[ @ 0]]
				end
				return f18_local0
			end
		},
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and CoD.ModelUtility.IsGlobalDataSourceModelValueGreaterThan( f1_arg1, "WarzonePerController", "mapZoom", CoD.WZUtility.ZoomRange.MAP_ZOOM_MIN )
			end
		}
	} ) --[[ @ 0]]
	ZoomOut:appendEventHandler( "input_source_changed", function ( f20_arg0, f20_arg1 )
		f20_arg1.menu = f20_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( ZoomOut, f20_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	PlaceWaypoint = ZoomOut --[[ @ 0]]
	ZoomIn = ZoomOut.subscribeToModel --[[ @ 0]]
	local DeleteWaypoint = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	ZoomIn( PlaceWaypoint, DeleteWaypoint.LastInput, function ( f21_arg0 )
		f1_arg0:updateElementState( ZoomOut, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f21_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PlaceWaypoint = ZoomOut --[[ @ 0]]
	ZoomIn = ZoomOut.subscribeToModel --[[ @ 0]]
	DeleteWaypoint = DataSources.WarzonePerController.getModel( f1_arg1 ) --[[ @ 0]]
	ZoomIn( PlaceWaypoint, DeleteWaypoint.mapZoom, function ( f22_arg0 )
		f1_arg0:updateElementState( ZoomOut, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f22_arg0:get(),
			modelName = "mapZoom"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ZoomOut.ControllerDependentTextBox.KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7F802FE61568E12F" ) ) --[[ @ 0]]
	ZoomOut.Action:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_49D22E69EC9D8FA8" ) ) --[[ @ 0]]
	ZoomOut:subscribeToGlobalModel( f1_arg1, "Controller", "left_trigger_button_image", function ( model )
		local f23_local0 = model:get() --[[ @ 0]]
		if f23_local0 ~= nil then
			ZoomOut.Image:setImage( RegisterImage( f23_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ZoomOut ) --[[ @ 0]]
	self.ZoomOut = ZoomOut --[[ @ 0]]
	
	ZoomIn = CoD.WarzoneMapKeyItem.new( f1_arg0, f1_arg1, 1, 1, -298, -42, 1, 1, -302, -262 ) --[[ @ 0]]
	ZoomIn:mergeStateConditions( {
		{
			stateName = "Available",
			condition = function ( menu, element, event )
				local f24_local0 --[[ @ 0]]
				if not IsMouseOrKeyboard( f1_arg1 ) then
					f24_local0 = CoD.ModelUtility.IsGlobalDataSourceModelValueLessThan( f1_arg1, "WarzonePerController", "mapZoom", CoD.WZUtility.ZoomRange.MAP_ZOOM_MAX ) --[[ @ 0]]
				else
					f24_local0 = false --[[ @ 0]]
				end
				return f24_local0
			end
		},
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and CoD.ModelUtility.IsGlobalDataSourceModelValueLessThan( f1_arg1, "WarzonePerController", "mapZoom", CoD.WZUtility.ZoomRange.MAP_ZOOM_MAX )
			end
		}
	} ) --[[ @ 0]]
	ZoomIn:appendEventHandler( "input_source_changed", function ( f26_arg0, f26_arg1 )
		f26_arg1.menu = f26_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( ZoomIn, f26_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DeleteWaypoint = ZoomIn --[[ @ 0]]
	PlaceWaypoint = ZoomIn.subscribeToModel --[[ @ 0]]
	local CloseMap = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	PlaceWaypoint( DeleteWaypoint, CloseMap.LastInput, function ( f27_arg0 )
		f1_arg0:updateElementState( ZoomIn, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f27_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DeleteWaypoint = ZoomIn --[[ @ 0]]
	PlaceWaypoint = ZoomIn.subscribeToModel --[[ @ 0]]
	CloseMap = DataSources.WarzonePerController.getModel( f1_arg1 ) --[[ @ 0]]
	PlaceWaypoint( DeleteWaypoint, CloseMap.mapZoom, function ( f28_arg0 )
		f1_arg0:updateElementState( ZoomIn, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f28_arg0:get(),
			modelName = "mapZoom"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ZoomIn.ControllerDependentTextBox.KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_76B0AA0A6A3C2DC6" ) ) --[[ @ 0]]
	ZoomIn.Action:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5270755047C71A5B" ) ) --[[ @ 0]]
	ZoomIn:subscribeToGlobalModel( f1_arg1, "Controller", "right_trigger_button_image", function ( model )
		local f29_local0 = model:get() --[[ @ 0]]
		if f29_local0 ~= nil then
			ZoomIn.Image:setImage( RegisterImage( f29_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ZoomIn ) --[[ @ 0]]
	self.ZoomIn = ZoomIn --[[ @ 0]]
	
	PlaceWaypoint = CoD.WarzoneMapKeyItem.new( f1_arg0, f1_arg1, 1, 1, -298, -42, 1, 1, -221.5, -181.5 ) --[[ @ 0]]
	PlaceWaypoint:mergeStateConditions( {
		{
			stateName = "Available",
			condition = function ( menu, element, event )
				local f30_local0 --[[ @ 0]]
				if not IsMouseOrKeyboard( f1_arg1 ) and not CoD.WZUtility.IsControllerDeadAndNotRespawning( f1_arg1 ) and not CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "hudItems.waypointStatus", CoD.WZUtility.WaypointStatus.POST_PLACEMENT_DELAY ) then
					f30_local0 = not CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "hudItems.waypointStatus", CoD.WZUtility.WaypointStatus.POST_DELETION_DELAY ) --[[ @ 0]]
				else
					f30_local0 = false --[[ @ 0]]
				end
				return f30_local0
			end
		},
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				local f31_local0 = IsMouseOrKeyboard( f1_arg1 ) --[[ @ 0]]
				if f31_local0 then
					if not CoD.WZUtility.IsControllerDeadAndNotRespawning( f1_arg1 ) and not CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "hudItems.waypointStatus", CoD.WZUtility.WaypointStatus.POST_PLACEMENT_DELAY ) then
						f31_local0 = not CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "hudItems.waypointStatus", CoD.WZUtility.WaypointStatus.POST_DELETION_DELAY ) --[[ @ 0]]
					else
						f31_local0 = false --[[ @ 0]]
					end
				end
				return f31_local0
			end
		}
	} ) --[[ @ 0]]
	PlaceWaypoint:appendEventHandler( "input_source_changed", function ( f32_arg0, f32_arg1 )
		f32_arg1.menu = f32_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( PlaceWaypoint, f32_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CloseMap = PlaceWaypoint --[[ @ 0]]
	DeleteWaypoint = PlaceWaypoint.subscribeToModel --[[ @ 0]]
	local CenterCursor = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	DeleteWaypoint( CloseMap, CenterCursor.LastInput, function ( f33_arg0 )
		f1_arg0:updateElementState( PlaceWaypoint, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f33_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PlaceWaypoint:appendEventHandler( "deadSpectator.playerIndex", function ( f34_arg0, f34_arg1 )
		f34_arg1.menu = f34_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( PlaceWaypoint, f34_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CloseMap = PlaceWaypoint --[[ @ 0]]
	DeleteWaypoint = PlaceWaypoint.subscribeToModel --[[ @ 0]]
	CenterCursor = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	DeleteWaypoint( CloseMap, CenterCursor["hudItems.waypointStatus"], function ( f35_arg0 )
		f1_arg0:updateElementState( PlaceWaypoint, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f35_arg0:get(),
			modelName = "hudItems.waypointStatus"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PlaceWaypoint.ControllerDependentTextBox.KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7179662091387B23" ) ) --[[ @ 0]]
	PlaceWaypoint.Action:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_76C43AD61EB5EC33" ) ) --[[ @ 0]]
	PlaceWaypoint:subscribeToGlobalModel( f1_arg1, "Controller", "right_shoulder_button_image", function ( model )
		local f36_local0 = model:get() --[[ @ 0]]
		if f36_local0 ~= nil then
			PlaceWaypoint.Image:setImage( RegisterImage( f36_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PlaceWaypoint ) --[[ @ 0]]
	self.PlaceWaypoint = PlaceWaypoint --[[ @ 0]]
	
	DeleteWaypoint = CoD.WarzoneMapKeyItem.new( f1_arg0, f1_arg1, 1, 1, -298, -42, 1, 1, -181, -141 ) --[[ @ 0]]
	DeleteWaypoint:mergeStateConditions( {
		{
			stateName = "Available",
			condition = function ( menu, element, event )
				local f37_local0 --[[ @ 0]]
				if not IsMouseOrKeyboard( f1_arg1 ) then
					f37_local0 = CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "hudItems.waypointStatus", CoD.WZUtility.WaypointStatus.ALLOW_DELETION ) --[[ @ 0]]
					if f37_local0 then
						f37_local0 = not CoD.WZUtility.IsControllerDeadAndNotRespawning( f1_arg1 ) --[[ @ 0]]
					end
				else
					f37_local0 = false --[[ @ 0]]
				end
				return f37_local0
			end
		},
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				local f38_local0 = IsMouseOrKeyboard( f1_arg1 ) --[[ @ 0]]
				if f38_local0 then
					f38_local0 = CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "hudItems.waypointStatus", CoD.WZUtility.WaypointStatus.ALLOW_DELETION ) --[[ @ 0]]
					if f38_local0 then
						f38_local0 = not CoD.WZUtility.IsControllerDeadAndNotRespawning( f1_arg1 ) --[[ @ 0]]
					end
				end
				return f38_local0
			end
		}
	} ) --[[ @ 0]]
	DeleteWaypoint:appendEventHandler( "input_source_changed", function ( f39_arg0, f39_arg1 )
		f39_arg1.menu = f39_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( DeleteWaypoint, f39_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CenterCursor = DeleteWaypoint --[[ @ 0]]
	CloseMap = DeleteWaypoint.subscribeToModel --[[ @ 0]]
	local frame = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	CloseMap( CenterCursor, frame.LastInput, function ( f40_arg0 )
		f1_arg0:updateElementState( DeleteWaypoint, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f40_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CenterCursor = DeleteWaypoint --[[ @ 0]]
	CloseMap = DeleteWaypoint.subscribeToModel --[[ @ 0]]
	frame = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	CloseMap( CenterCursor, frame["hudItems.waypointStatus"], function ( f41_arg0 )
		f1_arg0:updateElementState( DeleteWaypoint, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f41_arg0:get(),
			modelName = "hudItems.waypointStatus"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DeleteWaypoint:appendEventHandler( "deadSpectator.playerIndex", function ( f42_arg0, f42_arg1 )
		f42_arg1.menu = f42_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( DeleteWaypoint, f42_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DeleteWaypoint.ControllerDependentTextBox.KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7179682091387E89" ) ) --[[ @ 0]]
	DeleteWaypoint.Action:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_47C293686973A52B" ) ) --[[ @ 0]]
	DeleteWaypoint:subscribeToGlobalModel( f1_arg1, "Controller", "left_shoulder_button_image", function ( model )
		local f43_local0 = model:get() --[[ @ 0]]
		if f43_local0 ~= nil then
			DeleteWaypoint.Image:setImage( RegisterImage( f43_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( DeleteWaypoint ) --[[ @ 0]]
	self.DeleteWaypoint = DeleteWaypoint --[[ @ 0]]
	
	CloseMap = CoD.WarzoneMapKeyItem.new( f1_arg0, f1_arg1, 1, 1, -298, -42, 1, 1, -100, -60 ) --[[ @ 0]]
	CloseMap:mergeStateConditions( {
		{
			stateName = "NotAvailablePC",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	CloseMap:appendEventHandler( "input_source_changed", function ( f45_arg0, f45_arg1 )
		f45_arg1.menu = f45_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( CloseMap, f45_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	frame = CloseMap --[[ @ 0]]
	CenterCursor = CloseMap.subscribeToModel --[[ @ 0]]
	local HeaderBacking = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	CenterCursor( frame, HeaderBacking.LastInput, function ( f46_arg0 )
		f1_arg0:updateElementState( CloseMap, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f46_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CloseMap.Action:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_34D31C3720790EA5" ) ) --[[ @ 0]]
	CloseMap:subscribeToGlobalModel( f1_arg1, "Controller", "secondary_button_image", function ( model )
		local f47_local0 = model:get() --[[ @ 0]]
		if f47_local0 ~= nil then
			CloseMap.Image:setImage( RegisterImage( f47_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CloseMap ) --[[ @ 0]]
	self.CloseMap = CloseMap --[[ @ 0]]
	
	CenterCursor = CoD.WarzoneMapKeyItemWithPlayerIcon.new( f1_arg0, f1_arg1, 1, 1, -298, -42, 1, 1, -141, -101 ) --[[ @ 0]]
	CenterCursor:mergeStateConditions( {
		{
			stateName = "NotAvailablePC",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and AlwaysFalse()
			end
		},
		{
			stateName = "NotAvailable",
			condition = function ( menu, element, event )
				local f49_local0 --[[ @ 0]]
				if not IsMouseOrKeyboard( f1_arg1 ) then
					f49_local0 = AlwaysFalse() --[[ @ 0]]
				else
					f49_local0 = false --[[ @ 0]]
				end
				return f49_local0
			end
		}
	} ) --[[ @ 0]]
	CenterCursor:appendEventHandler( "input_source_changed", function ( f50_arg0, f50_arg1 )
		f50_arg1.menu = f50_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( CenterCursor, f50_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	HeaderBacking = CenterCursor --[[ @ 0]]
	frame = CenterCursor.subscribeToModel --[[ @ 0]]
	local RepeatDotline01 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	frame( HeaderBacking, RepeatDotline01.LastInput, function ( f51_arg0 )
		f1_arg0:updateElementState( CenterCursor, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f51_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CenterCursor.Action:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4E8D860773E7F262" ) ) --[[ @ 0]]
	CenterCursor:subscribeToGlobalModel( f1_arg1, "Controller", "left_stick_button_image", function ( model )
		local f52_local0 = model:get() --[[ @ 0]]
		if f52_local0 ~= nil then
			CenterCursor.Image:setImage( RegisterImage( f52_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CenterCursor ) --[[ @ 0]]
	self.CenterCursor = CenterCursor --[[ @ 0]]
	
	frame = LUI.UIImage.new( 1, 1, -318, -38, 1, 1, -374, -54 ) --[[ @ 0]]
	frame:setImage( RegisterImage( @"hash_33D54BC53A40189A" ) ) --[[ @ 0]]
	frame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	frame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	frame:setupNineSliceShader( 16, 16 ) --[[ @ 0]]
	self:addElement( frame ) --[[ @ 0]]
	self.frame = frame --[[ @ 0]]
	
	HeaderBacking = LUI.UIImage.new( 1, 1, -313, -42, 1, 1, -370, -350 ) --[[ @ 0]]
	HeaderBacking:setRGB( 0.07, 0.06, 0.06 ) --[[ @ 0]]
	self:addElement( HeaderBacking ) --[[ @ 0]]
	self.HeaderBacking = HeaderBacking --[[ @ 0]]
	
	RepeatDotline01 = LUI.UIImage.new( 1, 1, -313, -42, 1, 1, -304, -300 ) --[[ @ 0]]
	RepeatDotline01:setAlpha( 0.2 ) --[[ @ 0]]
	RepeatDotline01:setImage( RegisterImage( @"hash_6F5E8F1B8586D9C5" ) ) --[[ @ 0]]
	RepeatDotline01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	RepeatDotline01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	RepeatDotline01:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( RepeatDotline01 ) --[[ @ 0]]
	self.RepeatDotline01 = RepeatDotline01 --[[ @ 0]]
	
	local RepeatDotline02 = LUI.UIImage.new( 1, 1, -313, -42, 1, 1, -263, -259 ) --[[ @ 0]]
	RepeatDotline02:setAlpha( 0.2 ) --[[ @ 0]]
	RepeatDotline02:setImage( RegisterImage( @"hash_6F5E8F1B8586D9C5" ) ) --[[ @ 0]]
	RepeatDotline02:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	RepeatDotline02:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	RepeatDotline02:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( RepeatDotline02 ) --[[ @ 0]]
	self.RepeatDotline02 = RepeatDotline02 --[[ @ 0]]
	
	local RepeatDotline03 = LUI.UIImage.new( 1, 1, -313, -42, 1, 1, -223, -219 ) --[[ @ 0]]
	RepeatDotline03:setAlpha( 0.2 ) --[[ @ 0]]
	RepeatDotline03:setImage( RegisterImage( @"hash_6F5E8F1B8586D9C5" ) ) --[[ @ 0]]
	RepeatDotline03:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	RepeatDotline03:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	RepeatDotline03:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( RepeatDotline03 ) --[[ @ 0]]
	self.RepeatDotline03 = RepeatDotline03 --[[ @ 0]]
	
	local RepeatDotline04 = LUI.UIImage.new( 1, 1, -313, -42, 1, 1, -182, -178 ) --[[ @ 0]]
	RepeatDotline04:setAlpha( 0.2 ) --[[ @ 0]]
	RepeatDotline04:setImage( RegisterImage( @"hash_6F5E8F1B8586D9C5" ) ) --[[ @ 0]]
	RepeatDotline04:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	RepeatDotline04:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	RepeatDotline04:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( RepeatDotline04 ) --[[ @ 0]]
	self.RepeatDotline04 = RepeatDotline04 --[[ @ 0]]
	
	local RepeatDotline05 = LUI.UIImage.new( 1, 1, -313, -42, 1, 1, -142, -138 ) --[[ @ 0]]
	RepeatDotline05:setAlpha( 0.2 ) --[[ @ 0]]
	RepeatDotline05:setImage( RegisterImage( @"hash_6F5E8F1B8586D9C5" ) ) --[[ @ 0]]
	RepeatDotline05:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	RepeatDotline05:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	RepeatDotline05:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( RepeatDotline05 ) --[[ @ 0]]
	self.RepeatDotline05 = RepeatDotline05 --[[ @ 0]]
	
	local RepeatDotline06 = LUI.UIImage.new( 1, 1, -313, -42, 1, 1, -101, -97 ) --[[ @ 0]]
	RepeatDotline06:setAlpha( 0.2 ) --[[ @ 0]]
	RepeatDotline06:setImage( RegisterImage( @"hash_6F5E8F1B8586D9C5" ) ) --[[ @ 0]]
	RepeatDotline06:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	RepeatDotline06:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	RepeatDotline06:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( RepeatDotline06 ) --[[ @ 0]]
	self.RepeatDotline06 = RepeatDotline06 --[[ @ 0]]
	
	local ControlHeader = LUI.UIText.new( 0, 0, -28, 172, 0, 0, -113, -98 ) --[[ @ 0]]
	ControlHeader:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	ControlHeader:setAlpha( 0.2 ) --[[ @ 0]]
	ControlHeader:setText( LocalizeToUpperString( @"hash_219352A5A4C9CAC9" ) ) --[[ @ 0]]
	ControlHeader:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	ControlHeader:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	ControlHeader:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( ControlHeader ) --[[ @ 0]]
	self.ControlHeader = ControlHeader --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f54_arg0, f54_arg1 )
		f54_arg1.menu = f54_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f54_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local21 = self --[[ @ 0]]
	local f1_local22 = self.subscribeToModel --[[ @ 0]]
	local f1_local23 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local22( f1_local21, f1_local23.LastInput, function ( f55_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f55_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ScoreboardMapKeyWZ.__resetProperties = function ( f56_arg0 )
	f56_arg0.CloseMap:completeAnimation() --[[ @ 0]]
	f56_arg0.DeleteWaypoint:completeAnimation() --[[ @ 0]]
	f56_arg0.PlaceWaypoint:completeAnimation() --[[ @ 0]]
	f56_arg0.ZoomOut:completeAnimation() --[[ @ 0]]
	f56_arg0.ZoomIn:completeAnimation() --[[ @ 0]]
	f56_arg0.MoveMarker:completeAnimation() --[[ @ 0]]
	f56_arg0.BringCursor:completeAnimation() --[[ @ 0]]
	f56_arg0.RepeatDotline06:completeAnimation() --[[ @ 0]]
	f56_arg0.RepeatDotline05:completeAnimation() --[[ @ 0]]
	f56_arg0.RepeatDotline04:completeAnimation() --[[ @ 0]]
	f56_arg0.RepeatDotline03:completeAnimation() --[[ @ 0]]
	f56_arg0.RepeatDotline02:completeAnimation() --[[ @ 0]]
	f56_arg0.RepeatDotline01:completeAnimation() --[[ @ 0]]
	f56_arg0.Drag:completeAnimation() --[[ @ 0]]
	f56_arg0.CenterCursor:completeAnimation() --[[ @ 0]]
	f56_arg0.CloseMap:setLeftRight( 1, 1, -298, -42 ) --[[ @ 0]]
	f56_arg0.CloseMap:setTopBottom( 1, 1, -100, -60 ) --[[ @ 0]]
	f56_arg0.CloseMap:setAlpha( 1 ) --[[ @ 0]]
	f56_arg0.CloseMap.ControllerDependentTextBox.KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_393E719493E9E18F" ) ) --[[ @ 0]]
	f56_arg0.DeleteWaypoint:setLeftRight( 1, 1, -298, -42 ) --[[ @ 0]]
	f56_arg0.DeleteWaypoint:setTopBottom( 1, 1, -181, -141 ) --[[ @ 0]]
	f56_arg0.DeleteWaypoint.ControllerDependentTextBox.KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7179682091387E89" ) ) --[[ @ 0]]
	f56_arg0.PlaceWaypoint:setLeftRight( 1, 1, -298, -42 ) --[[ @ 0]]
	f56_arg0.PlaceWaypoint:setTopBottom( 1, 1, -221.5, -181.5 ) --[[ @ 0]]
	f56_arg0.PlaceWaypoint.ControllerDependentTextBox.KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7179662091387B23" ) ) --[[ @ 0]]
	f56_arg0.ZoomOut:setLeftRight( 1, 1, -298, -42 ) --[[ @ 0]]
	f56_arg0.ZoomOut:setTopBottom( 1, 1, -262, -222 ) --[[ @ 0]]
	f56_arg0.ZoomIn:setLeftRight( 1, 1, -298, -42 ) --[[ @ 0]]
	f56_arg0.ZoomIn:setTopBottom( 1, 1, -302, -262 ) --[[ @ 0]]
	f56_arg0.MoveMarker:setLeftRight( 1, 1, -298, -42 ) --[[ @ 0]]
	f56_arg0.MoveMarker:setAlpha( 1 ) --[[ @ 0]]
	f56_arg0.BringCursor:setTopBottom( 1, 1, -340, -300 ) --[[ @ 0]]
	f56_arg0.BringCursor:setAlpha( 0 ) --[[ @ 0]]
	f56_arg0.BringCursor.ControllerDependentTextBox.KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7179672091387CD6" ) ) --[[ @ 0]]
	f56_arg0.BringCursor.Action:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5E2C616EB9F5BBF6" ) ) --[[ @ 0]]
	f56_arg0.RepeatDotline06:setTopBottom( 1, 1, -101, -97 ) --[[ @ 0]]
	f56_arg0.RepeatDotline05:setTopBottom( 1, 1, -142, -138 ) --[[ @ 0]]
	f56_arg0.RepeatDotline04:setTopBottom( 1, 1, -182, -178 ) --[[ @ 0]]
	f56_arg0.RepeatDotline03:setTopBottom( 1, 1, -223, -219 ) --[[ @ 0]]
	f56_arg0.RepeatDotline02:setTopBottom( 1, 1, -263, -259 ) --[[ @ 0]]
	f56_arg0.RepeatDotline01:setTopBottom( 1, 1, -304, -300 ) --[[ @ 0]]
	f56_arg0.RepeatDotline01:setAlpha( 0.2 ) --[[ @ 0]]
	f56_arg0.Drag:setTopBottom( 1, 1, -152, -112 ) --[[ @ 0]]
	f56_arg0.Drag:setAlpha( 0 ) --[[ @ 0]]
	f56_arg0.CenterCursor:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ScoreboardMapKeyWZ.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f57_arg0, f57_arg1 )
			f57_arg0:__resetProperties() --[[ @ 0]]
			f57_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f58_arg0, f58_arg1 )
			f58_arg0:__resetProperties() --[[ @ 0]]
			f58_arg0:setupElementClipCounter( 15 ) --[[ @ 0]]
			f58_arg0.MoveMarker:completeAnimation() --[[ @ 0]]
			f58_arg0.MoveMarker:setLeftRight( 1, 1, -314, -58 ) --[[ @ 0]]
			f58_arg0.MoveMarker:setAlpha( 0 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.MoveMarker ) --[[ @ 0]]
			f58_arg0.BringCursor:completeAnimation() --[[ @ 0]]
			f58_arg0.BringCursor.ControllerDependentTextBox.KBMText:completeAnimation() --[[ @ 0]]
			f58_arg0.BringCursor.Action:completeAnimation() --[[ @ 0]]
			f58_arg0.BringCursor:setTopBottom( 1, 1, -105, -65 ) --[[ @ 0]]
			f58_arg0.BringCursor:setAlpha( 0 ) --[[ @ 0]]
			f58_arg0.BringCursor.ControllerDependentTextBox.KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7179672091387CD6" ) ) --[[ @ 0]]
			f58_arg0.BringCursor.Action:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5E2C616EB9F5BBF6" ) ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.BringCursor ) --[[ @ 0]]
			f58_arg0.Drag:completeAnimation() --[[ @ 0]]
			f58_arg0.Drag:setTopBottom( 1, 1, -135, -95 ) --[[ @ 0]]
			f58_arg0.Drag:setAlpha( 1 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.Drag ) --[[ @ 0]]
			f58_arg0.ZoomOut:completeAnimation() --[[ @ 0]]
			f58_arg0.ZoomOut:setLeftRight( 1, 1, -314, -58 ) --[[ @ 0]]
			f58_arg0.ZoomOut:setTopBottom( 1, 1, -184, -144 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.ZoomOut ) --[[ @ 0]]
			f58_arg0.ZoomIn:completeAnimation() --[[ @ 0]]
			f58_arg0.ZoomIn:setLeftRight( 1, 1, -314, -58 ) --[[ @ 0]]
			f58_arg0.ZoomIn:setTopBottom( 1, 1, -233, -193 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.ZoomIn ) --[[ @ 0]]
			f58_arg0.PlaceWaypoint:completeAnimation() --[[ @ 0]]
			f58_arg0.PlaceWaypoint.ControllerDependentTextBox.KBMText:completeAnimation() --[[ @ 0]]
			f58_arg0.PlaceWaypoint:setLeftRight( 1, 1, -314, -58 ) --[[ @ 0]]
			f58_arg0.PlaceWaypoint:setTopBottom( 1, 1, -331.5, -291.5 ) --[[ @ 0]]
			f58_arg0.PlaceWaypoint.ControllerDependentTextBox.KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7179662091387B23" ) ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.PlaceWaypoint ) --[[ @ 0]]
			f58_arg0.DeleteWaypoint:completeAnimation() --[[ @ 0]]
			f58_arg0.DeleteWaypoint.ControllerDependentTextBox.KBMText:completeAnimation() --[[ @ 0]]
			f58_arg0.DeleteWaypoint:setLeftRight( 1, 1, -314, -58 ) --[[ @ 0]]
			f58_arg0.DeleteWaypoint:setTopBottom( 1, 1, -281, -241 ) --[[ @ 0]]
			f58_arg0.DeleteWaypoint.ControllerDependentTextBox.KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7179682091387E89" ) ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.DeleteWaypoint ) --[[ @ 0]]
			f58_arg0.CloseMap:completeAnimation() --[[ @ 0]]
			f58_arg0.CloseMap.ControllerDependentTextBox.KBMText:completeAnimation() --[[ @ 0]]
			f58_arg0.CloseMap:setLeftRight( 1, 1, -314, -58 ) --[[ @ 0]]
			f58_arg0.CloseMap:setTopBottom( 1, 1, -104, -64 ) --[[ @ 0]]
			f58_arg0.CloseMap:setAlpha( 0 ) --[[ @ 0]]
			f58_arg0.CloseMap.ControllerDependentTextBox.KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_43949D949A3E82CF" ) ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.CloseMap ) --[[ @ 0]]
			f58_arg0.CenterCursor:completeAnimation() --[[ @ 0]]
			f58_arg0.CenterCursor:setAlpha( 0 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.CenterCursor ) --[[ @ 0]]
			f58_arg0.RepeatDotline01:completeAnimation() --[[ @ 0]]
			f58_arg0.RepeatDotline01:setTopBottom( 1, 1, -337, -333 ) --[[ @ 0]]
			f58_arg0.RepeatDotline01:setAlpha( 0 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.RepeatDotline01 ) --[[ @ 0]]
			f58_arg0.RepeatDotline02:completeAnimation() --[[ @ 0]]
			f58_arg0.RepeatDotline02:setTopBottom( 1, 1, -290, -286 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.RepeatDotline02 ) --[[ @ 0]]
			f58_arg0.RepeatDotline03:completeAnimation() --[[ @ 0]]
			f58_arg0.RepeatDotline03:setTopBottom( 1, 1, -241, -237 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.RepeatDotline03 ) --[[ @ 0]]
			f58_arg0.RepeatDotline04:completeAnimation() --[[ @ 0]]
			f58_arg0.RepeatDotline04:setTopBottom( 1, 1, -193, -189 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.RepeatDotline04 ) --[[ @ 0]]
			f58_arg0.RepeatDotline05:completeAnimation() --[[ @ 0]]
			f58_arg0.RepeatDotline05:setTopBottom( 1, 1, -143, -139 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.RepeatDotline05 ) --[[ @ 0]]
			f58_arg0.RepeatDotline06:completeAnimation() --[[ @ 0]]
			f58_arg0.RepeatDotline06:setTopBottom( 1, 1, -90, -86 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.RepeatDotline06 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ScoreboardMapKeyWZ.__onClose = function ( f59_arg0 )
	f59_arg0.MoveMarker:close() --[[ @ 0]]
	f59_arg0.BringCursor:close() --[[ @ 0]]
	f59_arg0.Drag:close() --[[ @ 0]]
	f59_arg0.ZoomOut:close() --[[ @ 0]]
	f59_arg0.ZoomIn:close() --[[ @ 0]]
	f59_arg0.PlaceWaypoint:close() --[[ @ 0]]
	f59_arg0.DeleteWaypoint:close() --[[ @ 0]]
	f59_arg0.CloseMap:close() --[[ @ 0]]
	f59_arg0.CenterCursor:close() --[[ @ 0]]
end
 --[[ @ 0]]
