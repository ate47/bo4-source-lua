-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:43317d177bae2759" ) --[[ @ 0]]
require( "ui/uieditor/widgets/hud/prematchcountdown/prematchcountdown_beginsin" ) --[[ @ 0]]
require( "x64:759770670213dba2" ) --[[ @ 0]]
require( "x64:783184da3fe634f1" ) --[[ @ 0]]

CoD.HoldingPenNotification = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HoldingPenNotification.__defaultWidth = 1920 --[[ @ 0]]
CoD.HoldingPenNotification.__defaultHeight = 1080 --[[ @ 0]]
CoD.HoldingPenNotification.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HoldingPenNotification ) --[[ @ 0]]
	self.id = "HoldingPenNotification" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PrematchCountdownNumbers = CoD.PrematchCountdown_Numbers.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0.5, 0.5, -45, 30 ) --[[ @ 0]]
	PrematchCountdownNumbers.MatchText.MatchText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_41842D668F2BC505" ) ) --[[ @ 0]]
	self.__on_menuOpened_PrematchCountdownNumbers = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3 )
		local f2_local0 = PrematchCountdownNumbers --[[ @ 0]]
		PlayClipOnElement( self, {
			elementName = "PrematchCountdownNumbers",
			clipName = "Start"
		}, f2_arg1 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self.__on_menuOpened_PrematchCountdownNumbers ) --[[ @ 0]]
	self:addElement( PrematchCountdownNumbers ) --[[ @ 0]]
	self.PrematchCountdownNumbers = PrematchCountdownNumbers --[[ @ 0]]
	
	local PrematchCountdownNumbersSmall = CoD.PrematchCountdown_NumbersSmall.new( f1_arg0, f1_arg1, 0, 0, -7, 296, 0, 0, 341, 401 ) --[[ @ 0]]
	PrematchCountdownNumbersSmall:setAlpha( 0 ) --[[ @ 0]]
	PrematchCountdownNumbersSmall.Message:setAlpha( 0 ) --[[ @ 0]]
	PrematchCountdownNumbersSmall.Message:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_51D0DA5DFB8F016F" ) ) --[[ @ 0]]
	self:addElement( PrematchCountdownNumbersSmall ) --[[ @ 0]]
	self.PrematchCountdownNumbersSmall = PrematchCountdownNumbersSmall --[[ @ 0]]
	
	local GameTypeHintText = CoD.PrematchCountdown_BeginsIn.new( f1_arg0, f1_arg1, 0.5, 0.5, -280, 276, 0, 0, 305, 353 ) --[[ @ 0]]
	GameTypeHintText:setAlpha( 0 ) --[[ @ 0]]
	GameTypeHintText.MatchText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_17E04861C952E4AB" ) ) --[[ @ 0]]
	GameTypeHintText.MatchText:setBackingAlpha( 0.7 ) --[[ @ 0]]
	self:addElement( GameTypeHintText ) --[[ @ 0]]
	self.GameTypeHintText = GameTypeHintText --[[ @ 0]]
	
	local Message = LUI.UIText.new( 0, 0, 7, 282, 0, 0, 354, 390 ) --[[ @ 0]]
	Message:setRGB( 0, 0.56, 1 ) --[[ @ 0]]
	Message:setAlpha( 0 ) --[[ @ 0]]
	Message:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_51D0DA5DFB8F016F" ) ) --[[ @ 0]]
	Message:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Message:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	Message:setShaderVector( 0, 1.02, 0, 0, 0 ) --[[ @ 0]]
	Message:setShaderVector( 1, -0.23, 0, 0, 0 ) --[[ @ 0]]
	Message:setShaderVector( 2, 0, 0, 1, 1 ) --[[ @ 0]]
	Message:setLetterSpacing( 2 ) --[[ @ 0]]
	Message:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"luialignment"][@"lui_alignment_left"] ) ) --[[ @ 0]]
	Message:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) ) --[[ @ 0]]
	self:addElement( Message ) --[[ @ 0]]
	self.Message = Message --[[ @ 0]]
	
	local DoubleXPNotification = CoD.PrematchCountdown_2xpNotification.new( f1_arg0, f1_arg1, 0.5, 0.5, -200, 200, 0, 0, 0, 255 ) --[[ @ 0]]
	DoubleXPNotification:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( DoubleXPNotification ) --[[ @ 0]]
	self.DoubleXPNotification = DoubleXPNotification --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "WarzoneHardcore",
			condition = function ( menu, element, event )
				return IsGametypeSettingsValue( "wzHardcore", 1 )
			end
		},
		{
			stateName = "HiddenPC",
			condition = function ( menu, element, event )
				return CoD.WZUtility.IsPcInventoryOpen( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f5_arg0, f5_arg1 )
		f5_arg1.menu = f5_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f5_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local6 = self --[[ @ 0]]
	local f1_local7 = self.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8.LastInput, function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8.isOpen, function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "isOpen"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_arg0:removeMenuOpenedCallback( self.__on_menuOpened_PrematchCountdownNumbers ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local7 = self --[[ @ 0]]
	CoD.HUDUtility.HoldingPenNotificationPostLoad( self, f1_arg1 ) --[[ @ 0]]
	PlayClip( self, "GameStart", f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.HoldingPenNotification.__resetProperties = function ( f9_arg0 )
	f9_arg0.GameTypeHintText:completeAnimation() --[[ @ 0]]
	f9_arg0.PrematchCountdownNumbers:completeAnimation() --[[ @ 0]]
	f9_arg0.PrematchCountdownNumbersSmall:completeAnimation() --[[ @ 0]]
	f9_arg0.Message:completeAnimation() --[[ @ 0]]
	f9_arg0.DoubleXPNotification:completeAnimation() --[[ @ 0]]
	f9_arg0.GameTypeHintText:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.PrematchCountdownNumbers:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f9_arg0.PrematchCountdownNumbers:setTopBottom( 0.5, 0.5, -45, 30 ) --[[ @ 0]]
	f9_arg0.PrematchCountdownNumbers:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.PrematchCountdownNumbers:setScale( 1, 1 ) --[[ @ 0]]
	f9_arg0.PrematchCountdownNumbersSmall:setTopBottom( 0, 0, 341, 401 ) --[[ @ 0]]
	f9_arg0.PrematchCountdownNumbersSmall:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.Message:setTopBottom( 0, 0, 354, 390 ) --[[ @ 0]]
	f9_arg0.Message:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.DoubleXPNotification:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.HoldingPenNotification.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f10_arg0.PrematchCountdownNumbers:completeAnimation() --[[ @ 0]]
			f10_arg0.PrematchCountdownNumbers:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.PrematchCountdownNumbers ) --[[ @ 0]]
			f10_arg0.PrematchCountdownNumbersSmall:completeAnimation() --[[ @ 0]]
			f10_arg0.PrematchCountdownNumbersSmall:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.PrematchCountdownNumbersSmall ) --[[ @ 0]]
			f10_arg0.GameTypeHintText:completeAnimation() --[[ @ 0]]
			f10_arg0.GameTypeHintText:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.GameTypeHintText ) --[[ @ 0]]
			f10_arg0.Message:completeAnimation() --[[ @ 0]]
			f10_arg0.Message:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Message ) --[[ @ 0]]
		end,
		Minimize = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					local f13_local0 = function ( f14_arg0 )
						f14_arg0:beginAnimation( 230 ) --[[ @ 0]]
						f14_arg0:setAlpha( 0 ) --[[ @ 0]]
						f14_arg0:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f13_arg0:beginAnimation( 80 ) --[[ @ 0]]
					f13_arg0:setAlpha( 0.8 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0.PrematchCountdownNumbers:beginAnimation( 90 ) --[[ @ 0]]
				f11_arg0.PrematchCountdownNumbers:setAlpha( 0.5 ) --[[ @ 0]]
				f11_arg0.PrematchCountdownNumbers:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.PrematchCountdownNumbers:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.PrematchCountdownNumbers:completeAnimation() --[[ @ 0]]
			f11_arg0.PrematchCountdownNumbers:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f11_arg0.PrematchCountdownNumbers:setTopBottom( 0.5, 0.5, -45, 30 ) --[[ @ 0]]
			f11_arg0.PrematchCountdownNumbers:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.PrematchCountdownNumbers:setScale( 1, 1 ) --[[ @ 0]]
			f11_local0( f11_arg0.PrematchCountdownNumbers ) --[[ @ 0]]
			local f11_local1 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					local f16_local0 = function ( f17_arg0 )
						local f17_local0 = function ( f18_arg0 )
							f18_arg0:beginAnimation( 69 ) --[[ @ 0]]
							f18_arg0:setAlpha( 1 ) --[[ @ 0]]
							f18_arg0:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f17_arg0:beginAnimation( 60 ) --[[ @ 0]]
						f17_arg0:setAlpha( 0.1 ) --[[ @ 0]]
						f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f16_arg0:beginAnimation( 69 ) --[[ @ 0]]
					f16_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0.PrematchCountdownNumbersSmall:beginAnimation( 630 ) --[[ @ 0]]
				f11_arg0.PrematchCountdownNumbersSmall:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.PrematchCountdownNumbersSmall:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.PrematchCountdownNumbersSmall:completeAnimation() --[[ @ 0]]
			f11_arg0.PrematchCountdownNumbersSmall:setAlpha( 0 ) --[[ @ 0]]
			f11_local1( f11_arg0.PrematchCountdownNumbersSmall ) --[[ @ 0]]
			local f11_local2 = function ( f19_arg0 )
				local f19_local0 = function ( f20_arg0 )
					f20_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f20_arg0:setAlpha( 1 ) --[[ @ 0]]
					f20_arg0:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0.Message:beginAnimation( 630 ) --[[ @ 0]]
				f11_arg0.Message:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.Message:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.Message:completeAnimation() --[[ @ 0]]
			f11_arg0.Message:setAlpha( 0 ) --[[ @ 0]]
			f11_local2( f11_arg0.Message ) --[[ @ 0]]
		end,
		Stop = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f21_arg0.PrematchCountdownNumbers:completeAnimation() --[[ @ 0]]
			f21_arg0.PrematchCountdownNumbers:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.PrematchCountdownNumbers ) --[[ @ 0]]
			f21_arg0.PrematchCountdownNumbersSmall:completeAnimation() --[[ @ 0]]
			f21_arg0.PrematchCountdownNumbersSmall:setAlpha( 0.99 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.PrematchCountdownNumbersSmall ) --[[ @ 0]]
			f21_arg0.Message:completeAnimation() --[[ @ 0]]
			f21_arg0.Message:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.Message ) --[[ @ 0]]
		end,
		ShowObjectiveHint = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f22_arg0.PrematchCountdownNumbers:completeAnimation() --[[ @ 0]]
			f22_arg0.PrematchCountdownNumbers:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.PrematchCountdownNumbers ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				local f23_local0 = function ( f24_arg0 )
					local f24_local0 = function ( f25_arg0 )
						f25_arg0:beginAnimation( 1000 ) --[[ @ 0]]
						f25_arg0:setAlpha( 0 ) --[[ @ 0]]
						f25_arg0:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f24_arg0:beginAnimation( 3000 ) --[[ @ 0]]
					f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f22_arg0.GameTypeHintText:beginAnimation( 1000 ) --[[ @ 0]]
				f22_arg0.GameTypeHintText:setAlpha( 1 ) --[[ @ 0]]
				f22_arg0.GameTypeHintText:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.GameTypeHintText:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.GameTypeHintText:completeAnimation() --[[ @ 0]]
			f22_arg0.GameTypeHintText:setAlpha( 0 ) --[[ @ 0]]
			f22_local0( f22_arg0.GameTypeHintText ) --[[ @ 0]]
			local f22_local1 = function ( f26_arg0 )
				f22_arg0.DoubleXPNotification:beginAnimation( 2000 ) --[[ @ 0]]
				f22_arg0.DoubleXPNotification:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.DoubleXPNotification:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "Notify" ) --[[ @ 0]]
					f22_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.DoubleXPNotification:completeAnimation() --[[ @ 0]]
			f22_arg0.DoubleXPNotification:setAlpha( 1 ) --[[ @ 0]]
			f22_local1( f22_arg0.DoubleXPNotification ) --[[ @ 0]]
		end,
		GameStart = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f28_arg0.PrematchCountdownNumbers:completeAnimation() --[[ @ 0]]
			f28_arg0.PrematchCountdownNumbers:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.PrematchCountdownNumbers ) --[[ @ 0]]
			f28_arg0.PrematchCountdownNumbersSmall:completeAnimation() --[[ @ 0]]
			f28_arg0.PrematchCountdownNumbersSmall:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.PrematchCountdownNumbersSmall ) --[[ @ 0]]
			f28_arg0.GameTypeHintText:completeAnimation() --[[ @ 0]]
			f28_arg0.GameTypeHintText:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.GameTypeHintText ) --[[ @ 0]]
		end
	},
	WarzoneHardcore = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f29_arg0.PrematchCountdownNumbers:completeAnimation() --[[ @ 0]]
			f29_arg0.PrematchCountdownNumbers:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.PrematchCountdownNumbers ) --[[ @ 0]]
			f29_arg0.PrematchCountdownNumbersSmall:completeAnimation() --[[ @ 0]]
			f29_arg0.PrematchCountdownNumbersSmall:setTopBottom( 0, 0, 35, 95 ) --[[ @ 0]]
			f29_arg0.PrematchCountdownNumbersSmall:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.PrematchCountdownNumbersSmall ) --[[ @ 0]]
			f29_arg0.GameTypeHintText:completeAnimation() --[[ @ 0]]
			f29_arg0.GameTypeHintText:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.GameTypeHintText ) --[[ @ 0]]
			f29_arg0.Message:completeAnimation() --[[ @ 0]]
			f29_arg0.Message:setTopBottom( 0, 0, 47, 83 ) --[[ @ 0]]
			f29_arg0.Message:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.Message ) --[[ @ 0]]
		end,
		Minimize = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f30_local0 = function ( f31_arg0 )
				local f31_local0 = function ( f32_arg0 )
					local f32_local0 = function ( f33_arg0 )
						f33_arg0:beginAnimation( 230 ) --[[ @ 0]]
						f33_arg0:setAlpha( 0 ) --[[ @ 0]]
						f33_arg0:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f32_arg0:beginAnimation( 80 ) --[[ @ 0]]
					f32_arg0:setAlpha( 0.8 ) --[[ @ 0]]
					f32_arg0:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f30_arg0.PrematchCountdownNumbers:beginAnimation( 90 ) --[[ @ 0]]
				f30_arg0.PrematchCountdownNumbers:setAlpha( 0.5 ) --[[ @ 0]]
				f30_arg0.PrematchCountdownNumbers:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.PrematchCountdownNumbers:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.PrematchCountdownNumbers:completeAnimation() --[[ @ 0]]
			f30_arg0.PrematchCountdownNumbers:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f30_arg0.PrematchCountdownNumbers:setTopBottom( 0.5, 0.5, -45, 30 ) --[[ @ 0]]
			f30_arg0.PrematchCountdownNumbers:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.PrematchCountdownNumbers:setScale( 1, 1 ) --[[ @ 0]]
			f30_local0( f30_arg0.PrematchCountdownNumbers ) --[[ @ 0]]
			local f30_local1 = function ( f34_arg0 )
				local f34_local0 = function ( f35_arg0 )
					local f35_local0 = function ( f36_arg0 )
						local f36_local0 = function ( f37_arg0 )
							f37_arg0:beginAnimation( 69 ) --[[ @ 0]]
							f37_arg0:setAlpha( 1 ) --[[ @ 0]]
							f37_arg0:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f36_arg0:beginAnimation( 60 ) --[[ @ 0]]
						f36_arg0:setAlpha( 0.1 ) --[[ @ 0]]
						f36_arg0:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f35_arg0:beginAnimation( 69 ) --[[ @ 0]]
					f35_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f30_arg0.PrematchCountdownNumbersSmall:beginAnimation( 630 ) --[[ @ 0]]
				f30_arg0.PrematchCountdownNumbersSmall:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.PrematchCountdownNumbersSmall:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.PrematchCountdownNumbersSmall:completeAnimation() --[[ @ 0]]
			f30_arg0.PrematchCountdownNumbersSmall:setTopBottom( 0, 0, 35, 95 ) --[[ @ 0]]
			f30_arg0.PrematchCountdownNumbersSmall:setAlpha( 0 ) --[[ @ 0]]
			f30_local1( f30_arg0.PrematchCountdownNumbersSmall ) --[[ @ 0]]
			local f30_local2 = function ( f38_arg0 )
				local f38_local0 = function ( f39_arg0 )
					f39_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f39_arg0:setAlpha( 1 ) --[[ @ 0]]
					f39_arg0:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f30_arg0.Message:beginAnimation( 630 ) --[[ @ 0]]
				f30_arg0.Message:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.Message:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.Message:completeAnimation() --[[ @ 0]]
			f30_arg0.Message:setTopBottom( 0, 0, 47, 83 ) --[[ @ 0]]
			f30_arg0.Message:setAlpha( 0 ) --[[ @ 0]]
			f30_local2( f30_arg0.Message ) --[[ @ 0]]
		end,
		Stop = function ( f40_arg0, f40_arg1 )
			f40_arg0:__resetProperties() --[[ @ 0]]
			f40_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f40_arg0.PrematchCountdownNumbers:completeAnimation() --[[ @ 0]]
			f40_arg0.PrematchCountdownNumbers:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.PrematchCountdownNumbers ) --[[ @ 0]]
			f40_arg0.PrematchCountdownNumbersSmall:completeAnimation() --[[ @ 0]]
			f40_arg0.PrematchCountdownNumbersSmall:setTopBottom( 0, 0, 35, 95 ) --[[ @ 0]]
			f40_arg0.PrematchCountdownNumbersSmall:setAlpha( 0.99 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.PrematchCountdownNumbersSmall ) --[[ @ 0]]
			f40_arg0.Message:completeAnimation() --[[ @ 0]]
			f40_arg0.Message:setTopBottom( 0, 0, 47, 83 ) --[[ @ 0]]
			f40_arg0.Message:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.Message ) --[[ @ 0]]
		end,
		ShowObjectiveHint = function ( f41_arg0, f41_arg1 )
			f41_arg0:__resetProperties() --[[ @ 0]]
			f41_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f41_arg0.PrematchCountdownNumbers:completeAnimation() --[[ @ 0]]
			f41_arg0.PrematchCountdownNumbers:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.PrematchCountdownNumbers ) --[[ @ 0]]
			local f41_local0 = function ( f42_arg0 )
				local f42_local0 = function ( f43_arg0 )
					local f43_local0 = function ( f44_arg0 )
						f44_arg0:beginAnimation( 1000 ) --[[ @ 0]]
						f44_arg0:setAlpha( 0 ) --[[ @ 0]]
						f44_arg0:registerEventHandler( "transition_complete_keyframe", f41_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f43_arg0:beginAnimation( 3000 ) --[[ @ 0]]
					f43_arg0:registerEventHandler( "transition_complete_keyframe", f43_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f41_arg0.GameTypeHintText:beginAnimation( 1000 ) --[[ @ 0]]
				f41_arg0.GameTypeHintText:setAlpha( 1 ) --[[ @ 0]]
				f41_arg0.GameTypeHintText:registerEventHandler( "interrupted_keyframe", f41_arg0.clipInterrupted ) --[[ @ 0]]
				f41_arg0.GameTypeHintText:registerEventHandler( "transition_complete_keyframe", f42_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f41_arg0.GameTypeHintText:completeAnimation() --[[ @ 0]]
			f41_arg0.GameTypeHintText:setAlpha( 0 ) --[[ @ 0]]
			f41_local0( f41_arg0.GameTypeHintText ) --[[ @ 0]]
			local f41_local1 = function ( f45_arg0 )
				f41_arg0.DoubleXPNotification:beginAnimation( 2000 ) --[[ @ 0]]
				f41_arg0.DoubleXPNotification:registerEventHandler( "interrupted_keyframe", f41_arg0.clipInterrupted ) --[[ @ 0]]
				f41_arg0.DoubleXPNotification:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "Notify" ) --[[ @ 0]]
					f41_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f41_arg0.DoubleXPNotification:completeAnimation() --[[ @ 0]]
			f41_arg0.DoubleXPNotification:setAlpha( 1 ) --[[ @ 0]]
			f41_local1( f41_arg0.DoubleXPNotification ) --[[ @ 0]]
		end,
		GameStart = function ( f47_arg0, f47_arg1 )
			f47_arg0:__resetProperties() --[[ @ 0]]
			f47_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f47_arg0.PrematchCountdownNumbers:completeAnimation() --[[ @ 0]]
			f47_arg0.PrematchCountdownNumbers:setAlpha( 1 ) --[[ @ 0]]
			f47_arg0.clipFinished( f47_arg0.PrematchCountdownNumbers ) --[[ @ 0]]
			f47_arg0.PrematchCountdownNumbersSmall:completeAnimation() --[[ @ 0]]
			f47_arg0.PrematchCountdownNumbersSmall:setTopBottom( 0, 0, 35, 95 ) --[[ @ 0]]
			f47_arg0.PrematchCountdownNumbersSmall:setAlpha( 0 ) --[[ @ 0]]
			f47_arg0.clipFinished( f47_arg0.PrematchCountdownNumbersSmall ) --[[ @ 0]]
			f47_arg0.GameTypeHintText:completeAnimation() --[[ @ 0]]
			f47_arg0.GameTypeHintText:setAlpha( 0 ) --[[ @ 0]]
			f47_arg0.clipFinished( f47_arg0.GameTypeHintText ) --[[ @ 0]]
			f47_arg0.Message:completeAnimation() --[[ @ 0]]
			f47_arg0.Message:setTopBottom( 0, 0, 47, 83 ) --[[ @ 0]]
			f47_arg0.clipFinished( f47_arg0.Message ) --[[ @ 0]]
		end
	},
	HiddenPC = {
		DefaultClip = function ( f48_arg0, f48_arg1 )
			f48_arg0:__resetProperties() --[[ @ 0]]
			f48_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f48_arg0.PrematchCountdownNumbers:completeAnimation() --[[ @ 0]]
			f48_arg0.PrematchCountdownNumbers:setAlpha( 0 ) --[[ @ 0]]
			f48_arg0.clipFinished( f48_arg0.PrematchCountdownNumbers ) --[[ @ 0]]
			f48_arg0.PrematchCountdownNumbersSmall:completeAnimation() --[[ @ 0]]
			f48_arg0.PrematchCountdownNumbersSmall:setAlpha( 0 ) --[[ @ 0]]
			f48_arg0.clipFinished( f48_arg0.PrematchCountdownNumbersSmall ) --[[ @ 0]]
			f48_arg0.GameTypeHintText:completeAnimation() --[[ @ 0]]
			f48_arg0.GameTypeHintText:setAlpha( 0 ) --[[ @ 0]]
			f48_arg0.clipFinished( f48_arg0.GameTypeHintText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.HoldingPenNotification.__onClose = function ( f49_arg0 )
	f49_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f49_arg0.PrematchCountdownNumbers:close() --[[ @ 0]]
	f49_arg0.PrematchCountdownNumbersSmall:close() --[[ @ 0]]
	f49_arg0.GameTypeHintText:close() --[[ @ 0]]
	f49_arg0.DoubleXPNotification:close() --[[ @ 0]]
end
 --[[ @ 0]]
