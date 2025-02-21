-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:1e554beb9f6a35a2" ) --[[ @ 0]]

CoD[@"hash_1AE531861B4F05FA"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_1AE531861B4F05FA"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_1AE531861B4F05FA"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_1AE531861B4F05FA"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_1AE531861B4F05FA"] ) --[[ @ 0]]
	self.id = "CallingCards_Prestige_Tacticalkits_Master" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local mechBackground = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	mechBackground:setImage( RegisterImage( @"uie_mech_background" ) ) --[[ @ 0]]
	self:addElement( mechBackground ) --[[ @ 0]]
	self.mechBackground = mechBackground --[[ @ 0]]
	
	local mecha = CoD.CallingCards_Asset_mech.new( f1_arg0, f1_arg1, 0, 0, 0, 960, 0, 0, 1, 241 ) --[[ @ 0]]
	self:addElement( mecha ) --[[ @ 0]]
	self.mecha = mecha --[[ @ 0]]
	
	local smoke = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	smoke:setImage( RegisterImage( @"uie_smoke" ) ) --[[ @ 0]]
	smoke:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook" ) ) --[[ @ 0]]
	smoke:setShaderVector( 0, 1, 3.03, 0, 0 ) --[[ @ 0]]
	smoke:setShaderVector( 1, 15, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( smoke ) --[[ @ 0]]
	self.smoke = smoke --[[ @ 0]]
	
	local rockets = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	rockets:setImage( RegisterImage( @"uie_rockets" ) ) --[[ @ 0]]
	self:addElement( rockets ) --[[ @ 0]]
	self.rockets = rockets --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_1AE531861B4F05FA"].__resetProperties = function ( f2_arg0 )
	f2_arg0.rockets:completeAnimation() --[[ @ 0]]
	f2_arg0.mecha:completeAnimation() --[[ @ 0]]
	f2_arg0.rockets:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_1AE531861B4F05FA"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f3_arg0.mecha:completeAnimation() --[[ @ 0]]
			f3_arg0.mecha:playClip( "DefaultClip" ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.mecha ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							f7_arg0:beginAnimation( 500 ) --[[ @ 0]]
							f7_arg0:setTopBottom( 0, 0, 0, 180 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f6_arg0:setTopBottom( 0, 0, -5, 175 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f5_arg0:setTopBottom( 0, 0, 0, 180 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.rockets:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.rockets:setTopBottom( 0, 0, -5, 175 ) --[[ @ 0]]
				f3_arg0.rockets:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.rockets:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.rockets:completeAnimation() --[[ @ 0]]
			f3_arg0.rockets:setTopBottom( 0, 0, 0, 180 ) --[[ @ 0]]
			f3_local0( f3_arg0.rockets ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD[@"hash_1AE531861B4F05FA"].__onClose = function ( f8_arg0 )
	f8_arg0.mecha:close() --[[ @ 0]]
end
 --[[ @ 0]]
