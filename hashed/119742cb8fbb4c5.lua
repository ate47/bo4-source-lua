-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:32
require( "ui/uieditor/widgets/pc/hud/pc_progresscirclebacking" ) --[[ @ 0]]
require( "x64:5ebb9f711d489cde" ) --[[ @ 0]]

CoD.seeker_mine_prompt = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.seeker_mine_prompt = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "seeker_mine_prompt", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.seeker_mine_prompt ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.ignoreCursor = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local progressRing = LUI.UIImage.new( 0.5, 0.5, -57, 57, 0, 0, 765.5, 879.5 ) --[[ @ 0]]
	progressRing:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	progressRing:setScale( 0.9, 0.9 ) --[[ @ 0]]
	progressRing:setImage( RegisterImage( @"uie_ui_icon_controller_radial_fill_hud_lg" ) ) --[[ @ 0]]
	progressRing:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	progressRing:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressRing:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressRing:setShaderVector( 3, 0, 1, 0, 0 ) --[[ @ 0]]
	progressRing:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	progressRing:linkToElementModel( self, "progress", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			progressRing:setShaderVector( 0, CoD.GetVectorComponentFromString( f2_local0, 1 ), CoD.GetVectorComponentFromString( f2_local0, 2 ), CoD.GetVectorComponentFromString( f2_local0, 3 ), CoD.GetVectorComponentFromString( f2_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( progressRing ) --[[ @ 0]]
	self.progressRing = progressRing --[[ @ 0]]
	
	local pulse = LUI.UIImage.new( 0.5, 0.5, -45, 45, 0, 0, 777.5, 867.5 ) --[[ @ 0]]
	pulse:setAlpha( 0.4 ) --[[ @ 0]]
	pulse:setScale( 0.9, 0.9 ) --[[ @ 0]]
	pulse:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_elliptical_ring_normal" ) ) --[[ @ 0]]
	pulse:setShaderVector( 0, 10, 0, 0, 0 ) --[[ @ 0]]
	pulse:setShaderVector( 1, 128, 128, 0, 0 ) --[[ @ 0]]
	pulse:setShaderVector( 2, 0.24, 0.22, 0, 0 ) --[[ @ 0]]
	self:addElement( pulse ) --[[ @ 0]]
	self.pulse = pulse --[[ @ 0]]
	
	local f1_local4 = nil --[[ @ 0]]
	self.buttonImage = LUI.UIElement.createFake() --[[ @ 0]]
	local PCProgressCircleBacking = nil --[[ @ 0]]
	
	PCProgressCircleBacking = CoD.PC_ProgressCircleBacking.new( f1_local1, f1_arg0, 0.5, 0.5, -45, 45, 0, 0, 777.5, 867.5 ) --[[ @ 0]]
	PCProgressCircleBacking:mergeStateConditions( {
		{
			stateName = "SeekerMine",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	PCProgressCircleBacking:setScale( 0.9, 0.9 ) --[[ @ 0]]
	self:addElement( PCProgressCircleBacking ) --[[ @ 0]]
	self.PCProgressCircleBacking = PCProgressCircleBacking --[[ @ 0]]
	
	local ThumbsUp = LUI.UIImage.new( 0.5, 0.5, -39.5, 40.5, 0, 0, 782.5, 862.5 ) --[[ @ 0]]
	ThumbsUp:setRGB( ColorSet.T8__GREEN.r, ColorSet.T8__GREEN.g, ColorSet.T8__GREEN.b ) --[[ @ 0]]
	ThumbsUp:setAlpha( 0 ) --[[ @ 0]]
	ThumbsUp:setImage( RegisterImage( @"uie_ui_hud_icon_seekermine_success" ) ) --[[ @ 0]]
	ThumbsUp:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	ThumbsUp:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ThumbsUp ) --[[ @ 0]]
	self.ThumbsUp = ThumbsUp --[[ @ 0]]
	
	local PCtext = nil --[[ @ 0]]
	
	PCtext = CoD.PC_SeekerMine_Text.new( f1_local1, f1_arg0, 0.5, 0.5, -150, 150, 0.1, 0.1, 761, 791 ) --[[ @ 0]]
	self:addElement( PCtext ) --[[ @ 0]]
	self.PCtext = PCtext --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Fail",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, f1_arg0, "promptState", 3 ) and not Engine[@"IsVisibilityBitSet"]( f1_arg0, Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"] )
			end
		},
		{
			stateName = "Success",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, f1_arg0, "promptState", 1 ) and not Engine[@"IsVisibilityBitSet"]( f1_arg0, Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"] )
			end
		},
		{
			stateName = "Started",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, f1_arg0, "promptState", 0 ) and not Engine[@"IsVisibilityBitSet"]( f1_arg0, Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"] )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "promptState", true, function ( model )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "promptState"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local8 = self --[[ @ 0]]
	local f1_local9 = self.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"GetModelForController"]( f1_arg0 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"]], function ( f8_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f8_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.seeker_mine_prompt.__resetProperties = function ( f9_arg0 )
	f9_arg0.ThumbsUp:completeAnimation() --[[ @ 0]]
	f9_arg0.progressRing:completeAnimation() --[[ @ 0]]
	f9_arg0.buttonImage:completeAnimation() --[[ @ 0]]
	f9_arg0.pulse:completeAnimation() --[[ @ 0]]
	f9_arg0.PCProgressCircleBacking:completeAnimation() --[[ @ 0]]
	f9_arg0.ThumbsUp:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.ThumbsUp:setScale( 1, 1 ) --[[ @ 0]]
	f9_arg0.progressRing:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.progressRing:setScale( 0.9, 0.9 ) --[[ @ 0]]
	f9_arg0.progressRing:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	f9_arg0.progressRing:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	f9_arg0.progressRing:setShaderVector( 3, 0, 1, 0, 0 ) --[[ @ 0]]
	f9_arg0.progressRing:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f9_arg0.buttonImage:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f9_arg0.buttonImage:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.buttonImage:setScale( 0.9, 0.9 ) --[[ @ 0]]
	f9_arg0.pulse:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f9_arg0.pulse:setAlpha( 0.4 ) --[[ @ 0]]
	f9_arg0.pulse:setScale( 0.9, 0.9 ) --[[ @ 0]]
	f9_arg0.pulse:setShaderVector( 0, 10, 0, 0, 0 ) --[[ @ 0]]
	f9_arg0.pulse:setShaderVector( 1, 128, 128, 0, 0 ) --[[ @ 0]]
	f9_arg0.pulse:setShaderVector( 2, 0.24, 0.22, 0, 0 ) --[[ @ 0]]
	f9_arg0.PCProgressCircleBacking:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f9_arg0.PCProgressCircleBacking:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.PCProgressCircleBacking:setScale( 0.9, 0.9 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.seeker_mine_prompt.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f10_arg0.progressRing:completeAnimation() --[[ @ 0]]
			f10_arg0.progressRing:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.progressRing ) --[[ @ 0]]
			f10_arg0.pulse:completeAnimation() --[[ @ 0]]
			f10_arg0.pulse:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.pulse ) --[[ @ 0]]
			f10_arg0.buttonImage:completeAnimation() --[[ @ 0]]
			f10_arg0.buttonImage:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.buttonImage ) --[[ @ 0]]
			f10_arg0.ThumbsUp:completeAnimation() --[[ @ 0]]
			f10_arg0.ThumbsUp:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.ThumbsUp ) --[[ @ 0]]
		end
	},
	Fail = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f11_arg0.progressRing:completeAnimation() --[[ @ 0]]
			f11_arg0.progressRing:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.progressRing ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					f13_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f13_arg0:setAlpha( 0 ) --[[ @ 0]]
					f13_arg0:setScale( 1.4, 1.4 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0.pulse:beginAnimation( 250 ) --[[ @ 0]]
				f11_arg0.pulse:setAlpha( 0.2 ) --[[ @ 0]]
				f11_arg0.pulse:setScale( 1.3, 1.3 ) --[[ @ 0]]
				f11_arg0.pulse:setShaderVector( 0, 20, 0, 0, 0 ) --[[ @ 0]]
				f11_arg0.pulse:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.pulse:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.pulse:completeAnimation() --[[ @ 0]]
			f11_arg0.pulse:setRGB( ColorSet.T8__RED.r, ColorSet.T8__RED.g, ColorSet.T8__RED.b ) --[[ @ 0]]
			f11_arg0.pulse:setAlpha( 0.4 ) --[[ @ 0]]
			f11_arg0.pulse:setScale( 0.9, 0.9 ) --[[ @ 0]]
			f11_arg0.pulse:setShaderVector( 0, 10, 0, 0, 0 ) --[[ @ 0]]
			f11_arg0.pulse:setShaderVector( 1, 128, 128, 0, 0 ) --[[ @ 0]]
			f11_arg0.pulse:setShaderVector( 2, 0.24, 0.22, 0, 0 ) --[[ @ 0]]
			f11_local0( f11_arg0.pulse ) --[[ @ 0]]
			f11_arg0.buttonImage:completeAnimation() --[[ @ 0]]
			f11_arg0.buttonImage:setRGB( 0, 0, 0 ) --[[ @ 0]]
			f11_arg0.buttonImage:setAlpha( 0.75 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.buttonImage ) --[[ @ 0]]
			f11_arg0.PCProgressCircleBacking:completeAnimation() --[[ @ 0]]
			f11_arg0.PCProgressCircleBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
			f11_arg0.PCProgressCircleBacking:setAlpha( 0.75 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.PCProgressCircleBacking ) --[[ @ 0]]
		end
	},
	Success = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				f14_arg0.progressRing:beginAnimation( 120 ) --[[ @ 0]]
				f14_arg0.progressRing:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.progressRing:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.progressRing:completeAnimation() --[[ @ 0]]
			f14_arg0.progressRing:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.progressRing:setScale( 0.01, 0.9 ) --[[ @ 0]]
			f14_local0( f14_arg0.progressRing ) --[[ @ 0]]
			local f14_local1 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					f17_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f17_arg0:setAlpha( 0 ) --[[ @ 0]]
					f17_arg0:setScale( 1.4, 1.4 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f16_arg0:beginAnimation( 199 ) --[[ @ 0]]
				f16_arg0:setAlpha( 0.2 ) --[[ @ 0]]
				f16_arg0:setScale( 1.3, 1.3 ) --[[ @ 0]]
				f16_arg0:setShaderVector( 0, 20, 0, 0, 0 ) --[[ @ 0]]
				f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.pulse:beginAnimation( 10 ) --[[ @ 0]]
			f14_arg0.pulse:setRGB( ColorSet.T8__GREEN.r, ColorSet.T8__GREEN.g, ColorSet.T8__GREEN.b ) --[[ @ 0]]
			f14_arg0.pulse:setAlpha( 0.4 ) --[[ @ 0]]
			f14_arg0.pulse:setScale( 0.9, 0.9 ) --[[ @ 0]]
			f14_arg0.pulse:setShaderVector( 0, 10, 0, 0, 0 ) --[[ @ 0]]
			f14_arg0.pulse:setShaderVector( 1, 128, 128, 0, 0 ) --[[ @ 0]]
			f14_arg0.pulse:setShaderVector( 2, 0.24, 0.22, 0, 0 ) --[[ @ 0]]
			f14_arg0.pulse:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
			f14_arg0.pulse:registerEventHandler( "transition_complete_keyframe", f14_local1 ) --[[ @ 0]]
			f14_arg0.buttonImage:completeAnimation() --[[ @ 0]]
			f14_arg0.buttonImage:setScale( 0.9, 0.9 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.buttonImage ) --[[ @ 0]]
			local f14_local2 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					f19_arg0:beginAnimation( 80 ) --[[ @ 0]]
					f19_arg0:setScale( 1.1, 1.1 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f14_arg0.ThumbsUp:beginAnimation( 120, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f14_arg0.ThumbsUp:setAlpha( 1 ) --[[ @ 0]]
				f14_arg0.ThumbsUp:setScale( 0.9, 0.9 ) --[[ @ 0]]
				f14_arg0.ThumbsUp:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.ThumbsUp:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.ThumbsUp:completeAnimation() --[[ @ 0]]
			f14_arg0.ThumbsUp:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.ThumbsUp:setScale( 3, 3 ) --[[ @ 0]]
			f14_local2( f14_arg0.ThumbsUp ) --[[ @ 0]]
		end
	},
	Started = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f20_local0 = function ( f21_arg0 )
				local f21_local0 = function ( f22_arg0 )
					local f22_local0 = function ( f23_arg0 )
						local f23_local0 = function ( f24_arg0 )
							f24_arg0:beginAnimation( 250 ) --[[ @ 0]]
							f24_arg0:setScale( 0.9, 0.9 ) --[[ @ 0]]
							f24_arg0:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f23_arg0:beginAnimation( 250 ) --[[ @ 0]]
						f23_arg0:setScale( 1, 1 ) --[[ @ 0]]
						f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f22_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f22_arg0:setScale( 0.9, 0.9 ) --[[ @ 0]]
					f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f20_arg0.progressRing:beginAnimation( 250 ) --[[ @ 0]]
				f20_arg0.progressRing:setScale( 1, 1 ) --[[ @ 0]]
				f20_arg0.progressRing:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.progressRing:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.progressRing:completeAnimation() --[[ @ 0]]
			f20_arg0.progressRing:setScale( 0.9, 0.9 ) --[[ @ 0]]
			f20_arg0.progressRing:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
			f20_arg0.progressRing:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
			f20_arg0.progressRing:setShaderVector( 3, 0, 1, 0, 0 ) --[[ @ 0]]
			f20_arg0.progressRing:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f20_local0( f20_arg0.progressRing ) --[[ @ 0]]
			local f20_local1 = function ( f25_arg0 )
				local f25_local0 = function ( f26_arg0 )
					local f26_local0 = function ( f27_arg0 )
						local f27_local0 = function ( f28_arg0 )
							local f28_local0 = function ( f29_arg0 )
								f29_arg0:beginAnimation( 249 ) --[[ @ 0]]
								f29_arg0:setAlpha( 0 ) --[[ @ 0]]
								f29_arg0:setScale( 1.4, 1.4 ) --[[ @ 0]]
								f29_arg0:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f28_arg0:beginAnimation( 240 ) --[[ @ 0]]
							f28_arg0:setAlpha( 0.2 ) --[[ @ 0]]
							f28_arg0:setScale( 1.3, 1.3 ) --[[ @ 0]]
							f28_arg0:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f27_arg0:beginAnimation( 9 ) --[[ @ 0]]
						f27_arg0:setAlpha( 0.4 ) --[[ @ 0]]
						f27_arg0:setScale( 0.9, 0.9 ) --[[ @ 0]]
						f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f26_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f26_arg0:setAlpha( 0 ) --[[ @ 0]]
					f26_arg0:setScale( 1.4, 1.4 ) --[[ @ 0]]
					f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f25_arg0:beginAnimation( 250 ) --[[ @ 0]]
				f25_arg0:setAlpha( 0.2 ) --[[ @ 0]]
				f25_arg0:setScale( 1.3, 1.3 ) --[[ @ 0]]
				f25_arg0:setShaderVector( 0, 20, 0, 0, 0 ) --[[ @ 0]]
				f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.pulse:beginAnimation( 40 ) --[[ @ 0]]
			f20_arg0.pulse:setAlpha( 0.4 ) --[[ @ 0]]
			f20_arg0.pulse:setScale( 0.9, 0.9 ) --[[ @ 0]]
			f20_arg0.pulse:setShaderVector( 0, 10, 0, 0, 0 ) --[[ @ 0]]
			f20_arg0.pulse:setShaderVector( 1, 128, 128, 0, 0 ) --[[ @ 0]]
			f20_arg0.pulse:setShaderVector( 2, 0.24, 0.22, 0, 0 ) --[[ @ 0]]
			f20_arg0.pulse:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
			f20_arg0.pulse:registerEventHandler( "transition_complete_keyframe", f20_local1 ) --[[ @ 0]]
			local f20_local2 = function ( f30_arg0 )
				local f30_local0 = function ( f31_arg0 )
					local f31_local0 = function ( f32_arg0 )
						local f32_local0 = function ( f33_arg0 )
							f33_arg0:beginAnimation( 250 ) --[[ @ 0]]
							f33_arg0:setScale( 0.9, 0.9 ) --[[ @ 0]]
							f33_arg0:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f32_arg0:beginAnimation( 250 ) --[[ @ 0]]
						f32_arg0:setScale( 1, 1 ) --[[ @ 0]]
						f32_arg0:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f31_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f31_arg0:setScale( 0.9, 0.9 ) --[[ @ 0]]
					f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f20_arg0.buttonImage:beginAnimation( 250 ) --[[ @ 0]]
				f20_arg0.buttonImage:setScale( 1, 1 ) --[[ @ 0]]
				f20_arg0.buttonImage:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.buttonImage:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.buttonImage:completeAnimation() --[[ @ 0]]
			f20_arg0.buttonImage:setScale( 0.9, 0.9 ) --[[ @ 0]]
			f20_local2( f20_arg0.buttonImage ) --[[ @ 0]]
			local f20_local3 = function ( f34_arg0 )
				local f34_local0 = function ( f35_arg0 )
					local f35_local0 = function ( f36_arg0 )
						local f36_local0 = function ( f37_arg0 )
							f37_arg0:beginAnimation( 250 ) --[[ @ 0]]
							f37_arg0:setScale( 0.9, 0.9 ) --[[ @ 0]]
							f37_arg0:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f36_arg0:beginAnimation( 250 ) --[[ @ 0]]
						f36_arg0:setScale( 1, 1 ) --[[ @ 0]]
						f36_arg0:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f35_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f35_arg0:setScale( 0.9, 0.9 ) --[[ @ 0]]
					f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f20_arg0.PCProgressCircleBacking:beginAnimation( 250 ) --[[ @ 0]]
				f20_arg0.PCProgressCircleBacking:setScale( 1, 1 ) --[[ @ 0]]
				f20_arg0.PCProgressCircleBacking:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.PCProgressCircleBacking:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.PCProgressCircleBacking:completeAnimation() --[[ @ 0]]
			f20_arg0.PCProgressCircleBacking:setScale( 0.9, 0.9 ) --[[ @ 0]]
			f20_local3( f20_arg0.PCProgressCircleBacking ) --[[ @ 0]]
			f20_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.seeker_mine_prompt.__onClose = function ( f38_arg0 )
	f38_arg0.progressRing:close() --[[ @ 0]]
	f38_arg0.buttonImage:close() --[[ @ 0]]
	f38_arg0.PCProgressCircleBacking:close() --[[ @ 0]]
	f38_arg0.PCtext:close() --[[ @ 0]]
end
 --[[ @ 0]]
