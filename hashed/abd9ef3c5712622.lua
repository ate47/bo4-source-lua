-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.TabletTak5_LinkAll = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TabletTak5_LinkAll.__defaultWidth = 263 --[[ @ 0]]
CoD.TabletTak5_LinkAll.__defaultHeight = 195 --[[ @ 0]]
CoD.TabletTak5_LinkAll.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TabletTak5_LinkAll ) --[[ @ 0]]
	self.id = "TabletTak5_LinkAll" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ModuleLink01 = LUI.UIImage.new( 0, 0, 50.5, 240.5, 0, 0, 48, 70 ) --[[ @ 0]]
	ModuleLink01:setImage( RegisterImage( @"uie_ui_hud_tak5_module_link01" ) ) --[[ @ 0]]
	self:addElement( ModuleLink01 ) --[[ @ 0]]
	self.ModuleLink01 = ModuleLink01 --[[ @ 0]]
	
	local ModuleLink01Add = LUI.UIImage.new( 0, 0, 50.5, 240.5, 0, 0, 48, 70 ) --[[ @ 0]]
	ModuleLink01Add:setAlpha( 0.2 ) --[[ @ 0]]
	ModuleLink01Add:setImage( RegisterImage( @"uie_ui_hud_tak5_module_link01" ) ) --[[ @ 0]]
	ModuleLink01Add:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	ModuleLink01Add:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ModuleLink01Add ) --[[ @ 0]]
	self.ModuleLink01Add = ModuleLink01Add --[[ @ 0]]
	
	local ModuleLink02 = LUI.UIImage.new( 0, 0, 130, 244, 0, 0, 60.5, 188.5 ) --[[ @ 0]]
	ModuleLink02:setImage( RegisterImage( @"uie_ui_hud_tak5_module_link02" ) ) --[[ @ 0]]
	self:addElement( ModuleLink02 ) --[[ @ 0]]
	self.ModuleLink02 = ModuleLink02 --[[ @ 0]]
	
	local ModuleLink02Add = LUI.UIImage.new( 0, 0, 130, 244, 0, 0, 60.5, 188.5 ) --[[ @ 0]]
	ModuleLink02Add:setAlpha( 0.2 ) --[[ @ 0]]
	ModuleLink02Add:setImage( RegisterImage( @"uie_ui_hud_tak5_module_link02" ) ) --[[ @ 0]]
	ModuleLink02Add:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	ModuleLink02Add:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ModuleLink02Add ) --[[ @ 0]]
	self.ModuleLink02Add = ModuleLink02Add --[[ @ 0]]
	
	local ModuleLink03 = LUI.UIImage.new( 0, 0, 239.5, 253.5, 0, 0, 5, 59 ) --[[ @ 0]]
	ModuleLink03:setImage( RegisterImage( @"uie_ui_hud_tak5_module_link03" ) ) --[[ @ 0]]
	self:addElement( ModuleLink03 ) --[[ @ 0]]
	self.ModuleLink03 = ModuleLink03 --[[ @ 0]]
	
	local ModuleLink03Add = LUI.UIImage.new( 0, 0, 239.5, 253.5, 0, 0, 5, 59 ) --[[ @ 0]]
	ModuleLink03Add:setAlpha( 0.2 ) --[[ @ 0]]
	ModuleLink03Add:setImage( RegisterImage( @"uie_ui_hud_tak5_module_link03" ) ) --[[ @ 0]]
	ModuleLink03Add:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	ModuleLink03Add:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ModuleLink03Add ) --[[ @ 0]]
	self.ModuleLink03Add = ModuleLink03Add --[[ @ 0]]
	
	local ModuleLink04 = LUI.UIImage.new( 0, 0, 9.5, 33.5, 0, 0, 134.5, 188.5 ) --[[ @ 0]]
	ModuleLink04:setImage( RegisterImage( @"uie_ui_hud_tak5_module_link04" ) ) --[[ @ 0]]
	self:addElement( ModuleLink04 ) --[[ @ 0]]
	self.ModuleLink04 = ModuleLink04 --[[ @ 0]]
	
	local ModuleLink04Add = LUI.UIImage.new( 0, 0, 9.5, 33.5, 0, 0, 134.5, 188.5 ) --[[ @ 0]]
	ModuleLink04Add:setAlpha( 0.2 ) --[[ @ 0]]
	ModuleLink04Add:setImage( RegisterImage( @"uie_ui_hud_tak5_module_link04" ) ) --[[ @ 0]]
	ModuleLink04Add:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	ModuleLink04Add:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ModuleLink04Add ) --[[ @ 0]]
	self.ModuleLink04Add = ModuleLink04Add --[[ @ 0]]
	
	local Connector01 = LUI.UIImage.new( 0, 0, 235.5, 249.5, 0, 0, 52, 66 ) --[[ @ 0]]
	Connector01:setImage( RegisterImage( @"hash_7FA1D08EA1C385B0" ) ) --[[ @ 0]]
	Connector01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Connector01:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Connector01 ) --[[ @ 0]]
	self.Connector01 = Connector01 --[[ @ 0]]
	
	local Connector02 = LUI.UIImage.new( 0, 0, 0, 14, 0, 0, 129, 143 ) --[[ @ 0]]
	Connector02:setImage( RegisterImage( @"hash_7FA1D38EA1C38AC9" ) ) --[[ @ 0]]
	Connector02:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Connector02:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Connector02 ) --[[ @ 0]]
	self.Connector02 = Connector02 --[[ @ 0]]
	
	local Connector03 = LUI.UIImage.new( 0, 0, 248.5, 262.5, 0, 0, -0.5, 13.5 ) --[[ @ 0]]
	Connector03:setImage( RegisterImage( @"hash_7FA1D38EA1C38AC9" ) ) --[[ @ 0]]
	Connector03:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Connector03:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Connector03 ) --[[ @ 0]]
	self.Connector03 = Connector03 --[[ @ 0]]
	
	local Connector04 = LUI.UIImage.new( 0, 0, 126.5, 140.5, 0, 0, 180, 194 ) --[[ @ 0]]
	Connector04:setImage( RegisterImage( @"hash_7FA1D38EA1C38AC9" ) ) --[[ @ 0]]
	Connector04:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Connector04:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Connector04 ) --[[ @ 0]]
	self.Connector04 = Connector04 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.TabletTak5_LinkAll.__resetProperties = function ( f2_arg0 )
	f2_arg0.ModuleLink01Add:completeAnimation() --[[ @ 0]]
	f2_arg0.ModuleLink02Add:completeAnimation() --[[ @ 0]]
	f2_arg0.ModuleLink03Add:completeAnimation() --[[ @ 0]]
	f2_arg0.ModuleLink04Add:completeAnimation() --[[ @ 0]]
	f2_arg0.ModuleLink01Add:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.ModuleLink01Add:setAlpha( 0.2 ) --[[ @ 0]]
	f2_arg0.ModuleLink02Add:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.ModuleLink02Add:setAlpha( 0.2 ) --[[ @ 0]]
	f2_arg0.ModuleLink03Add:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.ModuleLink03Add:setAlpha( 0.2 ) --[[ @ 0]]
	f2_arg0.ModuleLink04Add:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.ModuleLink04Add:setAlpha( 0.2 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TabletTak5_LinkAll.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		HealthBoost = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					local f6_local0 = function ( f7_arg0 )
						f7_arg0:beginAnimation( 300 ) --[[ @ 0]]
						f7_arg0:setAlpha( 0.2 ) --[[ @ 0]]
						f7_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f6_arg0:beginAnimation( 399 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.ModuleLink01Add:beginAnimation( 300 ) --[[ @ 0]]
				f4_arg0.ModuleLink01Add:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.ModuleLink01Add:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.ModuleLink01Add:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.ModuleLink01Add:completeAnimation() --[[ @ 0]]
			f4_arg0.ModuleLink01Add:setRGB( ColorSet.CleanseBar.r, ColorSet.CleanseBar.g, ColorSet.CleanseBar.b ) --[[ @ 0]]
			f4_arg0.ModuleLink01Add:setAlpha( 0.2 ) --[[ @ 0]]
			f4_local0( f4_arg0.ModuleLink01Add ) --[[ @ 0]]
			local f4_local1 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					local f9_local0 = function ( f10_arg0 )
						f10_arg0:beginAnimation( 300 ) --[[ @ 0]]
						f10_arg0:setAlpha( 0.2 ) --[[ @ 0]]
						f10_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f9_arg0:beginAnimation( 399 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.ModuleLink02Add:beginAnimation( 300 ) --[[ @ 0]]
				f4_arg0.ModuleLink02Add:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.ModuleLink02Add:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.ModuleLink02Add:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.ModuleLink02Add:completeAnimation() --[[ @ 0]]
			f4_arg0.ModuleLink02Add:setRGB( ColorSet.CleanseBar.r, ColorSet.CleanseBar.g, ColorSet.CleanseBar.b ) --[[ @ 0]]
			f4_arg0.ModuleLink02Add:setAlpha( 0.2 ) --[[ @ 0]]
			f4_local1( f4_arg0.ModuleLink02Add ) --[[ @ 0]]
			local f4_local2 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					local f12_local0 = function ( f13_arg0 )
						f13_arg0:beginAnimation( 300 ) --[[ @ 0]]
						f13_arg0:setAlpha( 0.2 ) --[[ @ 0]]
						f13_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f12_arg0:beginAnimation( 399 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.ModuleLink03Add:beginAnimation( 300 ) --[[ @ 0]]
				f4_arg0.ModuleLink03Add:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.ModuleLink03Add:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.ModuleLink03Add:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.ModuleLink03Add:completeAnimation() --[[ @ 0]]
			f4_arg0.ModuleLink03Add:setRGB( ColorSet.CleanseBar.r, ColorSet.CleanseBar.g, ColorSet.CleanseBar.b ) --[[ @ 0]]
			f4_arg0.ModuleLink03Add:setAlpha( 0.2 ) --[[ @ 0]]
			f4_local2( f4_arg0.ModuleLink03Add ) --[[ @ 0]]
			local f4_local3 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					local f15_local0 = function ( f16_arg0 )
						f16_arg0:beginAnimation( 300 ) --[[ @ 0]]
						f16_arg0:setAlpha( 0.2 ) --[[ @ 0]]
						f16_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f15_arg0:beginAnimation( 399 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.ModuleLink04Add:beginAnimation( 300 ) --[[ @ 0]]
				f4_arg0.ModuleLink04Add:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.ModuleLink04Add:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.ModuleLink04Add:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.ModuleLink04Add:completeAnimation() --[[ @ 0]]
			f4_arg0.ModuleLink04Add:setRGB( ColorSet.CleanseBar.r, ColorSet.CleanseBar.g, ColorSet.CleanseBar.b ) --[[ @ 0]]
			f4_arg0.ModuleLink04Add:setAlpha( 0.2 ) --[[ @ 0]]
			f4_local3( f4_arg0.ModuleLink04Add ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
