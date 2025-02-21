-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/common/commoncornerpips01" ) --[[ @ 0]]
require( "x64:2d361ac3553c22a" ) --[[ @ 0]]

CoD.TrialCountdownSmallWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TrialCountdownSmallWidget.__defaultWidth = 282 --[[ @ 0]]
CoD.TrialCountdownSmallWidget.__defaultHeight = 45 --[[ @ 0]]
CoD.TrialCountdownSmallWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TrialCountdownSmallWidget ) --[[ @ 0]]
	self.id = "TrialCountdownSmallWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local NineSliceShaderImage = LUI.UIImage.new( 0, 0, 0, 282, 0, 0, 0, 45 ) --[[ @ 0]]
	NineSliceShaderImage:setRGB( 0.13, 0.13, 0.13 ) --[[ @ 0]]
	NineSliceShaderImage:setAlpha( 0.8 ) --[[ @ 0]]
	NineSliceShaderImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	NineSliceShaderImage:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NineSliceShaderImage:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( NineSliceShaderImage ) --[[ @ 0]]
	self.NineSliceShaderImage = NineSliceShaderImage --[[ @ 0]]
	
	local CommonCornerPips = CoD.CommonCornerPips01.new( f1_arg0, f1_arg1, 0, 0, 0, 282, 0, 0, 0, 45 ) --[[ @ 0]]
	CommonCornerPips:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( CommonCornerPips ) --[[ @ 0]]
	self.CommonCornerPips = CommonCornerPips --[[ @ 0]]
	
	local TrialWidget = CoD.TrialWidget.new( f1_arg0, f1_arg1, 0, 0, 2.5, 38.5, 0, 0, 5, 41 ) --[[ @ 0]]
	self:addElement( TrialWidget ) --[[ @ 0]]
	self.TrialWidget = TrialWidget --[[ @ 0]]
	
	local TrialText = LUI.UIText.new( 0, 0, 42, 238, 0, 0, 4.5, 22.5 ) --[[ @ 0]]
	TrialText:setText( LocalizeToUpperString( @"hash_3F16F4088C060F3A" ) ) --[[ @ 0]]
	TrialText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TrialText:setLetterSpacing( 2 ) --[[ @ 0]]
	TrialText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TrialText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( TrialText ) --[[ @ 0]]
	self.TrialText = TrialText --[[ @ 0]]
	
	local TrialCountdownText = LUI.UIText.new( 0, 0, 42, 268, 0, 0, 26, 41 ) --[[ @ 0]]
	TrialCountdownText:setRGB( ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b ) --[[ @ 0]]
	TrialCountdownText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TrialCountdownText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TrialCountdownText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	TrialCountdownText:subscribeToGlobalModel( f1_arg1, "WarzoneTrialInfo", "countdown_timer", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			TrialCountdownText:setText( LocalizeIntoStringIfNotEmpty( @"hash_1C0CE2452CF87DB1", f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TrialCountdownText ) --[[ @ 0]]
	self.TrialCountdownText = TrialCountdownText --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not IsGameTrial()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local6 = self --[[ @ 0]]
	CoD.DirectorUtility.EnableTrialTick( self ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.TrialCountdownSmallWidget.__resetProperties = function ( f4_arg0 )
	f4_arg0.NineSliceShaderImage:completeAnimation() --[[ @ 0]]
	f4_arg0.TrialCountdownText:completeAnimation() --[[ @ 0]]
	f4_arg0.TrialText:completeAnimation() --[[ @ 0]]
	f4_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
	f4_arg0.CommonCornerPips:completeAnimation() --[[ @ 0]]
	f4_arg0.NineSliceShaderImage:setAlpha( 0.8 ) --[[ @ 0]]
	f4_arg0.TrialCountdownText:setLeftRight( 0, 0, 42, 268 ) --[[ @ 0]]
	f4_arg0.TrialCountdownText:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.TrialText:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.TrialWidget:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.CommonCornerPips:setAlpha( 0.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TrialCountdownSmallWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f5_arg0.NineSliceShaderImage:completeAnimation() --[[ @ 0]]
			f5_arg0.NineSliceShaderImage:setAlpha( 0.8 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.NineSliceShaderImage ) --[[ @ 0]]
			f5_arg0.TrialCountdownText:completeAnimation() --[[ @ 0]]
			f5_arg0.TrialCountdownText:setLeftRight( 0, 0.98, 42, 42 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.TrialCountdownText ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f6_arg0.NineSliceShaderImage:completeAnimation() --[[ @ 0]]
			f6_arg0.NineSliceShaderImage:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.NineSliceShaderImage ) --[[ @ 0]]
			f6_arg0.CommonCornerPips:completeAnimation() --[[ @ 0]]
			f6_arg0.CommonCornerPips:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.CommonCornerPips ) --[[ @ 0]]
			f6_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
			f6_arg0.TrialWidget:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.TrialWidget ) --[[ @ 0]]
			f6_arg0.TrialText:completeAnimation() --[[ @ 0]]
			f6_arg0.TrialText:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.TrialText ) --[[ @ 0]]
			f6_arg0.TrialCountdownText:completeAnimation() --[[ @ 0]]
			f6_arg0.TrialCountdownText:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.TrialCountdownText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.TrialCountdownSmallWidget.__onClose = function ( f7_arg0 )
	f7_arg0.CommonCornerPips:close() --[[ @ 0]]
	f7_arg0.TrialWidget:close() --[[ @ 0]]
	f7_arg0.TrialCountdownText:close() --[[ @ 0]]
end
 --[[ @ 0]]
