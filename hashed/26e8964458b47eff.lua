-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:4b6f9e612c26d159" ) --[[ @ 0]]

CoD.BMStackPips = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BMStackPips.__defaultWidth = 60 --[[ @ 0]]
CoD.BMStackPips.__defaultHeight = 12 --[[ @ 0]]
CoD.BMStackPips.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.BMStackPips ) --[[ @ 0]]
	self.id = "BMStackPips" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local pip1 = LUI.UIImage.new( 0.5, 0.5, -24, -12, 0.5, 0.5, -6, 6 ) --[[ @ 0]]
	pip1:setRGB( 1, 0.54, 0 ) --[[ @ 0]]
	pip1:setImage( RegisterImage( @"hash_3357069940064F75" ) ) --[[ @ 0]]
	self:addElement( pip1 ) --[[ @ 0]]
	self.pip1 = pip1 --[[ @ 0]]
	
	local pip2 = LUI.UIImage.new( 0.5, 0.5, -6, 6, 0.5, 0.5, -6, 6 ) --[[ @ 0]]
	pip2:setRGB( 1, 0.54, 0 ) --[[ @ 0]]
	pip2:setAlpha( 0.25 ) --[[ @ 0]]
	pip2:setImage( RegisterImage( @"hash_3357069940064F75" ) ) --[[ @ 0]]
	self:addElement( pip2 ) --[[ @ 0]]
	self.pip2 = pip2 --[[ @ 0]]
	
	local pip3 = LUI.UIImage.new( 0.5, 0.5, 12, 24, 0.5, 0.5, -6, 6 ) --[[ @ 0]]
	pip3:setRGB( 1, 0.54, 0 ) --[[ @ 0]]
	pip3:setAlpha( 0.25 ) --[[ @ 0]]
	pip3:setImage( RegisterImage( @"hash_3357069940064F75" ) ) --[[ @ 0]]
	self:addElement( pip3 ) --[[ @ 0]]
	self.pip3 = pip3 --[[ @ 0]]
	
	local pip4 = LUI.UIImage.new( 0.5, 0.5, 12, 24, 0.5, 0.5, -6, 6 ) --[[ @ 0]]
	pip4:setRGB( 1, 0.54, 0 ) --[[ @ 0]]
	pip4:setAlpha( 0 ) --[[ @ 0]]
	pip4:setImage( RegisterImage( @"hash_3357069940064F75" ) ) --[[ @ 0]]
	self:addElement( pip4 ) --[[ @ 0]]
	self.pip4 = pip4 --[[ @ 0]]
	
	local CommonGlowFlickerAnim = CoD.CommonGlowFlickerAnim.new( f1_arg0, f1_arg1, 0.5, 0.5, -118, 82, 0.5, 0.5, -100, 100 ) --[[ @ 0]]
	CommonGlowFlickerAnim:setAlpha( 0 ) --[[ @ 0]]
	CommonGlowFlickerAnim:setScale( 0.2, 0.2 ) --[[ @ 0]]
	self:addElement( CommonGlowFlickerAnim ) --[[ @ 0]]
	self.CommonGlowFlickerAnim = CommonGlowFlickerAnim --[[ @ 0]]
	
	local CommonGlowFlickerAnim2 = CoD.CommonGlowFlickerAnim.new( f1_arg0, f1_arg1, 0.5, 0.5, -118, 82, 0.5, 0.5, -100, 100 ) --[[ @ 0]]
	CommonGlowFlickerAnim2:setAlpha( 0 ) --[[ @ 0]]
	CommonGlowFlickerAnim2:setScale( 0.2, 0.2 ) --[[ @ 0]]
	self:addElement( CommonGlowFlickerAnim2 ) --[[ @ 0]]
	self.CommonGlowFlickerAnim2 = CommonGlowFlickerAnim2 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				local f2_local0 = IsBooleanDvarSet( "loot_sunsetBlackjackShopActive" ) --[[ @ 0]]
				if f2_local0 then
					f2_local0 = IsMenuPropertyValue( menu, "_currentTab", "itemshop" ) --[[ @ 0]]
					if f2_local0 then
						f2_local0 = not CoD.ModelUtility.IsSelfModelValueNilOrTrue( element, f1_arg1, "emptyItem" ) --[[ @ 0]]
					end
				end
				return f2_local0
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "emptyItem", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "emptyItem"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "revealed", true, function ( model )
		if CoD.ModelUtility.IsSelfModelValueTrue( self, f1_arg1, "revealed" ) then
			PlayClip( self, "StackReveal", f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.BMStackPips.__resetProperties = function ( f5_arg0 )
	f5_arg0.pip3:completeAnimation() --[[ @ 0]]
	f5_arg0.pip2:completeAnimation() --[[ @ 0]]
	f5_arg0.pip1:completeAnimation() --[[ @ 0]]
	f5_arg0.pip4:completeAnimation() --[[ @ 0]]
	f5_arg0.CommonGlowFlickerAnim:completeAnimation() --[[ @ 0]]
	f5_arg0.CommonGlowFlickerAnim2:completeAnimation() --[[ @ 0]]
	f5_arg0.pip3:setLeftRight( 0.5, 0.5, 12, 24 ) --[[ @ 0]]
	f5_arg0.pip3:setAlpha( 0.25 ) --[[ @ 0]]
	f5_arg0.pip2:setLeftRight( 0.5, 0.5, -6, 6 ) --[[ @ 0]]
	f5_arg0.pip2:setTopBottom( 0.5, 0.5, -6, 6 ) --[[ @ 0]]
	f5_arg0.pip2:setRGB( 1, 0.54, 0 ) --[[ @ 0]]
	f5_arg0.pip2:setAlpha( 0.25 ) --[[ @ 0]]
	f5_arg0.pip1:setLeftRight( 0.5, 0.5, -24, -12 ) --[[ @ 0]]
	f5_arg0.pip1:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.pip4:setLeftRight( 0.5, 0.5, 12, 24 ) --[[ @ 0]]
	f5_arg0.pip4:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.CommonGlowFlickerAnim:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.CommonGlowFlickerAnim:setScale( 0.2, 0.2 ) --[[ @ 0]]
	f5_arg0.CommonGlowFlickerAnim2:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.CommonGlowFlickerAnim2:setScale( 0.2, 0.2 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BMStackPips.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f6_arg0.pip1:completeAnimation() --[[ @ 0]]
			f6_arg0.pip1:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.pip1 ) --[[ @ 0]]
			f6_arg0.pip2:completeAnimation() --[[ @ 0]]
			f6_arg0.pip2:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.pip2 ) --[[ @ 0]]
			f6_arg0.pip3:completeAnimation() --[[ @ 0]]
			f6_arg0.pip3:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.pip3 ) --[[ @ 0]]
		end,
		Visible = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.pip1:beginAnimation( 200 ) --[[ @ 0]]
				f7_arg0.pip1:setLeftRight( 0.5, 0.5, -24, -12 ) --[[ @ 0]]
				f7_arg0.pip1:setAlpha( 1 ) --[[ @ 0]]
				f7_arg0.pip1:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.pip1:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.pip1:completeAnimation() --[[ @ 0]]
			f7_arg0.pip1:setLeftRight( 0.5, 0.5, -6, 6 ) --[[ @ 0]]
			f7_arg0.pip1:setAlpha( 0 ) --[[ @ 0]]
			f7_local0( f7_arg0.pip1 ) --[[ @ 0]]
			local f7_local1 = function ( f9_arg0 )
				f7_arg0.pip2:beginAnimation( 200 ) --[[ @ 0]]
				f7_arg0.pip2:setAlpha( 0.25 ) --[[ @ 0]]
				f7_arg0.pip2:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.pip2:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.pip2:completeAnimation() --[[ @ 0]]
			f7_arg0.pip2:setAlpha( 0 ) --[[ @ 0]]
			f7_local1( f7_arg0.pip2 ) --[[ @ 0]]
			local f7_local2 = function ( f10_arg0 )
				f7_arg0.pip3:beginAnimation( 200 ) --[[ @ 0]]
				f7_arg0.pip3:setLeftRight( 0.5, 0.5, 12, 24 ) --[[ @ 0]]
				f7_arg0.pip3:setAlpha( 0.25 ) --[[ @ 0]]
				f7_arg0.pip3:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.pip3:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.pip3:completeAnimation() --[[ @ 0]]
			f7_arg0.pip3:setLeftRight( 0.5, 0.5, -6, 6 ) --[[ @ 0]]
			f7_arg0.pip3:setAlpha( 0 ) --[[ @ 0]]
			f7_local2( f7_arg0.pip3 ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f11_arg0.pip1:completeAnimation() --[[ @ 0]]
			f11_arg0.pip1:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.pip1 ) --[[ @ 0]]
			f11_arg0.pip2:completeAnimation() --[[ @ 0]]
			f11_arg0.pip2:setAlpha( 0.25 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.pip2 ) --[[ @ 0]]
			f11_arg0.pip3:completeAnimation() --[[ @ 0]]
			f11_arg0.pip3:setAlpha( 0.25 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.pip3 ) --[[ @ 0]]
		end,
		StackReveal = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.pip1:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.pip1:setLeftRight( 0.5, 0.5, -42, -30 ) --[[ @ 0]]
				f12_arg0.pip1:setAlpha( 0 ) --[[ @ 0]]
				f12_arg0.pip1:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.pip1:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.pip1:completeAnimation() --[[ @ 0]]
			f12_arg0.pip1:setLeftRight( 0.5, 0.5, -24, -12 ) --[[ @ 0]]
			f12_arg0.pip1:setAlpha( 1 ) --[[ @ 0]]
			f12_local0( f12_arg0.pip1 ) --[[ @ 0]]
			local f12_local1 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					local f15_local0 = function ( f16_arg0 )
						f16_arg0:beginAnimation( 119 ) --[[ @ 0]]
						f16_arg0:setLeftRight( 0.5, 0.5, -24, -12 ) --[[ @ 0]]
						f16_arg0:setTopBottom( 0.5, 0.5, -6, 6 ) --[[ @ 0]]
						f16_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f15_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f15_arg0:setLeftRight( 0.5, 0.5, -21, -15 ) --[[ @ 0]]
					f15_arg0:setTopBottom( 0.5, 0.5, -3, 3 ) --[[ @ 0]]
					f15_arg0:setAlpha( 1 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.pip2:beginAnimation( 100 ) --[[ @ 0]]
				f12_arg0.pip2:setLeftRight( 0.5, 0.5, -26.5, 8.5 ) --[[ @ 0]]
				f12_arg0.pip2:setTopBottom( 0.5, 0.5, -17.5, 17.5 ) --[[ @ 0]]
				f12_arg0.pip2:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.pip2:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.pip2:completeAnimation() --[[ @ 0]]
			f12_arg0.pip2:setLeftRight( 0.5, 0.5, -6, 6 ) --[[ @ 0]]
			f12_arg0.pip2:setTopBottom( 0.5, 0.5, -6, 6 ) --[[ @ 0]]
			f12_arg0.pip2:setRGB( 1, 0.54, 0 ) --[[ @ 0]]
			f12_arg0.pip2:setAlpha( 0.25 ) --[[ @ 0]]
			f12_local1( f12_arg0.pip2 ) --[[ @ 0]]
			local f12_local2 = function ( f17_arg0 )
				f12_arg0.pip3:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.pip3:setLeftRight( 0.5, 0.5, -6, 6 ) --[[ @ 0]]
				f12_arg0.pip3:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.pip3:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.pip3:completeAnimation() --[[ @ 0]]
			f12_arg0.pip3:setLeftRight( 0.5, 0.5, 12, 24 ) --[[ @ 0]]
			f12_arg0.pip3:setAlpha( 0.25 ) --[[ @ 0]]
			f12_local2( f12_arg0.pip3 ) --[[ @ 0]]
			local f12_local3 = function ( f18_arg0 )
				f12_arg0.pip4:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.pip4:setLeftRight( 0.5, 0.5, 12, 24 ) --[[ @ 0]]
				f12_arg0.pip4:setAlpha( 0.25 ) --[[ @ 0]]
				f12_arg0.pip4:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.pip4:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.pip4:completeAnimation() --[[ @ 0]]
			f12_arg0.pip4:setLeftRight( 0.5, 0.5, 30, 42 ) --[[ @ 0]]
			f12_arg0.pip4:setAlpha( 0 ) --[[ @ 0]]
			f12_local3( f12_arg0.pip4 ) --[[ @ 0]]
			local f12_local4 = function ( f19_arg0 )
				local f19_local0 = function ( f20_arg0 )
					local f20_local0 = function ( f21_arg0 )
						f21_arg0:beginAnimation( 349 ) --[[ @ 0]]
						f21_arg0:setAlpha( 0 ) --[[ @ 0]]
						f21_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f20_arg0:beginAnimation( 10 ) --[[ @ 0]]
					f20_arg0:setAlpha( 1 ) --[[ @ 0]]
					f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.CommonGlowFlickerAnim:beginAnimation( 220 ) --[[ @ 0]]
				f12_arg0.CommonGlowFlickerAnim:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.CommonGlowFlickerAnim:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.CommonGlowFlickerAnim:completeAnimation() --[[ @ 0]]
			f12_arg0.CommonGlowFlickerAnim:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.CommonGlowFlickerAnim:setScale( 0.05, 0.05 ) --[[ @ 0]]
			f12_local4( f12_arg0.CommonGlowFlickerAnim ) --[[ @ 0]]
			local f12_local5 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					local f23_local0 = function ( f24_arg0 )
						f24_arg0:beginAnimation( 240 ) --[[ @ 0]]
						f24_arg0:setAlpha( 0 ) --[[ @ 0]]
						f24_arg0:setScale( 0.2, 0.2 ) --[[ @ 0]]
						f24_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f23_arg0:beginAnimation( 10 ) --[[ @ 0]]
					f23_arg0:setAlpha( 1 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.CommonGlowFlickerAnim2:beginAnimation( 190 ) --[[ @ 0]]
				f12_arg0.CommonGlowFlickerAnim2:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.CommonGlowFlickerAnim2:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.CommonGlowFlickerAnim2:completeAnimation() --[[ @ 0]]
			f12_arg0.CommonGlowFlickerAnim2:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.CommonGlowFlickerAnim2:setScale( 0.05, 0.05 ) --[[ @ 0]]
			f12_local5( f12_arg0.CommonGlowFlickerAnim2 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.BMStackPips.__onClose = function ( f25_arg0 )
	f25_arg0.CommonGlowFlickerAnim:close() --[[ @ 0]]
	f25_arg0.CommonGlowFlickerAnim2:close() --[[ @ 0]]
end
 --[[ @ 0]]
