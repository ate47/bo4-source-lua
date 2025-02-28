-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.ZMInvChallengeProgress = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMInvChallengeProgress.__defaultWidth = 320 --[[ @ 0]]
CoD.ZMInvChallengeProgress.__defaultHeight = 20 --[[ @ 0]]
CoD.ZMInvChallengeProgress.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.ZMInvChallengeProgress ) --[[ @ 0]]
	self.id = "ZMInvChallengeProgress" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CurrentProgress = LUI.UIText.new( 0, 0, 0, 98, 0, 0, 0, 21 ) --[[ @ 0]]
	CurrentProgress:setTTF( "dinnext_regular" ) --[[ @ 0]]
	CurrentProgress:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	CurrentProgress:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	CurrentProgress:linkToElementModel( self, "currentProgress", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CurrentProgress:setText( CoD.BaseUtility.AlreadyLocalized( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CurrentProgress ) --[[ @ 0]]
	self.CurrentProgress = CurrentProgress --[[ @ 0]]
	
	local CurrentProgressTime = LUI.UIText.new( 0, 0, 0, 98, 0, 0, 0, 21 ) --[[ @ 0]]
	CurrentProgressTime:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	CurrentProgressTime:setAlpha( 0 ) --[[ @ 0]]
	CurrentProgressTime:setTTF( "dinnext_regular" ) --[[ @ 0]]
	CurrentProgressTime:setLetterSpacing( 1 ) --[[ @ 0]]
	CurrentProgressTime:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	CurrentProgressTime:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	CurrentProgressTime:linkToElementModel( self, "currentProgress", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			CurrentProgressTime:setText( CoD.BaseUtility.AlreadyLocalized( SecondsAsTime( f3_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CurrentProgressTime ) --[[ @ 0]]
	self.CurrentProgressTime = CurrentProgressTime --[[ @ 0]]
	
	local Divider = LUI.UIText.new( 0, 0, 98, 127, 0, 0, 0, 19 ) --[[ @ 0]]
	Divider:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Divider:setText( CoD.BaseUtility.AlreadyLocalized( "/" ) ) --[[ @ 0]]
	Divider:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Divider:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Divider:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Divider ) --[[ @ 0]]
	self.Divider = Divider --[[ @ 0]]
	
	local NumNeeded = LUI.UIText.new( 0, 0, 127, 215, 0, 0, 0, 21 ) --[[ @ 0]]
	NumNeeded:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	NumNeeded:setTTF( "dinnext_regular" ) --[[ @ 0]]
	NumNeeded:setLetterSpacing( 1 ) --[[ @ 0]]
	NumNeeded:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	NumNeeded:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	NumNeeded:linkToElementModel( self, "numNeeded", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			NumNeeded:setText( CoD.BaseUtility.AlreadyLocalized( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( NumNeeded ) --[[ @ 0]]
	self.NumNeeded = NumNeeded --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "TimeBasedChallenge",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "numNeeded", 0 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "numNeeded", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "numNeeded"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMInvChallengeProgress.__resetProperties = function ( f7_arg0 )
	f7_arg0.Divider:completeAnimation() --[[ @ 0]]
	f7_arg0.NumNeeded:completeAnimation() --[[ @ 0]]
	f7_arg0.CurrentProgressTime:completeAnimation() --[[ @ 0]]
	f7_arg0.CurrentProgress:completeAnimation() --[[ @ 0]]
	f7_arg0.Divider:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.NumNeeded:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.CurrentProgressTime:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.CurrentProgress:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMInvChallengeProgress.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	TimeBasedChallenge = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f9_arg0.CurrentProgress:completeAnimation() --[[ @ 0]]
			f9_arg0.CurrentProgress:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.CurrentProgress ) --[[ @ 0]]
			f9_arg0.CurrentProgressTime:completeAnimation() --[[ @ 0]]
			f9_arg0.CurrentProgressTime:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.CurrentProgressTime ) --[[ @ 0]]
			f9_arg0.Divider:completeAnimation() --[[ @ 0]]
			f9_arg0.Divider:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Divider ) --[[ @ 0]]
			f9_arg0.NumNeeded:completeAnimation() --[[ @ 0]]
			f9_arg0.NumNeeded:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.NumNeeded ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ZMInvChallengeProgress.__onClose = function ( f10_arg0 )
	f10_arg0.CurrentProgress:close() --[[ @ 0]]
	f10_arg0.CurrentProgressTime:close() --[[ @ 0]]
	f10_arg0.NumNeeded:close() --[[ @ 0]]
end
 --[[ @ 0]]
