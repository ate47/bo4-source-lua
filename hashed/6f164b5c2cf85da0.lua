-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.Tak5ReticleBracketBoxes = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Tak5ReticleBracketBoxes.__defaultWidth = 46 --[[ @ 0]]
CoD.Tak5ReticleBracketBoxes.__defaultHeight = 16 --[[ @ 0]]
CoD.Tak5ReticleBracketBoxes.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Tak5ReticleBracketBoxes ) --[[ @ 0]]
	self.id = "Tak5ReticleBracketBoxes" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ReticleBox03 = LUI.UIImage.new( 0, 0, 30, 46, 0, 0, 0, 16 ) --[[ @ 0]]
	ReticleBox03:setAlpha( 0.2 ) --[[ @ 0]]
	ReticleBox03:setImage( RegisterImage( @"uie_ui_hud_tak5_bracket_box" ) ) --[[ @ 0]]
	self:addElement( ReticleBox03 ) --[[ @ 0]]
	self.ReticleBox03 = ReticleBox03 --[[ @ 0]]
	
	local ReticleBox03Add = LUI.UIImage.new( 0, 0, 30, 46, 0, 0, 0, 16 ) --[[ @ 0]]
	ReticleBox03Add:setAlpha( 0 ) --[[ @ 0]]
	ReticleBox03Add:setImage( RegisterImage( @"uie_ui_hud_tak5_bracket_box" ) ) --[[ @ 0]]
	ReticleBox03Add:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	ReticleBox03Add:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ReticleBox03Add ) --[[ @ 0]]
	self.ReticleBox03Add = ReticleBox03Add --[[ @ 0]]
	
	local ReticleBox02 = LUI.UIImage.new( 0, 0, 15, 31, 0, 0, 0, 16 ) --[[ @ 0]]
	ReticleBox02:setAlpha( 0.5 ) --[[ @ 0]]
	ReticleBox02:setImage( RegisterImage( @"uie_ui_hud_tak5_bracket_box" ) ) --[[ @ 0]]
	self:addElement( ReticleBox02 ) --[[ @ 0]]
	self.ReticleBox02 = ReticleBox02 --[[ @ 0]]
	
	local ReticleBox02Add = LUI.UIImage.new( 0, 0, 15, 31, 0, 0, 0, 16 ) --[[ @ 0]]
	ReticleBox02Add:setAlpha( 0 ) --[[ @ 0]]
	ReticleBox02Add:setImage( RegisterImage( @"uie_ui_hud_tak5_bracket_box" ) ) --[[ @ 0]]
	ReticleBox02Add:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	ReticleBox02Add:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ReticleBox02Add ) --[[ @ 0]]
	self.ReticleBox02Add = ReticleBox02Add --[[ @ 0]]
	
	local ReticleBox01 = LUI.UIImage.new( 0, 0, 0, 16, 0, 0, 0, 16 ) --[[ @ 0]]
	ReticleBox01:setImage( RegisterImage( @"uie_ui_hud_tak5_bracket_box" ) ) --[[ @ 0]]
	self:addElement( ReticleBox01 ) --[[ @ 0]]
	self.ReticleBox01 = ReticleBox01 --[[ @ 0]]
	
	local ReticleBox01Add = LUI.UIImage.new( 0, 0, 0, 16, 0, 0, 0, 16 ) --[[ @ 0]]
	ReticleBox01Add:setAlpha( 0 ) --[[ @ 0]]
	ReticleBox01Add:setImage( RegisterImage( @"uie_ui_hud_tak5_bracket_box" ) ) --[[ @ 0]]
	ReticleBox01Add:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	ReticleBox01Add:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ReticleBox01Add ) --[[ @ 0]]
	self.ReticleBox01Add = ReticleBox01Add --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Tak5ReticleBracketBoxes.__resetProperties = function ( f2_arg0 )
	f2_arg0.ReticleBox03Add:completeAnimation() --[[ @ 0]]
	f2_arg0.ReticleBox02Add:completeAnimation() --[[ @ 0]]
	f2_arg0.ReticleBox01Add:completeAnimation() --[[ @ 0]]
	f2_arg0.ReticleBox03Add:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.ReticleBox02Add:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.ReticleBox01Add:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Tak5ReticleBracketBoxes.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						f6_arg0:beginAnimation( 99, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
						f6_arg0:setAlpha( 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 100, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f5_arg0:setAlpha( 1 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.ReticleBox03Add:beginAnimation( 200 ) --[[ @ 0]]
				f3_arg0.ReticleBox03Add:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.ReticleBox03Add:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.ReticleBox03Add:completeAnimation() --[[ @ 0]]
			f3_arg0.ReticleBox03Add:setAlpha( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.ReticleBox03Add ) --[[ @ 0]]
			local f3_local1 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					local f8_local0 = function ( f9_arg0 )
						f9_arg0:beginAnimation( 100, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
						f9_arg0:setAlpha( 0 ) --[[ @ 0]]
						f9_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f8_arg0:beginAnimation( 99, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f8_arg0:setAlpha( 1 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.ReticleBox02Add:beginAnimation( 400 ) --[[ @ 0]]
				f3_arg0.ReticleBox02Add:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.ReticleBox02Add:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.ReticleBox02Add:completeAnimation() --[[ @ 0]]
			f3_arg0.ReticleBox02Add:setAlpha( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.ReticleBox02Add ) --[[ @ 0]]
			local f3_local2 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						f12_arg0:beginAnimation( 100, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
						f12_arg0:setAlpha( 0 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 99, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f11_arg0:setAlpha( 1 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.ReticleBox01Add:beginAnimation( 600 ) --[[ @ 0]]
				f3_arg0.ReticleBox01Add:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.ReticleBox01Add:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.ReticleBox01Add:completeAnimation() --[[ @ 0]]
			f3_arg0.ReticleBox01Add:setAlpha( 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.ReticleBox01Add ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
