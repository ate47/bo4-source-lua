-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:22dd0805105021ee" ) --[[ @ 0]]
require( "x64:16ea1fd6fe7bde1a" ) --[[ @ 0]]

CoD.Prestige_WZRewardsWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Prestige_WZRewardsWidget.__defaultWidth = 128 --[[ @ 0]]
CoD.Prestige_WZRewardsWidget.__defaultHeight = 440 --[[ @ 0]]
CoD.Prestige_WZRewardsWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Prestige_WZRewardsWidget ) --[[ @ 0]]
	self.id = "Prestige_WZRewardsWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local sizeElement = LUI.UIImage.new( 0, 0, 0, 128, 0, 0, 0, 444 ) --[[ @ 0]]
	sizeElement:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( sizeElement ) --[[ @ 0]]
	self.sizeElement = sizeElement --[[ @ 0]]
	
	local RankImage = CoD.Prestige_WZReward.new( f1_arg0, f1_arg1, 0, 0, 0, 128, 0, 0, 41.5, 195.5 ) --[[ @ 0]]
	RankImage:linkToElementModel( self, "reward1", false, function ( model )
		RankImage:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	RankImage:linkToElementModel( self, "iconLarge", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			RankImage.RewardImage:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RankImage:registerEventHandler( "gain_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f4_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f4_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.PrestigeUtility.UpdateCurrentlySelectedItemInfo( self, f1_arg1, element ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	self:addElement( RankImage ) --[[ @ 0]]
	self.RankImage = RankImage --[[ @ 0]]
	
	local infoBracketTop = LUI.UIImage.new( 0, 0, -1, 129, 0, 0, 39.5, 47.5 ) --[[ @ 0]]
	infoBracketTop:setAlpha( 0.2 ) --[[ @ 0]]
	infoBracketTop:setZRot( 180 ) --[[ @ 0]]
	infoBracketTop:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	infoBracketTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	infoBracketTop:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	infoBracketTop:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( infoBracketTop ) --[[ @ 0]]
	self.infoBracketTop = infoBracketTop --[[ @ 0]]
	
	local HeaderBackground = CoD.Prestige_LevelRewardsHeader.new( f1_arg0, f1_arg1, 0, 0, 0, 128, 0, 0, 0, 37 ) --[[ @ 0]]
	HeaderBackground:linkToElementModel( self, nil, false, function ( model )
		HeaderBackground:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( HeaderBackground ) --[[ @ 0]]
	self.HeaderBackground = HeaderBackground --[[ @ 0]]
	
	local RewardLevel = LUI.UIText.new( 0, 0, 0, 200, 0, 0, 7, 32 ) --[[ @ 0]]
	RewardLevel:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	RewardLevel:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	RewardLevel:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	RewardLevel:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	RewardLevel:linkToElementModel( self, "displayLevel", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			RewardLevel:setText( CoD.PrestigeUtility.LocalizeIfMaxRank( @"hash_54008CE61FE52DCD", f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RewardLevel ) --[[ @ 0]]
	self.RewardLevel = RewardLevel --[[ @ 0]]
	
	local infoBracketBot = LUI.UIImage.new( 0, 0, -1, 129, 0, 0, 188.5, 196.5 ) --[[ @ 0]]
	infoBracketBot:setAlpha( 0.2 ) --[[ @ 0]]
	infoBracketBot:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	infoBracketBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	infoBracketBot:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	infoBracketBot:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( infoBracketBot ) --[[ @ 0]]
	self.infoBracketBot = infoBracketBot --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "WideState",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "wideLayout" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "wideLayout", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "wideLayout"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	RankImage.id = "RankImage" --[[ @ 0]]
	self.__defaultFocus = RankImage --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Prestige_WZRewardsWidget.__resetProperties = function ( f9_arg0 )
	f9_arg0.RewardLevel:completeAnimation() --[[ @ 0]]
	f9_arg0.HeaderBackground:completeAnimation() --[[ @ 0]]
	f9_arg0.sizeElement:completeAnimation() --[[ @ 0]]
	f9_arg0.RankImage:completeAnimation() --[[ @ 0]]
	f9_arg0.infoBracketBot:completeAnimation() --[[ @ 0]]
	f9_arg0.infoBracketTop:completeAnimation() --[[ @ 0]]
	f9_arg0.RewardLevel:setLeftRight( 0, 0, 0, 200 ) --[[ @ 0]]
	f9_arg0.HeaderBackground:setLeftRight( 0, 0, 0, 128 ) --[[ @ 0]]
	f9_arg0.sizeElement:setLeftRight( 0, 0, 0, 128 ) --[[ @ 0]]
	f9_arg0.RankImage:setLeftRight( 0, 0, 0, 128 ) --[[ @ 0]]
	f9_arg0.RankImage:setTopBottom( 0, 0, 41.5, 195.5 ) --[[ @ 0]]
	f9_arg0.infoBracketBot:setLeftRight( 0, 0, -1, 129 ) --[[ @ 0]]
	f9_arg0.infoBracketBot:setTopBottom( 0, 0, 188.5, 196.5 ) --[[ @ 0]]
	f9_arg0.infoBracketTop:setLeftRight( 0, 0, -1, 129 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Prestige_WZRewardsWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.RewardLevel:completeAnimation() --[[ @ 0]]
			f10_arg0.RewardLevel:setLeftRight( 0, 0, 0, 128 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.RewardLevel ) --[[ @ 0]]
		end
	},
	WideState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f11_arg0.sizeElement:completeAnimation() --[[ @ 0]]
			f11_arg0.sizeElement:setLeftRight( 0, 0, 0, 256 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.sizeElement ) --[[ @ 0]]
			f11_arg0.RankImage:completeAnimation() --[[ @ 0]]
			f11_arg0.RankImage:setLeftRight( 0, 0, 0, 256 ) --[[ @ 0]]
			f11_arg0.RankImage:setTopBottom( 0, 0, 41.5, 437.5 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.RankImage ) --[[ @ 0]]
			f11_arg0.infoBracketTop:completeAnimation() --[[ @ 0]]
			f11_arg0.infoBracketTop:setLeftRight( 0, 0, -1, 257 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.infoBracketTop ) --[[ @ 0]]
			f11_arg0.HeaderBackground:completeAnimation() --[[ @ 0]]
			f11_arg0.HeaderBackground:setLeftRight( 0, 0, 0, 256 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.HeaderBackground ) --[[ @ 0]]
			f11_arg0.RewardLevel:completeAnimation() --[[ @ 0]]
			f11_arg0.RewardLevel:setLeftRight( 0, 0, 0, 256 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.RewardLevel ) --[[ @ 0]]
			f11_arg0.infoBracketBot:completeAnimation() --[[ @ 0]]
			f11_arg0.infoBracketBot:setLeftRight( 0, 0, -1, 257 ) --[[ @ 0]]
			f11_arg0.infoBracketBot:setTopBottom( 0, 0, 427, 435 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.infoBracketBot ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Prestige_WZRewardsWidget.__onClose = function ( f12_arg0 )
	f12_arg0.RankImage:close() --[[ @ 0]]
	f12_arg0.HeaderBackground:close() --[[ @ 0]]
	f12_arg0.RewardLevel:close() --[[ @ 0]]
end
 --[[ @ 0]]
