-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.StoreFeaturedFrameGrid = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StoreFeaturedFrameGrid.__defaultWidth = 1389 --[[ @ 0]]
CoD.StoreFeaturedFrameGrid.__defaultHeight = 680 --[[ @ 0]]
CoD.StoreFeaturedFrameGrid.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StoreFeaturedFrameGrid ) --[[ @ 0]]
	self.id = "StoreFeaturedFrameGrid" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local plus03 = LUI.UIImage.new( 0, 0, 1043.5, 1059.5, 0, 0, 333, 349 ) --[[ @ 0]]
	plus03:setAlpha( 0.1 ) --[[ @ 0]]
	plus03:setImage( RegisterImage( @"uie_ui_menu_store_bg_plus" ) ) --[[ @ 0]]
	plus03:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( plus03 ) --[[ @ 0]]
	self.plus03 = plus03 --[[ @ 0]]
	
	local plus02 = LUI.UIImage.new( 0, 0, 687, 703, 0, 0, 333, 349 ) --[[ @ 0]]
	plus02:setAlpha( 0.1 ) --[[ @ 0]]
	plus02:setImage( RegisterImage( @"uie_ui_menu_store_bg_plus" ) ) --[[ @ 0]]
	plus02:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( plus02 ) --[[ @ 0]]
	self.plus02 = plus02 --[[ @ 0]]
	
	local plus01 = LUI.UIImage.new( 0, 0, 332, 348, 0, 0, 333, 349 ) --[[ @ 0]]
	plus01:setAlpha( 0.1 ) --[[ @ 0]]
	plus01:setImage( RegisterImage( @"uie_ui_menu_store_bg_plus" ) ) --[[ @ 0]]
	plus01:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( plus01 ) --[[ @ 0]]
	self.plus01 = plus01 --[[ @ 0]]
	
	local DotlineV06 = LUI.UIImage.new( 0, 0, 1049.5, 1053.5, 0, 0, 350, 680 ) --[[ @ 0]]
	DotlineV06:setAlpha( 0.02 ) --[[ @ 0]]
	DotlineV06:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	DotlineV06:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	DotlineV06:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DotlineV06:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( DotlineV06 ) --[[ @ 0]]
	self.DotlineV06 = DotlineV06 --[[ @ 0]]
	
	local DotlineV05 = LUI.UIImage.new( 0, 0, 693, 697, 0, 0, 350, 680 ) --[[ @ 0]]
	DotlineV05:setAlpha( 0.02 ) --[[ @ 0]]
	DotlineV05:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	DotlineV05:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	DotlineV05:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DotlineV05:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( DotlineV05 ) --[[ @ 0]]
	self.DotlineV05 = DotlineV05 --[[ @ 0]]
	
	local DotlineV04 = LUI.UIImage.new( 0, 0, 338, 342, 0, 0, 350, 680 ) --[[ @ 0]]
	DotlineV04:setAlpha( 0.02 ) --[[ @ 0]]
	DotlineV04:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	DotlineV04:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	DotlineV04:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DotlineV04:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( DotlineV04 ) --[[ @ 0]]
	self.DotlineV04 = DotlineV04 --[[ @ 0]]
	
	local DotlineV03 = LUI.UIImage.new( 0, 0, 1049.5, 1053.5, 0, 0, 0, 330 ) --[[ @ 0]]
	DotlineV03:setAlpha( 0.02 ) --[[ @ 0]]
	DotlineV03:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	DotlineV03:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	DotlineV03:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DotlineV03:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( DotlineV03 ) --[[ @ 0]]
	self.DotlineV03 = DotlineV03 --[[ @ 0]]
	
	local DotlineV02 = LUI.UIImage.new( 0, 0, 693, 697, 0, 0, 0, 330 ) --[[ @ 0]]
	DotlineV02:setAlpha( 0.02 ) --[[ @ 0]]
	DotlineV02:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	DotlineV02:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	DotlineV02:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DotlineV02:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( DotlineV02 ) --[[ @ 0]]
	self.DotlineV02 = DotlineV02 --[[ @ 0]]
	
	local DotlineV01 = LUI.UIImage.new( 0, 0, 338, 342, 0, 0, 0, 330 ) --[[ @ 0]]
	DotlineV01:setAlpha( 0.02 ) --[[ @ 0]]
	DotlineV01:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	DotlineV01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	DotlineV01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DotlineV01:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( DotlineV01 ) --[[ @ 0]]
	self.DotlineV01 = DotlineV01 --[[ @ 0]]
	
	local DotlineH04 = LUI.UIImage.new( 0, 0, 1062, 1389, 0, 0, 339.5, 341.5 ) --[[ @ 0]]
	DotlineH04:setAlpha( 0.2 ) --[[ @ 0]]
	DotlineH04:setImage( RegisterImage( @"hash_6F5E8F1B8586D9C5" ) ) --[[ @ 0]]
	DotlineH04:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	DotlineH04:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DotlineH04:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( DotlineH04 ) --[[ @ 0]]
	self.DotlineH04 = DotlineH04 --[[ @ 0]]
	
	local DotlineH03 = LUI.UIImage.new( 0, 0, 717, 1044, 0, 0, 339.5, 341.5 ) --[[ @ 0]]
	DotlineH03:setAlpha( 0.2 ) --[[ @ 0]]
	DotlineH03:setImage( RegisterImage( @"hash_6F5E8F1B8586D9C5" ) ) --[[ @ 0]]
	DotlineH03:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	DotlineH03:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DotlineH03:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( DotlineH03 ) --[[ @ 0]]
	self.DotlineH03 = DotlineH03 --[[ @ 0]]
	
	local DotlineH02 = LUI.UIImage.new( 0, 0, 352, 679, 0, 0, 339.5, 341.5 ) --[[ @ 0]]
	DotlineH02:setAlpha( 0.2 ) --[[ @ 0]]
	DotlineH02:setImage( RegisterImage( @"hash_6F5E8F1B8586D9C5" ) ) --[[ @ 0]]
	DotlineH02:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	DotlineH02:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DotlineH02:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( DotlineH02 ) --[[ @ 0]]
	self.DotlineH02 = DotlineH02 --[[ @ 0]]
	
	local DotlineH01 = LUI.UIImage.new( 0, 0, 0, 327, 0, 0, 339.5, 341.5 ) --[[ @ 0]]
	DotlineH01:setAlpha( 0.2 ) --[[ @ 0]]
	DotlineH01:setImage( RegisterImage( @"hash_6F5E8F1B8586D9C5" ) ) --[[ @ 0]]
	DotlineH01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	DotlineH01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DotlineH01:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( DotlineH01 ) --[[ @ 0]]
	self.DotlineH01 = DotlineH01 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StoreFeaturedFrameGrid.__resetProperties = function ( f2_arg0 )
	f2_arg0.plus03:completeAnimation() --[[ @ 0]]
	f2_arg0.plus02:completeAnimation() --[[ @ 0]]
	f2_arg0.plus01:completeAnimation() --[[ @ 0]]
	f2_arg0.DotlineV06:completeAnimation() --[[ @ 0]]
	f2_arg0.DotlineV05:completeAnimation() --[[ @ 0]]
	f2_arg0.DotlineV04:completeAnimation() --[[ @ 0]]
	f2_arg0.DotlineV03:completeAnimation() --[[ @ 0]]
	f2_arg0.DotlineV02:completeAnimation() --[[ @ 0]]
	f2_arg0.DotlineV01:completeAnimation() --[[ @ 0]]
	f2_arg0.DotlineH04:completeAnimation() --[[ @ 0]]
	f2_arg0.DotlineH03:completeAnimation() --[[ @ 0]]
	f2_arg0.DotlineH02:completeAnimation() --[[ @ 0]]
	f2_arg0.DotlineH01:completeAnimation() --[[ @ 0]]
	f2_arg0.plus03:setAlpha( 0.1 ) --[[ @ 0]]
	f2_arg0.plus02:setAlpha( 0.1 ) --[[ @ 0]]
	f2_arg0.plus01:setAlpha( 0.1 ) --[[ @ 0]]
	f2_arg0.DotlineV06:setTopBottom( 0, 0, 350, 680 ) --[[ @ 0]]
	f2_arg0.DotlineV05:setTopBottom( 0, 0, 350, 680 ) --[[ @ 0]]
	f2_arg0.DotlineV04:setTopBottom( 0, 0, 350, 680 ) --[[ @ 0]]
	f2_arg0.DotlineV03:setTopBottom( 0, 0, 0, 330 ) --[[ @ 0]]
	f2_arg0.DotlineV02:setTopBottom( 0, 0, 0, 330 ) --[[ @ 0]]
	f2_arg0.DotlineV01:setTopBottom( 0, 0, 0, 330 ) --[[ @ 0]]
	f2_arg0.DotlineH04:setLeftRight( 0, 0, 1062, 1389 ) --[[ @ 0]]
	f2_arg0.DotlineH03:setLeftRight( 0, 0, 717, 1044 ) --[[ @ 0]]
	f2_arg0.DotlineH02:setLeftRight( 0, 0, 352, 679 ) --[[ @ 0]]
	f2_arg0.DotlineH01:setLeftRight( 0, 0, 0, 327 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StoreFeaturedFrameGrid.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Intro = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 13 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				f4_arg0.plus03:beginAnimation( 250, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f4_arg0.plus03:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.plus03:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.plus03:completeAnimation() --[[ @ 0]]
			f4_arg0.plus03:setAlpha( 0.1 ) --[[ @ 0]]
			f4_local0( f4_arg0.plus03 ) --[[ @ 0]]
			local f4_local1 = function ( f6_arg0 )
				f4_arg0.plus02:beginAnimation( 250, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f4_arg0.plus02:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.plus02:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.plus02:completeAnimation() --[[ @ 0]]
			f4_arg0.plus02:setAlpha( 0.1 ) --[[ @ 0]]
			f4_local1( f4_arg0.plus02 ) --[[ @ 0]]
			local f4_local2 = function ( f7_arg0 )
				f4_arg0.plus01:beginAnimation( 250, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f4_arg0.plus01:setAlpha( 0.1 ) --[[ @ 0]]
				f4_arg0.plus01:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.plus01:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.plus01:completeAnimation() --[[ @ 0]]
			f4_arg0.plus01:setAlpha( 0 ) --[[ @ 0]]
			f4_local2( f4_arg0.plus01 ) --[[ @ 0]]
			local f4_local3 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 350, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f9_arg0:setTopBottom( 0, 0, 350, 680 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.DotlineV06:beginAnimation( 250 ) --[[ @ 0]]
				f4_arg0.DotlineV06:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.DotlineV06:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.DotlineV06:completeAnimation() --[[ @ 0]]
			f4_arg0.DotlineV06:setTopBottom( 0, 0, 350, 350 ) --[[ @ 0]]
			f4_local3( f4_arg0.DotlineV06 ) --[[ @ 0]]
			local f4_local4 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					f11_arg0:beginAnimation( 350, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f11_arg0:setTopBottom( 0, 0, 350, 680 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.DotlineV05:beginAnimation( 250 ) --[[ @ 0]]
				f4_arg0.DotlineV05:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.DotlineV05:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.DotlineV05:completeAnimation() --[[ @ 0]]
			f4_arg0.DotlineV05:setTopBottom( 0, 0, 350, 350 ) --[[ @ 0]]
			f4_local4( f4_arg0.DotlineV05 ) --[[ @ 0]]
			local f4_local5 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					f13_arg0:beginAnimation( 350, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f13_arg0:setTopBottom( 0, 0, 350, 680 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.DotlineV04:beginAnimation( 250 ) --[[ @ 0]]
				f4_arg0.DotlineV04:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.DotlineV04:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.DotlineV04:completeAnimation() --[[ @ 0]]
			f4_arg0.DotlineV04:setTopBottom( 0, 0, 350, 350 ) --[[ @ 0]]
			f4_local5( f4_arg0.DotlineV04 ) --[[ @ 0]]
			local f4_local6 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					f15_arg0:beginAnimation( 350, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f15_arg0:setTopBottom( 0, 0, 0, 330 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.DotlineV03:beginAnimation( 250 ) --[[ @ 0]]
				f4_arg0.DotlineV03:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.DotlineV03:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.DotlineV03:completeAnimation() --[[ @ 0]]
			f4_arg0.DotlineV03:setTopBottom( 0, 0, 330, 330 ) --[[ @ 0]]
			f4_local6( f4_arg0.DotlineV03 ) --[[ @ 0]]
			local f4_local7 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					f17_arg0:beginAnimation( 350, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f17_arg0:setTopBottom( 0, 0, 0, 330 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.DotlineV02:beginAnimation( 250 ) --[[ @ 0]]
				f4_arg0.DotlineV02:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.DotlineV02:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.DotlineV02:completeAnimation() --[[ @ 0]]
			f4_arg0.DotlineV02:setTopBottom( 0, 0, 330, 330 ) --[[ @ 0]]
			f4_local7( f4_arg0.DotlineV02 ) --[[ @ 0]]
			local f4_local8 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					f19_arg0:beginAnimation( 350, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f19_arg0:setTopBottom( 0, 0, 0, 330 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.DotlineV01:beginAnimation( 250 ) --[[ @ 0]]
				f4_arg0.DotlineV01:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.DotlineV01:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.DotlineV01:completeAnimation() --[[ @ 0]]
			f4_arg0.DotlineV01:setTopBottom( 0, 0, 330, 330 ) --[[ @ 0]]
			f4_local8( f4_arg0.DotlineV01 ) --[[ @ 0]]
			local f4_local9 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					f21_arg0:beginAnimation( 350 ) --[[ @ 0]]
					f21_arg0:setLeftRight( 0, 0, 1062, 1389 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.DotlineH04:beginAnimation( 250 ) --[[ @ 0]]
				f4_arg0.DotlineH04:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.DotlineH04:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.DotlineH04:completeAnimation() --[[ @ 0]]
			f4_arg0.DotlineH04:setLeftRight( 0, 0, 1062, 1062 ) --[[ @ 0]]
			f4_local9( f4_arg0.DotlineH04 ) --[[ @ 0]]
			local f4_local10 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					f23_arg0:beginAnimation( 350 ) --[[ @ 0]]
					f23_arg0:setLeftRight( 0, 0, 717, 1044 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.DotlineH03:beginAnimation( 250 ) --[[ @ 0]]
				f4_arg0.DotlineH03:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.DotlineH03:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.DotlineH03:completeAnimation() --[[ @ 0]]
			f4_arg0.DotlineH03:setLeftRight( 0, 0, 1044, 1044 ) --[[ @ 0]]
			f4_local10( f4_arg0.DotlineH03 ) --[[ @ 0]]
			local f4_local11 = function ( f24_arg0 )
				local f24_local0 = function ( f25_arg0 )
					f25_arg0:beginAnimation( 350 ) --[[ @ 0]]
					f25_arg0:setLeftRight( 0, 0, 352, 679 ) --[[ @ 0]]
					f25_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.DotlineH02:beginAnimation( 250 ) --[[ @ 0]]
				f4_arg0.DotlineH02:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.DotlineH02:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.DotlineH02:completeAnimation() --[[ @ 0]]
			f4_arg0.DotlineH02:setLeftRight( 0, 0, 352, 352 ) --[[ @ 0]]
			f4_local11( f4_arg0.DotlineH02 ) --[[ @ 0]]
			local f4_local12 = function ( f26_arg0 )
				local f26_local0 = function ( f27_arg0 )
					f27_arg0:beginAnimation( 350 ) --[[ @ 0]]
					f27_arg0:setLeftRight( 0, 0, 0, 327 ) --[[ @ 0]]
					f27_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.DotlineH01:beginAnimation( 250 ) --[[ @ 0]]
				f4_arg0.DotlineH01:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.DotlineH01:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.DotlineH01:completeAnimation() --[[ @ 0]]
			f4_arg0.DotlineH01:setLeftRight( 0, 0, 327, 327 ) --[[ @ 0]]
			f4_local12( f4_arg0.DotlineH01 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
