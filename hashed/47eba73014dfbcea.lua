-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:79a61afb49f90fa8" ) --[[ @ 0]]
require( "x64:f367664257175e1" ) --[[ @ 0]]

CoD[@"hash_58F2997EDAA1CF79"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_58F2997EDAA1CF79"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_58F2997EDAA1CF79"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_58F2997EDAA1CF79"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_58F2997EDAA1CF79"] ) --[[ @ 0]]
	self.id = "ui_icon_callingcards_crimewave" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bg = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	bg:setImage( RegisterImage( @"uie_ui_menu_callingcards_crimewave_bg" ) ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local reardirt = LUI.UIImage.new( 0, 0, -8, 656, 0, 0, -40, 240 ) --[[ @ 0]]
	reardirt:setImage( RegisterImage( @"uie_ui_menu_callingcards_crimewave_backdust" ) ) --[[ @ 0]]
	self:addElement( reardirt ) --[[ @ 0]]
	self.reardirt = reardirt --[[ @ 0]]
	
	local brokenwood1 = LUI.UIImage.new( 0, 0, -23, 545, 0, 0, -68, 252 ) --[[ @ 0]]
	brokenwood1:setImage( RegisterImage( @"uie_ui_menu_callingcards_crimewave_brokenwood1" ) ) --[[ @ 0]]
	self:addElement( brokenwood1 ) --[[ @ 0]]
	self.brokenwood1 = brokenwood1 --[[ @ 0]]
	
	local brokenwood2 = LUI.UIImage.new( 0, 0, 584, 1024, 0, 0, -22, 242 ) --[[ @ 0]]
	brokenwood2:setImage( RegisterImage( @"uie_ui_menu_callingcards_crimewave_brokenwood2" ) ) --[[ @ 0]]
	self:addElement( brokenwood2 ) --[[ @ 0]]
	self.brokenwood2 = brokenwood2 --[[ @ 0]]
	
	local policecar = CoD.ui_icon_callingcards_crimewave_policecar.new( f1_arg0, f1_arg1, 0, 0, 0, 320, 0, 0, 116, 252 ) --[[ @ 0]]
	self:addElement( policecar ) --[[ @ 0]]
	self.policecar = policecar --[[ @ 0]]
	
	local fence3 = LUI.UIImage.new( 0, 0, 46.5, 461.5, 0, 0, 13.5, 48.5 ) --[[ @ 0]]
	fence3:setImage( RegisterImage( @"uie_ui_menu_callingcards_crimewave_fence3" ) ) --[[ @ 0]]
	self:addElement( fence3 ) --[[ @ 0]]
	self.fence3 = fence3 --[[ @ 0]]
	
	local criminalcar = CoD.ui_icon_callingcards_crimewave_criminalcar.new( f1_arg0, f1_arg1, 0, 0, 296, 944, 0, 0, 0, 240 ) --[[ @ 0]]
	self:addElement( criminalcar ) --[[ @ 0]]
	self.criminalcar = criminalcar --[[ @ 0]]
	
	local fence2 = LUI.UIImage.new( 0, 0, 605, 973, 0, 0, 10, 66 ) --[[ @ 0]]
	fence2:setImage( RegisterImage( @"uie_ui_menu_callingcards_crimewave_fence1" ) ) --[[ @ 0]]
	self:addElement( fence2 ) --[[ @ 0]]
	self.fence2 = fence2 --[[ @ 0]]
	
	local fence4 = LUI.UIImage.new( 0, 0, 193, 385, 0, 0, 76, 252 ) --[[ @ 0]]
	fence4:setImage( RegisterImage( @"uie_ui_menu_callingcards_crimewave_fence4" ) ) --[[ @ 0]]
	self:addElement( fence4 ) --[[ @ 0]]
	self.fence4 = fence4 --[[ @ 0]]
	
	local dirt = LUI.UIImage.new( 0, 0, 148, 812, 0, 0, 145, 240 ) --[[ @ 0]]
	dirt:setImage( RegisterImage( @"uie_ui_menu_callingcards_crimewave_dirt" ) ) --[[ @ 0]]
	self:addElement( dirt ) --[[ @ 0]]
	self.dirt = dirt --[[ @ 0]]
	
	local frontdirt = LUI.UIImage.new( 0, 0, 0, 944, 0, 0, 120, 256 ) --[[ @ 0]]
	frontdirt:setImage( RegisterImage( @"uie_ui_menu_callingcards_crimewave_frontdust" ) ) --[[ @ 0]]
	self:addElement( frontdirt ) --[[ @ 0]]
	self.frontdirt = frontdirt --[[ @ 0]]
	
	local fence1 = LUI.UIImage.new( 0, 0, 572, 668, 0, 0, 48.5, 80.5 ) --[[ @ 0]]
	fence1:setImage( RegisterImage( @"uie_ui_menu_callingcards_crimewave_fence2" ) ) --[[ @ 0]]
	self:addElement( fence1 ) --[[ @ 0]]
	self.fence1 = fence1 --[[ @ 0]]
	
	local colortint = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	colortint:setRGB( 0.34, 0.25, 0.16 ) --[[ @ 0]]
	colortint:setAlpha( 0.15 ) --[[ @ 0]]
	self:addElement( colortint ) --[[ @ 0]]
	self.colortint = colortint --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_58F2997EDAA1CF79"].__resetProperties = function ( f2_arg0 )
	f2_arg0.criminalcar:completeAnimation() --[[ @ 0]]
	f2_arg0.policecar:completeAnimation() --[[ @ 0]]
	f2_arg0.fence4:completeAnimation() --[[ @ 0]]
	f2_arg0.fence3:completeAnimation() --[[ @ 0]]
	f2_arg0.fence1:completeAnimation() --[[ @ 0]]
	f2_arg0.fence2:completeAnimation() --[[ @ 0]]
	f2_arg0.dirt:completeAnimation() --[[ @ 0]]
	f2_arg0.frontdirt:completeAnimation() --[[ @ 0]]
	f2_arg0.reardirt:completeAnimation() --[[ @ 0]]
	f2_arg0.brokenwood2:completeAnimation() --[[ @ 0]]
	f2_arg0.brokenwood1:completeAnimation() --[[ @ 0]]
	f2_arg0.criminalcar:setLeftRight( 0, 0, 296, 944 ) --[[ @ 0]]
	f2_arg0.criminalcar:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
	f2_arg0.criminalcar:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.criminalcar:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.policecar:setLeftRight( 0, 0, 0, 320 ) --[[ @ 0]]
	f2_arg0.policecar:setTopBottom( 0, 0, 116, 252 ) --[[ @ 0]]
	f2_arg0.policecar:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.fence4:setLeftRight( 0, 0, 193, 385 ) --[[ @ 0]]
	f2_arg0.fence4:setTopBottom( 0, 0, 76, 252 ) --[[ @ 0]]
	f2_arg0.fence4:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.fence4:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.fence3:setLeftRight( 0, 0, 46.5, 461.5 ) --[[ @ 0]]
	f2_arg0.fence3:setTopBottom( 0, 0, 13.5, 48.5 ) --[[ @ 0]]
	f2_arg0.fence3:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.fence3:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.fence1:setLeftRight( 0, 0, 572, 668 ) --[[ @ 0]]
	f2_arg0.fence1:setTopBottom( 0, 0, 48.5, 80.5 ) --[[ @ 0]]
	f2_arg0.fence1:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.fence1:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.fence2:setLeftRight( 0, 0, 605, 973 ) --[[ @ 0]]
	f2_arg0.fence2:setTopBottom( 0, 0, 10, 66 ) --[[ @ 0]]
	f2_arg0.fence2:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.fence2:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.dirt:setLeftRight( 0, 0, 148, 812 ) --[[ @ 0]]
	f2_arg0.dirt:setTopBottom( 0, 0, 145, 240 ) --[[ @ 0]]
	f2_arg0.dirt:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.dirt:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.dirt:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.frontdirt:setLeftRight( 0, 0, 0, 944 ) --[[ @ 0]]
	f2_arg0.frontdirt:setTopBottom( 0, 0, 120, 256 ) --[[ @ 0]]
	f2_arg0.frontdirt:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.reardirt:setLeftRight( 0, 0, -8, 656 ) --[[ @ 0]]
	f2_arg0.reardirt:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.brokenwood2:setLeftRight( 0, 0, 584, 1024 ) --[[ @ 0]]
	f2_arg0.brokenwood2:setTopBottom( 0, 0, -22, 242 ) --[[ @ 0]]
	f2_arg0.brokenwood2:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.brokenwood2:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.brokenwood2:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.brokenwood1:setLeftRight( 0, 0, -23, 545 ) --[[ @ 0]]
	f2_arg0.brokenwood1:setTopBottom( 0, 0, -68, 252 ) --[[ @ 0]]
	f2_arg0.brokenwood1:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.brokenwood1:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.brokenwood1:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_58F2997EDAA1CF79"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 11 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 599 ) --[[ @ 0]]
					f5_arg0:setLeftRight( 0, 0, -135, 529 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.reardirt:beginAnimation( 2400 ) --[[ @ 0]]
				f3_arg0.reardirt:setLeftRight( 0, 0, -57, 607 ) --[[ @ 0]]
				f3_arg0.reardirt:setScale( 1, 1 ) --[[ @ 0]]
				f3_arg0.reardirt:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.reardirt:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.reardirt:completeAnimation() --[[ @ 0]]
			f3_arg0.reardirt:setLeftRight( 0, 0, 148, 812 ) --[[ @ 0]]
			f3_arg0.reardirt:setScale( 1.5, 1 ) --[[ @ 0]]
			f3_local0( f3_arg0.reardirt ) --[[ @ 0]]
			local f3_local1 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 1900 ) --[[ @ 0]]
					f7_arg0:setLeftRight( 0, 0, 685, 1253 ) --[[ @ 0]]
					f7_arg0:setTopBottom( 0, 0, -342, -22 ) --[[ @ 0]]
					f7_arg0:setZRot( -10 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.brokenwood1:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.brokenwood1:setLeftRight( 0, 0, 599, 1167 ) --[[ @ 0]]
				f3_arg0.brokenwood1:setTopBottom( 0, 0, -60, 260 ) --[[ @ 0]]
				f3_arg0.brokenwood1:setZRot( -80 ) --[[ @ 0]]
				f3_arg0.brokenwood1:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.brokenwood1:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.brokenwood1:completeAnimation() --[[ @ 0]]
			f3_arg0.brokenwood1:setLeftRight( 0, 0, 572, 1140 ) --[[ @ 0]]
			f3_arg0.brokenwood1:setTopBottom( 0, 0, 148, 468 ) --[[ @ 0]]
			f3_arg0.brokenwood1:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.brokenwood1:setZRot( -146 ) --[[ @ 0]]
			f3_arg0.brokenwood1:setScale( 1, 1 ) --[[ @ 0]]
			f3_local1( f3_arg0.brokenwood1 ) --[[ @ 0]]
			local f3_local2 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					local f9_local0 = function ( f10_arg0 )
						f10_arg0:beginAnimation( 599 ) --[[ @ 0]]
						f10_arg0:setLeftRight( 0, 0, 992, 1432 ) --[[ @ 0]]
						f10_arg0:setTopBottom( 0, 0, 105.5, 369.5 ) --[[ @ 0]]
						f10_arg0:setAlpha( 0 ) --[[ @ 0]]
						f10_arg0:setZRot( -179 ) --[[ @ 0]]
						f10_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f9_arg0:beginAnimation( 1900 ) --[[ @ 0]]
					f9_arg0:setLeftRight( 0, 0, 412, 852 ) --[[ @ 0]]
					f9_arg0:setTopBottom( 0, 0, 54, 318 ) --[[ @ 0]]
					f9_arg0:setZRot( -117 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.brokenwood2:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.brokenwood2:setLeftRight( 0, 0, 41, 481 ) --[[ @ 0]]
				f3_arg0.brokenwood2:setTopBottom( 0, 0, 73, 337 ) --[[ @ 0]]
				f3_arg0.brokenwood2:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.brokenwood2:setZRot( -40 ) --[[ @ 0]]
				f3_arg0.brokenwood2:setScale( 0.9, 0.9 ) --[[ @ 0]]
				f3_arg0.brokenwood2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.brokenwood2:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.brokenwood2:completeAnimation() --[[ @ 0]]
			f3_arg0.brokenwood2:setLeftRight( 0, 0, -111, 329 ) --[[ @ 0]]
			f3_arg0.brokenwood2:setTopBottom( 0, 0, 114.5, 378.5 ) --[[ @ 0]]
			f3_arg0.brokenwood2:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.brokenwood2:setZRot( 0 ) --[[ @ 0]]
			f3_arg0.brokenwood2:setScale( 0.8, 0.8 ) --[[ @ 0]]
			f3_local2( f3_arg0.brokenwood2 ) --[[ @ 0]]
			local f3_local3 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					local f12_local0 = function ( f13_arg0 )
						f13_arg0:beginAnimation( 599, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
						f13_arg0:setLeftRight( 0, 0, 1034, 1354 ) --[[ @ 0]]
						f13_arg0:setTopBottom( 0, 0, 77, 213 ) --[[ @ 0]]
						f13_arg0:setScale( 1.5, 1.5 ) --[[ @ 0]]
						f13_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
							element:playClip( "DefaultClip" ) --[[ @ 0]]
							f3_arg0.clipFinished( element, event ) --[[ @ 0]]
						end ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f12_arg0:beginAnimation( 1900 ) --[[ @ 0]]
					f12_arg0:setLeftRight( 0, 0, 78, 398 ) --[[ @ 0]]
					f12_arg0:setTopBottom( 0, 0, 124.5, 260.5 ) --[[ @ 0]]
					f12_arg0:setScale( 0.75, 0.75 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.policecar:playClip( "DefaultClip" ) --[[ @ 0]]
				f3_arg0.policecar:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.policecar:setLeftRight( 0, 0, -23, 297 ) --[[ @ 0]]
				f3_arg0.policecar:setTopBottom( 0, 0, 133.5, 269.5 ) --[[ @ 0]]
				f3_arg0.policecar:setScale( 0.55, 0.55 ) --[[ @ 0]]
				f3_arg0.policecar:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.policecar:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.policecar:completeAnimation() --[[ @ 0]]
			f3_arg0.policecar:setLeftRight( 0, 0, -362.5, -42.5 ) --[[ @ 0]]
			f3_arg0.policecar:setTopBottom( 0, 0, 208, 344 ) --[[ @ 0]]
			f3_arg0.policecar:setScale( 0.5, 0.5 ) --[[ @ 0]]
			f3_local3( f3_arg0.policecar ) --[[ @ 0]]
			local f3_local4 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					f16_arg0:beginAnimation( 1900 ) --[[ @ 0]]
					f16_arg0:setLeftRight( 0, 0, 596, 1011 ) --[[ @ 0]]
					f16_arg0:setTopBottom( 0, 0, -98, -63 ) --[[ @ 0]]
					f16_arg0:setZRot( -19 ) --[[ @ 0]]
					f16_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.fence3:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.fence3:setLeftRight( 0, 0, 497.5, 912.5 ) --[[ @ 0]]
				f3_arg0.fence3:setTopBottom( 0, 0, 38, 73 ) --[[ @ 0]]
				f3_arg0.fence3:setZRot( 17 ) --[[ @ 0]]
				f3_arg0.fence3:setScale( 0.76, 0.76 ) --[[ @ 0]]
				f3_arg0.fence3:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.fence3:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.fence3:completeAnimation() --[[ @ 0]]
			f3_arg0.fence3:setLeftRight( 0, 0, 572, 987 ) --[[ @ 0]]
			f3_arg0.fence3:setTopBottom( 0, 0, 188, 223 ) --[[ @ 0]]
			f3_arg0.fence3:setZRot( -18 ) --[[ @ 0]]
			f3_arg0.fence3:setScale( 0.7, 0.7 ) --[[ @ 0]]
			f3_local4( f3_arg0.fence3 ) --[[ @ 0]]
			local f3_local5 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					local f18_local0 = function ( f19_arg0 )
						f19_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
						f19_arg0:setLeftRight( 0, 0, 1712, 2360 ) --[[ @ 0]]
						f19_arg0:setTopBottom( 0, 0, -170, 70 ) --[[ @ 0]]
						f19_arg0:setScale( 2, 2 ) --[[ @ 0]]
						f19_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
							element:playClip( "DefaultClip" ) --[[ @ 0]]
							f3_arg0.clipFinished( element, event ) --[[ @ 0]]
						end ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f18_arg0:beginAnimation( 1900 ) --[[ @ 0]]
					f18_arg0:setLeftRight( 0, 0, 363, 1011 ) --[[ @ 0]]
					f18_arg0:setTopBottom( 0, 0, -10, 230 ) --[[ @ 0]]
					f18_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.criminalcar:playClip( "DefaultClip" ) --[[ @ 0]]
				f3_arg0.criminalcar:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.criminalcar:setLeftRight( 0, 0, 168, 816 ) --[[ @ 0]]
				f3_arg0.criminalcar:setTopBottom( 0, 0, 13.5, 253.5 ) --[[ @ 0]]
				f3_arg0.criminalcar:setScale( 0.8, 0.8 ) --[[ @ 0]]
				f3_arg0.criminalcar:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.criminalcar:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.criminalcar:completeAnimation() --[[ @ 0]]
			f3_arg0.criminalcar:setLeftRight( 0, 0, -338, 310 ) --[[ @ 0]]
			f3_arg0.criminalcar:setTopBottom( 0, 0, 126.5, 366.5 ) --[[ @ 0]]
			f3_arg0.criminalcar:setZRot( 0 ) --[[ @ 0]]
			f3_arg0.criminalcar:setScale( 0.4, 0.4 ) --[[ @ 0]]
			f3_local5( f3_arg0.criminalcar ) --[[ @ 0]]
			local f3_local6 = function ( f21_arg0 )
				local f21_local0 = function ( f22_arg0 )
					f22_arg0:beginAnimation( 1900 ) --[[ @ 0]]
					f22_arg0:setLeftRight( 0, 0, 827, 1195 ) --[[ @ 0]]
					f22_arg0:setTopBottom( 0, 0, 14, 70 ) --[[ @ 0]]
					f22_arg0:setZRot( 123 ) --[[ @ 0]]
					f22_arg0:setScale( 1.2, 1.2 ) --[[ @ 0]]
					f22_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.fence2:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.fence2:setLeftRight( 0, 0, 529, 897 ) --[[ @ 0]]
				f3_arg0.fence2:setTopBottom( 0, 0, 89, 145 ) --[[ @ 0]]
				f3_arg0.fence2:setZRot( 62 ) --[[ @ 0]]
				f3_arg0.fence2:setScale( 0.9, 0.9 ) --[[ @ 0]]
				f3_arg0.fence2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.fence2:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.fence2:completeAnimation() --[[ @ 0]]
			f3_arg0.fence2:setLeftRight( 0, 0, 592, 960 ) --[[ @ 0]]
			f3_arg0.fence2:setTopBottom( 0, 0, 270, 326 ) --[[ @ 0]]
			f3_arg0.fence2:setZRot( -4 ) --[[ @ 0]]
			f3_arg0.fence2:setScale( 0.8, 0.8 ) --[[ @ 0]]
			f3_local6( f3_arg0.fence2 ) --[[ @ 0]]
			local f3_local7 = function ( f23_arg0 )
				local f23_local0 = function ( f24_arg0 )
					local f24_local0 = function ( f25_arg0 )
						f25_arg0:beginAnimation( 599 ) --[[ @ 0]]
						f25_arg0:setLeftRight( 0, 0, -248, -56 ) --[[ @ 0]]
						f25_arg0:setTopBottom( 0, 0, -18, 158 ) --[[ @ 0]]
						f25_arg0:setZRot( 197 ) --[[ @ 0]]
						f25_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f24_arg0:beginAnimation( 1900 ) --[[ @ 0]]
					f24_arg0:setLeftRight( 0, 0, 206, 398 ) --[[ @ 0]]
					f24_arg0:setTopBottom( 0, 0, 54, 230 ) --[[ @ 0]]
					f24_arg0:setZRot( 106 ) --[[ @ 0]]
					f24_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.fence4:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.fence4:setLeftRight( 0, 0, 280, 472 ) --[[ @ 0]]
				f3_arg0.fence4:setTopBottom( 0, 0, 64, 240 ) --[[ @ 0]]
				f3_arg0.fence4:setZRot( 65 ) --[[ @ 0]]
				f3_arg0.fence4:setScale( 0.7, 0.7 ) --[[ @ 0]]
				f3_arg0.fence4:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.fence4:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.fence4:completeAnimation() --[[ @ 0]]
			f3_arg0.fence4:setLeftRight( 0, 0, 432, 624 ) --[[ @ 0]]
			f3_arg0.fence4:setTopBottom( 0, 0, 104.5, 280.5 ) --[[ @ 0]]
			f3_arg0.fence4:setZRot( -7 ) --[[ @ 0]]
			f3_arg0.fence4:setScale( 0.5, 0.5 ) --[[ @ 0]]
			f3_local7( f3_arg0.fence4 ) --[[ @ 0]]
			local f3_local8 = function ( f26_arg0 )
				local f26_local0 = function ( f27_arg0 )
					f27_arg0:beginAnimation( 279 ) --[[ @ 0]]
					f27_arg0:setLeftRight( 0, 0, 77, 741 ) --[[ @ 0]]
					f27_arg0:setTopBottom( 0, 0, 101.5, 196.5 ) --[[ @ 0]]
					f27_arg0:setAlpha( 0 ) --[[ @ 0]]
					f27_arg0:setScale( 1.6, 1.6 ) --[[ @ 0]]
					f27_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.dirt:beginAnimation( 2400 ) --[[ @ 0]]
				f3_arg0.dirt:setLeftRight( 0, 0, 188, 852 ) --[[ @ 0]]
				f3_arg0.dirt:setTopBottom( 0, 0, 129, 224 ) --[[ @ 0]]
				f3_arg0.dirt:setScale( 1.5, 1.5 ) --[[ @ 0]]
				f3_arg0.dirt:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.dirt:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.dirt:completeAnimation() --[[ @ 0]]
			f3_arg0.dirt:setLeftRight( 0, 0, 271, 935 ) --[[ @ 0]]
			f3_arg0.dirt:setTopBottom( 0, 0, 145, 240 ) --[[ @ 0]]
			f3_arg0.dirt:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.dirt:setZRot( 0 ) --[[ @ 0]]
			f3_arg0.dirt:setScale( 1, 1 ) --[[ @ 0]]
			f3_local8( f3_arg0.dirt ) --[[ @ 0]]
			local f3_local9 = function ( f28_arg0 )
				local f28_local0 = function ( f29_arg0 )
					f29_arg0:beginAnimation( 599 ) --[[ @ 0]]
					f29_arg0:setLeftRight( 0, 0, 33, 977 ) --[[ @ 0]]
					f29_arg0:setTopBottom( 0, 0, 101.5, 237.5 ) --[[ @ 0]]
					f29_arg0:setScale( 1.3, 1.3 ) --[[ @ 0]]
					f29_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.frontdirt:beginAnimation( 2400 ) --[[ @ 0]]
				f3_arg0.frontdirt:setLeftRight( 0, 0, 25, 969 ) --[[ @ 0]]
				f3_arg0.frontdirt:setTopBottom( 0, 0, 116, 252 ) --[[ @ 0]]
				f3_arg0.frontdirt:setScale( 1.1, 1.1 ) --[[ @ 0]]
				f3_arg0.frontdirt:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.frontdirt:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.frontdirt:completeAnimation() --[[ @ 0]]
			f3_arg0.frontdirt:setLeftRight( 0, 0, -9, 935 ) --[[ @ 0]]
			f3_arg0.frontdirt:setTopBottom( 0, 0, 124.5, 260.5 ) --[[ @ 0]]
			f3_arg0.frontdirt:setScale( 1, 1 ) --[[ @ 0]]
			f3_local9( f3_arg0.frontdirt ) --[[ @ 0]]
			local f3_local10 = function ( f30_arg0 )
				local f30_local0 = function ( f31_arg0 )
					local f31_local0 = function ( f32_arg0 )
						f32_arg0:beginAnimation( 279 ) --[[ @ 0]]
						f32_arg0:setLeftRight( 0, 0, 944, 1040 ) --[[ @ 0]]
						f32_arg0:setTopBottom( 0, 0, 269.5, 301.5 ) --[[ @ 0]]
						f32_arg0:setZRot( 144 ) --[[ @ 0]]
						f32_arg0:setScale( 2, 1.5 ) --[[ @ 0]]
						f32_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f31_arg0:beginAnimation( 1900 ) --[[ @ 0]]
					f31_arg0:setLeftRight( 0, 0, 784, 880 ) --[[ @ 0]]
					f31_arg0:setTopBottom( 0, 0, 160.5, 192.5 ) --[[ @ 0]]
					f31_arg0:setZRot( 57 ) --[[ @ 0]]
					f31_arg0:setScale( 1.5, 1.5 ) --[[ @ 0]]
					f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.fence1:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.fence1:setLeftRight( 0, 0, 584, 680 ) --[[ @ 0]]
				f3_arg0.fence1:setTopBottom( 0, 0, 94, 126 ) --[[ @ 0]]
				f3_arg0.fence1:setZRot( -29 ) --[[ @ 0]]
				f3_arg0.fence1:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.fence1:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.fence1:completeAnimation() --[[ @ 0]]
			f3_arg0.fence1:setLeftRight( 0, 0, 720, 816 ) --[[ @ 0]]
			f3_arg0.fence1:setTopBottom( 0, 0, 276, 308 ) --[[ @ 0]]
			f3_arg0.fence1:setZRot( 0 ) --[[ @ 0]]
			f3_arg0.fence1:setScale( 1, 1 ) --[[ @ 0]]
			f3_local10( f3_arg0.fence1 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD[@"hash_58F2997EDAA1CF79"].__onClose = function ( f33_arg0 )
	f33_arg0.policecar:close() --[[ @ 0]]
	f33_arg0.criminalcar:close() --[[ @ 0]]
end
 --[[ @ 0]]
