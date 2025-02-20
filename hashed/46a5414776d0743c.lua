-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.ReadyEvents_Scorestreaks_Iconcontainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ReadyEvents_Scorestreaks_Iconcontainer.__defaultWidth = 62 --[[ @ 0]]
CoD.ReadyEvents_Scorestreaks_Iconcontainer.__defaultHeight = 50 --[[ @ 0]]
CoD.ReadyEvents_Scorestreaks_Iconcontainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ReadyEvents_Scorestreaks_Iconcontainer ) --[[ @ 0]]
	self.id = "ReadyEvents_Scorestreaks_Iconcontainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Icon = LUI.UIImage.new( 0, 0, 6, 56, 0, 0, 0, 50 ) --[[ @ 0]]
	self:addElement( Icon ) --[[ @ 0]]
	self.Icon = Icon --[[ @ 0]]
	
	local pipLeft = LUI.UIImage.new( 0, 0, 0, 6, 0, 0, 0, 50 ) --[[ @ 0]]
	pipLeft:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	pipLeft:setImage( RegisterImage( @"hash_E2FF966B89C00A4" ) ) --[[ @ 0]]
	self:addElement( pipLeft ) --[[ @ 0]]
	self.pipLeft = pipLeft --[[ @ 0]]
	
	local pipLeftAdd = LUI.UIImage.new( 0, 0, 0, 6, 0, 0, 0, 50 ) --[[ @ 0]]
	pipLeftAdd:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	pipLeftAdd:setImage( RegisterImage( @"hash_E2FF966B89C00A4" ) ) --[[ @ 0]]
	pipLeftAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	pipLeftAdd:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( pipLeftAdd ) --[[ @ 0]]
	self.pipLeftAdd = pipLeftAdd --[[ @ 0]]
	
	local pipRight = LUI.UIImage.new( 0, 0, 56, 62, 0, 0, 0, 50 ) --[[ @ 0]]
	pipRight:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	pipRight:setImage( RegisterImage( @"hash_E2FF966B89C00A4" ) ) --[[ @ 0]]
	self:addElement( pipRight ) --[[ @ 0]]
	self.pipRight = pipRight --[[ @ 0]]
	
	local pipRightAdd = LUI.UIImage.new( 0, 0, 56, 62, 0, 0, 0, 50 ) --[[ @ 0]]
	pipRightAdd:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	pipRightAdd:setImage( RegisterImage( @"hash_E2FF966B89C00A4" ) ) --[[ @ 0]]
	pipRightAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	pipRightAdd:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( pipRightAdd ) --[[ @ 0]]
	self.pipRightAdd = pipRightAdd --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ReadyEvents_Scorestreaks_Iconcontainer.__resetProperties = function ( f2_arg0 )
	f2_arg0.pipLeftAdd:completeAnimation() --[[ @ 0]]
	f2_arg0.pipRightAdd:completeAnimation() --[[ @ 0]]
	f2_arg0.pipLeftAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	f2_arg0.pipLeftAdd:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.pipRightAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	f2_arg0.pipRightAdd:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ReadyEvents_Scorestreaks_Iconcontainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							f7_arg0:beginAnimation( 250 ) --[[ @ 0]]
							f7_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 250 ) --[[ @ 0]]
						f6_arg0:setShaderVector( 0, 3.5, 0, 0, 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f5_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.pipLeftAdd:beginAnimation( 250 ) --[[ @ 0]]
				f3_arg0.pipLeftAdd:setShaderVector( 0, 3.5, 0, 0, 0 ) --[[ @ 0]]
				f3_arg0.pipLeftAdd:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.pipLeftAdd:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.pipLeftAdd:completeAnimation() --[[ @ 0]]
			f3_arg0.pipLeftAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
			f3_arg0.pipLeftAdd:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.pipLeftAdd ) --[[ @ 0]]
			local f3_local1 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					local f9_local0 = function ( f10_arg0 )
						local f10_local0 = function ( f11_arg0 )
							f11_arg0:beginAnimation( 250 ) --[[ @ 0]]
							f11_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
							f11_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f10_arg0:beginAnimation( 250 ) --[[ @ 0]]
						f10_arg0:setShaderVector( 0, 3.5, 0, 0, 0 ) --[[ @ 0]]
						f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f9_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f9_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.pipRightAdd:beginAnimation( 250 ) --[[ @ 0]]
				f3_arg0.pipRightAdd:setShaderVector( 0, 3.5, 0, 0, 0 ) --[[ @ 0]]
				f3_arg0.pipRightAdd:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.pipRightAdd:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.pipRightAdd:completeAnimation() --[[ @ 0]]
			f3_arg0.pipRightAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
			f3_arg0.pipRightAdd:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.pipRightAdd ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
