-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.ConnectionLabel = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ConnectionLabel.__defaultWidth = 1920 --[[ @ 0]]
CoD.ConnectionLabel.__defaultHeight = 1080 --[[ @ 0]]
CoD.ConnectionLabel.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ConnectionLabel ) --[[ @ 0]]
	self.id = "ConnectionLabel" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local lblConnecting = LUI.UIText.new( 0, 0, 160, 960, 1, 1, -134, -104 ) --[[ @ 0]]
	lblConnecting:setRGB( 0.26, 0.25, 0.25 ) --[[ @ 0]]
	lblConnecting:setText( LocalizeToUpperString( @"menu/connecting_dw" ) ) --[[ @ 0]]
	lblConnecting:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	lblConnecting:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	lblConnecting:setLetterSpacing( 6 ) --[[ @ 0]]
	lblConnecting:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	lblConnecting:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( lblConnecting ) --[[ @ 0]]
	self.lblConnecting = lblConnecting --[[ @ 0]]
	
	local lblSubStatus = LUI.UIText.new( 0, 0, 160, 960, 1, 1, -92, -62 ) --[[ @ 0]]
	lblSubStatus:setRGB( 0.26, 0.25, 0.25 ) --[[ @ 0]]
	lblSubStatus:setAlpha( 0 ) --[[ @ 0]]
	lblSubStatus:setText( LocalizeToUpperString( @"menu/checking_files" ) ) --[[ @ 0]]
	lblSubStatus:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	lblSubStatus:setLetterSpacing( 6 ) --[[ @ 0]]
	lblSubStatus:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	lblSubStatus:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( lblSubStatus ) --[[ @ 0]]
	self.lblSubStatus = lblSubStatus --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "DefaultStatePC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ConnectionLabel.__resetProperties = function ( f3_arg0 )
	f3_arg0.lblConnecting:completeAnimation() --[[ @ 0]]
	f3_arg0.lblSubStatus:completeAnimation() --[[ @ 0]]
	f3_arg0.lblConnecting:setRGB( 0.26, 0.25, 0.25 ) --[[ @ 0]]
	f3_arg0.lblConnecting:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.lblSubStatus:setRGB( 0.26, 0.25, 0.25 ) --[[ @ 0]]
	f3_arg0.lblSubStatus:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ConnectionLabel.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					f6_arg0:beginAnimation( 400 ) --[[ @ 0]]
					f6_arg0:setAlpha( 1 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.lblConnecting:beginAnimation( 800 ) --[[ @ 0]]
				f4_arg0.lblConnecting:setAlpha( 0.25 ) --[[ @ 0]]
				f4_arg0.lblConnecting:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.lblConnecting:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.lblConnecting:completeAnimation() --[[ @ 0]]
			f4_arg0.lblConnecting:setAlpha( 1 ) --[[ @ 0]]
			f4_local0( f4_arg0.lblConnecting ) --[[ @ 0]]
			f4_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end,
		ShowStatus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 400 ) --[[ @ 0]]
					f9_arg0:setAlpha( 1 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.lblConnecting:beginAnimation( 800 ) --[[ @ 0]]
				f7_arg0.lblConnecting:setAlpha( 0.25 ) --[[ @ 0]]
				f7_arg0.lblConnecting:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.lblConnecting:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.lblConnecting:completeAnimation() --[[ @ 0]]
			f7_arg0.lblConnecting:setAlpha( 1 ) --[[ @ 0]]
			f7_local0( f7_arg0.lblConnecting ) --[[ @ 0]]
			local f7_local1 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					f11_arg0:beginAnimation( 400 ) --[[ @ 0]]
					f11_arg0:setAlpha( 1 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.lblSubStatus:beginAnimation( 800 ) --[[ @ 0]]
				f7_arg0.lblSubStatus:setAlpha( 0.25 ) --[[ @ 0]]
				f7_arg0.lblSubStatus:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.lblSubStatus:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.lblSubStatus:completeAnimation() --[[ @ 0]]
			f7_arg0.lblSubStatus:setAlpha( 1 ) --[[ @ 0]]
			f7_local1( f7_arg0.lblSubStatus ) --[[ @ 0]]
			f7_arg0.nextClip = "ShowStatus" --[[ @ 0]]
		end
	},
	DefaultStatePC = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					f14_arg0:beginAnimation( 400 ) --[[ @ 0]]
					f14_arg0:setAlpha( 1 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.lblConnecting:beginAnimation( 800 ) --[[ @ 0]]
				f12_arg0.lblConnecting:setAlpha( 0.6 ) --[[ @ 0]]
				f12_arg0.lblConnecting:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.lblConnecting:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.lblConnecting:completeAnimation() --[[ @ 0]]
			f12_arg0.lblConnecting:setRGB( 0.95, 0.95, 0.95 ) --[[ @ 0]]
			f12_arg0.lblConnecting:setAlpha( 1 ) --[[ @ 0]]
			f12_local0( f12_arg0.lblConnecting ) --[[ @ 0]]
			f12_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end,
		ShowStatus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					f17_arg0:beginAnimation( 400 ) --[[ @ 0]]
					f17_arg0:setAlpha( 1 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0.lblConnecting:beginAnimation( 800 ) --[[ @ 0]]
				f15_arg0.lblConnecting:setAlpha( 0.6 ) --[[ @ 0]]
				f15_arg0.lblConnecting:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.lblConnecting:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.lblConnecting:completeAnimation() --[[ @ 0]]
			f15_arg0.lblConnecting:setRGB( 0.95, 0.95, 0.95 ) --[[ @ 0]]
			f15_arg0.lblConnecting:setAlpha( 1 ) --[[ @ 0]]
			f15_local0( f15_arg0.lblConnecting ) --[[ @ 0]]
			local f15_local1 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					f19_arg0:beginAnimation( 400 ) --[[ @ 0]]
					f19_arg0:setAlpha( 1 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0.lblSubStatus:beginAnimation( 800 ) --[[ @ 0]]
				f15_arg0.lblSubStatus:setAlpha( 0.6 ) --[[ @ 0]]
				f15_arg0.lblSubStatus:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.lblSubStatus:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.lblSubStatus:completeAnimation() --[[ @ 0]]
			f15_arg0.lblSubStatus:setRGB( 0.95, 0.95, 0.95 ) --[[ @ 0]]
			f15_arg0.lblSubStatus:setAlpha( 1 ) --[[ @ 0]]
			f15_local1( f15_arg0.lblSubStatus ) --[[ @ 0]]
			f15_arg0.nextClip = "ShowStatus" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
if not CoD.isPC then
	CoD.ConnectionLabel.__clipsPerState.DefaultStatePC.DefaultClip = nil --[[ @ 0]]
	CoD.ConnectionLabel.__clipsPerState.DefaultStatePC.ShowStatus = nil --[[ @ 0]]
end
