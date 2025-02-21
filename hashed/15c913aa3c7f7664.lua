-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.WZAAR_MeritBreakdownLine = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZAAR_MeritBreakdownLine.__defaultWidth = 360 --[[ @ 0]]
CoD.WZAAR_MeritBreakdownLine.__defaultHeight = 30 --[[ @ 0]]
CoD.WZAAR_MeritBreakdownLine.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WZAAR_MeritBreakdownLine ) --[[ @ 0]]
	self.id = "WZAAR_MeritBreakdownLine" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Value = LUI.UIText.new( 1, 1, -112, 0, -0, 1, 0, 0 ) --[[ @ 0]]
	Value:setRGB( 0.97, 0.8, 0.11 ) --[[ @ 0]]
	Value:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Value:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	Value:setShaderVector( 0, 0.4, 0, 0, 0 ) --[[ @ 0]]
	Value:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Value:setShaderVector( 2, 1, 0.2, 0, 0.5 ) --[[ @ 0]]
	Value:setLetterSpacing( 2 ) --[[ @ 0]]
	Value:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	Value:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	Value:linkToElementModel( self, "value", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Value:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Value ) --[[ @ 0]]
	self.Value = Value --[[ @ 0]]
	
	local Label = LUI.UIText.new( 0, 0.68, 0, 0, 0.14, 0.86, 0, 0 ) --[[ @ 0]]
	Label:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Label:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Label:setLetterSpacing( 2 ) --[[ @ 0]]
	Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	Label:linkToElementModel( self, "label", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Label:setText( LocalizeToUpperString( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Label ) --[[ @ 0]]
	self.Label = Label --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WZAAR_MeritBreakdownLine.__resetProperties = function ( f4_arg0 )
	f4_arg0.Label:completeAnimation() --[[ @ 0]]
	f4_arg0.Value:completeAnimation() --[[ @ 0]]
	f4_arg0.Label:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.Value:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WZAAR_MeritBreakdownLine.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f5_arg0.Value:completeAnimation() --[[ @ 0]]
			f5_arg0.Value:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Value ) --[[ @ 0]]
			f5_arg0.Label:completeAnimation() --[[ @ 0]]
			f5_arg0.Label:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Label ) --[[ @ 0]]
		end,
		Show = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.Value:beginAnimation( 200 ) --[[ @ 0]]
				f6_arg0.Value:setAlpha( 1 ) --[[ @ 0]]
				f6_arg0.Value:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.Value:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.Value:completeAnimation() --[[ @ 0]]
			f6_arg0.Value:setAlpha( 0 ) --[[ @ 0]]
			f6_local0( f6_arg0.Value ) --[[ @ 0]]
			local f6_local1 = function ( f8_arg0 )
				f6_arg0.Label:beginAnimation( 200 ) --[[ @ 0]]
				f6_arg0.Label:setAlpha( 1 ) --[[ @ 0]]
				f6_arg0.Label:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.Label:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.Label:completeAnimation() --[[ @ 0]]
			f6_arg0.Label:setAlpha( 0 ) --[[ @ 0]]
			f6_local1( f6_arg0.Label ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WZAAR_MeritBreakdownLine.__onClose = function ( f9_arg0 )
	f9_arg0.Value:close() --[[ @ 0]]
	f9_arg0.Label:close() --[[ @ 0]]
end
 --[[ @ 0]]
