-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.AmmoWidgetWZ_EquipmentEmpty = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidgetWZ_EquipmentEmpty.__defaultWidth = 64 --[[ @ 0]]
CoD.AmmoWidgetWZ_EquipmentEmpty.__defaultHeight = 59 --[[ @ 0]]
CoD.AmmoWidgetWZ_EquipmentEmpty.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidgetWZ_EquipmentEmpty ) --[[ @ 0]]
	self.id = "AmmoWidgetWZ_EquipmentEmpty" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ImgIcon = LUI.UIImage.new( 0.5, 0.5, -40, 40, 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	ImgIcon:setRGB( 1, 0, 0 ) --[[ @ 0]]
	ImgIcon:setAlpha( 0.31 ) --[[ @ 0]]
	ImgIcon:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	ImgIcon:linkToElementModel( self, "image", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ImgIcon:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ImgIcon ) --[[ @ 0]]
	self.ImgIcon = ImgIcon --[[ @ 0]]
	
	local ImgIconGrow = LUI.UIImage.new( 0.5, 0.5, -40, 40, 0.5, 0.5, -41, 39 ) --[[ @ 0]]
	ImgIconGrow:setRGB( 1, 0, 0 ) --[[ @ 0]]
	ImgIconGrow:setAlpha( 0.31 ) --[[ @ 0]]
	ImgIconGrow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	ImgIconGrow:linkToElementModel( self, "image", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ImgIconGrow:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ImgIconGrow ) --[[ @ 0]]
	self.ImgIconGrow = ImgIconGrow --[[ @ 0]]
	
	local Inactive = LUI.UIImage.new( 0.5, 0.5, -26, 26, 0.5, 0.5, -24.5, 22.5 ) --[[ @ 0]]
	Inactive:setRGB( 0.88, 0.07, 0.07 ) --[[ @ 0]]
	Inactive:setAlpha( 0.25 ) --[[ @ 0]]
	Inactive:setScale( 1.4, 1.4 ) --[[ @ 0]]
	Inactive:setImage( RegisterImage( @"hash_38440A4FA2F1A6DC" ) ) --[[ @ 0]]
	self:addElement( Inactive ) --[[ @ 0]]
	self.Inactive = Inactive --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "IconHidden",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "pulseEmpty", true, function ( model )
		local f5_local0 = self --[[ @ 0]]
		PlayClip( self, "Empty", f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "PerController", "HUDItems.pulseNoTactical", function ( model )
		local f6_local0 = self --[[ @ 0]]
		if IsSelfPropertyValue( self, "show_empty_health_flash", true ) and CoD.ModelUtility.IsGlobalDataSourceModelValueGreaterThan( f1_arg1, "HUDItems", "pulseNoTactical", 0 ) then
			PlayClip( self, "Empty", f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AmmoWidgetWZ_EquipmentEmpty.__resetProperties = function ( f7_arg0 )
	f7_arg0.ImgIconGrow:completeAnimation() --[[ @ 0]]
	f7_arg0.ImgIcon:completeAnimation() --[[ @ 0]]
	f7_arg0.Inactive:completeAnimation() --[[ @ 0]]
	f7_arg0.ImgIconGrow:setLeftRight( 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	f7_arg0.ImgIconGrow:setTopBottom( 0.5, 0.5, -41, 39 ) --[[ @ 0]]
	f7_arg0.ImgIconGrow:setAlpha( 0.31 ) --[[ @ 0]]
	f7_arg0.ImgIconGrow:setScale( 1, 1 ) --[[ @ 0]]
	f7_arg0.ImgIcon:setLeftRight( 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	f7_arg0.ImgIcon:setTopBottom( 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	f7_arg0.ImgIcon:setAlpha( 0.31 ) --[[ @ 0]]
	f7_arg0.Inactive:setAlpha( 0.25 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AmmoWidgetWZ_EquipmentEmpty.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f8_arg0.ImgIcon:completeAnimation() --[[ @ 0]]
			f8_arg0.ImgIcon:setLeftRight( 0.5, 0.5, -20, 19 ) --[[ @ 0]]
			f8_arg0.ImgIcon:setTopBottom( 0.5, 0.5, -20, 19 ) --[[ @ 0]]
			f8_arg0.ImgIcon:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.ImgIcon ) --[[ @ 0]]
			f8_arg0.ImgIconGrow:completeAnimation() --[[ @ 0]]
			f8_arg0.ImgIconGrow:setLeftRight( 0.5, 0.5, -20, 19 ) --[[ @ 0]]
			f8_arg0.ImgIconGrow:setTopBottom( 0.5, 0.5, -20, 19 ) --[[ @ 0]]
			f8_arg0.ImgIconGrow:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.ImgIconGrow ) --[[ @ 0]]
			f8_arg0.Inactive:completeAnimation() --[[ @ 0]]
			f8_arg0.Inactive:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Inactive ) --[[ @ 0]]
		end,
		Empty = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.ImgIcon:beginAnimation( 350 ) --[[ @ 0]]
				f9_arg0.ImgIcon:setAlpha( 0 ) --[[ @ 0]]
				f9_arg0.ImgIcon:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.ImgIcon:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.ImgIcon:completeAnimation() --[[ @ 0]]
			f9_arg0.ImgIcon:setAlpha( 0.5 ) --[[ @ 0]]
			f9_local0( f9_arg0.ImgIcon ) --[[ @ 0]]
			local f9_local1 = function ( f11_arg0 )
				f9_arg0.ImgIconGrow:beginAnimation( 350 ) --[[ @ 0]]
				f9_arg0.ImgIconGrow:setAlpha( 0 ) --[[ @ 0]]
				f9_arg0.ImgIconGrow:setScale( 1.5, 1.5 ) --[[ @ 0]]
				f9_arg0.ImgIconGrow:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.ImgIconGrow:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.ImgIconGrow:completeAnimation() --[[ @ 0]]
			f9_arg0.ImgIconGrow:setAlpha( 0.25 ) --[[ @ 0]]
			f9_arg0.ImgIconGrow:setScale( 1, 1 ) --[[ @ 0]]
			f9_local1( f9_arg0.ImgIconGrow ) --[[ @ 0]]
			local f9_local2 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					local f13_local0 = function ( f14_arg0 )
						local f14_local0 = function ( f15_arg0 )
							local f15_local0 = function ( f16_arg0 )
								local f16_local0 = function ( f17_arg0 )
									local f17_local0 = function ( f18_arg0 )
										local f18_local0 = function ( f19_arg0 )
											local f19_local0 = function ( f20_arg0 )
												local f20_local0 = function ( f21_arg0 )
													f21_arg0:beginAnimation( 210 ) --[[ @ 0]]
													f21_arg0:setAlpha( 0 ) --[[ @ 0]]
													f21_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f20_arg0:beginAnimation( 10 ) --[[ @ 0]]
												f20_arg0:setAlpha( 0.76 ) --[[ @ 0]]
												f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f19_arg0:beginAnimation( 19 ) --[[ @ 0]]
											f19_arg0:setAlpha( 0.5 ) --[[ @ 0]]
											f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f18_arg0:beginAnimation( 9 ) --[[ @ 0]]
										f18_arg0:setAlpha( 0.51 ) --[[ @ 0]]
										f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f17_arg0:beginAnimation( 30 ) --[[ @ 0]]
									f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f16_arg0:beginAnimation( 10 ) --[[ @ 0]]
								f16_arg0:setAlpha( 0.75 ) --[[ @ 0]]
								f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f15_arg0:beginAnimation( 20 ) --[[ @ 0]]
							f15_arg0:setAlpha( 0.11 ) --[[ @ 0]]
							f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f14_arg0:beginAnimation( 10 ) --[[ @ 0]]
						f14_arg0:setAlpha( 0 ) --[[ @ 0]]
						f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f13_arg0:beginAnimation( 20 ) --[[ @ 0]]
					f13_arg0:setAlpha( 0.71 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.Inactive:beginAnimation( 10 ) --[[ @ 0]]
				f9_arg0.Inactive:setAlpha( 0.75 ) --[[ @ 0]]
				f9_arg0.Inactive:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.Inactive:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.Inactive:completeAnimation() --[[ @ 0]]
			f9_arg0.Inactive:setAlpha( 0 ) --[[ @ 0]]
			f9_local2( f9_arg0.Inactive ) --[[ @ 0]]
		end
	},
	IconHidden = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f22_arg0.ImgIcon:completeAnimation() --[[ @ 0]]
			f22_arg0.ImgIcon:setLeftRight( 0.5, 0.5, -20, 19 ) --[[ @ 0]]
			f22_arg0.ImgIcon:setTopBottom( 0.5, 0.5, -20, 19 ) --[[ @ 0]]
			f22_arg0.ImgIcon:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.ImgIcon ) --[[ @ 0]]
			f22_arg0.ImgIconGrow:completeAnimation() --[[ @ 0]]
			f22_arg0.ImgIconGrow:setLeftRight( 0.5, 0.5, -20, 19 ) --[[ @ 0]]
			f22_arg0.ImgIconGrow:setTopBottom( 0.5, 0.5, -20, 19 ) --[[ @ 0]]
			f22_arg0.ImgIconGrow:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.ImgIconGrow ) --[[ @ 0]]
			f22_arg0.Inactive:completeAnimation() --[[ @ 0]]
			f22_arg0.Inactive:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Inactive ) --[[ @ 0]]
		end,
		Empty = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f23_arg0.ImgIcon:completeAnimation() --[[ @ 0]]
			f23_arg0.ImgIcon:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.ImgIcon ) --[[ @ 0]]
			f23_arg0.ImgIconGrow:completeAnimation() --[[ @ 0]]
			f23_arg0.ImgIconGrow:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.ImgIconGrow:setScale( 1, 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.ImgIconGrow ) --[[ @ 0]]
			local f23_local0 = function ( f24_arg0 )
				local f24_local0 = function ( f25_arg0 )
					local f25_local0 = function ( f26_arg0 )
						local f26_local0 = function ( f27_arg0 )
							local f27_local0 = function ( f28_arg0 )
								local f28_local0 = function ( f29_arg0 )
									local f29_local0 = function ( f30_arg0 )
										local f30_local0 = function ( f31_arg0 )
											local f31_local0 = function ( f32_arg0 )
												local f32_local0 = function ( f33_arg0 )
													f33_arg0:beginAnimation( 210 ) --[[ @ 0]]
													f33_arg0:setAlpha( 0 ) --[[ @ 0]]
													f33_arg0:registerEventHandler( "transition_complete_keyframe", f23_arg0.clipFinished ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f32_arg0:beginAnimation( 10 ) --[[ @ 0]]
												f32_arg0:setAlpha( 0.76 ) --[[ @ 0]]
												f32_arg0:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f31_arg0:beginAnimation( 19 ) --[[ @ 0]]
											f31_arg0:setAlpha( 0.5 ) --[[ @ 0]]
											f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f30_arg0:beginAnimation( 9 ) --[[ @ 0]]
										f30_arg0:setAlpha( 0.51 ) --[[ @ 0]]
										f30_arg0:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f29_arg0:beginAnimation( 30 ) --[[ @ 0]]
									f29_arg0:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f28_arg0:beginAnimation( 10 ) --[[ @ 0]]
								f28_arg0:setAlpha( 0.75 ) --[[ @ 0]]
								f28_arg0:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f27_arg0:beginAnimation( 20 ) --[[ @ 0]]
							f27_arg0:setAlpha( 0.11 ) --[[ @ 0]]
							f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f26_arg0:beginAnimation( 10 ) --[[ @ 0]]
						f26_arg0:setAlpha( 0 ) --[[ @ 0]]
						f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f25_arg0:beginAnimation( 20 ) --[[ @ 0]]
					f25_arg0:setAlpha( 0.71 ) --[[ @ 0]]
					f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f23_arg0.Inactive:beginAnimation( 10 ) --[[ @ 0]]
				f23_arg0.Inactive:setAlpha( 0.75 ) --[[ @ 0]]
				f23_arg0.Inactive:registerEventHandler( "interrupted_keyframe", f23_arg0.clipInterrupted ) --[[ @ 0]]
				f23_arg0.Inactive:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f23_arg0.Inactive:completeAnimation() --[[ @ 0]]
			f23_arg0.Inactive:setAlpha( 0 ) --[[ @ 0]]
			f23_local0( f23_arg0.Inactive ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AmmoWidgetWZ_EquipmentEmpty.__onClose = function ( f34_arg0 )
	f34_arg0.ImgIcon:close() --[[ @ 0]]
	f34_arg0.ImgIconGrow:close() --[[ @ 0]]
end
 --[[ @ 0]]
