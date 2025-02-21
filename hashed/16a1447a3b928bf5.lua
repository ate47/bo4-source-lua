-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.vhud_dart_CenterReticleOuterCircleDots = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_dart_CenterReticleOuterCircleDots.__defaultWidth = 598 --[[ @ 0]]
CoD.vhud_dart_CenterReticleOuterCircleDots.__defaultHeight = 298 --[[ @ 0]]
CoD.vhud_dart_CenterReticleOuterCircleDots.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_dart_CenterReticleOuterCircleDots ) --[[ @ 0]]
	self.id = "vhud_dart_CenterReticleOuterCircleDots" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FuiDotTL = LUI.UIImage.new( 0, 0, -30, 42, 0, 0, -50, 130 ) --[[ @ 0]]
	FuiDotTL:setAlpha( 0.5 ) --[[ @ 0]]
	FuiDotTL:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_meter" ) ) --[[ @ 0]]
	FuiDotTL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	FuiDotTL:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( FuiDotTL ) --[[ @ 0]]
	self.FuiDotTL = FuiDotTL --[[ @ 0]]
	
	local FuiDotTR = LUI.UIImage.new( 0, 0, 628, 556, 0, 0, -50, 130 ) --[[ @ 0]]
	FuiDotTR:setAlpha( 0.5 ) --[[ @ 0]]
	FuiDotTR:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_meter" ) ) --[[ @ 0]]
	FuiDotTR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	FuiDotTR:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( FuiDotTR ) --[[ @ 0]]
	self.FuiDotTR = FuiDotTR --[[ @ 0]]
	
	local FuiDotBL = LUI.UIImage.new( 0, 0, -30, 42, 0, 0, 354, 174 ) --[[ @ 0]]
	FuiDotBL:setAlpha( 0.5 ) --[[ @ 0]]
	FuiDotBL:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_meter" ) ) --[[ @ 0]]
	FuiDotBL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	FuiDotBL:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( FuiDotBL ) --[[ @ 0]]
	self.FuiDotBL = FuiDotBL --[[ @ 0]]
	
	local FuiDotBR = LUI.UIImage.new( 0, 0, 628, 556, 0, 0, 354, 174 ) --[[ @ 0]]
	FuiDotBR:setAlpha( 0.5 ) --[[ @ 0]]
	FuiDotBR:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_meter" ) ) --[[ @ 0]]
	FuiDotBR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	FuiDotBR:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( FuiDotBR ) --[[ @ 0]]
	self.FuiDotBR = FuiDotBR --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_dart_CenterReticleOuterCircleDots.__resetProperties = function ( f2_arg0 )
	f2_arg0.FuiDotTL:completeAnimation() --[[ @ 0]]
	f2_arg0.FuiDotTR:completeAnimation() --[[ @ 0]]
	f2_arg0.FuiDotBL:completeAnimation() --[[ @ 0]]
	f2_arg0.FuiDotBR:completeAnimation() --[[ @ 0]]
	f2_arg0.FuiDotTL:setAlpha( 0.5 ) --[[ @ 0]]
	f2_arg0.FuiDotTR:setAlpha( 0.5 ) --[[ @ 0]]
	f2_arg0.FuiDotBL:setAlpha( 0.5 ) --[[ @ 0]]
	f2_arg0.FuiDotBR:setAlpha( 0.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vhud_dart_CenterReticleOuterCircleDots.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.FuiDotTL:beginAnimation( 250 ) --[[ @ 0]]
				f3_arg0.FuiDotTL:setAlpha( 0.25 ) --[[ @ 0]]
				f3_arg0.FuiDotTL:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.FuiDotTL:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.FuiDotTL:completeAnimation() --[[ @ 0]]
			f3_arg0.FuiDotTL:setAlpha( 0.5 ) --[[ @ 0]]
			f3_local0( f3_arg0.FuiDotTL ) --[[ @ 0]]
			local f3_local1 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f7_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.FuiDotTR:beginAnimation( 250 ) --[[ @ 0]]
				f3_arg0.FuiDotTR:setAlpha( 0.25 ) --[[ @ 0]]
				f3_arg0.FuiDotTR:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.FuiDotTR:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.FuiDotTR:completeAnimation() --[[ @ 0]]
			f3_arg0.FuiDotTR:setAlpha( 0.5 ) --[[ @ 0]]
			f3_local1( f3_arg0.FuiDotTR ) --[[ @ 0]]
			local f3_local2 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f9_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.FuiDotBL:beginAnimation( 250 ) --[[ @ 0]]
				f3_arg0.FuiDotBL:setAlpha( 0.25 ) --[[ @ 0]]
				f3_arg0.FuiDotBL:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.FuiDotBL:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.FuiDotBL:completeAnimation() --[[ @ 0]]
			f3_arg0.FuiDotBL:setAlpha( 0.5 ) --[[ @ 0]]
			f3_local2( f3_arg0.FuiDotBL ) --[[ @ 0]]
			local f3_local3 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					f11_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f11_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.FuiDotBR:beginAnimation( 250 ) --[[ @ 0]]
				f3_arg0.FuiDotBR:setAlpha( 0.25 ) --[[ @ 0]]
				f3_arg0.FuiDotBR:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.FuiDotBR:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.FuiDotBR:completeAnimation() --[[ @ 0]]
			f3_arg0.FuiDotBR:setAlpha( 0.5 ) --[[ @ 0]]
			f3_local3( f3_arg0.FuiDotBR ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
