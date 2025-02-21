-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:141c9011e64b1ca0" ) --[[ @ 0]]
require( "x64:4964f98242e1c7b3" ) --[[ @ 0]]
require( "x64:7151a9f89b614c73" ) --[[ @ 0]]
require( "x64:6814c085d0bdb54a" ) --[[ @ 0]]
require( "x64:278b521390453e28" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/verticallistspacer" ) --[[ @ 0]]

CoD.AARContractReward_ZM = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARContractReward_ZM.__defaultWidth = 412 --[[ @ 0]]
CoD.AARContractReward_ZM.__defaultHeight = 772 --[[ @ 0]]
CoD.AARContractReward_ZM.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, true ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Top ) --[[ @ 0]]
	self:setClass( CoD.AARContractReward_ZM ) --[[ @ 0]]
	self.id = "AARContractReward_ZM" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BackerZM = CoD.AARRewardBacker_ZM.new( f1_arg0, f1_arg1, 0, 0, 0, 412, 0, 0, 18.5, 790.5 ) --[[ @ 0]]
	self:addElement( BackerZM ) --[[ @ 0]]
	self.BackerZM = BackerZM --[[ @ 0]]
	
	local VerticalListSpacer2 = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 0, 412, 0, 0, 0, 19 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer2 ) --[[ @ 0]]
	self.VerticalListSpacer2 = VerticalListSpacer2 --[[ @ 0]]
	
	local AARRewardHeaderZM = CoD.AARRewardHeader_ZM.new( f1_arg0, f1_arg1, 0.5, 0.5, -206, 206, 0, 0, 19, 229 ) --[[ @ 0]]
	AARRewardHeaderZM.Pointer:setRGB( 0.61, 0.1, 0.11 ) --[[ @ 0]]
	AARRewardHeaderZM.mainTitle:setRGB( 1, 0.74, 0.28 ) --[[ @ 0]]
	AARRewardHeaderZM:linkToElementModel( self, "mainTitle", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			AARRewardHeaderZM.mainTitle:setText( LocalizeToUpperString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AARRewardHeaderZM:linkToElementModel( self, "levelText", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			AARRewardHeaderZM.levelText:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AARRewardHeaderZM:linkToElementModel( self, "mainIcon", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			AARRewardHeaderZM.mainIcon:setImage( RegisterImage( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AARRewardHeaderZM ) --[[ @ 0]]
	self.AARRewardHeaderZM = AARRewardHeaderZM --[[ @ 0]]
	
	local VerticalListSpacer = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 0.5, 412.5, 0, 0, 229, 245 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer ) --[[ @ 0]]
	self.VerticalListSpacer = VerticalListSpacer --[[ @ 0]]
	
	local AARRewardContractDesc = CoD.AARRewardContractDesc.new( f1_arg0, f1_arg1, 0, 0, 16.5, 396.5, 0, 0, 245, 427 ) --[[ @ 0]]
	AARRewardContractDesc:linkToElementModel( self, "contractDesc", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			AARRewardContractDesc.Description:setText( Engine[@"hash_4F9F1239CFD921FE"]( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AARRewardContractDesc:linkToElementModel( self, "contractName", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			AARRewardContractDesc.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AARRewardContractDesc ) --[[ @ 0]]
	self.AARRewardContractDesc = AARRewardContractDesc --[[ @ 0]]
	
	local VerticalListSpacer3 = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 0.5, 412.5, 0, 0, 427, 443 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer3 ) --[[ @ 0]]
	self.VerticalListSpacer3 = VerticalListSpacer3 --[[ @ 0]]
	
	local AARRewardsDynamicXP = CoD.AARRewardsDynamicXP.new( f1_arg0, f1_arg1, 0.5, 0.5, -190, 190, 0, 0, 443, 537 ) --[[ @ 0]]
	AARRewardsDynamicXP:linkToElementModel( self, "contractXPAmount", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			AARRewardsDynamicXP.XP:setText( f7_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AARRewardsDynamicXP ) --[[ @ 0]]
	self.AARRewardsDynamicXP = AARRewardsDynamicXP --[[ @ 0]]
	
	local VerticalListSpacer4 = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 0.5, 412.5, 0, 0, 537, 553 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer4 ) --[[ @ 0]]
	self.VerticalListSpacer4 = VerticalListSpacer4 --[[ @ 0]]
	
	local AARRewardsVariableContractReward = CoD.AARRewardsVariableContractReward.new( f1_arg0, f1_arg1, 0, 0, 16, 396, 0, 0, 553, 647 ) --[[ @ 0]]
	AARRewardsVariableContractReward:linkToElementModel( self, "contractRewardIcon", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			AARRewardsVariableContractReward.RewardIcon:setImage( RegisterImage( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AARRewardsVariableContractReward:linkToElementModel( self, "contractRewardAmount", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			AARRewardsVariableContractReward.XP:setText( Engine[@"hash_4F9F1239CFD921FE"]( f9_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AARRewardsVariableContractReward ) --[[ @ 0]]
	self.AARRewardsVariableContractReward = AARRewardsVariableContractReward --[[ @ 0]]
	
	local InfoDotline2 = LUI.UIImage.new( 0.5, 0.5, -196, 184, 0, 0, 647, 651 ) --[[ @ 0]]
	InfoDotline2:setRGB( 0.61, 0.1, 0.11 ) --[[ @ 0]]
	InfoDotline2:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_info_dotline" ) ) --[[ @ 0]]
	self:addElement( InfoDotline2 ) --[[ @ 0]]
	self.InfoDotline2 = InfoDotline2 --[[ @ 0]]
	
	local VerticalListSpacer5 = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 0.5, 412.5, 0, 0, 651, 667 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer5 ) --[[ @ 0]]
	self.VerticalListSpacer5 = VerticalListSpacer5 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoReward",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "contractRewardAmount" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "contractRewardAmount", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "contractRewardAmount"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARContractReward_ZM.__resetProperties = function ( f12_arg0 )
	f12_arg0.VerticalListSpacer4:completeAnimation() --[[ @ 0]]
	f12_arg0.VerticalListSpacer5:completeAnimation() --[[ @ 0]]
	f12_arg0.InfoDotline2:completeAnimation() --[[ @ 0]]
	f12_arg0.AARRewardHeaderZM:completeAnimation() --[[ @ 0]]
	f12_arg0.AARRewardsVariableContractReward:completeAnimation() --[[ @ 0]]
	f12_arg0.VerticalListSpacer4:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.VerticalListSpacer5:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.InfoDotline2:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.AARRewardHeaderZM:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.AARRewardsVariableContractReward:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARContractReward_ZM.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				f13_arg0.AARRewardHeaderZM:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f13_arg0.AARRewardHeaderZM:setAlpha( 1 ) --[[ @ 0]]
				f13_arg0.AARRewardHeaderZM:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.AARRewardHeaderZM:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.AARRewardHeaderZM:completeAnimation() --[[ @ 0]]
			f13_arg0.AARRewardHeaderZM:setAlpha( 0.05 ) --[[ @ 0]]
			f13_local0( f13_arg0.AARRewardHeaderZM ) --[[ @ 0]]
			f13_arg0.VerticalListSpacer4:completeAnimation() --[[ @ 0]]
			f13_arg0.VerticalListSpacer4:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.VerticalListSpacer4 ) --[[ @ 0]]
			f13_arg0.InfoDotline2:completeAnimation() --[[ @ 0]]
			f13_arg0.InfoDotline2:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.InfoDotline2 ) --[[ @ 0]]
			f13_arg0.VerticalListSpacer5:completeAnimation() --[[ @ 0]]
			f13_arg0.VerticalListSpacer5:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.VerticalListSpacer5 ) --[[ @ 0]]
		end
	},
	NoReward = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.AARRewardsVariableContractReward:completeAnimation() --[[ @ 0]]
			f15_arg0.AARRewardsVariableContractReward:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.AARRewardsVariableContractReward ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARContractReward_ZM.__onClose = function ( f16_arg0 )
	f16_arg0.BackerZM:close() --[[ @ 0]]
	f16_arg0.VerticalListSpacer2:close() --[[ @ 0]]
	f16_arg0.AARRewardHeaderZM:close() --[[ @ 0]]
	f16_arg0.VerticalListSpacer:close() --[[ @ 0]]
	f16_arg0.AARRewardContractDesc:close() --[[ @ 0]]
	f16_arg0.VerticalListSpacer3:close() --[[ @ 0]]
	f16_arg0.AARRewardsDynamicXP:close() --[[ @ 0]]
	f16_arg0.VerticalListSpacer4:close() --[[ @ 0]]
	f16_arg0.AARRewardsVariableContractReward:close() --[[ @ 0]]
	f16_arg0.VerticalListSpacer5:close() --[[ @ 0]]
end
 --[[ @ 0]]
