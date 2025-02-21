-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/dynamiccontainerwidget" ) --[[ @ 0]]
require( "ui/uieditor/widgets/hud/carepackage/capturecrate" ) --[[ @ 0]]
require( "ui/uieditor/widgets/hud/centerconsole/centerconsole" ) --[[ @ 0]]
require( "ui/uieditor/widgets/hud/deadspectate/deadspectate" ) --[[ @ 0]]
require( "x64:254d6e487f51c873" ) --[[ @ 0]]
require( "ui/uieditor/widgets/hud/proximityalarm/proximityalarm" ) --[[ @ 0]]
require( "x64:468620bd37717808" ) --[[ @ 0]]
require( "x64:123da585bef956c6" ) --[[ @ 0]]
require( "x64:68f2d36d6c8b8d7a" ) --[[ @ 0]]
require( "ui/uieditor/widgets/mphudwidgets/armoroverlaycontainer" ) --[[ @ 0]]
require( "x64:8200d5b8b521830" ) --[[ @ 0]]
require( "ui/uieditor/widgets/mphudwidgets/stuck" ) --[[ @ 0]]
require( "ui/uieditor/widgets/mphudwidgets/thrustmeter/thrustmetercontainer" ) --[[ @ 0]]
require( "ui/uieditor/widgets/notifications/outofbounds/outofbounds" ) --[[ @ 0]]

