-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:6c8f44477e40f994" ) --[[ @ 0]]
require( "x64:6cbc3f2d1c9436dd" ) --[[ @ 0]]

CoD[@"hash_4BD13AC1448D9700"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_4BD13AC1448D9700"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_4BD13AC1448D9700"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_4BD13AC1448D9700"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_4BD13AC1448D9700"] ) --[[ @ 0]]
	self.id = "CallingCards_Asset_vilains" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bg = CoD.CallingCards_Asset_vilains_sky.new( f1_arg0, f1_arg1, 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local bgplanes = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 168 ) --[[ @ 0]]
	bgplanes:setImage( RegisterImage( @"hash_3C327825904C9BE7" ) ) --[[ @ 0]]
	self:addElement( bgplanes ) --[[ @ 0]]
	self.bgplanes = bgplanes --[[ @ 0]]
	
	local frontplane = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 72, 240 ) --[[ @ 0]]
	frontplane:setImage( RegisterImage( @"hash_69D600B6992FF0F4" ) ) --[[ @ 0]]
	self:addElement( frontplane ) --[[ @ 0]]
	self.frontplane = frontplane --[[ @ 0]]
	
	local victim = LUI.UIImage.new( 0, 0, 194.5, 346.5, 0, 0, 72, 256 ) --[[ @ 0]]
	victim:setImage( RegisterImage( @"hash_777FCFF7F5E8EBBB" ) ) --[[ @ 0]]
	self:addElement( victim ) --[[ @ 0]]
	self.victim = victim --[[ @ 0]]
	
	local vilain = LUI.UIImage.new( 0, 0, 513, 969, 0, 0, -8, 272 ) --[[ @ 0]]
	vilain:setImage( RegisterImage( @"hash_E8DFE06491652E0" ) ) --[[ @ 0]]
	self:addElement( vilain ) --[[ @ 0]]
	self.vilain = vilain --[[ @ 0]]
	
	local flames = CoD.CallingCards_Asset_vilains_fire.new( f1_arg0, f1_arg1, 0, 0, 0, 960, 0, 0, 72, 240 ) --[[ @ 0]]
	self:addElement( flames ) --[[ @ 0]]
	self.flames = flames --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_4BD13AC1448D9700"].__resetProperties = function ( f2_arg0 )
	f2_arg0.flames:completeAnimation() --[[ @ 0]]
	f2_arg0.bg:completeAnimation() --[[ @ 0]]
	f2_arg0.bgplanes:completeAnimation() --[[ @ 0]]
	f2_arg0.frontplane:completeAnimation() --[[ @ 0]]
	f2_arg0.victim:completeAnimation() --[[ @ 0]]
	f2_arg0.vilain:completeAnimation() --[[ @ 0]]
	f2_arg0.bgplanes:setLeftRight( 0, 0, 0, 960 ) --[[ @ 0]]
	f2_arg0.frontplane:setTopBottom( 0, 0, 72, 240 ) --[[ @ 0]]
	f2_arg0.victim:setLeftRight( 0, 0, 194.5, 346.5 ) --[[ @ 0]]
	f2_arg0.victim:setTopBottom( 0, 0, 72, 256 ) --[[ @ 0]]
	f2_arg0.vilain:setLeftRight( 0, 0, 513, 969 ) --[[ @ 0]]
	f2_arg0.vilain:setTopBottom( 0, 0, -8, 272 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_4BD13AC1448D9700"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f3_arg0.bg:completeAnimation() --[[ @ 0]]
			f3_arg0.bg:playClip( "DefaultClip" ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.bg ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				f3_arg0.bgplanes:beginAnimation( 3000 ) --[[ @ 0]]
				f3_arg0.bgplanes:setLeftRight( 0, 0, 960, 1920 ) --[[ @ 0]]
				f3_arg0.bgplanes:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.bgplanes:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.bgplanes:completeAnimation() --[[ @ 0]]
			f3_arg0.bgplanes:setLeftRight( 0, 0, -960, 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.bgplanes ) --[[ @ 0]]
			local f3_local1 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					f6_arg0:beginAnimation( 1500, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f6_arg0:setTopBottom( 0, 0, 72, 240 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.frontplane:beginAnimation( 1500, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f3_arg0.frontplane:setTopBottom( 0, 0, 82.5, 250.5 ) --[[ @ 0]]
				f3_arg0.frontplane:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.frontplane:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.frontplane:completeAnimation() --[[ @ 0]]
			f3_arg0.frontplane:setTopBottom( 0, 0, 72, 240 ) --[[ @ 0]]
			f3_local1( f3_arg0.frontplane ) --[[ @ 0]]
			local f3_local2 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					f8_arg0:beginAnimation( 2000, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f8_arg0:setLeftRight( 0, 0, 194.5, 346.5 ) --[[ @ 0]]
					f8_arg0:setTopBottom( 0, 0, 72, 256 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.victim:beginAnimation( 1000, Enum[@"hash_1F50FFF429AB1890"][@"hash_6E99F3A6467FC0CA"] | Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f3_arg0.victim:setLeftRight( 0, 0, 235, 387 ) --[[ @ 0]]
				f3_arg0.victim:setTopBottom( 0, 0, 82, 266 ) --[[ @ 0]]
				f3_arg0.victim:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.victim:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.victim:completeAnimation() --[[ @ 0]]
			f3_arg0.victim:setLeftRight( 0, 0, 194.5, 346.5 ) --[[ @ 0]]
			f3_arg0.victim:setTopBottom( 0, 0, 72, 256 ) --[[ @ 0]]
			f3_local2( f3_arg0.victim ) --[[ @ 0]]
			local f3_local3 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					f10_arg0:beginAnimation( 1000, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f10_arg0:setLeftRight( 0, 0, 513, 969 ) --[[ @ 0]]
					f10_arg0:setTopBottom( 0, 0, -8, 272 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.vilain:beginAnimation( 2000, Enum[@"hash_1F50FFF429AB1890"][@"hash_6E99F3A6467FC0CA"] | Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f3_arg0.vilain:setLeftRight( 0, 0, 456.5, 912.5 ) --[[ @ 0]]
				f3_arg0.vilain:setTopBottom( 0, 0, 5.5, 285.5 ) --[[ @ 0]]
				f3_arg0.vilain:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.vilain:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.vilain:completeAnimation() --[[ @ 0]]
			f3_arg0.vilain:setLeftRight( 0, 0, 513, 969 ) --[[ @ 0]]
			f3_arg0.vilain:setTopBottom( 0, 0, -8, 272 ) --[[ @ 0]]
			f3_local3( f3_arg0.vilain ) --[[ @ 0]]
			f3_arg0.flames:completeAnimation() --[[ @ 0]]
			f3_arg0.flames:playClip( "DefaultClip" ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.flames ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD[@"hash_4BD13AC1448D9700"].__onClose = function ( f11_arg0 )
	f11_arg0.bg:close() --[[ @ 0]]
	f11_arg0.flames:close() --[[ @ 0]]
end
 --[[ @ 0]]
