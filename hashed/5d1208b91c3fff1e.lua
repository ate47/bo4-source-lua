-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.HealthDOT = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HealthDOT.__defaultWidth = 100 --[[ @ 0]]
CoD.HealthDOT.__defaultHeight = 28 --[[ @ 0]]
CoD.HealthDOT.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HealthDOT ) --[[ @ 0]]
	self.id = "HealthDOT" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local damage = LUI.UIText.new( 0, 0, 0, 100, 0, 0, 0, 26 ) --[[ @ 0]]
	damage:setRGB( 0.94, 0.07, 0.09 ) --[[ @ 0]]
	damage:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_18841A02137AEEDE" ) ) --[[ @ 0]]
	damage:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	damage:setLetterSpacing( 2 ) --[[ @ 0]]
	damage:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	damage:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( damage ) --[[ @ 0]]
	self.damage = damage --[[ @ 0]]
	
	self:subscribeToGlobalModel( f1_arg1, "PerController", "scriptNotify", function ( model )
		local f2_local0 = self --[[ @ 0]]
		if CoD.ModelUtility.IsParamModelEqualToHashString( model, @"damage_over_time" ) then
			CoD.HUDUtility.SetDOTDamage( self.damage, model, @"hash_18841A02137AEEDE" ) --[[ @ 0]]
			PlayClip( self, "Damaged", f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.HealthDOT.__resetProperties = function ( f3_arg0 )
	f3_arg0.damage:completeAnimation() --[[ @ 0]]
	f3_arg0.damage:setLeftRight( 0, 0, 0, 100 ) --[[ @ 0]]
	f3_arg0.damage:setTopBottom( 0, 0, 0, 26 ) --[[ @ 0]]
	f3_arg0.damage:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.HealthDOT.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.damage:completeAnimation() --[[ @ 0]]
			f4_arg0.damage:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.damage ) --[[ @ 0]]
		end,
		Damaged = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					local f7_local0 = function ( f8_arg0 )
						f8_arg0:beginAnimation( 99 ) --[[ @ 0]]
						f8_arg0:setTopBottom( 0, 0, 33, 61 ) --[[ @ 0]]
						f8_arg0:setAlpha( 0 ) --[[ @ 0]]
						f8_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f7_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f7_arg0:setTopBottom( 0, 0, 22, 50 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.damage:beginAnimation( 100 ) --[[ @ 0]]
				f5_arg0.damage:setAlpha( 1 ) --[[ @ 0]]
				f5_arg0.damage:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.damage:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.damage:completeAnimation() --[[ @ 0]]
			f5_arg0.damage:setLeftRight( 0, 0, 0, 100 ) --[[ @ 0]]
			f5_arg0.damage:setTopBottom( 0, 0, 0, 28 ) --[[ @ 0]]
			f5_arg0.damage:setAlpha( 0 ) --[[ @ 0]]
			f5_local0( f5_arg0.damage ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
