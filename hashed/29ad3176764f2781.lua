-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:361911de5d586c0e" ) --[[ @ 0]]
require( "x64:a2599421197984c" ) --[[ @ 0]]

CoD.ZMPerkVaporsContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMPerkVaporsContainer.__defaultWidth = 500 --[[ @ 0]]
CoD.ZMPerkVaporsContainer.__defaultHeight = 150 --[[ @ 0]]
CoD.ZMPerkVaporsContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModel( f1_arg1, "PerkVaporStateUpdated", 0 ) --[[ @ 0]]
	self:setClass( CoD.ZMPerkVaporsContainer ) --[[ @ 0]]
	self.id = "ZMPerkVaporsContainer" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bgbGlowOrangeOver = LUI.UIImage.new( 0.5, 0.5, -121, 121, 0.5, 0.5, -180.5, 180.5 ) --[[ @ 0]]
	bgbGlowOrangeOver:setRGB( ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b ) --[[ @ 0]]
	bgbGlowOrangeOver:setAlpha( 0 ) --[[ @ 0]]
	bgbGlowOrangeOver:setZRot( 90 ) --[[ @ 0]]
	bgbGlowOrangeOver:setImage( RegisterImage( @"uie_t7_core_hud_mapwidget_panelglow" ) ) --[[ @ 0]]
	bgbGlowOrangeOver:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( bgbGlowOrangeOver ) --[[ @ 0]]
	self.bgbGlowOrangeOver = bgbGlowOrangeOver --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0.5, 0.5, -144, 144, 0, 0, 80, 124 ) --[[ @ 0]]
	Image:setScale( 1.01, 1 ) --[[ @ 0]]
	Image:setImage( RegisterImage( @"hash_6730624C02DD347E" ) ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local vapors = LUI.UIList.new( f1_arg0, f1_arg1, -18, 0, nil, false, false, false, false ) --[[ @ 0]]
	vapors:setLeftRight( 0.5, 0.5, -112.5, 113.5 ) --[[ @ 0]]
	vapors:setTopBottom( 0, 0, 36, 134 ) --[[ @ 0]]
	vapors:setWidgetType( CoD.ZMPerkVaporItem ) --[[ @ 0]]
	vapors:setHorizontalCount( 4 ) --[[ @ 0]]
	vapors:setSpacing( -18 ) --[[ @ 0]]
	vapors:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	vapors:setDataSource( "PerkVapors" ) --[[ @ 0]]
	self:addElement( vapors ) --[[ @ 0]]
	self.vapors = vapors --[[ @ 0]]
	
	local CrossPerks = CoD.Hud_ZM_Perks_Disabled_Container.new( f1_arg0, f1_arg1, 0, 0, 83, 459, 0, 0, 14, 140 ) --[[ @ 0]]
	self:addElement( CrossPerks ) --[[ @ 0]]
	self.CrossPerks = CrossPerks --[[ @ 0]]
	
	local bgbAbilitySwirl = LUI.UIImage.new( 0.5, 0.5, -78.5, 83.5, 0, 0, 0, 160 ) --[[ @ 0]]
	bgbAbilitySwirl:setRGB( ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b ) --[[ @ 0]]
	bgbAbilitySwirl:setAlpha( 0 ) --[[ @ 0]]
	bgbAbilitySwirl:setZRot( 330 ) --[[ @ 0]]
	bgbAbilitySwirl:setScale( 1.65, 1.65 ) --[[ @ 0]]
	bgbAbilitySwirl:setImage( RegisterImage( @"uie_t7_core_hud_ammowidget_abilityswirl" ) ) --[[ @ 0]]
	bgbAbilitySwirl:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( bgbAbilitySwirl ) --[[ @ 0]]
	self.bgbAbilitySwirl = bgbAbilitySwirl --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "TutorialHide",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsAnyGameType( f1_arg1, "ztutorial" ) and CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.ztut.showPerks", 0 )
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				local f3_local0 = CoD.HUDUtility.IsAnyGameType( f1_arg1, "zstandard" ) --[[ @ 0]]
				if f3_local0 then
					if not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_4B8E9B69F4B87954"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_5D3ABF9A2753CE40"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_59333FC97F7870"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_5198075B069840DC"] ) and Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_7ADC477DDE486DD7"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_523CD9BAB9B9F4C8"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_47B52A87BC9AA4C7"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_6668F0686232679"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_33AEEAA452536E6E"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_1D298E43D0B6FEF2"] ) then
						f3_local0 = not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"] ) --[[ @ 0]]
					else
						f3_local0 = false --[[ @ 0]]
					end
				end
				return f3_local0
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				local f4_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_4B8E9B69F4B87954"] ) --[[ @ 0]]
				if not f4_local0 then
					f4_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_5D3ABF9A2753CE40"] ) --[[ @ 0]]
					if not f4_local0 then
						f4_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_59333FC97F7870"] ) --[[ @ 0]]
						if not f4_local0 then
							f4_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_5198075B069840DC"] ) --[[ @ 0]]
							if not f4_local0 then
								if Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_7ADC477DDE486DD7"] ) then
									f4_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_523CD9BAB9B9F4C8"] ) --[[ @ 0]]
									if not f4_local0 then
										f4_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_47B52A87BC9AA4C7"] ) --[[ @ 0]]
										if not f4_local0 then
											f4_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_6668F0686232679"] ) --[[ @ 0]]
											if not f4_local0 then
												f4_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_33AEEAA452536E6E"] ) --[[ @ 0]]
												if not f4_local0 then
													f4_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_1D298E43D0B6FEF2"] ) --[[ @ 0]]
													if not f4_local0 then
														f4_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_4F4EDA8B636F3F04"] ) --[[ @ 0]]
														if not f4_local0 then
															f4_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"] ) --[[ @ 0]]
														end
													end
												end
											end
										end
									end
								else
									f4_local0 = true --[[ @ 0]]
								end
							end
						end
					end
				end
				return f4_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local6 = self --[[ @ 0]]
	local f1_local7 = self.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["hudItems.ztut.showPerks"], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "hudItems.ztut.showPerks"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4B8E9B69F4B87954"]], function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4B8E9B69F4B87954"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_5D3ABF9A2753CE40"]], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_5D3ABF9A2753CE40"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_59333FC97F7870"]], function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_59333FC97F7870"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_5198075B069840DC"]], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_5198075B069840DC"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_7ADC477DDE486DD7"]], function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_7ADC477DDE486DD7"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_523CD9BAB9B9F4C8"]], function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_523CD9BAB9B9F4C8"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_47B52A87BC9AA4C7"]], function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_47B52A87BC9AA4C7"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_6668F0686232679"]], function ( f13_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_6668F0686232679"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_33AEEAA452536E6E"]], function ( f14_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f14_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_33AEEAA452536E6E"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_1D298E43D0B6FEF2"]], function ( f15_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_1D298E43D0B6FEF2"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"]], function ( f16_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f16_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4F4EDA8B636F3F04"]], function ( f17_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4F4EDA8B636F3F04"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	vapors.id = "vapors" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMPerkVaporsContainer.__resetProperties = function ( f18_arg0 )
	f18_arg0.vapors:completeAnimation() --[[ @ 0]]
	f18_arg0.Image:completeAnimation() --[[ @ 0]]
	f18_arg0.CrossPerks:completeAnimation() --[[ @ 0]]
	f18_arg0.bgbAbilitySwirl:completeAnimation() --[[ @ 0]]
	f18_arg0.bgbGlowOrangeOver:completeAnimation() --[[ @ 0]]
	f18_arg0.vapors:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.Image:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.CrossPerks:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.bgbAbilitySwirl:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.bgbAbilitySwirl:setZRot( 330 ) --[[ @ 0]]
	f18_arg0.bgbGlowOrangeOver:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMPerkVaporsContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Hidden = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f20_local0 = function ( f21_arg0 )
				f20_arg0.Image:beginAnimation( 150 ) --[[ @ 0]]
				f20_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
				f20_arg0.Image:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.Image:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.Image:completeAnimation() --[[ @ 0]]
			f20_arg0.Image:setAlpha( 1 ) --[[ @ 0]]
			f20_local0( f20_arg0.Image ) --[[ @ 0]]
			local f20_local1 = function ( f22_arg0 )
				f20_arg0.vapors:beginAnimation( 150 ) --[[ @ 0]]
				f20_arg0.vapors:setAlpha( 0 ) --[[ @ 0]]
				f20_arg0.vapors:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.vapors:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.vapors:completeAnimation() --[[ @ 0]]
			f20_arg0.vapors:setAlpha( 1 ) --[[ @ 0]]
			f20_local1( f20_arg0.vapors ) --[[ @ 0]]
			local f20_local2 = function ( f23_arg0 )
				f20_arg0.CrossPerks:beginAnimation( 150 ) --[[ @ 0]]
				f20_arg0.CrossPerks:setAlpha( 0 ) --[[ @ 0]]
				f20_arg0.CrossPerks:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.CrossPerks:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.CrossPerks:completeAnimation() --[[ @ 0]]
			f20_arg0.CrossPerks:setAlpha( 1 ) --[[ @ 0]]
			f20_local2( f20_arg0.CrossPerks ) --[[ @ 0]]
		end
	},
	TutorialHide = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f24_arg0.Image:completeAnimation() --[[ @ 0]]
			f24_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.Image ) --[[ @ 0]]
			f24_arg0.vapors:completeAnimation() --[[ @ 0]]
			f24_arg0.vapors:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.vapors ) --[[ @ 0]]
			f24_arg0.CrossPerks:completeAnimation() --[[ @ 0]]
			f24_arg0.CrossPerks:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.CrossPerks ) --[[ @ 0]]
		end,
		DefaultState = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				local f26_local0 = function ( f27_arg0 )
					local f27_local0 = function ( f28_arg0 )
						local f28_local0 = function ( f29_arg0 )
							local f29_local0 = function ( f30_arg0 )
								local f30_local0 = function ( f31_arg0 )
									local f31_local0 = function ( f32_arg0 )
										f32_arg0:beginAnimation( 230 ) --[[ @ 0]]
										f32_arg0:setAlpha( 0 ) --[[ @ 0]]
										f32_arg0:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f31_arg0:beginAnimation( 110 ) --[[ @ 0]]
									f31_arg0:setAlpha( 0.7 ) --[[ @ 0]]
									f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f30_arg0:beginAnimation( 160 ) --[[ @ 0]]
								f30_arg0:setAlpha( 0 ) --[[ @ 0]]
								f30_arg0:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f29_arg0:beginAnimation( 169 ) --[[ @ 0]]
							f29_arg0:setAlpha( 0.7 ) --[[ @ 0]]
							f29_arg0:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f28_arg0:beginAnimation( 170 ) --[[ @ 0]]
						f28_arg0:setAlpha( 0 ) --[[ @ 0]]
						f28_arg0:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f27_arg0:beginAnimation( 160 ) --[[ @ 0]]
					f27_arg0:setAlpha( 0.7 ) --[[ @ 0]]
					f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f25_arg0.bgbGlowOrangeOver:beginAnimation( 330 ) --[[ @ 0]]
				f25_arg0.bgbGlowOrangeOver:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.bgbGlowOrangeOver:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.bgbGlowOrangeOver:completeAnimation() --[[ @ 0]]
			f25_arg0.bgbGlowOrangeOver:setAlpha( 0 ) --[[ @ 0]]
			f25_local0( f25_arg0.bgbGlowOrangeOver ) --[[ @ 0]]
			local f25_local1 = function ( f33_arg0 )
				f33_arg0:beginAnimation( 330 ) --[[ @ 0]]
				f33_arg0:setAlpha( 1 ) --[[ @ 0]]
				f33_arg0:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.Image:beginAnimation( 330 ) --[[ @ 0]]
			f25_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.Image:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
			f25_arg0.Image:registerEventHandler( "transition_complete_keyframe", f25_local1 ) --[[ @ 0]]
			local f25_local2 = function ( f34_arg0 )
				local f34_local0 = function ( f35_arg0 )
					local f35_local0 = function ( f36_arg0 )
						f36_arg0:beginAnimation( 340, Enum[@"hash_1F50FFF429AB1890"][@"hash_55D2D9CF90AB1735"] ) --[[ @ 0]]
						f36_arg0:setAlpha( 1 ) --[[ @ 0]]
						f36_arg0:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f35_arg0:beginAnimation( 329 ) --[[ @ 0]]
					f35_arg0:setAlpha( 0 ) --[[ @ 0]]
					f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f34_arg0:beginAnimation( 330 ) --[[ @ 0]]
				f34_arg0:setAlpha( 1 ) --[[ @ 0]]
				f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.vapors:beginAnimation( 330 ) --[[ @ 0]]
			f25_arg0.vapors:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.vapors:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
			f25_arg0.vapors:registerEventHandler( "transition_complete_keyframe", f25_local2 ) --[[ @ 0]]
			local f25_local3 = function ( f37_arg0 )
				local f37_local0 = function ( f38_arg0 )
					f38_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f38_arg0:setAlpha( 0 ) --[[ @ 0]]
					f38_arg0:setZRot( 360 ) --[[ @ 0]]
					f38_arg0:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f25_arg0.bgbAbilitySwirl:beginAnimation( 330 ) --[[ @ 0]]
				f25_arg0.bgbAbilitySwirl:setAlpha( 1 ) --[[ @ 0]]
				f25_arg0.bgbAbilitySwirl:setZRot( 240 ) --[[ @ 0]]
				f25_arg0.bgbAbilitySwirl:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.bgbAbilitySwirl:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.bgbAbilitySwirl:completeAnimation() --[[ @ 0]]
			f25_arg0.bgbAbilitySwirl:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.bgbAbilitySwirl:setZRot( 0 ) --[[ @ 0]]
			f25_local3( f25_arg0.bgbAbilitySwirl ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Hidden = function ( f40_arg0, f40_arg1 )
			f40_arg0:__resetProperties() --[[ @ 0]]
			f40_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f40_local0 = function ( f41_arg0 )
				f40_arg0.Image:beginAnimation( 150 ) --[[ @ 0]]
				f40_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
				f40_arg0.Image:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.Image:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.Image:completeAnimation() --[[ @ 0]]
			f40_arg0.Image:setAlpha( 1 ) --[[ @ 0]]
			f40_local0( f40_arg0.Image ) --[[ @ 0]]
			local f40_local1 = function ( f42_arg0 )
				f40_arg0.vapors:beginAnimation( 150 ) --[[ @ 0]]
				f40_arg0.vapors:setAlpha( 0 ) --[[ @ 0]]
				f40_arg0.vapors:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.vapors:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.vapors:completeAnimation() --[[ @ 0]]
			f40_arg0.vapors:setAlpha( 1 ) --[[ @ 0]]
			f40_local1( f40_arg0.vapors ) --[[ @ 0]]
			local f40_local2 = function ( f43_arg0 )
				f40_arg0.CrossPerks:beginAnimation( 150 ) --[[ @ 0]]
				f40_arg0.CrossPerks:setAlpha( 0 ) --[[ @ 0]]
				f40_arg0.CrossPerks:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.CrossPerks:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.CrossPerks:completeAnimation() --[[ @ 0]]
			f40_arg0.CrossPerks:setAlpha( 1 ) --[[ @ 0]]
			f40_local2( f40_arg0.CrossPerks ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f44_arg0, f44_arg1 )
			f44_arg0:__resetProperties() --[[ @ 0]]
			f44_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f44_arg0.Image:completeAnimation() --[[ @ 0]]
			f44_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.Image ) --[[ @ 0]]
			f44_arg0.vapors:completeAnimation() --[[ @ 0]]
			f44_arg0.vapors:setAlpha( 0 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.vapors ) --[[ @ 0]]
			f44_arg0.CrossPerks:completeAnimation() --[[ @ 0]]
			f44_arg0.CrossPerks:setAlpha( 0 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.CrossPerks ) --[[ @ 0]]
		end,
		Visible = function ( f45_arg0, f45_arg1 )
			f45_arg0:__resetProperties() --[[ @ 0]]
			f45_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f45_local0 = function ( f46_arg0 )
				f45_arg0.Image:beginAnimation( 150 ) --[[ @ 0]]
				f45_arg0.Image:setAlpha( 1 ) --[[ @ 0]]
				f45_arg0.Image:registerEventHandler( "interrupted_keyframe", f45_arg0.clipInterrupted ) --[[ @ 0]]
				f45_arg0.Image:registerEventHandler( "transition_complete_keyframe", f45_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f45_arg0.Image:completeAnimation() --[[ @ 0]]
			f45_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f45_local0( f45_arg0.Image ) --[[ @ 0]]
			local f45_local1 = function ( f47_arg0 )
				f45_arg0.vapors:beginAnimation( 150 ) --[[ @ 0]]
				f45_arg0.vapors:setAlpha( 1 ) --[[ @ 0]]
				f45_arg0.vapors:registerEventHandler( "interrupted_keyframe", f45_arg0.clipInterrupted ) --[[ @ 0]]
				f45_arg0.vapors:registerEventHandler( "transition_complete_keyframe", f45_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f45_arg0.vapors:completeAnimation() --[[ @ 0]]
			f45_arg0.vapors:setAlpha( 0 ) --[[ @ 0]]
			f45_local1( f45_arg0.vapors ) --[[ @ 0]]
			local f45_local2 = function ( f48_arg0 )
				f45_arg0.CrossPerks:beginAnimation( 150 ) --[[ @ 0]]
				f45_arg0.CrossPerks:setAlpha( 1 ) --[[ @ 0]]
				f45_arg0.CrossPerks:registerEventHandler( "interrupted_keyframe", f45_arg0.clipInterrupted ) --[[ @ 0]]
				f45_arg0.CrossPerks:registerEventHandler( "transition_complete_keyframe", f45_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f45_arg0.CrossPerks:completeAnimation() --[[ @ 0]]
			f45_arg0.CrossPerks:setAlpha( 0 ) --[[ @ 0]]
			f45_local2( f45_arg0.CrossPerks ) --[[ @ 0]]
		end,
		DefaultState = function ( f49_arg0, f49_arg1 )
			f49_arg0:__resetProperties() --[[ @ 0]]
			f49_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f49_local0 = function ( f50_arg0 )
				f49_arg0.Image:beginAnimation( 150 ) --[[ @ 0]]
				f49_arg0.Image:setAlpha( 1 ) --[[ @ 0]]
				f49_arg0.Image:registerEventHandler( "interrupted_keyframe", f49_arg0.clipInterrupted ) --[[ @ 0]]
				f49_arg0.Image:registerEventHandler( "transition_complete_keyframe", f49_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f49_arg0.Image:completeAnimation() --[[ @ 0]]
			f49_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f49_local0( f49_arg0.Image ) --[[ @ 0]]
			local f49_local1 = function ( f51_arg0 )
				f49_arg0.vapors:beginAnimation( 150 ) --[[ @ 0]]
				f49_arg0.vapors:setAlpha( 1 ) --[[ @ 0]]
				f49_arg0.vapors:registerEventHandler( "interrupted_keyframe", f49_arg0.clipInterrupted ) --[[ @ 0]]
				f49_arg0.vapors:registerEventHandler( "transition_complete_keyframe", f49_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f49_arg0.vapors:completeAnimation() --[[ @ 0]]
			f49_arg0.vapors:setAlpha( 0 ) --[[ @ 0]]
			f49_local1( f49_arg0.vapors ) --[[ @ 0]]
			local f49_local2 = function ( f52_arg0 )
				f49_arg0.CrossPerks:beginAnimation( 150 ) --[[ @ 0]]
				f49_arg0.CrossPerks:setAlpha( 1 ) --[[ @ 0]]
				f49_arg0.CrossPerks:registerEventHandler( "interrupted_keyframe", f49_arg0.clipInterrupted ) --[[ @ 0]]
				f49_arg0.CrossPerks:registerEventHandler( "transition_complete_keyframe", f49_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f49_arg0.CrossPerks:completeAnimation() --[[ @ 0]]
			f49_arg0.CrossPerks:setAlpha( 0 ) --[[ @ 0]]
			f49_local2( f49_arg0.CrossPerks ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ZMPerkVaporsContainer.__onClose = function ( f53_arg0 )
	f53_arg0.vapors:close() --[[ @ 0]]
	f53_arg0.CrossPerks:close() --[[ @ 0]]
end
 --[[ @ 0]]
