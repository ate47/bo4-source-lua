-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:24adaf674659a70" ) --[[ @ 0]]

CoD.ContractCompleteBanner = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ContractCompleteBanner.__defaultWidth = 150 --[[ @ 0]]
CoD.ContractCompleteBanner.__defaultHeight = 25 --[[ @ 0]]
CoD.ContractCompleteBanner.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ContractCompleteBanner ) --[[ @ 0]]
	self.id = "ContractCompleteBanner" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CompeletedBanner = LUI.UIText.new( 0.5, 0.5, -73, 73, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	CompeletedBanner:setRGB( ColorSet.EnemyOrange_Base.r, ColorSet.EnemyOrange_Base.g, ColorSet.EnemyOrange_Base.b ) --[[ @ 0]]
	CompeletedBanner:setText( LocalizeToUpperString( @"menu/completed" ) ) --[[ @ 0]]
	CompeletedBanner:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	CompeletedBanner:setLetterSpacing( 4 ) --[[ @ 0]]
	CompeletedBanner:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	CompeletedBanner:setBackingType( 1 ) --[[ @ 0]]
	CompeletedBanner:setBackingWidget( CoD.ContractActiveBannerBacker, f1_arg0, f1_arg1 ) --[[ @ 0]]
	CompeletedBanner:setBackingXPadding( 8 ) --[[ @ 0]]
	CompeletedBanner:setBackingYPadding( 2 ) --[[ @ 0]]
	CompeletedBanner._backingElement.Frame:setRGB( ColorSet.EnemyOrange_Base.r, ColorSet.EnemyOrange_Base.g, ColorSet.EnemyOrange_Base.b ) --[[ @ 0]]
	self:addElement( CompeletedBanner ) --[[ @ 0]]
	self.CompeletedBanner = CompeletedBanner --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ContractCompleteBanner.__resetProperties = function ( f2_arg0 )
	f2_arg0.CompeletedBanner:completeAnimation() --[[ @ 0]]
	f2_arg0.CompeletedBanner:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ContractCompleteBanner.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.CompeletedBanner:completeAnimation() --[[ @ 0]]
			f3_arg0.CompeletedBanner:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.CompeletedBanner ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					local f6_local0 = function ( f7_arg0 )
						f7_arg0:beginAnimation( 100, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
						f7_arg0:setAlpha( 1 ) --[[ @ 0]]
						f7_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f6_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f6_arg0:setAlpha( 0 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.CompeletedBanner:beginAnimation( 100 ) --[[ @ 0]]
				f4_arg0.CompeletedBanner:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.CompeletedBanner:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.CompeletedBanner:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.CompeletedBanner:completeAnimation() --[[ @ 0]]
			f4_arg0.CompeletedBanner:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.CompeletedBanner ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
