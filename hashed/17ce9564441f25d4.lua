-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/aar_t8/rewards/aarrewardbrackets" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]

CoD.AARRewardsVariableContractReward = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARRewardsVariableContractReward.__defaultWidth = 380 --[[ @ 0]]
CoD.AARRewardsVariableContractReward.__defaultHeight = 94 --[[ @ 0]]
CoD.AARRewardsVariableContractReward.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARRewardsVariableContractReward ) --[[ @ 0]]
	self.id = "AARRewardsVariableContractReward" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( 0.64, 0.64, 0.64 ) --[[ @ 0]]
	Backing:setAlpha( 0.06 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local Frame = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0.5, 0.5, -148, 148, 0, 0, 0, 150 ) --[[ @ 0]]
	Frame:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	local RewardIcon = LUI.UIFixedAspectRatioImage.new( 0, 0, 22.5, 87.5, 0, 0, 14.5, 79.5 ) --[[ @ 0]]
	self:addElement( RewardIcon ) --[[ @ 0]]
	self.RewardIcon = RewardIcon --[[ @ 0]]
	
	local XP = LUI.UIText.new( 1, 1, -282, -21, 0, 0, 30, 58 ) --[[ @ 0]]
	XP:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	XP:setText( "" ) --[[ @ 0]]
	XP:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	XP:setLetterSpacing( 2 ) --[[ @ 0]]
	XP:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	XP:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( XP ) --[[ @ 0]]
	self.XP = XP --[[ @ 0]]
	
	local Corner = CoD.AARRewardBrackets.new( f1_arg0, f1_arg1, 0, 0, -1, 381, 0, 0, -1, 95 ) --[[ @ 0]]
	Corner:setAlpha( 0.3 ) --[[ @ 0]]
	self:addElement( Corner ) --[[ @ 0]]
	self.Corner = Corner --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARRewardsVariableContractReward.__resetProperties = function ( f2_arg0 )
	f2_arg0.XP:completeAnimation() --[[ @ 0]]
	f2_arg0.Backing:completeAnimation() --[[ @ 0]]
	f2_arg0.Corner:completeAnimation() --[[ @ 0]]
	f2_arg0.XP:setLeftRight( 1, 1, -282, -21 ) --[[ @ 0]]
	f2_arg0.XP:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Backing:setAlpha( 0.06 ) --[[ @ 0]]
	f2_arg0.Corner:setAlpha( 0.3 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARRewardsVariableContractReward.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f4_arg0.Backing:completeAnimation() --[[ @ 0]]
			f4_arg0.Backing:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Backing ) --[[ @ 0]]
			f4_arg0.XP:completeAnimation() --[[ @ 0]]
			f4_arg0.XP:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.XP ) --[[ @ 0]]
			f4_arg0.Corner:completeAnimation() --[[ @ 0]]
			f4_arg0.Corner:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Corner ) --[[ @ 0]]
		end
	},
	DoubleXP = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Merit = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.XP:completeAnimation() --[[ @ 0]]
			f6_arg0.XP:setLeftRight( 1, 1, -355, -94 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.XP ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARRewardsVariableContractReward.__onClose = function ( f7_arg0 )
	f7_arg0.Frame:close() --[[ @ 0]]
	f7_arg0.Corner:close() --[[ @ 0]]
end
 --[[ @ 0]]
