-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.ZMAARStampWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMAARStampWidget.__defaultWidth = 340 --[[ @ 0]]
CoD.ZMAARStampWidget.__defaultHeight = 80 --[[ @ 0]]
CoD.ZMAARStampWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZMAARStampWidget ) --[[ @ 0]]
	self.id = "ZMAARStampWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local StampName = LUI.UIText.new( 0, 0, -33, 291, 0, 0, 26.5, 51.5 ) --[[ @ 0]]
	StampName:setText( CoD.AARUtility.GetAARStamp( f1_arg1, "RED GREEN BLUE PURPLE" ) ) --[[ @ 0]]
	StampName:setTTF( "skorzhen" ) --[[ @ 0]]
	StampName:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	StampName:setLetterSpacing( 2 ) --[[ @ 0]]
	StampName:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	StampName:setBackingType( 2 ) --[[ @ 0]]
	StampName:setBackingXPadding( 24 ) --[[ @ 0]]
	StampName:setBackingYPadding( 8 ) --[[ @ 0]]
	StampName:setBackingImage( RegisterImage( @"uie_ui_hud_zm_aar_obj_bg" ) ) --[[ @ 0]]
	self:addElement( StampName ) --[[ @ 0]]
	self.StampName = StampName --[[ @ 0]]
	
	local Stamp = LUI.UIImage.new( 0, 0, 290, 340, 0, 0, 15, 65 ) --[[ @ 0]]
	Stamp:setImage( RegisterImage( @"hash_151A5D15E57F49CE" ) ) --[[ @ 0]]
	self:addElement( Stamp ) --[[ @ 0]]
	self.Stamp = Stamp --[[ @ 0]]
	
	local URL = LUI.UIText.new( 0, 0, 98, 298, 0, 0, 49, 65 ) --[[ @ 0]]
	URL:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4D8599B289858EC4" ) ) --[[ @ 0]]
	URL:setTTF( "dinnext_regular" ) --[[ @ 0]]
	URL:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	self:addElement( URL ) --[[ @ 0]]
	self.URL = URL --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible_Korea",
			condition = function ( menu, element, event )
				local f2_local0 = IsZombies() --[[ @ 0]]
				if f2_local0 then
					if not IsLAN() then
						f2_local0 = CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "AAR.activeTab", CoD.AARUtility.AARTabs.AAR_SUMMARY ) --[[ @ 0]]
						if f2_local0 then
							f2_local0 = IsCurrentLanguageKorean() --[[ @ 0]]
							if f2_local0 then
								f2_local0 = IsPC() --[[ @ 0]]
								if f2_local0 then
									f2_local0 = CoD.AARUtility.AARMatchIDValid( f1_arg1 ) --[[ @ 0]]
								end
							end
						end
					else
						f2_local0 = false --[[ @ 0]]
					end
				end
				return f2_local0
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				local f3_local0 = IsZombies() --[[ @ 0]]
				if f3_local0 then
					if not IsLAN() then
						f3_local0 = CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "AAR.activeTab", CoD.AARUtility.AARTabs.AAR_SUMMARY ) --[[ @ 0]]
						if f3_local0 then
							f3_local0 = CoD.BaseUtility.IsDvarEnabled( "ui_showZMAARStamp" ) --[[ @ 0]]
							if f3_local0 then
								f3_local0 = CoD.AARUtility.AARMatchIDValid( f1_arg1 ) --[[ @ 0]]
							end
						end
					else
						f3_local0 = false --[[ @ 0]]
					end
				end
				return f3_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = self --[[ @ 0]]
	local f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["lobbyRoot.lobbyNav"], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["lobbyRoot.lobbyNetworkMode"], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "lobbyRoot.lobbyNetworkMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["AAR.activeTab"], function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "AAR.activeTab"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMAARStampWidget.__resetProperties = function ( f7_arg0 )
	f7_arg0.Stamp:completeAnimation() --[[ @ 0]]
	f7_arg0.StampName:completeAnimation() --[[ @ 0]]
	f7_arg0.URL:completeAnimation() --[[ @ 0]]
	f7_arg0.Stamp:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.StampName:setTopBottom( 0, 0, 26.5, 51.5 ) --[[ @ 0]]
	f7_arg0.StampName:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.URL:setTopBottom( 0, 0, 49, 65 ) --[[ @ 0]]
	f7_arg0.URL:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMAARStampWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f8_arg0.StampName:completeAnimation() --[[ @ 0]]
			f8_arg0.StampName:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.StampName ) --[[ @ 0]]
			f8_arg0.Stamp:completeAnimation() --[[ @ 0]]
			f8_arg0.Stamp:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Stamp ) --[[ @ 0]]
			f8_arg0.URL:completeAnimation() --[[ @ 0]]
			f8_arg0.URL:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.URL ) --[[ @ 0]]
		end
	},
	Visible_Korea = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f9_arg0.StampName:completeAnimation() --[[ @ 0]]
			f9_arg0.StampName:setTopBottom( 0, 0, 26.5, 46.5 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.StampName ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						f12_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f11_arg0:setAlpha( 1 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.Stamp:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f9_arg0.Stamp:setAlpha( 0.5 ) --[[ @ 0]]
				f9_arg0.Stamp:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.Stamp:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.Stamp:completeAnimation() --[[ @ 0]]
			f9_arg0.Stamp:setAlpha( 1 ) --[[ @ 0]]
			f9_local0( f9_arg0.Stamp ) --[[ @ 0]]
			f9_arg0.URL:completeAnimation() --[[ @ 0]]
			f9_arg0.URL:setTopBottom( 0, 0, 49, 64 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.URL ) --[[ @ 0]]
			f9_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					local f15_local0 = function ( f16_arg0 )
						f16_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f16_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f15_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f15_arg0:setAlpha( 1 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.Stamp:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f13_arg0.Stamp:setAlpha( 0.5 ) --[[ @ 0]]
				f13_arg0.Stamp:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.Stamp:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.Stamp:completeAnimation() --[[ @ 0]]
			f13_arg0.Stamp:setAlpha( 1 ) --[[ @ 0]]
			f13_local0( f13_arg0.Stamp ) --[[ @ 0]]
			f13_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
if not CoD.isPC then
	CoD.ZMAARStampWidget.__clipsPerState.Visible_Korea.DefaultClip = nil --[[ @ 0]]
end