CoD.Hud = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.Hud = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "Hud", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.BaseUtility.InitControllerModel( f1_arg0, "displayTop3Players", 0 ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg0, "hudItems.showSpawnSelect" ) --[[ @ 0]]
	SetProperty( self, "disableKeyboardNavigation", true ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModel( f1_arg0, "isInPrematchPeriod", 0 ) --[[ @ 0]]
	CoD.BlackMarketUtility.InitInGameContractRecord( f1_arg0, f1_local1 ) --[[ @ 0]]
	self:setClass( CoD.Hud ) --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ArmorOverlayContainer0 = CoD.ArmorOverlayContainer.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ArmorOverlayContainer0:setAlpha( 0.75 ) --[[ @ 0]]
	self:addElement( ArmorOverlayContainer0 ) --[[ @ 0]]
	self.ArmorOverlayContainer0 = ArmorOverlayContainer0 --[[ @ 0]]
	
	local SafeAreaContainerBack = CoD.Hud_SafeAreaContainer_Back.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SafeAreaContainerBack:registerEventHandler( "menu_loaded", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f2_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f2_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( SafeAreaContainerBack ) --[[ @ 0]]
	self.SafeAreaContainerBack = SafeAreaContainerBack --[[ @ 0]]
	
	local WaypointContainer = CoD.DynamicContainerWidget.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( WaypointContainer ) --[[ @ 0]]
	self.WaypointContainer = WaypointContainer --[[ @ 0]]
	
	local OverheadNameContainer = CoD.DynamicContainerWidget.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( OverheadNameContainer ) --[[ @ 0]]
	self.OverheadNameContainer = OverheadNameContainer --[[ @ 0]]
	
	local OutOfBounds = CoD.OutOfBounds.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	OutOfBounds:mergeStateConditions( {
		{
			stateName = "IsOutOfBounds",
			condition = function ( menu, element, event )
				return IsOutOfBounds( f1_arg0 )
			end
		}
	} ) --[[ @ 0]]
	local Stuck = OutOfBounds --[[ @ 0]]
	local PreMatchTimer = OutOfBounds.subscribeToModel --[[ @ 0]]
	local proximityAlarm = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	PreMatchTimer( Stuck, proximityAlarm["hudItems.outOfBoundsEndTime"], function ( f4_arg0 )
		f1_local1:updateElementState( OutOfBounds, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f4_arg0:get(),
			modelName = "hudItems.outOfBoundsEndTime"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Stuck = OutOfBounds --[[ @ 0]]
	PreMatchTimer = OutOfBounds.subscribeToModel --[[ @ 0]]
	proximityAlarm = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	PreMatchTimer( Stuck, proximityAlarm.displayTop3Players, function ( f5_arg0 )
		f1_local1:updateElementState( OutOfBounds, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f5_arg0:get(),
			modelName = "displayTop3Players"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( OutOfBounds ) --[[ @ 0]]
	self.OutOfBounds = OutOfBounds --[[ @ 0]]
	
	PreMatchTimer = LUI.UIText.new( 0.5, 0.5, -101, 101, 0, 0, 449, 539 ) --[[ @ 0]]
	PreMatchTimer:setAlpha( 0 ) --[[ @ 0]]
	PreMatchTimer:setTTF( "default" ) --[[ @ 0]]
	PreMatchTimer:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( PreMatchTimer ) --[[ @ 0]]
	self.PreMatchTimer = PreMatchTimer --[[ @ 0]]
	
	Stuck = CoD.Stuck.new( f1_local1, f1_arg0, 0.5, 0.5, -48, 208, 1, 1, -360, -104 ) --[[ @ 0]]
	self:addElement( Stuck ) --[[ @ 0]]
	self.Stuck = Stuck --[[ @ 0]]
	
	proximityAlarm = CoD.ProximityAlarm.new( f1_local1, f1_arg0, 0.5, 0.5, -187.5, 187.5, 0.5, 0.5, 103, 161 ) --[[ @ 0]]
	self:addElement( proximityAlarm ) --[[ @ 0]]
	self.proximityAlarm = proximityAlarm --[[ @ 0]]
	
	local CaptureCrate = CoD.CaptureCrate.new( f1_local1, f1_arg0, 0.5, 0.5, -223, 227, 0.5, 0.5, -248, -152 ) --[[ @ 0]]
	self:addElement( CaptureCrate ) --[[ @ 0]]
	self.CaptureCrate = CaptureCrate --[[ @ 0]]
	
	local ThrustMeterContainer0 = CoD.ThrustMeterContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -127.5, 127.5, 0.5, 0.5, 161, 221 ) --[[ @ 0]]
	self:addElement( ThrustMeterContainer0 ) --[[ @ 0]]
	self.ThrustMeterContainer0 = ThrustMeterContainer0 --[[ @ 0]]
	
	local SprintMeterContainer = CoD.SprintMeterContainer.new( f1_local1, f1_arg0, 0, 0, 417, 672, 0, 0, 480, 540 ) --[[ @ 0]]
	SprintMeterContainer:setXRot( 180 ) --[[ @ 0]]
	SprintMeterContainer:setZRot( -90 ) --[[ @ 0]]
	self:addElement( SprintMeterContainer ) --[[ @ 0]]
	self.SprintMeterContainer = SprintMeterContainer --[[ @ 0]]
	
	local DeadSpectate = CoD.DeadSpectate.new( f1_local1, f1_arg0, 0.5, 0.5, -225, 225, 1, 1, -305, -215 ) --[[ @ 0]]
	DeadSpectate:mergeStateConditions( {
		{
			stateName = "VisiblePC",
			condition = function ( menu, element, event )
				local f6_local0 --[[ @ 0]]
				if Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_draw_spectator_messages"] ) and not Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_final_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"] ) and not Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) and not Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_scoreboard_open"] ) and Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_spectating_client"] ) and not Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_team_spectator"] ) and not Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) then
					f6_local0 = IsPC() --[[ @ 0]]
					if f6_local0 then
						f6_local0 = not IsWarzone() --[[ @ 0]]
					end
				else
					f6_local0 = false --[[ @ 0]]
				end
				return f6_local0
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				local f7_local0 --[[ @ 0]]
				if Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_draw_spectator_messages"] ) and not Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_final_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"] ) and not Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) and not Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_scoreboard_open"] ) and Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_spectating_client"] ) and not Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_team_spectator"] ) and not Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) then
					f7_local0 = not IsWarzone() --[[ @ 0]]
				else
					f7_local0 = false --[[ @ 0]]
				end
				return f7_local0
			end
		}
	} ) --[[ @ 0]]
	local SafeAreaContainerFront = DeadSpectate --[[ @ 0]]
	local ConsoleCenter = DeadSpectate.subscribeToModel --[[ @ 0]]
	local FactionInfo = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	ConsoleCenter( SafeAreaContainerFront, FactionInfo["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_draw_spectator_messages"]], function ( f8_arg0 )
		f1_local1:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f8_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_draw_spectator_messages"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	SafeAreaContainerFront = DeadSpectate --[[ @ 0]]
	ConsoleCenter = DeadSpectate.subscribeToModel --[[ @ 0]]
	FactionInfo = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	ConsoleCenter( SafeAreaContainerFront, FactionInfo["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_final_killcam"]], function ( f9_arg0 )
		f1_local1:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_final_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	SafeAreaContainerFront = DeadSpectate --[[ @ 0]]
	ConsoleCenter = DeadSpectate.subscribeToModel --[[ @ 0]]
	FactionInfo = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	ConsoleCenter( SafeAreaContainerFront, FactionInfo["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f10_arg0 )
		f1_local1:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f10_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	SafeAreaContainerFront = DeadSpectate --[[ @ 0]]
	ConsoleCenter = DeadSpectate.subscribeToModel --[[ @ 0]]
	FactionInfo = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	ConsoleCenter( SafeAreaContainerFront, FactionInfo["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"]], function ( f11_arg0 )
		f1_local1:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f11_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	SafeAreaContainerFront = DeadSpectate --[[ @ 0]]
	ConsoleCenter = DeadSpectate.subscribeToModel --[[ @ 0]]
	FactionInfo = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	ConsoleCenter( SafeAreaContainerFront, FactionInfo["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]], function ( f12_arg0 )
		f1_local1:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f12_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	SafeAreaContainerFront = DeadSpectate --[[ @ 0]]
	ConsoleCenter = DeadSpectate.subscribeToModel --[[ @ 0]]
	FactionInfo = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	ConsoleCenter( SafeAreaContainerFront, FactionInfo["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]], function ( f13_arg0 )
		f1_local1:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f13_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	SafeAreaContainerFront = DeadSpectate --[[ @ 0]]
	ConsoleCenter = DeadSpectate.subscribeToModel --[[ @ 0]]
	FactionInfo = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	ConsoleCenter( SafeAreaContainerFront, FactionInfo["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_spectating_client"]], function ( f14_arg0 )
		f1_local1:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f14_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_spectating_client"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	SafeAreaContainerFront = DeadSpectate --[[ @ 0]]
	ConsoleCenter = DeadSpectate.subscribeToModel --[[ @ 0]]
	FactionInfo = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	ConsoleCenter( SafeAreaContainerFront, FactionInfo["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_team_spectator"]], function ( f15_arg0 )
		f1_local1:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f15_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_team_spectator"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	SafeAreaContainerFront = DeadSpectate --[[ @ 0]]
	ConsoleCenter = DeadSpectate.subscribeToModel --[[ @ 0]]
	FactionInfo = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	ConsoleCenter( SafeAreaContainerFront, FactionInfo["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]], function ( f16_arg0 )
		f1_local1:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f16_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	SafeAreaContainerFront = DeadSpectate --[[ @ 0]]
	ConsoleCenter = DeadSpectate.subscribeToModel --[[ @ 0]]
	FactionInfo = Engine[@"getglobalmodel"]() --[[ @ 0]]
	ConsoleCenter( SafeAreaContainerFront, FactionInfo["lobbyRoot.lobbyNav"], function ( f17_arg0 )
		f1_local1:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f17_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( DeadSpectate ) --[[ @ 0]]
	self.DeadSpectate = DeadSpectate --[[ @ 0]]
	
	ConsoleCenter = CoD.CenterConsole.new( f1_local1, f1_arg0, 0.5, 0.5, -555, 555, 0, 0, 96.5, 243.5 ) --[[ @ 0]]
	self:addElement( ConsoleCenter ) --[[ @ 0]]
	self.ConsoleCenter = ConsoleCenter --[[ @ 0]]
	
	SafeAreaContainerFront = CoD.Hud_SafeAreaContainer_Front.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SafeAreaContainerFront:registerEventHandler( "menu_loaded", function ( element, event )
		local f18_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f18_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f18_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f18_local0 then
			f18_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f18_local0
	end ) --[[ @ 0]]
	self:addElement( SafeAreaContainerFront ) --[[ @ 0]]
	self.SafeAreaContainerFront = SafeAreaContainerFront --[[ @ 0]]
	
	FactionInfo = CoD.FactionInfo.new( f1_local1, f1_arg0, 0, 0, 749, 1175, 0, 0, 54, 330 ) --[[ @ 0]]
	self:addElement( FactionInfo ) --[[ @ 0]]
	self.FactionInfo = FactionInfo --[[ @ 0]]
	
	local SubtitlesContainer = CoD.SubtitlesContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -555, 555, 1, 1, -468, -321 ) --[[ @ 0]]
	self:addElement( SubtitlesContainer ) --[[ @ 0]]
	self.SubtitlesContainer = SubtitlesContainer --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HideWaypoints",
			condition = function ( menu, element, event )
				local f19_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_game_ended"] ) --[[ @ 0]]
				if not f19_local0 then
					if Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_hud_showobjicons"] ) then
						f19_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"] ) --[[ @ 0]]
						if not f19_local0 then
							f19_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_is_flash_banged"] ) --[[ @ 0]]
						end
					else
						f19_local0 = true --[[ @ 0]]
					end
				end
				return f19_local0
			end
		},
		{
			stateName = "HideWaypointsAndNames",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualTo( f1_arg0, "hudItems.showSpawnSelect", 1 )
			end
		},
		{
			stateName = "Multiplayer",
			condition = function ( menu, element, event )
				return IsMultiplayer()
			end
		}
	} ) --[[ @ 0]]
	local f1_local18 = self --[[ @ 0]]
	local f1_local19 = self.subscribeToModel --[[ @ 0]]
	local f1_local20 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local19( f1_local18, f1_local20["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]], function ( f22_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f22_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local18 = self --[[ @ 0]]
	f1_local19 = self.subscribeToModel --[[ @ 0]]
	f1_local20 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local19( f1_local18, f1_local20["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_showobjicons"]], function ( f23_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f23_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_showobjicons"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local18 = self --[[ @ 0]]
	f1_local19 = self.subscribeToModel --[[ @ 0]]
	f1_local20 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local19( f1_local18, f1_local20["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"]], function ( f24_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f24_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local18 = self --[[ @ 0]]
	f1_local19 = self.subscribeToModel --[[ @ 0]]
	f1_local20 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local19( f1_local18, f1_local20["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_flash_banged"]], function ( f25_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f25_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_flash_banged"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local18 = self --[[ @ 0]]
	f1_local19 = self.subscribeToModel --[[ @ 0]]
	f1_local20 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local19( f1_local18, f1_local20["hudItems.showSpawnSelect"], function ( f26_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f26_arg0:get(),
			modelName = "hudItems.showSpawnSelect"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local18 = self --[[ @ 0]]
	f1_local19 = self.subscribeToModel --[[ @ 0]]
	f1_local20 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local19( f1_local18, f1_local20["lobbyRoot.lobbyNav"], function ( f27_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f27_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local18 = self --[[ @ 0]]
	f1_local19 = self.subscribeToModel --[[ @ 0]]
	f1_local20 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local19( f1_local18, f1_local20["lobbyRoot.lobbyNav"], function ( f28_arg0, f28_arg1 )
		CoD.Menu.UpdateButtonShownState( f28_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_back"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:registerEventHandler( "hud_boot", function ( self, event )
		local f29_local0 = nil --[[ @ 0]]
		if ShouldBootUpHUD( f1_arg0, f1_local1 ) then
			
		else
			
		end
		if not f29_local0 then
			f29_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f29_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_back"], nil, function ( element, menu, controller, model )
		if CoD.ScoreboardUtility.CanShowScoreboard( controller ) then
			CoD.ScoreboardUtility.ShowScoreboard( controller ) --[[ @ 0]]
			return true
		elseif CoD.ScoreboardUtility.CanHideScoreboard( controller ) and not IsWarzone() then
			CoD.ScoreboardUtility.HideScoreboard( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ScoreboardUtility.CanShowScoreboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_back"], @"hash_0", nil, nil ) --[[ @ 0]]
			return false
		elseif CoD.ScoreboardUtility.CanHideScoreboard( controller ) and not IsWarzone() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_back"], @"hash_0", nil, nil ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg0, "PerController", "scriptNotify", function ( model )
		local f32_local0 = self --[[ @ 0]]
		if CoD.ModelUtility.IsParamModelEqualToHashString( model, @"player_spawned" ) and IsInPrematchPeriod( f1_arg0 ) and not IsCampaign() then
			
		elseif CoD.ModelUtility.IsParamModelEqualToHashString( model, @"player_spawned" ) and not IsInPrematchPeriod( f1_arg0 ) and not IsCampaign() then
			
		elseif CoD.ModelUtility.IsParamModelEqualToHashString( model, @"create_prematch_timer" ) and not IsWarzone() then
			CreatePrematchTimer( self, f1_arg0, model ) --[[ @ 0]]
		elseif CoD.ModelUtility.IsParamModelEqualToHashString( model, @"prematch_timer_ended" ) then
			SetControllerModelValue( f1_arg0, "isInPrematchPeriod", 0 ) --[[ @ 0]]
		elseif CoD.ModelUtility.IsParamModelEqualToHashString( model, @"draft_complete" ) then
			CreatePrematchTimer( self, f1_arg0, model ) --[[ @ 0]]
			TryBootHUD( self, "0" ) --[[ @ 0]]
		elseif CoD.ModelUtility.IsParamModelEqualToHashString( model, @"hash_1739C4BD5BAF83BC" ) then
			CoD.BlackMarketUtility.RecordCompletedContractInGame( f1_arg0, model, f1_local1 ) --[[ @ 0]]
		elseif CoD.ModelUtility.IsParamModelEqualToHashString( model, @"hash_4B04B1CB4B3498D0" ) then
			CoD.BlackMarketUtility.UpdateInGameContractRecord( f1_arg0, model, f1_local1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	DeadSpectate.id = "DeadSpectate" --[[ @ 0]]
	SafeAreaContainerFront.id = "SafeAreaContainerFront" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	f1_local19 = self --[[ @ 0]]
	CoD.HUDUtility.InitWaypointHandlers( f1_local1, self, f1_arg0, "WaypointContainer", "SafeAreaContainerBack.ObjectiveInfoWidgetContainer" ) --[[ @ 0]]
	CoD.HUDUtility.InitOverheadNames( self, f1_arg0, "OverheadNameContainer" ) --[[ @ 0]]
	SetProperty( self, "m_inputDisabled", true ) --[[ @ 0]]
	SetProperty( self, "preserveLuiButton", {
		[Enum[@"luibutton"][@"lui_key_back"]] = true
	} ) --[[ @ 0]]
	SetAllowCursorMovement( f1_local1, false ) --[[ @ 0]]
	CoD.HUDUtility.SetupWaypointContainerParent( WaypointContainer ) --[[ @ 0]]
	f1_local19 = DeadSpectate --[[ @ 0]]
	if IsPC() then
		SizeToHudArea( f1_local19, f1_arg0 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.Hud.__resetProperties = function ( f33_arg0 )
	f33_arg0.WaypointContainer:completeAnimation() --[[ @ 0]]
	f33_arg0.OverheadNameContainer:completeAnimation() --[[ @ 0]]
	f33_arg0.WaypointContainer:setAlpha( 1 ) --[[ @ 0]]
	f33_arg0.OverheadNameContainer:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Hud.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f34_arg0, f34_arg1 )
			f34_arg0:__resetProperties() --[[ @ 0]]
			f34_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	HideWaypoints = {
		DefaultClip = function ( f35_arg0, f35_arg1 )
			f35_arg0:__resetProperties() --[[ @ 0]]
			f35_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f35_arg0.WaypointContainer:completeAnimation() --[[ @ 0]]
			f35_arg0.WaypointContainer:setAlpha( 0 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.WaypointContainer ) --[[ @ 0]]
		end
	},
	HideWaypointsAndNames = {
		DefaultClip = function ( f36_arg0, f36_arg1 )
			f36_arg0:__resetProperties() --[[ @ 0]]
			f36_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f36_arg0.WaypointContainer:completeAnimation() --[[ @ 0]]
			f36_arg0.WaypointContainer:setAlpha( 0 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.WaypointContainer ) --[[ @ 0]]
			f36_arg0.OverheadNameContainer:completeAnimation() --[[ @ 0]]
			f36_arg0.OverheadNameContainer:setAlpha( 0 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.OverheadNameContainer ) --[[ @ 0]]
		end
	},
	Multiplayer = {
		DefaultClip = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Hud.__onClose = function ( f38_arg0 )
	f38_arg0.ArmorOverlayContainer0:close() --[[ @ 0]]
	f38_arg0.SafeAreaContainerBack:close() --[[ @ 0]]
	f38_arg0.WaypointContainer:close() --[[ @ 0]]
	f38_arg0.OverheadNameContainer:close() --[[ @ 0]]
	f38_arg0.OutOfBounds:close() --[[ @ 0]]
	f38_arg0.Stuck:close() --[[ @ 0]]
	f38_arg0.proximityAlarm:close() --[[ @ 0]]
	f38_arg0.CaptureCrate:close() --[[ @ 0]]
	f38_arg0.ThrustMeterContainer0:close() --[[ @ 0]]
	f38_arg0.SprintMeterContainer:close() --[[ @ 0]]
	f38_arg0.DeadSpectate:close() --[[ @ 0]]
	f38_arg0.ConsoleCenter:close() --[[ @ 0]]
	f38_arg0.SafeAreaContainerFront:close() --[[ @ 0]]
	f38_arg0.FactionInfo:close() --[[ @ 0]]
	f38_arg0.SubtitlesContainer:close() --[[ @ 0]]
end
 --[[ @ 0]]
