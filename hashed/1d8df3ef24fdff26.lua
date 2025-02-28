-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/cac/cac_lock" ) --[[ @ 0]]
require( "x64:38361a8d6fe55653" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/verticallistspacer" ) --[[ @ 0]]

CoD.Challenges_ProfilerLock = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Challenges_ProfilerLock.__defaultWidth = 235 --[[ @ 0]]
CoD.Challenges_ProfilerLock.__defaultHeight = 45 --[[ @ 0]]
CoD.Challenges_ProfilerLock.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, true ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Center ) --[[ @ 0]]
	self:setClass( CoD.Challenges_ProfilerLock ) --[[ @ 0]]
	self.id = "Challenges_ProfilerLock" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PixelGridTiledBacking = CoD.Challenges_ProfilerLockBacking.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( PixelGridTiledBacking ) --[[ @ 0]]
	self.PixelGridTiledBacking = PixelGridTiledBacking --[[ @ 0]]
	
	local SpacerBegin = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, -3, 5, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( SpacerBegin ) --[[ @ 0]]
	self.SpacerBegin = SpacerBegin --[[ @ 0]]
	
	local LockedIcon = CoD.cac_lock.new( f1_arg0, f1_arg1, 0, 0, 5, 41, 0, 0, 4.5, 40.5 ) --[[ @ 0]]
	self:addElement( LockedIcon ) --[[ @ 0]]
	self.LockedIcon = LockedIcon --[[ @ 0]]
	
	local SpacerMiddle = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 41, 45, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( SpacerMiddle ) --[[ @ 0]]
	self.SpacerMiddle = SpacerMiddle --[[ @ 0]]
	
	local TierText = LUI.UIText.new( 0, 0, 45, 221, 0, 0, 9, 36 ) --[[ @ 0]]
	TierText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TierText:setLetterSpacing( 1 ) --[[ @ 0]]
	TierText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TierText:linkToElementModel( self, "maxTier", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			TierText:setText( CoD.ChallengesUtility.MakeChallengeTierString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TierText ) --[[ @ 0]]
	self.TierText = TierText --[[ @ 0]]
	
	local SpacerEnd = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 221, 238, -0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( SpacerEnd ) --[[ @ 0]]
	self.SpacerEnd = SpacerEnd --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "LockedOneTier",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "maxTier", 0 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "maxTier", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "maxTier"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Challenges_ProfilerLock.__resetProperties = function ( f5_arg0 )
	f5_arg0.TierText:completeAnimation() --[[ @ 0]]
	f5_arg0.SpacerMiddle:completeAnimation() --[[ @ 0]]
	f5_arg0.SpacerEnd:completeAnimation() --[[ @ 0]]
	f5_arg0.TierText:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.SpacerMiddle:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.SpacerEnd:setLeftRight( 0, 0, 221, 238 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Challenges_ProfilerLock.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	LockedOneTier = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f7_arg0.SpacerMiddle:completeAnimation() --[[ @ 0]]
			f7_arg0.SpacerMiddle:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.SpacerMiddle ) --[[ @ 0]]
			f7_arg0.TierText:completeAnimation() --[[ @ 0]]
			f7_arg0.TierText:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.TierText ) --[[ @ 0]]
			f7_arg0.SpacerEnd:completeAnimation() --[[ @ 0]]
			f7_arg0.SpacerEnd:setLeftRight( 0, 0, 224, 232 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.SpacerEnd ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Challenges_ProfilerLock.__onClose = function ( f8_arg0 )
	f8_arg0.PixelGridTiledBacking:close() --[[ @ 0]]
	f8_arg0.SpacerBegin:close() --[[ @ 0]]
	f8_arg0.LockedIcon:close() --[[ @ 0]]
	f8_arg0.SpacerMiddle:close() --[[ @ 0]]
	f8_arg0.TierText:close() --[[ @ 0]]
	f8_arg0.SpacerEnd:close() --[[ @ 0]]
end
 --[[ @ 0]]
