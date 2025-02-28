-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.LeftStickPagination = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LeftStickPagination.__defaultWidth = 80 --[[ @ 0]]
CoD.LeftStickPagination.__defaultHeight = 30 --[[ @ 0]]
CoD.LeftStickPagination.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LeftStickPagination ) --[[ @ 0]]
	self.id = "LeftStickPagination" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local LeftLine = LUI.UIImage.new( 0, 0.5, -13, -27, 0, 0, 13, 16 ) --[[ @ 0]]
	self:addElement( LeftLine ) --[[ @ 0]]
	self.LeftLine = LeftLine --[[ @ 0]]
	
	local RightLine = LUI.UIImage.new( 0.5, 1, 27, 13, 0, 0, 13, 16 ) --[[ @ 0]]
	self:addElement( RightLine ) --[[ @ 0]]
	self.RightLine = RightLine --[[ @ 0]]
	
	local RightStickNoArrows = LUI.UIImage.new( 0.5, 0.5, -12, 12, 0, 0, 4, 28 ) --[[ @ 0]]
	RightStickNoArrows:setImage( RegisterImage( @"uie_t8_icons_controller_orbis_ls_no_arrows" ) ) --[[ @ 0]]
	self:addElement( RightStickNoArrows ) --[[ @ 0]]
	self.RightStickNoArrows = RightStickNoArrows --[[ @ 0]]
	
	local KBMArrowIcon = nil --[[ @ 0]]
	
	KBMArrowIcon = LUI.UIImage.new( 0.5, 0.5, -16, 15, 0, 0, -1, 30 ) --[[ @ 0]]
	KBMArrowIcon:setAlpha( 0 ) --[[ @ 0]]
	KBMArrowIcon:setImage( RegisterImage( @"hash_28EB901AAE424A2B" ) ) --[[ @ 0]]
	self:addElement( KBMArrowIcon ) --[[ @ 0]]
	self.KBMArrowIcon = KBMArrowIcon --[[ @ 0]]
	
	local ArrowLeft01 = LUI.UIImage.new( 0.5, 0.5, -21, -9, 0, 0, 2.5, 26.5 ) --[[ @ 0]]
	ArrowLeft01:setAlpha( 0 ) --[[ @ 0]]
	ArrowLeft01:setImage( RegisterImage( @"uie_t8_icons_controller_orbis_rs_arrow" ) ) --[[ @ 0]]
	ArrowLeft01:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	ArrowLeft01:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ArrowLeft01:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	ArrowLeft01:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	ArrowLeft01:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	ArrowLeft01:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ArrowLeft01 ) --[[ @ 0]]
	self.ArrowLeft01 = ArrowLeft01 --[[ @ 0]]
	
	local ArrowRight01 = LUI.UIImage.new( 0.5, 0.5, 7, 19, 0, 0, 2.5, 26.5 ) --[[ @ 0]]
	ArrowRight01:setAlpha( 0 ) --[[ @ 0]]
	ArrowRight01:setYRot( 180 ) --[[ @ 0]]
	ArrowRight01:setImage( RegisterImage( @"uie_t8_icons_controller_orbis_rs_arrow" ) ) --[[ @ 0]]
	ArrowRight01:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	ArrowRight01:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ArrowRight01:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	ArrowRight01:setShaderVector( 2, 0.01, 1, 0, 0 ) --[[ @ 0]]
	ArrowRight01:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	ArrowRight01:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ArrowRight01 ) --[[ @ 0]]
	self.ArrowRight01 = ArrowRight01 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "Gamepad",
			condition = function ( menu, element, event )
				return IsGamepad( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f4_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local7 = self --[[ @ 0]]
	local f1_local8 = self.subscribeToModel --[[ @ 0]]
	local f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9.LastInput, function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LeftStickPagination.__resetProperties = function ( f6_arg0 )
	f6_arg0.KBMArrowIcon:completeAnimation() --[[ @ 0]]
	f6_arg0.RightStickNoArrows:completeAnimation() --[[ @ 0]]
	f6_arg0.RightLine:completeAnimation() --[[ @ 0]]
	f6_arg0.LeftLine:completeAnimation() --[[ @ 0]]
	f6_arg0.ArrowLeft01:completeAnimation() --[[ @ 0]]
	f6_arg0.ArrowRight01:completeAnimation() --[[ @ 0]]
	f6_arg0.KBMArrowIcon:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.RightStickNoArrows:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.RightLine:setLeftRight( 0.5, 1, 27, 13 ) --[[ @ 0]]
	f6_arg0.RightLine:setTopBottom( 0, 0, 13, 16 ) --[[ @ 0]]
	f6_arg0.LeftLine:setLeftRight( 0, 0.5, -13, -27 ) --[[ @ 0]]
	f6_arg0.ArrowLeft01:setLeftRight( 0.5, 0.5, -21, -9 ) --[[ @ 0]]
	f6_arg0.ArrowLeft01:setTopBottom( 0, 0, 2.5, 26.5 ) --[[ @ 0]]
	f6_arg0.ArrowLeft01:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.ArrowLeft01:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	f6_arg0.ArrowLeft01:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f6_arg0.ArrowLeft01:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f6_arg0.ArrowLeft01:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f6_arg0.ArrowLeft01:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f6_arg0.ArrowLeft01:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f6_arg0.ArrowRight01:setLeftRight( 0.5, 0.5, 7, 19 ) --[[ @ 0]]
	f6_arg0.ArrowRight01:setTopBottom( 0, 0, 2.5, 26.5 ) --[[ @ 0]]
	f6_arg0.ArrowRight01:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.ArrowRight01:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	f6_arg0.ArrowRight01:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f6_arg0.ArrowRight01:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f6_arg0.ArrowRight01:setShaderVector( 2, 0.01, 1, 0, 0 ) --[[ @ 0]]
	f6_arg0.ArrowRight01:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f6_arg0.ArrowRight01:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LeftStickPagination.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	KBM = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f8_arg0.LeftLine:completeAnimation() --[[ @ 0]]
			f8_arg0.LeftLine:setLeftRight( 0, 0.84, -13, -27 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.LeftLine ) --[[ @ 0]]
			f8_arg0.RightLine:completeAnimation() --[[ @ 0]]
			f8_arg0.RightLine:setLeftRight( 0.16, 1, 27, 13 ) --[[ @ 0]]
			f8_arg0.RightLine:setTopBottom( 0, 0, 13, 16 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.RightLine ) --[[ @ 0]]
			f8_arg0.RightStickNoArrows:completeAnimation() --[[ @ 0]]
			f8_arg0.RightStickNoArrows:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.RightStickNoArrows ) --[[ @ 0]]
			f8_arg0.KBMArrowIcon:completeAnimation() --[[ @ 0]]
			f8_arg0.KBMArrowIcon:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.KBMArrowIcon ) --[[ @ 0]]
		end
	},
	Gamepad = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f9_arg0.KBMArrowIcon:completeAnimation() --[[ @ 0]]
			f9_arg0.KBMArrowIcon:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.KBMArrowIcon ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						local f12_local0 = function ( f13_arg0 )
							local f13_local0 = function ( f14_arg0 )
								f14_arg0:beginAnimation( 500 ) --[[ @ 0]]
								f14_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f13_arg0:beginAnimation( 600, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
							f13_arg0:setLeftRight( 0.5, 0.5, -27, -15 ) --[[ @ 0]]
							f13_arg0:setAlpha( 0 ) --[[ @ 0]]
							f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f12_arg0:beginAnimation( 349 ) --[[ @ 0]]
						f12_arg0:setLeftRight( 0.5, 0.5, -23, -11 ) --[[ @ 0]]
						f12_arg0:setAlpha( 0.55 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 150 ) --[[ @ 0]]
					f11_arg0:setLeftRight( 0.5, 0.5, -21.38, -9.38 ) --[[ @ 0]]
					f11_arg0:setAlpha( 0.86 ) --[[ @ 0]]
					f11_arg0:setShaderVector( 2, 0.01, 1, 0, 0 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.ArrowLeft01:beginAnimation( 150 ) --[[ @ 0]]
				f9_arg0.ArrowLeft01:setLeftRight( 0.5, 0.5, -20.69, -8.69 ) --[[ @ 0]]
				f9_arg0.ArrowLeft01:setAlpha( 1 ) --[[ @ 0]]
				f9_arg0.ArrowLeft01:setShaderVector( 2, 0.26, 0.75, 0, 0 ) --[[ @ 0]]
				f9_arg0.ArrowLeft01:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.ArrowLeft01:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.ArrowLeft01:completeAnimation() --[[ @ 0]]
			f9_arg0.ArrowLeft01:setLeftRight( 0.5, 0.5, -20, -8 ) --[[ @ 0]]
			f9_arg0.ArrowLeft01:setTopBottom( 0, 0, 2.5, 26.5 ) --[[ @ 0]]
			f9_arg0.ArrowLeft01:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.ArrowLeft01:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
			f9_arg0.ArrowLeft01:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
			f9_arg0.ArrowLeft01:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f9_arg0.ArrowLeft01:setShaderVector( 2, 0.5, 0.51, 0, 0 ) --[[ @ 0]]
			f9_arg0.ArrowLeft01:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f9_arg0.ArrowLeft01:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f9_local0( f9_arg0.ArrowLeft01 ) --[[ @ 0]]
			local f9_local1 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					local f16_local0 = function ( f17_arg0 )
						local f17_local0 = function ( f18_arg0 )
							local f18_local0 = function ( f19_arg0 )
								f19_arg0:beginAnimation( 500 ) --[[ @ 0]]
								f19_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f18_arg0:beginAnimation( 600, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
							f18_arg0:setLeftRight( 0.5, 0.5, 15, 27 ) --[[ @ 0]]
							f18_arg0:setAlpha( 0 ) --[[ @ 0]]
							f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f17_arg0:beginAnimation( 349 ) --[[ @ 0]]
						f17_arg0:setLeftRight( 0.5, 0.5, 11, 23 ) --[[ @ 0]]
						f17_arg0:setAlpha( 0.55 ) --[[ @ 0]]
						f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f16_arg0:beginAnimation( 150 ) --[[ @ 0]]
					f16_arg0:setLeftRight( 0.5, 0.5, 9.38, 21.38 ) --[[ @ 0]]
					f16_arg0:setAlpha( 0.86 ) --[[ @ 0]]
					f16_arg0:setShaderVector( 2, 0.01, 1, 0, 0 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.ArrowRight01:beginAnimation( 150 ) --[[ @ 0]]
				f9_arg0.ArrowRight01:setLeftRight( 0.5, 0.5, 8.69, 20.69 ) --[[ @ 0]]
				f9_arg0.ArrowRight01:setAlpha( 1 ) --[[ @ 0]]
				f9_arg0.ArrowRight01:setShaderVector( 2, 0.26, 0.75, 0, 0 ) --[[ @ 0]]
				f9_arg0.ArrowRight01:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.ArrowRight01:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.ArrowRight01:completeAnimation() --[[ @ 0]]
			f9_arg0.ArrowRight01:setLeftRight( 0.5, 0.5, 8, 20 ) --[[ @ 0]]
			f9_arg0.ArrowRight01:setTopBottom( 0, 0, 2.5, 26.5 ) --[[ @ 0]]
			f9_arg0.ArrowRight01:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.ArrowRight01:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
			f9_arg0.ArrowRight01:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
			f9_arg0.ArrowRight01:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f9_arg0.ArrowRight01:setShaderVector( 2, 0.5, 0.51, 0, 0 ) --[[ @ 0]]
			f9_arg0.ArrowRight01:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f9_arg0.ArrowRight01:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f9_local1( f9_arg0.ArrowRight01 ) --[[ @ 0]]
			f9_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
