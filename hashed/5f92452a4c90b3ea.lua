-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.vhud_hellstorm_ProximityWarning = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_hellstorm_ProximityWarning.__defaultWidth = 342 --[[ @ 0]]
CoD.vhud_hellstorm_ProximityWarning.__defaultHeight = 37 --[[ @ 0]]
CoD.vhud_hellstorm_ProximityWarning.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_hellstorm_ProximityWarning ) --[[ @ 0]]
	self.id = "vhud_hellstorm_ProximityWarning" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ApproachingTarget = LUI.UIText.new( -0.5, -0.5, 171, 513, -0.5, -0.5, 26, 48 ) --[[ @ 0]]
	ApproachingTarget:setRGB( 1, 0.81, 0 ) --[[ @ 0]]
	ApproachingTarget:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3E386BB4AB0520EC" ) ) --[[ @ 0]]
	ApproachingTarget:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	ApproachingTarget:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	ApproachingTarget:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	self:addElement( ApproachingTarget ) --[[ @ 0]]
	self.ApproachingTarget = ApproachingTarget --[[ @ 0]]
	
	local TargetInRange = LUI.UIText.new( -0.5, -0.5, 171, 513, -0.5, -0.5, 26, 48 ) --[[ @ 0]]
	TargetInRange:setRGB( 1, 0, 0 ) --[[ @ 0]]
	TargetInRange:setAlpha( 0 ) --[[ @ 0]]
	TargetInRange:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_718CAFFCA49E94D" ) ) --[[ @ 0]]
	TargetInRange:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	TargetInRange:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	TargetInRange:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	self:addElement( TargetInRange ) --[[ @ 0]]
	self.TargetInRange = TargetInRange --[[ @ 0]]
	
	self:linkToElementModel( self, "collisionWarning", true, function ( model )
		if CoD.ModelUtility.IsSelfModelValueEqualTo( self, f1_arg1, "collisionWarning", 1 ) then
			
		else
			
		end
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_hellstorm_ProximityWarning.__resetProperties = function ( f3_arg0 )
	f3_arg0.ApproachingTarget:completeAnimation() --[[ @ 0]]
	f3_arg0.TargetInRange:completeAnimation() --[[ @ 0]]
	f3_arg0.ApproachingTarget:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.TargetInRange:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vhud_hellstorm_ProximityWarning.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.ApproachingTarget:completeAnimation() --[[ @ 0]]
			f4_arg0.ApproachingTarget:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.ApproachingTarget ) --[[ @ 0]]
		end
	},
	ApproachingTarget = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 300 ) --[[ @ 0]]
					f7_arg0:setAlpha( 0 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.ApproachingTarget:beginAnimation( 300 ) --[[ @ 0]]
				f5_arg0.ApproachingTarget:setAlpha( 1 ) --[[ @ 0]]
				f5_arg0.ApproachingTarget:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.ApproachingTarget:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.ApproachingTarget:completeAnimation() --[[ @ 0]]
			f5_arg0.ApproachingTarget:setAlpha( 0 ) --[[ @ 0]]
			f5_local0( f5_arg0.ApproachingTarget ) --[[ @ 0]]
			f5_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	TargetInRange = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.ApproachingTarget:completeAnimation() --[[ @ 0]]
			f8_arg0.ApproachingTarget:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.ApproachingTarget ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					f10_arg0:beginAnimation( 300 ) --[[ @ 0]]
					f10_arg0:setAlpha( 0 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.TargetInRange:beginAnimation( 300 ) --[[ @ 0]]
				f8_arg0.TargetInRange:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.TargetInRange:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.TargetInRange:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.TargetInRange:completeAnimation() --[[ @ 0]]
			f8_arg0.TargetInRange:setAlpha( 0 ) --[[ @ 0]]
			f8_local0( f8_arg0.TargetInRange ) --[[ @ 0]]
			f8_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
