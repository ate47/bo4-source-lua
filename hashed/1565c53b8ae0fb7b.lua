-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:32
require( "ui/uieditor/widgets/hud/console/console" ) --[[ @ 0]]
require( "x64:2902a4f3984494c3" ) --[[ @ 0]]

CoD.ObitInfoFeedContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ObitInfoFeedContainer.__defaultWidth = 500 --[[ @ 0]]
CoD.ObitInfoFeedContainer.__defaultHeight = 360 --[[ @ 0]]
CoD.ObitInfoFeedContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ObitInfoFeedContainer ) --[[ @ 0]]
	self.id = "ObitInfoFeedContainer" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Obituary = CoD.Obituary.new( f1_arg0, f1_arg1, 0, 0, 0, 500, 0, 0, 150, 360 ) --[[ @ 0]]
	self:addElement( Obituary ) --[[ @ 0]]
	self.Obituary = Obituary --[[ @ 0]]
	
	local Console = CoD.Console.new( f1_arg0, f1_arg1, 0, 0, 0, 1020, 0, 0, 0, 150 ) --[[ @ 0]]
	self:addElement( Console ) --[[ @ 0]]
	self.Console = Console --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "CodCasterVisible",
			condition = function ( menu, element, event )
				local f2_local0 = IsCodCaster( f1_arg1 ) --[[ @ 0]]
				if f2_local0 then
					f2_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_calloutcards", 1 ) --[[ @ 0]]
					if f2_local0 then
						f2_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_killfeed", 1 ) --[[ @ 0]]
					end
				end
				return f2_local0
			end
		},
		{
			stateName = "CodCasterVisibleConsole",
			condition = function ( menu, element, event )
				local f3_local0 = IsCodCaster( f1_arg1 ) --[[ @ 0]]
				if f3_local0 then
					f3_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_calloutcards", 1 ) --[[ @ 0]]
					if f3_local0 then
						f3_local0 = not CoD.CodCasterUtility.IsCodCasterWithProfileValueEqualTo( f1_arg1, "shoutcaster_ds_killfeed", 1 ) --[[ @ 0]]
					end
				end
				return f3_local0
			end
		},
		{
			stateName = "CodCasterVisibleObituary",
			condition = function ( menu, element, event )
				local f4_local0 = IsCodCaster( f1_arg1 ) --[[ @ 0]]
				if f4_local0 then
					if not CoD.CodCasterUtility.IsCodCasterWithProfileValueEqualTo( f1_arg1, "shoutcaster_ds_calloutcards", 1 ) then
						f4_local0 = CoD.CodCasterUtility.IsCodCasterWithProfileValueEqualTo( f1_arg1, "shoutcaster_ds_killfeed", 1 ) --[[ @ 0]]
					else
						f4_local0 = false --[[ @ 0]]
					end
				end
				return f4_local0
			end
		},
		{
			stateName = "VisibleKillcam",
			condition = function ( menu, element, event )
				return Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"] ) and not IsCodCaster( f1_arg1 )
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return not IsCodCaster( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["factions.isCoDCaster"], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "factions.isCoDCaster"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = DataSources.CodCaster.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.profileSettingsUpdated, function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "profileSettingsUpdated"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"]], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ObitInfoFeedContainer.__resetProperties = function ( f10_arg0 )
	f10_arg0.Obituary:completeAnimation() --[[ @ 0]]
	f10_arg0.Console:completeAnimation() --[[ @ 0]]
	f10_arg0.Obituary:setTopBottom( 0, 0, 150, 360 ) --[[ @ 0]]
	f10_arg0.Obituary:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.Console:setTopBottom( 0, 0, 0, 150 ) --[[ @ 0]]
	f10_arg0.Console:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ObitInfoFeedContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f11_arg0.Obituary:completeAnimation() --[[ @ 0]]
			f11_arg0.Obituary:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Obituary ) --[[ @ 0]]
			f11_arg0.Console:completeAnimation() --[[ @ 0]]
			f11_arg0.Console:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Console ) --[[ @ 0]]
		end
	},
	CodCasterVisible = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	CodCasterVisibleConsole = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f13_arg0.Obituary:completeAnimation() --[[ @ 0]]
			f13_arg0.Obituary:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Obituary ) --[[ @ 0]]
		end
	},
	CodCasterVisibleObituary = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.Console:completeAnimation() --[[ @ 0]]
			f14_arg0.Console:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Console ) --[[ @ 0]]
		end
	},
	VisibleKillcam = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f15_arg0.Obituary:completeAnimation() --[[ @ 0]]
			f15_arg0.Obituary:setTopBottom( 0, 0, 75, 285 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Obituary ) --[[ @ 0]]
			f15_arg0.Console:completeAnimation() --[[ @ 0]]
			f15_arg0.Console:setTopBottom( 0, 0, -75, 75 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Console ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		VisibleKillcam = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					local f19_local0 = function ( f20_arg0 )
						f20_arg0:beginAnimation( 19 ) --[[ @ 0]]
						f20_arg0:setAlpha( 1 ) --[[ @ 0]]
						f20_arg0:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f19_arg0:beginAnimation( 180 ) --[[ @ 0]]
					f19_arg0:setTopBottom( 0, 0, 75, 285 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0.Obituary:beginAnimation( 20 ) --[[ @ 0]]
				f17_arg0.Obituary:setAlpha( 0 ) --[[ @ 0]]
				f17_arg0.Obituary:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.Obituary:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.Obituary:completeAnimation() --[[ @ 0]]
			f17_arg0.Obituary:setTopBottom( 0, 0, 150, 360 ) --[[ @ 0]]
			f17_arg0.Obituary:setAlpha( 1 ) --[[ @ 0]]
			f17_local0( f17_arg0.Obituary ) --[[ @ 0]]
			local f17_local1 = function ( f21_arg0 )
				local f21_local0 = function ( f22_arg0 )
					local f22_local0 = function ( f23_arg0 )
						f23_arg0:beginAnimation( 19 ) --[[ @ 0]]
						f23_arg0:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f22_arg0:beginAnimation( 180 ) --[[ @ 0]]
					f22_arg0:setTopBottom( 0, 0, -75, 75 ) --[[ @ 0]]
					f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0.Console:beginAnimation( 20 ) --[[ @ 0]]
				f17_arg0.Console:setAlpha( 0 ) --[[ @ 0]]
				f17_arg0.Console:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.Console:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.Console:completeAnimation() --[[ @ 0]]
			f17_arg0.Console:setTopBottom( 0, 0, 0, 150 ) --[[ @ 0]]
			f17_arg0.Console:setAlpha( 1 ) --[[ @ 0]]
			f17_local1( f17_arg0.Console ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ObitInfoFeedContainer.__onClose = function ( f24_arg0 )
	f24_arg0.Obituary:close() --[[ @ 0]]
	f24_arg0.Console:close() --[[ @ 0]]
end
 --[[ @ 0]]
