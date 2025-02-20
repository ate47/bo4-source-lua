-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:1c7393046816f760" ) --[[ @ 0]]

CoD.AARLevelUpOverlay_LevelUpBg = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARLevelUpOverlay_LevelUpBg.__defaultWidth = 1670 --[[ @ 0]]
CoD.AARLevelUpOverlay_LevelUpBg.__defaultHeight = 786 --[[ @ 0]]
CoD.AARLevelUpOverlay_LevelUpBg.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARLevelUpOverlay_LevelUpBg ) --[[ @ 0]]
	self.id = "AARLevelUpOverlay_LevelUpBg" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local AmbientCornerR = LUI.UIImage.new( 0.5, 0.5, 671, 781, 0, 0, 15, 125 ) --[[ @ 0]]
	AmbientCornerR:setAlpha( 0.5 ) --[[ @ 0]]
	AmbientCornerR:setImage( RegisterImage( @"uie_ui_menu_aar_levelup_ambientcorner" ) ) --[[ @ 0]]
	AmbientCornerR:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( AmbientCornerR ) --[[ @ 0]]
	self.AmbientCornerR = AmbientCornerR --[[ @ 0]]
	
	local AmbientCornerL = LUI.UIImage.new( 0.5, 0.5, -669, -779, 0, 0, 15, 125 ) --[[ @ 0]]
	AmbientCornerL:setAlpha( 0.5 ) --[[ @ 0]]
	AmbientCornerL:setImage( RegisterImage( @"uie_ui_menu_aar_levelup_ambientcorner" ) ) --[[ @ 0]]
	AmbientCornerL:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( AmbientCornerL ) --[[ @ 0]]
	self.AmbientCornerL = AmbientCornerL --[[ @ 0]]
	
	local DotL = LUI.UIImage.new( 0.5, 0.5, -785, -773, 1, 1, -12, 0 ) --[[ @ 0]]
	DotL:setAlpha( 0.04 ) --[[ @ 0]]
	DotL:setImage( RegisterImage( @"uie_ui_menu_aar_common_square" ) ) --[[ @ 0]]
	DotL:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DotL ) --[[ @ 0]]
	self.DotL = DotL --[[ @ 0]]
	
	local DotR = LUI.UIImage.new( 0.5, 0.5, 775, 787, 1, 1, -12, 0 ) --[[ @ 0]]
	DotR:setAlpha( 0.04 ) --[[ @ 0]]
	DotR:setImage( RegisterImage( @"uie_ui_menu_aar_common_square" ) ) --[[ @ 0]]
	DotR:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DotR ) --[[ @ 0]]
	self.DotR = DotR --[[ @ 0]]
	
	local DotTop = LUI.UIImage.new( 0.5, 0.5, -835, 835, 0, 0, 0, 100 ) --[[ @ 0]]
	DotTop:setAlpha( 0.03 ) --[[ @ 0]]
	DotTop:setImage( RegisterImage( @"uie_ui_menu_director_stage_bar_dots" ) ) --[[ @ 0]]
	self:addElement( DotTop ) --[[ @ 0]]
	self.DotTop = DotTop --[[ @ 0]]
	
	local dataFui = LUI.UIImage.new( 0, 0, 1504, 1564, 0, 0, 56, 72 ) --[[ @ 0]]
	dataFui:setAlpha( 0.12 ) --[[ @ 0]]
	dataFui:setScale( 2, 2 ) --[[ @ 0]]
	dataFui:setImage( RegisterImage( @"uie_ui_menu_aar_common_numbers_text" ) ) --[[ @ 0]]
	dataFui:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( dataFui ) --[[ @ 0]]
	self.dataFui = dataFui --[[ @ 0]]
	
	local bgLineBot = LUI.UIImage.new( 0, 0, 51, 1619, 0, 0, 421, 785 ) --[[ @ 0]]
	bgLineBot:setAlpha( 0.08 ) --[[ @ 0]]
	bgLineBot:setZRot( 180 ) --[[ @ 0]]
	bgLineBot:setImage( RegisterImage( @"uie_ui_menu_aar_common_halfbox_blur" ) ) --[[ @ 0]]
	bgLineBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	bgLineBot:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	bgLineBot:setupNineSliceShader( 16, 10 ) --[[ @ 0]]
	self:addElement( bgLineBot ) --[[ @ 0]]
	self.bgLineBot = bgLineBot --[[ @ 0]]
	
	local bgLineTop = LUI.UIImage.new( 0, 0, 51, 1619, 0, 0, 10, 374 ) --[[ @ 0]]
	bgLineTop:setAlpha( 0.08 ) --[[ @ 0]]
	bgLineTop:setImage( RegisterImage( @"uie_ui_menu_aar_common_halfbox_blur" ) ) --[[ @ 0]]
	bgLineTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	bgLineTop:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	bgLineTop:setupNineSliceShader( 16, 10 ) --[[ @ 0]]
	self:addElement( bgLineTop ) --[[ @ 0]]
	self.bgLineTop = bgLineTop --[[ @ 0]]
	
	local boxRight = LUI.UIImage.new( 0, 0, 1589, 1649, 0, 0, 384, 412 ) --[[ @ 0]]
	boxRight:setAlpha( 0.1 ) --[[ @ 0]]
	boxRight:setImage( RegisterImage( @"uie_ui_menu_aar_common_box" ) ) --[[ @ 0]]
	boxRight:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	boxRight:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( boxRight ) --[[ @ 0]]
	self.boxRight = boxRight --[[ @ 0]]
	
	local boxLeft = LUI.UIImage.new( 0, 0, 84, 24, 0, 0, 384, 412 ) --[[ @ 0]]
	boxLeft:setAlpha( 0.1 ) --[[ @ 0]]
	boxLeft:setImage( RegisterImage( @"uie_ui_menu_aar_common_box" ) ) --[[ @ 0]]
	boxLeft:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	boxLeft:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( boxLeft ) --[[ @ 0]]
	self.boxLeft = boxLeft --[[ @ 0]]
	
	local connectionText = LUI.UIImage.new( 0, 0, 1456, 1592, 0, 0, 38, 50 ) --[[ @ 0]]
	connectionText:setAlpha( 0.2 ) --[[ @ 0]]
	connectionText:setImage( RegisterImage( @"uie_ui_menu_aar_common_online_text" ) ) --[[ @ 0]]
	connectionText:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( connectionText ) --[[ @ 0]]
	self.connectionText = connectionText --[[ @ 0]]
	
	local Plus01 = LUI.UIImage.new( 0, 0, 1360, 1392, 0, 0, 172, 204 ) --[[ @ 0]]
	Plus01:setAlpha( 0 ) --[[ @ 0]]
	Plus01:setImage( RegisterImage( @"uie_ui_menu_aar_common_thin_cross" ) ) --[[ @ 0]]
	Plus01:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Plus01 ) --[[ @ 0]]
	self.Plus01 = Plus01 --[[ @ 0]]
	
	local Plus02 = LUI.UIImage.new( 0, 0, 1144, 1176, 0, 0, 172, 204 ) --[[ @ 0]]
	Plus02:setAlpha( 0 ) --[[ @ 0]]
	Plus02:setImage( RegisterImage( @"uie_ui_menu_aar_common_thin_cross" ) ) --[[ @ 0]]
	Plus02:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Plus02 ) --[[ @ 0]]
	self.Plus02 = Plus02 --[[ @ 0]]
	
	local Plus03 = LUI.UIImage.new( 0, 0, 281, 313, 0, 0, 172, 204 ) --[[ @ 0]]
	Plus03:setAlpha( 0 ) --[[ @ 0]]
	Plus03:setImage( RegisterImage( @"uie_ui_menu_aar_common_thin_cross" ) ) --[[ @ 0]]
	Plus03:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Plus03 ) --[[ @ 0]]
	self.Plus03 = Plus03 --[[ @ 0]]
	
	local Plus04 = LUI.UIImage.new( 0, 0, 495, 527, 0, 0, 172, 204 ) --[[ @ 0]]
	Plus04:setAlpha( 0 ) --[[ @ 0]]
	Plus04:setImage( RegisterImage( @"uie_ui_menu_aar_common_thin_cross" ) ) --[[ @ 0]]
	Plus04:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Plus04 ) --[[ @ 0]]
	self.Plus04 = Plus04 --[[ @ 0]]
	
	local Plus05 = LUI.UIImage.new( 0, 0, 279, 311, 0, 0, 389, 421 ) --[[ @ 0]]
	Plus05:setAlpha( 0 ) --[[ @ 0]]
	Plus05:setImage( RegisterImage( @"uie_ui_menu_aar_common_thin_cross" ) ) --[[ @ 0]]
	Plus05:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Plus05 ) --[[ @ 0]]
	self.Plus05 = Plus05 --[[ @ 0]]
	
	local Plus06 = LUI.UIImage.new( 0, 0, 495, 527, 0, 0, 389, 421 ) --[[ @ 0]]
	Plus06:setAlpha( 0 ) --[[ @ 0]]
	Plus06:setImage( RegisterImage( @"uie_ui_menu_aar_common_thin_cross" ) ) --[[ @ 0]]
	Plus06:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Plus06 ) --[[ @ 0]]
	self.Plus06 = Plus06 --[[ @ 0]]
	
	local Plus07 = LUI.UIImage.new( 0, 0, 1145, 1177, 0, 0, 389, 421 ) --[[ @ 0]]
	Plus07:setAlpha( 0 ) --[[ @ 0]]
	Plus07:setImage( RegisterImage( @"uie_ui_menu_aar_common_thin_cross" ) ) --[[ @ 0]]
	Plus07:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Plus07 ) --[[ @ 0]]
	self.Plus07 = Plus07 --[[ @ 0]]
	
	local Plus08 = LUI.UIImage.new( 0, 0, 1361, 1393, 0, 0, 389, 421 ) --[[ @ 0]]
	Plus08:setAlpha( 0 ) --[[ @ 0]]
	Plus08:setImage( RegisterImage( @"uie_ui_menu_aar_common_thin_cross" ) ) --[[ @ 0]]
	Plus08:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Plus08 ) --[[ @ 0]]
	self.Plus08 = Plus08 --[[ @ 0]]
	
	local Plus09 = LUI.UIImage.new( 0, 0, 823, 855, 0, 0, 389, 421 ) --[[ @ 0]]
	Plus09:setAlpha( 0 ) --[[ @ 0]]
	Plus09:setImage( RegisterImage( @"uie_ui_menu_aar_common_thin_cross" ) ) --[[ @ 0]]
	Plus09:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Plus09 ) --[[ @ 0]]
	self.Plus09 = Plus09 --[[ @ 0]]
	
	local SquareOthers = CoD.AARLevelCommonBoxes.new( f1_arg0, f1_arg1, 0, 0, 81, 129, 0, 0, 29.5, 42.5 ) --[[ @ 0]]
	SquareOthers:setAlpha( 0.1 ) --[[ @ 0]]
	self:addElement( SquareOthers ) --[[ @ 0]]
	self.SquareOthers = SquareOthers --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARLevelUpOverlay_LevelUpBg.__resetProperties = function ( f2_arg0 )
	f2_arg0.Plus01:completeAnimation() --[[ @ 0]]
	f2_arg0.Plus02:completeAnimation() --[[ @ 0]]
	f2_arg0.Plus03:completeAnimation() --[[ @ 0]]
	f2_arg0.Plus04:completeAnimation() --[[ @ 0]]
	f2_arg0.Plus05:completeAnimation() --[[ @ 0]]
	f2_arg0.Plus06:completeAnimation() --[[ @ 0]]
	f2_arg0.Plus07:completeAnimation() --[[ @ 0]]
	f2_arg0.Plus08:completeAnimation() --[[ @ 0]]
	f2_arg0.Plus09:completeAnimation() --[[ @ 0]]
	f2_arg0.boxRight:completeAnimation() --[[ @ 0]]
	f2_arg0.boxLeft:completeAnimation() --[[ @ 0]]
	f2_arg0.connectionText:completeAnimation() --[[ @ 0]]
	f2_arg0.AmbientCornerL:completeAnimation() --[[ @ 0]]
	f2_arg0.AmbientCornerR:completeAnimation() --[[ @ 0]]
	f2_arg0.bgLineTop:completeAnimation() --[[ @ 0]]
	f2_arg0.bgLineBot:completeAnimation() --[[ @ 0]]
	f2_arg0.dataFui:completeAnimation() --[[ @ 0]]
	f2_arg0.DotL:completeAnimation() --[[ @ 0]]
	f2_arg0.DotR:completeAnimation() --[[ @ 0]]
	f2_arg0.DotTop:completeAnimation() --[[ @ 0]]
	f2_arg0.SquareOthers:completeAnimation() --[[ @ 0]]
	f2_arg0.Plus01:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Plus02:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Plus03:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Plus04:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Plus05:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Plus06:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Plus07:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Plus08:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Plus09:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.boxRight:setLeftRight( 0, 0, 1589, 1649 ) --[[ @ 0]]
	f2_arg0.boxRight:setAlpha( 0.1 ) --[[ @ 0]]
	f2_arg0.boxRight:setXRot( 0 ) --[[ @ 0]]
	f2_arg0.boxLeft:setLeftRight( 0, 0, 84, 24 ) --[[ @ 0]]
	f2_arg0.boxLeft:setAlpha( 0.1 ) --[[ @ 0]]
	f2_arg0.connectionText:setAlpha( 0.2 ) --[[ @ 0]]
	f2_arg0.AmbientCornerL:setAlpha( 0.5 ) --[[ @ 0]]
	f2_arg0.AmbientCornerR:setAlpha( 0.5 ) --[[ @ 0]]
	f2_arg0.bgLineTop:setTopBottom( 0, 0, 10, 374 ) --[[ @ 0]]
	f2_arg0.bgLineTop:setAlpha( 0.08 ) --[[ @ 0]]
	f2_arg0.bgLineBot:setTopBottom( 0, 0, 421, 785 ) --[[ @ 0]]
	f2_arg0.bgLineBot:setAlpha( 0.08 ) --[[ @ 0]]
	f2_arg0.dataFui:setAlpha( 0.12 ) --[[ @ 0]]
	f2_arg0.DotL:setAlpha( 0.04 ) --[[ @ 0]]
	f2_arg0.DotR:setAlpha( 0.04 ) --[[ @ 0]]
	f2_arg0.DotTop:setAlpha( 0.03 ) --[[ @ 0]]
	f2_arg0.SquareOthers:setAlpha( 0.1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARLevelUpOverlay_LevelUpBg.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 14 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 1000, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
					f5_arg0:setAlpha( 0.4 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.AmbientCornerR:beginAnimation( 1000, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f3_arg0.AmbientCornerR:setAlpha( 0.75 ) --[[ @ 0]]
				f3_arg0.AmbientCornerR:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.AmbientCornerR:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.AmbientCornerR:completeAnimation() --[[ @ 0]]
			f3_arg0.AmbientCornerR:setAlpha( 0.4 ) --[[ @ 0]]
			f3_local0( f3_arg0.AmbientCornerR ) --[[ @ 0]]
			local f3_local1 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 1000, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.AmbientCornerL:beginAnimation( 1000, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f3_arg0.AmbientCornerL:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.AmbientCornerL:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.AmbientCornerL:completeAnimation() --[[ @ 0]]
			f3_arg0.AmbientCornerL:setAlpha( 0.5 ) --[[ @ 0]]
			f3_local1( f3_arg0.AmbientCornerL ) --[[ @ 0]]
			local f3_local2 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f9_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.boxRight:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.boxRight:setAlpha( 0.2 ) --[[ @ 0]]
				f3_arg0.boxRight:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.boxRight:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.boxRight:completeAnimation() --[[ @ 0]]
			f3_arg0.boxRight:setAlpha( 0.1 ) --[[ @ 0]]
			f3_local2( f3_arg0.boxRight ) --[[ @ 0]]
			local f3_local3 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					f11_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f11_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.boxLeft:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.boxLeft:setAlpha( 0.2 ) --[[ @ 0]]
				f3_arg0.boxLeft:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.boxLeft:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.boxLeft:completeAnimation() --[[ @ 0]]
			f3_arg0.boxLeft:setAlpha( 0.1 ) --[[ @ 0]]
			f3_local3( f3_arg0.boxLeft ) --[[ @ 0]]
			local f3_local4 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					local f13_local0 = function ( f14_arg0 )
						local f14_local0 = function ( f15_arg0 )
							local f15_local0 = function ( f16_arg0 )
								local f16_local0 = function ( f17_arg0 )
									local f17_local0 = function ( f18_arg0 )
										f18_arg0:beginAnimation( 1000 ) --[[ @ 0]]
										f18_arg0:setAlpha( 0.2 ) --[[ @ 0]]
										f18_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f17_arg0:beginAnimation( 420 ) --[[ @ 0]]
									f17_arg0:setAlpha( 0.4 ) --[[ @ 0]]
									f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f16_arg0:beginAnimation( 19 ) --[[ @ 0]]
								f16_arg0:setAlpha( 0.2 ) --[[ @ 0]]
								f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f15_arg0:beginAnimation( 19 ) --[[ @ 0]]
							f15_arg0:setAlpha( 0.3 ) --[[ @ 0]]
							f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f14_arg0:beginAnimation( 20 ) --[[ @ 0]]
						f14_arg0:setAlpha( 0.2 ) --[[ @ 0]]
						f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f13_arg0:beginAnimation( 19 ) --[[ @ 0]]
					f13_arg0:setAlpha( 0.3 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.connectionText:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.connectionText:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.connectionText:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.connectionText:completeAnimation() --[[ @ 0]]
			f3_arg0.connectionText:setAlpha( 0.2 ) --[[ @ 0]]
			f3_local4( f3_arg0.connectionText ) --[[ @ 0]]
			local f3_local5 = function ( f19_arg0 )
				local f19_local0 = function ( f20_arg0 )
					f20_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f20_arg0:setAlpha( 0.01 ) --[[ @ 0]]
					f20_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Plus01:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.Plus01:setAlpha( 0.04 ) --[[ @ 0]]
				f3_arg0.Plus01:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Plus01:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Plus01:completeAnimation() --[[ @ 0]]
			f3_arg0.Plus01:setAlpha( 0.01 ) --[[ @ 0]]
			f3_local5( f3_arg0.Plus01 ) --[[ @ 0]]
			local f3_local6 = function ( f21_arg0 )
				local f21_local0 = function ( f22_arg0 )
					f22_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f22_arg0:setAlpha( 0.01 ) --[[ @ 0]]
					f22_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Plus02:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.Plus02:setAlpha( 0.04 ) --[[ @ 0]]
				f3_arg0.Plus02:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Plus02:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Plus02:completeAnimation() --[[ @ 0]]
			f3_arg0.Plus02:setAlpha( 0.01 ) --[[ @ 0]]
			f3_local6( f3_arg0.Plus02 ) --[[ @ 0]]
			local f3_local7 = function ( f23_arg0 )
				local f23_local0 = function ( f24_arg0 )
					f24_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f24_arg0:setAlpha( 0.01 ) --[[ @ 0]]
					f24_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Plus03:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.Plus03:setAlpha( 0.04 ) --[[ @ 0]]
				f3_arg0.Plus03:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Plus03:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Plus03:completeAnimation() --[[ @ 0]]
			f3_arg0.Plus03:setAlpha( 0.01 ) --[[ @ 0]]
			f3_local7( f3_arg0.Plus03 ) --[[ @ 0]]
			local f3_local8 = function ( f25_arg0 )
				local f25_local0 = function ( f26_arg0 )
					f26_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f26_arg0:setAlpha( 0.01 ) --[[ @ 0]]
					f26_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Plus04:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.Plus04:setAlpha( 0.04 ) --[[ @ 0]]
				f3_arg0.Plus04:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Plus04:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Plus04:completeAnimation() --[[ @ 0]]
			f3_arg0.Plus04:setAlpha( 0.01 ) --[[ @ 0]]
			f3_local8( f3_arg0.Plus04 ) --[[ @ 0]]
			local f3_local9 = function ( f27_arg0 )
				local f27_local0 = function ( f28_arg0 )
					f28_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f28_arg0:setAlpha( 0.01 ) --[[ @ 0]]
					f28_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Plus05:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.Plus05:setAlpha( 0.04 ) --[[ @ 0]]
				f3_arg0.Plus05:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Plus05:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Plus05:completeAnimation() --[[ @ 0]]
			f3_arg0.Plus05:setAlpha( 0.01 ) --[[ @ 0]]
			f3_local9( f3_arg0.Plus05 ) --[[ @ 0]]
			local f3_local10 = function ( f29_arg0 )
				local f29_local0 = function ( f30_arg0 )
					f30_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f30_arg0:setAlpha( 0.01 ) --[[ @ 0]]
					f30_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Plus06:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.Plus06:setAlpha( 0.04 ) --[[ @ 0]]
				f3_arg0.Plus06:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Plus06:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Plus06:completeAnimation() --[[ @ 0]]
			f3_arg0.Plus06:setAlpha( 0.01 ) --[[ @ 0]]
			f3_local10( f3_arg0.Plus06 ) --[[ @ 0]]
			local f3_local11 = function ( f31_arg0 )
				local f31_local0 = function ( f32_arg0 )
					f32_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f32_arg0:setAlpha( 0.01 ) --[[ @ 0]]
					f32_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Plus07:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.Plus07:setAlpha( 0.04 ) --[[ @ 0]]
				f3_arg0.Plus07:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Plus07:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Plus07:completeAnimation() --[[ @ 0]]
			f3_arg0.Plus07:setAlpha( 0.01 ) --[[ @ 0]]
			f3_local11( f3_arg0.Plus07 ) --[[ @ 0]]
			local f3_local12 = function ( f33_arg0 )
				local f33_local0 = function ( f34_arg0 )
					f34_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f34_arg0:setAlpha( 0.01 ) --[[ @ 0]]
					f34_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Plus08:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.Plus08:setAlpha( 0.04 ) --[[ @ 0]]
				f3_arg0.Plus08:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Plus08:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Plus08:completeAnimation() --[[ @ 0]]
			f3_arg0.Plus08:setAlpha( 0.01 ) --[[ @ 0]]
			f3_local12( f3_arg0.Plus08 ) --[[ @ 0]]
			local f3_local13 = function ( f35_arg0 )
				local f35_local0 = function ( f36_arg0 )
					f36_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f36_arg0:setAlpha( 0.01 ) --[[ @ 0]]
					f36_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Plus09:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.Plus09:setAlpha( 0.04 ) --[[ @ 0]]
				f3_arg0.Plus09:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Plus09:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Plus09:completeAnimation() --[[ @ 0]]
			f3_arg0.Plus09:setAlpha( 0.01 ) --[[ @ 0]]
			f3_local13( f3_arg0.Plus09 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end,
		Intro = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 12 ) --[[ @ 0]]
			local f37_local0 = function ( f38_arg0 )
				local f38_local0 = function ( f39_arg0 )
					f39_arg0:beginAnimation( 299, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f39_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f39_arg0:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f37_arg0.AmbientCornerR:beginAnimation( 400 ) --[[ @ 0]]
				f37_arg0.AmbientCornerR:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
				f37_arg0.AmbientCornerR:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.AmbientCornerR:completeAnimation() --[[ @ 0]]
			f37_arg0.AmbientCornerR:setAlpha( 0 ) --[[ @ 0]]
			f37_local0( f37_arg0.AmbientCornerR ) --[[ @ 0]]
			local f37_local1 = function ( f40_arg0 )
				local f40_local0 = function ( f41_arg0 )
					f41_arg0:beginAnimation( 299, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f41_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f41_arg0:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f37_arg0.AmbientCornerL:beginAnimation( 400 ) --[[ @ 0]]
				f37_arg0.AmbientCornerL:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
				f37_arg0.AmbientCornerL:registerEventHandler( "transition_complete_keyframe", f40_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.AmbientCornerL:completeAnimation() --[[ @ 0]]
			f37_arg0.AmbientCornerL:setAlpha( 0 ) --[[ @ 0]]
			f37_local1( f37_arg0.AmbientCornerL ) --[[ @ 0]]
			local f37_local2 = function ( f42_arg0 )
				local f42_local0 = function ( f43_arg0 )
					f43_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f43_arg0:setAlpha( 0.04 ) --[[ @ 0]]
					f43_arg0:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f42_arg0:beginAnimation( 150 ) --[[ @ 0]]
				f42_arg0:setAlpha( 0.08 ) --[[ @ 0]]
				f42_arg0:registerEventHandler( "transition_complete_keyframe", f42_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.DotL:beginAnimation( 350 ) --[[ @ 0]]
			f37_arg0.DotL:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.DotL:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
			f37_arg0.DotL:registerEventHandler( "transition_complete_keyframe", f37_local2 ) --[[ @ 0]]
			local f37_local3 = function ( f44_arg0 )
				local f44_local0 = function ( f45_arg0 )
					f45_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f45_arg0:setAlpha( 0.04 ) --[[ @ 0]]
					f45_arg0:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f44_arg0:beginAnimation( 150 ) --[[ @ 0]]
				f44_arg0:setAlpha( 0.08 ) --[[ @ 0]]
				f44_arg0:registerEventHandler( "transition_complete_keyframe", f44_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.DotR:beginAnimation( 350 ) --[[ @ 0]]
			f37_arg0.DotR:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.DotR:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
			f37_arg0.DotR:registerEventHandler( "transition_complete_keyframe", f37_local3 ) --[[ @ 0]]
			local f37_local4 = function ( f46_arg0 )
				local f46_local0 = function ( f47_arg0 )
					f47_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f47_arg0:setAlpha( 0.03 ) --[[ @ 0]]
					f47_arg0:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f46_arg0:beginAnimation( 150 ) --[[ @ 0]]
				f46_arg0:setAlpha( 0.06 ) --[[ @ 0]]
				f46_arg0:registerEventHandler( "transition_complete_keyframe", f46_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.DotTop:beginAnimation( 350 ) --[[ @ 0]]
			f37_arg0.DotTop:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.DotTop:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
			f37_arg0.DotTop:registerEventHandler( "transition_complete_keyframe", f37_local4 ) --[[ @ 0]]
			local f37_local5 = function ( f48_arg0 )
				local f48_local0 = function ( f49_arg0 )
					f49_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f49_arg0:setAlpha( 0.12 ) --[[ @ 0]]
					f49_arg0:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f48_arg0:beginAnimation( 150 ) --[[ @ 0]]
				f48_arg0:setAlpha( 0.3 ) --[[ @ 0]]
				f48_arg0:registerEventHandler( "transition_complete_keyframe", f48_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.dataFui:beginAnimation( 350 ) --[[ @ 0]]
			f37_arg0.dataFui:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.dataFui:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
			f37_arg0.dataFui:registerEventHandler( "transition_complete_keyframe", f37_local5 ) --[[ @ 0]]
			local f37_local6 = function ( f50_arg0 )
				local f50_local0 = function ( f51_arg0 )
					f51_arg0:beginAnimation( 99 ) --[[ @ 0]]
					f51_arg0:setTopBottom( 0, 0, 421, 785 ) --[[ @ 0]]
					f51_arg0:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f50_arg0:beginAnimation( 100 ) --[[ @ 0]]
				f50_arg0:setTopBottom( 0, 0, 603, 785 ) --[[ @ 0]]
				f50_arg0:setAlpha( 0.08 ) --[[ @ 0]]
				f50_arg0:registerEventHandler( "transition_complete_keyframe", f50_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.bgLineBot:beginAnimation( 200 ) --[[ @ 0]]
			f37_arg0.bgLineBot:setTopBottom( 0, 0, 785, 785 ) --[[ @ 0]]
			f37_arg0.bgLineBot:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.bgLineBot:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
			f37_arg0.bgLineBot:registerEventHandler( "transition_complete_keyframe", f37_local6 ) --[[ @ 0]]
			local f37_local7 = function ( f52_arg0 )
				local f52_local0 = function ( f53_arg0 )
					f53_arg0:beginAnimation( 99 ) --[[ @ 0]]
					f53_arg0:setTopBottom( 0, 0, 10, 374 ) --[[ @ 0]]
					f53_arg0:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f52_arg0:beginAnimation( 100 ) --[[ @ 0]]
				f52_arg0:setTopBottom( 0, 0, 10, 192 ) --[[ @ 0]]
				f52_arg0:setAlpha( 0.08 ) --[[ @ 0]]
				f52_arg0:registerEventHandler( "transition_complete_keyframe", f52_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.bgLineTop:beginAnimation( 200 ) --[[ @ 0]]
			f37_arg0.bgLineTop:setTopBottom( 0, 0, 10, 10 ) --[[ @ 0]]
			f37_arg0.bgLineTop:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.bgLineTop:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
			f37_arg0.bgLineTop:registerEventHandler( "transition_complete_keyframe", f37_local7 ) --[[ @ 0]]
			local f37_local8 = function ( f54_arg0 )
				local f54_local0 = function ( f55_arg0 )
					f55_arg0:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f55_arg0:setLeftRight( 0, 0, 1589, 1649 ) --[[ @ 0]]
					f55_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f55_arg0:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f54_arg0:beginAnimation( 200 ) --[[ @ 0]]
				f54_arg0:registerEventHandler( "transition_complete_keyframe", f54_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.boxRight:beginAnimation( 200 ) --[[ @ 0]]
			f37_arg0.boxRight:setLeftRight( 0, 0, 1789, 1849 ) --[[ @ 0]]
			f37_arg0.boxRight:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.boxRight:setXRot( 0 ) --[[ @ 0]]
			f37_arg0.boxRight:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
			f37_arg0.boxRight:registerEventHandler( "transition_complete_keyframe", f37_local8 ) --[[ @ 0]]
			local f37_local9 = function ( f56_arg0 )
				local f56_local0 = function ( f57_arg0 )
					f57_arg0:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f57_arg0:setLeftRight( 0, 0, 84, 24 ) --[[ @ 0]]
					f57_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f57_arg0:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f56_arg0:beginAnimation( 200 ) --[[ @ 0]]
				f56_arg0:registerEventHandler( "transition_complete_keyframe", f56_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.boxLeft:beginAnimation( 200 ) --[[ @ 0]]
			f37_arg0.boxLeft:setLeftRight( 0, 0, -184, -244 ) --[[ @ 0]]
			f37_arg0.boxLeft:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.boxLeft:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
			f37_arg0.boxLeft:registerEventHandler( "transition_complete_keyframe", f37_local9 ) --[[ @ 0]]
			local f37_local10 = function ( f58_arg0 )
				local f58_local0 = function ( f59_arg0 )
					local f59_local0 = function ( f60_arg0 )
						f60_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f60_arg0:setAlpha( 0.2 ) --[[ @ 0]]
						f60_arg0:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f59_arg0:beginAnimation( 149 ) --[[ @ 0]]
					f59_arg0:setAlpha( 0.3 ) --[[ @ 0]]
					f59_arg0:registerEventHandler( "transition_complete_keyframe", f59_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f37_arg0.connectionText:beginAnimation( 550 ) --[[ @ 0]]
				f37_arg0.connectionText:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
				f37_arg0.connectionText:registerEventHandler( "transition_complete_keyframe", f58_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.connectionText:completeAnimation() --[[ @ 0]]
			f37_arg0.connectionText:setAlpha( 0 ) --[[ @ 0]]
			f37_local10( f37_arg0.connectionText ) --[[ @ 0]]
			local f37_local11 = function ( f61_arg0 )
				f61_arg0:beginAnimation( 100 ) --[[ @ 0]]
				f61_arg0:setAlpha( 0.1 ) --[[ @ 0]]
				f61_arg0:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.SquareOthers:beginAnimation( 700 ) --[[ @ 0]]
			f37_arg0.SquareOthers:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.SquareOthers:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
			f37_arg0.SquareOthers:registerEventHandler( "transition_complete_keyframe", f37_local11 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARLevelUpOverlay_LevelUpBg.__onClose = function ( f62_arg0 )
	f62_arg0.SquareOthers:close() --[[ @ 0]]
end
 --[[ @ 0]]
