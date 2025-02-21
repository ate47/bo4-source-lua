-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:493a575a7ca17e04" ) --[[ @ 0]]
require( "x64:4eece2ec012779d1" ) --[[ @ 0]]
require( "x64:38b34a2b55d6ff87" ) --[[ @ 0]]

CoD.OverheadName_WZ = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.OverheadName_WZ.__defaultWidth = 200 --[[ @ 0]]
CoD.OverheadName_WZ.__defaultHeight = 30 --[[ @ 0]]
CoD.OverheadName_WZ.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.OverheadName_WZ ) --[[ @ 0]]
	self.id = "OverheadName_WZ" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local NameAndNumber = CoD.OverheadName_WZ_NameAndNumber.new( f1_arg0, f1_arg1, 0.5, 0.5, -82, 82, 0, 0, -3, 30 ) --[[ @ 0]]
	NameAndNumber:mergeStateConditions( {
		{
			stateName = "HideNumber",
			condition = function ( menu, element, event )
				local f2_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_final_killcam"] ) --[[ @ 0]]
				if not f2_local0 then
					f2_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) --[[ @ 0]]
					if not f2_local0 then
						f2_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) --[[ @ 0]]
					end
				end
				return f2_local0
			end
		}
	} ) --[[ @ 0]]
	local WaypointBacker = NameAndNumber --[[ @ 0]]
	local HealthBar = NameAndNumber.subscribeToModel --[[ @ 0]]
	local WaypointPattern = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	HealthBar( WaypointBacker, WaypointPattern["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_final_killcam"]], function ( f3_arg0 )
		f1_arg0:updateElementState( NameAndNumber, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_final_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	WaypointBacker = NameAndNumber --[[ @ 0]]
	HealthBar = NameAndNumber.subscribeToModel --[[ @ 0]]
	WaypointPattern = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	HealthBar( WaypointBacker, WaypointPattern["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f4_arg0 )
		f1_arg0:updateElementState( NameAndNumber, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	WaypointBacker = NameAndNumber --[[ @ 0]]
	HealthBar = NameAndNumber.subscribeToModel --[[ @ 0]]
	WaypointPattern = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	HealthBar( WaypointBacker, WaypointPattern["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]], function ( f5_arg0 )
		f1_arg0:updateElementState( NameAndNumber, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	NameAndNumber:linkToElementModel( self, nil, false, function ( model )
		NameAndNumber:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( NameAndNumber ) --[[ @ 0]]
	self.NameAndNumber = NameAndNumber --[[ @ 0]]
	
	HealthBar = CoD.HealthBar.new( f1_arg0, f1_arg1, 0, 0, 31, 169, 0, 0, 30, 46 ) --[[ @ 0]]
	HealthBar:linkToElementModel( self, nil, false, function ( model )
		HealthBar:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( HealthBar ) --[[ @ 0]]
	self.HealthBar = HealthBar --[[ @ 0]]
	
	WaypointBacker = LUI.UIImage.new( 0.5, 0.5, -38, 38, 0.5, 0.5, -111, -35 ) --[[ @ 0]]
	WaypointBacker:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_domination_backer" ) ) --[[ @ 0]]
	self:addElement( WaypointBacker ) --[[ @ 0]]
	self.WaypointBacker = WaypointBacker --[[ @ 0]]
	
	WaypointPattern = LUI.UIImage.new( 0.5, 0.5, -38, 38, 0.5, 0.5, -111, -35 ) --[[ @ 0]]
	WaypointPattern:setRGB( 0.13, 0.87, 0.94 ) --[[ @ 0]]
	WaypointPattern:setAlpha( 0.75 ) --[[ @ 0]]
	WaypointPattern:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_led" ) ) --[[ @ 0]]
	WaypointPattern:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	WaypointPattern:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( WaypointPattern ) --[[ @ 0]]
	self.WaypointPattern = WaypointPattern --[[ @ 0]]
	
	local YouText2 = LUI.UIText.new( 0.5, 0.5, -29, 29, 0, 0, -68.5, -47.5 ) --[[ @ 0]]
	YouText2:setText( LocalizeToUpperString( @"wz/you" ) ) --[[ @ 0]]
	YouText2:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	YouText2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	YouText2:setShaderVector( 0, 0.5, 0, 0, 0 ) --[[ @ 0]]
	YouText2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	YouText2:setShaderVector( 2, 0, 0, 0, 0.5 ) --[[ @ 0]]
	YouText2:setLetterSpacing( 2 ) --[[ @ 0]]
	YouText2:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	YouText2:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( YouText2 ) --[[ @ 0]]
	self.YouText2 = YouText2 --[[ @ 0]]
	
	local Arrows = LUI.UIImage.new( 0.5, 0.5, -16, 16, 0, 0, -28.5, 3.5 ) --[[ @ 0]]
	Arrows:setImage( RegisterImage( @"uie_ui_hud_revive_arrow" ) ) --[[ @ 0]]
	self:addElement( Arrows ) --[[ @ 0]]
	self.Arrows = Arrows --[[ @ 0]]
	
	local PlatoonChevron = LUI.UIImage.new( 0, 0, 81, 119, 0, 0, -8, 30 ) --[[ @ 0]]
	PlatoonChevron:setAlpha( 0 ) --[[ @ 0]]
	PlatoonChevron:setImage( RegisterImage( @"uie_ui_hud_wz_hud_platoon_chevron" ) ) --[[ @ 0]]
	PlatoonChevron:linkToElementModel( self, "platoonIndicatorScale", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			PlatoonChevron:setScale( f8_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PlatoonChevron ) --[[ @ 0]]
	self.PlatoonChevron = PlatoonChevron --[[ @ 0]]
	
	local PlatoonRevive = CoD.OverheadNamePlatoonReviveIcon.new( f1_arg0, f1_arg1, 0, 0, 62.5, 137.5, 0, 0, -75, 30 ) --[[ @ 0]]
	PlatoonRevive:setAlpha( 0 ) --[[ @ 0]]
	PlatoonRevive:linkToElementModel( self, "platoonIndicatorScale", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			PlatoonRevive:setScale( f9_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PlatoonRevive ) --[[ @ 0]]
	self.PlatoonRevive = PlatoonRevive --[[ @ 0]]
	
	local PandemicPlatoonChevron = LUI.UIImage.new( 0, 0, 81, 119, 0, 0, -8, 30 ) --[[ @ 0]]
	PandemicPlatoonChevron:setAlpha( 0 ) --[[ @ 0]]
	PandemicPlatoonChevron:setImage( RegisterImage( @"hash_4860B7285A075F9F" ) ) --[[ @ 0]]
	PandemicPlatoonChevron:linkToElementModel( self, "platoonIndicatorScale", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			PandemicPlatoonChevron:setScale( f10_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PandemicPlatoonChevron ) --[[ @ 0]]
	self.PandemicPlatoonChevron = PandemicPlatoonChevron --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "KillcamSelf",
			condition = function ( menu, element, event )
				local f11_local0 = CoD.ModelUtility.IsSelfModelValueEqualToClientModelValue( f1_arg1, element, "clientNum", "clientNum" ) --[[ @ 0]]
				if f11_local0 then
					f11_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_final_killcam"] ) --[[ @ 0]]
					if not f11_local0 then
						f11_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) --[[ @ 0]]
						if not f11_local0 then
							f11_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) --[[ @ 0]]
						end
					end
				end
				return f11_local0
			end
		},
		{
			stateName = "Killcam",
			condition = function ( menu, element, event )
				local f12_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_final_killcam"] ) --[[ @ 0]]
				if not f12_local0 then
					f12_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) --[[ @ 0]]
					if not f12_local0 then
						f12_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) --[[ @ 0]]
					end
				end
				return f12_local0
			end
		},
		{
			stateName = "FriendlyPlatoonMemberLastStand",
			condition = function ( menu, element, event )
				local f13_local0 = CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isInLastStand" ) --[[ @ 0]]
				if f13_local0 then
					f13_local0 = CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "showPlatoonLastStand" ) --[[ @ 0]]
					if f13_local0 then
						f13_local0 = CoD.WZUtility.IsPerClientOnFriendlyPlatoonOnly( self, f1_arg1 ) --[[ @ 0]]
					end
				end
				return f13_local0
			end
		},
		{
			stateName = "FriendlyPlatoonMemberLastStandHidden",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isInLastStand" ) and CoD.WZUtility.IsPerClientOnFriendlyPlatoonOnly( self, f1_arg1 )
			end
		},
		{
			stateName = "FriendlyPlatoonMemberPandemic",
			condition = function ( menu, element, event )
				local f15_local0 = CoD.HUDUtility.IsGameTypeEqualToString( "warzone_pandemic_quad" ) --[[ @ 0]]
				if f15_local0 then
					f15_local0 = CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "hudItems.playerOnInfectedPlatoon", 1 ) --[[ @ 0]]
					if f15_local0 then
						f15_local0 = CoD.WZUtility.IsPerClientOnFriendlyPlatoonOnly( self, f1_arg1 ) --[[ @ 0]]
					end
				end
				return f15_local0
			end
		},
		{
			stateName = "FriendlyPlatoonMember",
			condition = function ( menu, element, event )
				return CoD.WZUtility.IsPerClientOnFriendlyPlatoonOnly( self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "clientNum", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "clientNum"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local10 = self --[[ @ 0]]
	local f1_local11 = self.subscribeToModel --[[ @ 0]]
	local f1_local12 = Engine[@"getmodelforclient"]( Engine[@"getclientnum"]( f1_arg1 ) ) --[[ @ 0]]
	f1_local11( f1_local10, f1_local12.clientNum, function ( f18_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "clientNum"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local10 = self --[[ @ 0]]
	f1_local11 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local11( f1_local10, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_final_killcam"]], function ( f19_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f19_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_final_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local10 = self --[[ @ 0]]
	f1_local11 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local11( f1_local10, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f20_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f20_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local10 = self --[[ @ 0]]
	f1_local11 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local11( f1_local10, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]], function ( f21_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f21_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "isInLastStand", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isInLastStand"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "showPlatoonLastStand", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "showPlatoonLastStand"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "platoonNumber", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "platoonNumber"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local10 = self --[[ @ 0]]
	f1_local11 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local11( f1_local10, f1_local12["factions.actualTeam"], function ( f25_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f25_arg0:get(),
			modelName = "factions.actualTeam"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local10 = self --[[ @ 0]]
	f1_local11 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local11( f1_local10, f1_local12["hudItems.playerOnInfectedPlatoon"], function ( f26_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f26_arg0:get(),
			modelName = "hudItems.playerOnInfectedPlatoon"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local11 = self --[[ @ 0]]
	CoD.HUDUtility.UpdateSelfClientHealth( self, f1_arg1 ) --[[ @ 0]]
	SetElementProperty( f1_local11, "isOverheadName", true ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.OverheadName_WZ.__resetProperties = function ( f27_arg0 )
	f27_arg0.HealthBar:completeAnimation() --[[ @ 0]]
	f27_arg0.YouText2:completeAnimation() --[[ @ 0]]
	f27_arg0.WaypointPattern:completeAnimation() --[[ @ 0]]
	f27_arg0.WaypointBacker:completeAnimation() --[[ @ 0]]
	f27_arg0.Arrows:completeAnimation() --[[ @ 0]]
	f27_arg0.NameAndNumber:completeAnimation() --[[ @ 0]]
	f27_arg0.PlatoonChevron:completeAnimation() --[[ @ 0]]
	f27_arg0.PlatoonRevive:completeAnimation() --[[ @ 0]]
	f27_arg0.PandemicPlatoonChevron:completeAnimation() --[[ @ 0]]
	f27_arg0.HealthBar:setTopBottom( 0, 0, 30, 46 ) --[[ @ 0]]
	f27_arg0.HealthBar:setAlpha( 1 ) --[[ @ 0]]
	f27_arg0.YouText2:setAlpha( 1 ) --[[ @ 0]]
	f27_arg0.WaypointPattern:setRGB( 0.13, 0.87, 0.94 ) --[[ @ 0]]
	f27_arg0.WaypointPattern:setAlpha( 0.75 ) --[[ @ 0]]
	f27_arg0.WaypointBacker:setAlpha( 1 ) --[[ @ 0]]
	f27_arg0.Arrows:setLeftRight( 0.5, 0.5, -16, 16 ) --[[ @ 0]]
	f27_arg0.Arrows:setTopBottom( 0, 0, -28.5, 3.5 ) --[[ @ 0]]
	f27_arg0.Arrows:setAlpha( 1 ) --[[ @ 0]]
	f27_arg0.NameAndNumber:setTopBottom( 0, 0, -3, 30 ) --[[ @ 0]]
	f27_arg0.NameAndNumber:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f27_arg0.NameAndNumber:setAlpha( 1 ) --[[ @ 0]]
	f27_arg0.PlatoonChevron:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f27_arg0.PlatoonChevron:setAlpha( 0 ) --[[ @ 0]]
	f27_arg0.PlatoonRevive:setAlpha( 0 ) --[[ @ 0]]
	f27_arg0.PandemicPlatoonChevron:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.OverheadName_WZ.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f28_arg0.HealthBar:completeAnimation() --[[ @ 0]]
			f28_arg0.HealthBar:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.HealthBar ) --[[ @ 0]]
			f28_arg0.WaypointBacker:completeAnimation() --[[ @ 0]]
			f28_arg0.WaypointBacker:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.WaypointBacker ) --[[ @ 0]]
			f28_arg0.WaypointPattern:completeAnimation() --[[ @ 0]]
			f28_arg0.WaypointPattern:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.WaypointPattern ) --[[ @ 0]]
			f28_arg0.YouText2:completeAnimation() --[[ @ 0]]
			f28_arg0.YouText2:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.YouText2 ) --[[ @ 0]]
			f28_arg0.Arrows:completeAnimation() --[[ @ 0]]
			f28_arg0.Arrows:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.Arrows ) --[[ @ 0]]
		end
	},
	KillcamSelf = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f29_arg0.NameAndNumber:completeAnimation() --[[ @ 0]]
			f29_arg0.NameAndNumber:setTopBottom( 0, 0, 16, 49 ) --[[ @ 0]]
			f29_arg0.NameAndNumber:setRGB( 0.13, 0.87, 0.94 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.NameAndNumber ) --[[ @ 0]]
			f29_arg0.HealthBar:completeAnimation() --[[ @ 0]]
			f29_arg0.HealthBar:setTopBottom( 0, 0, 0, 16 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.HealthBar ) --[[ @ 0]]
			f29_arg0.WaypointPattern:completeAnimation() --[[ @ 0]]
			f29_arg0.WaypointPattern:setRGB( 0.13, 0.87, 0.94 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.WaypointPattern ) --[[ @ 0]]
		end
	},
	Killcam = {
		DefaultClip = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f30_arg0.NameAndNumber:completeAnimation() --[[ @ 0]]
			f30_arg0.NameAndNumber:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.NameAndNumber ) --[[ @ 0]]
			f30_arg0.HealthBar:completeAnimation() --[[ @ 0]]
			f30_arg0.HealthBar:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.HealthBar ) --[[ @ 0]]
			f30_arg0.WaypointBacker:completeAnimation() --[[ @ 0]]
			f30_arg0.WaypointBacker:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.WaypointBacker ) --[[ @ 0]]
			f30_arg0.WaypointPattern:completeAnimation() --[[ @ 0]]
			f30_arg0.WaypointPattern:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.WaypointPattern ) --[[ @ 0]]
			f30_arg0.YouText2:completeAnimation() --[[ @ 0]]
			f30_arg0.YouText2:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.YouText2 ) --[[ @ 0]]
			f30_arg0.Arrows:completeAnimation() --[[ @ 0]]
			f30_arg0.Arrows:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.Arrows ) --[[ @ 0]]
		end
	},
	FriendlyPlatoonMemberLastStand = {
		DefaultClip = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f31_arg0.NameAndNumber:completeAnimation() --[[ @ 0]]
			f31_arg0.NameAndNumber:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.NameAndNumber ) --[[ @ 0]]
			f31_arg0.HealthBar:completeAnimation() --[[ @ 0]]
			f31_arg0.HealthBar:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.HealthBar ) --[[ @ 0]]
			f31_arg0.WaypointBacker:completeAnimation() --[[ @ 0]]
			f31_arg0.WaypointBacker:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.WaypointBacker ) --[[ @ 0]]
			f31_arg0.WaypointPattern:completeAnimation() --[[ @ 0]]
			f31_arg0.WaypointPattern:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.WaypointPattern ) --[[ @ 0]]
			f31_arg0.YouText2:completeAnimation() --[[ @ 0]]
			f31_arg0.YouText2:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.YouText2 ) --[[ @ 0]]
			f31_arg0.Arrows:completeAnimation() --[[ @ 0]]
			f31_arg0.Arrows:setTopBottom( 0.5, 0.5, -16, 16 ) --[[ @ 0]]
			f31_arg0.Arrows:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.Arrows ) --[[ @ 0]]
			f31_arg0.PlatoonChevron:completeAnimation() --[[ @ 0]]
			f31_arg0.PlatoonChevron:setRGB( 1, 0.19, 0.19 ) --[[ @ 0]]
			f31_arg0.PlatoonChevron:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.PlatoonChevron ) --[[ @ 0]]
			f31_arg0.PlatoonRevive:completeAnimation() --[[ @ 0]]
			f31_arg0.PlatoonRevive:setAlpha( 1 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.PlatoonRevive ) --[[ @ 0]]
			f31_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	FriendlyPlatoonMemberLastStandHidden = {
		DefaultClip = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f32_arg0.NameAndNumber:completeAnimation() --[[ @ 0]]
			f32_arg0.NameAndNumber:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.NameAndNumber ) --[[ @ 0]]
			f32_arg0.HealthBar:completeAnimation() --[[ @ 0]]
			f32_arg0.HealthBar:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.HealthBar ) --[[ @ 0]]
			f32_arg0.WaypointBacker:completeAnimation() --[[ @ 0]]
			f32_arg0.WaypointBacker:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.WaypointBacker ) --[[ @ 0]]
			f32_arg0.WaypointPattern:completeAnimation() --[[ @ 0]]
			f32_arg0.WaypointPattern:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.WaypointPattern ) --[[ @ 0]]
			f32_arg0.YouText2:completeAnimation() --[[ @ 0]]
			f32_arg0.YouText2:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.YouText2 ) --[[ @ 0]]
			f32_arg0.Arrows:completeAnimation() --[[ @ 0]]
			f32_arg0.Arrows:setLeftRight( 0.5, 0.5, -24, 24 ) --[[ @ 0]]
			f32_arg0.Arrows:setTopBottom( 0, 0, -12, 36 ) --[[ @ 0]]
			f32_arg0.Arrows:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.Arrows ) --[[ @ 0]]
			f32_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	FriendlyPlatoonMemberPandemic = {
		DefaultClip = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f33_arg0.NameAndNumber:completeAnimation() --[[ @ 0]]
			f33_arg0.NameAndNumber:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.NameAndNumber ) --[[ @ 0]]
			f33_arg0.HealthBar:completeAnimation() --[[ @ 0]]
			f33_arg0.HealthBar:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.HealthBar ) --[[ @ 0]]
			f33_arg0.WaypointBacker:completeAnimation() --[[ @ 0]]
			f33_arg0.WaypointBacker:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.WaypointBacker ) --[[ @ 0]]
			f33_arg0.WaypointPattern:completeAnimation() --[[ @ 0]]
			f33_arg0.WaypointPattern:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.WaypointPattern ) --[[ @ 0]]
			f33_arg0.YouText2:completeAnimation() --[[ @ 0]]
			f33_arg0.YouText2:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.YouText2 ) --[[ @ 0]]
			f33_arg0.Arrows:completeAnimation() --[[ @ 0]]
			f33_arg0.Arrows:setLeftRight( 0.5, 0.5, -24, 24 ) --[[ @ 0]]
			f33_arg0.Arrows:setTopBottom( 0, 0, -12, 36 ) --[[ @ 0]]
			f33_arg0.Arrows:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.Arrows ) --[[ @ 0]]
			f33_arg0.PlatoonChevron:completeAnimation() --[[ @ 0]]
			f33_arg0.PlatoonChevron:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.PlatoonChevron ) --[[ @ 0]]
			f33_arg0.PandemicPlatoonChevron:completeAnimation() --[[ @ 0]]
			f33_arg0.PandemicPlatoonChevron:setAlpha( 1 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.PandemicPlatoonChevron ) --[[ @ 0]]
		end
	},
	FriendlyPlatoonMember = {
		DefaultClip = function ( f34_arg0, f34_arg1 )
			f34_arg0:__resetProperties() --[[ @ 0]]
			f34_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f34_arg0.NameAndNumber:completeAnimation() --[[ @ 0]]
			f34_arg0.NameAndNumber:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.NameAndNumber ) --[[ @ 0]]
			f34_arg0.HealthBar:completeAnimation() --[[ @ 0]]
			f34_arg0.HealthBar:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.HealthBar ) --[[ @ 0]]
			f34_arg0.WaypointBacker:completeAnimation() --[[ @ 0]]
			f34_arg0.WaypointBacker:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.WaypointBacker ) --[[ @ 0]]
			f34_arg0.WaypointPattern:completeAnimation() --[[ @ 0]]
			f34_arg0.WaypointPattern:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.WaypointPattern ) --[[ @ 0]]
			f34_arg0.YouText2:completeAnimation() --[[ @ 0]]
			f34_arg0.YouText2:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.YouText2 ) --[[ @ 0]]
			f34_arg0.Arrows:completeAnimation() --[[ @ 0]]
			f34_arg0.Arrows:setLeftRight( 0.5, 0.5, -24, 24 ) --[[ @ 0]]
			f34_arg0.Arrows:setTopBottom( 0, 0, -12, 36 ) --[[ @ 0]]
			f34_arg0.Arrows:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.Arrows ) --[[ @ 0]]
			f34_arg0.PlatoonChevron:completeAnimation() --[[ @ 0]]
			f34_arg0.PlatoonChevron:setAlpha( 1 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.PlatoonChevron ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.OverheadName_WZ.__onClose = function ( f35_arg0 )
	f35_arg0.NameAndNumber:close() --[[ @ 0]]
	f35_arg0.HealthBar:close() --[[ @ 0]]
	f35_arg0.PlatoonChevron:close() --[[ @ 0]]
	f35_arg0.PlatoonRevive:close() --[[ @ 0]]
	f35_arg0.PandemicPlatoonChevron:close() --[[ @ 0]]
end
 --[[ @ 0]]
