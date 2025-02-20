-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/aar_t8/rewards/aarrewardbacker" ) --[[ @ 0]]
require( "ui/uieditor/widgets/aar_t8/rewards/aarrewardheader" ) --[[ @ 0]]
require( "ui/uieditor/widgets/aar_t8/rewards/aarrewarditem" ) --[[ @ 0]]
require( "ui/uieditor/widgets/aar_t8/rewards/aarrewardsxp" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/verticallistspacer" ) --[[ @ 0]]

CoD.AARPlayerReward = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARPlayerReward.__defaultWidth = 412 --[[ @ 0]]
CoD.AARPlayerReward.__defaultHeight = 772 --[[ @ 0]]
CoD.AARPlayerReward.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, true ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Top ) --[[ @ 0]]
	self:setClass( CoD.AARPlayerReward ) --[[ @ 0]]
	self.id = "AARPlayerReward" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backer = CoD.AARRewardBacker.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( Backer ) --[[ @ 0]]
	self.Backer = Backer --[[ @ 0]]
	
	local VerticalListSpacer2 = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 0, 412, 0, 0, 0, 19 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer2 ) --[[ @ 0]]
	self.VerticalListSpacer2 = VerticalListSpacer2 --[[ @ 0]]
	
	local AARRewardHeader = CoD.AARRewardHeader.new( f1_arg0, f1_arg1, 0.5, 0.5, -206, 206, 0, 0, 19, 229 ) --[[ @ 0]]
	AARRewardHeader.Pointer:setRGB( 0.43, 0.45, 0.18 ) --[[ @ 0]]
	AARRewardHeader.headerBacking:setRGB( 0.43, 0.45, 0.18 ) --[[ @ 0]]
	AARRewardHeader.TopStripBase:setRGB( 0.43, 0.45, 0.18 ) --[[ @ 0]]
	AARRewardHeader.mainTitle:setRGB( 0.82, 0.89, 0.26 ) --[[ @ 0]]
	AARRewardHeader:linkToElementModel( self, "levelText", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			AARRewardHeader.levelText:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AARRewardHeader:linkToElementModel( self, "mainTitle", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			AARRewardHeader.mainTitle:setText( LocalizeToUpperString( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AARRewardHeader:linkToElementModel( self, "mainIcon", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			AARRewardHeader.mainIcon:setImage( RegisterImage( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AARRewardHeader ) --[[ @ 0]]
	self.AARRewardHeader = AARRewardHeader --[[ @ 0]]
	
	local VerticalListSpacer = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 0.5, 412.5, 0, 0, 229, 245 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer ) --[[ @ 0]]
	self.VerticalListSpacer = VerticalListSpacer --[[ @ 0]]
	
	local Reward1 = CoD.AARRewardItem.new( f1_arg0, f1_arg1, 0, 0, 16.5, 396.5, 0, 0, 245, 427 ) --[[ @ 0]]
	Reward1.Corner:setRGB( 0.82, 0.89, 0.26 ) --[[ @ 0]]
	Reward1:linkToElementModel( self, "reward1Icon", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			Reward1.Image:setImage( RegisterImage( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Reward1:linkToElementModel( self, "reward1Desc", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			Reward1.Description:setText( LocalizeToUpperString( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Reward1:linkToElementModel( self, "reward1Title", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			Reward1.Title:setText( LocalizeToUpperString( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Reward1 ) --[[ @ 0]]
	self.Reward1 = Reward1 --[[ @ 0]]
	
	local VerticalListSpacer3 = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 0.5, 412.5, 0, 0, 427, 443 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer3 ) --[[ @ 0]]
	self.VerticalListSpacer3 = VerticalListSpacer3 --[[ @ 0]]
	
	local Reward2 = CoD.AARRewardItem.new( f1_arg0, f1_arg1, 0, 0, 16.5, 396.5, 0, 0, 443, 625 ) --[[ @ 0]]
	Reward2.Corner:setRGB( 0.82, 0.89, 0.26 ) --[[ @ 0]]
	Reward2:linkToElementModel( self, "reward2Icon", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			Reward2.Image:setImage( RegisterImage( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Reward2:linkToElementModel( self, "reward2Desc", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			Reward2.Description:setText( LocalizeToUpperString( f9_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Reward2:linkToElementModel( self, "reward2Title", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			Reward2.Title:setText( LocalizeToUpperString( f10_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Reward2 ) --[[ @ 0]]
	self.Reward2 = Reward2 --[[ @ 0]]
	
	local VerticalListSpacer4 = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 0.5, 412.5, 0, 0, 625, 641 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer4 ) --[[ @ 0]]
	self.VerticalListSpacer4 = VerticalListSpacer4 --[[ @ 0]]
	
	local InfoDotline2 = LUI.UIImage.new( 0.5, 0.5, -196, 184, 0, 0, 641, 645 ) --[[ @ 0]]
	InfoDotline2:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_info_dotline" ) ) --[[ @ 0]]
	self:addElement( InfoDotline2 ) --[[ @ 0]]
	self.InfoDotline2 = InfoDotline2 --[[ @ 0]]
	
	local VerticalListSpacer5 = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 0.5, 412.5, 0, 0, 645, 661 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer5 ) --[[ @ 0]]
	self.VerticalListSpacer5 = VerticalListSpacer5 --[[ @ 0]]
	
	local XPReward = CoD.AARRewardsXP.new( f1_arg0, f1_arg1, 0, 0, 16.5, 396.5, 0, 0, 661, 755 ) --[[ @ 0]]
	XPReward:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueNonEmptyString( self, f1_arg1, "totalXP" )
			end
		}
	} ) --[[ @ 0]]
	XPReward:linkToElementModel( XPReward, "totalXP", true, function ( model )
		f1_arg0:updateElementState( XPReward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "totalXP"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	XPReward:linkToElementModel( self, "totalXP", true, function ( model )
		local f13_local0 = model:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			XPReward.XP:setText( f13_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( XPReward ) --[[ @ 0]]
	self.XPReward = XPReward --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "MultiItem",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "multiItem" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "multiItem", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "multiItem"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARPlayerReward.__resetProperties = function ( f16_arg0 )
	f16_arg0.Reward2:completeAnimation() --[[ @ 0]]
	f16_arg0.VerticalListSpacer4:completeAnimation() --[[ @ 0]]
	f16_arg0.VerticalListSpacer5:completeAnimation() --[[ @ 0]]
	f16_arg0.InfoDotline2:completeAnimation() --[[ @ 0]]
	f16_arg0.XPReward:completeAnimation() --[[ @ 0]]
	f16_arg0.Reward2:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.VerticalListSpacer4:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.VerticalListSpacer5:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.InfoDotline2:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.XPReward:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARPlayerReward.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f17_arg0.Reward2:completeAnimation() --[[ @ 0]]
			f17_arg0.Reward2:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Reward2 ) --[[ @ 0]]
			f17_arg0.VerticalListSpacer4:completeAnimation() --[[ @ 0]]
			f17_arg0.VerticalListSpacer4:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.VerticalListSpacer4 ) --[[ @ 0]]
			f17_arg0.InfoDotline2:completeAnimation() --[[ @ 0]]
			f17_arg0.InfoDotline2:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.InfoDotline2 ) --[[ @ 0]]
			f17_arg0.VerticalListSpacer5:completeAnimation() --[[ @ 0]]
			f17_arg0.VerticalListSpacer5:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.VerticalListSpacer5 ) --[[ @ 0]]
			f17_arg0.XPReward:completeAnimation() --[[ @ 0]]
			f17_arg0.XPReward:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.XPReward ) --[[ @ 0]]
		end
	},
	MultiItem = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f18_arg0.Reward2:completeAnimation() --[[ @ 0]]
			f18_arg0.Reward2:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Reward2 ) --[[ @ 0]]
			f18_arg0.VerticalListSpacer4:completeAnimation() --[[ @ 0]]
			f18_arg0.VerticalListSpacer4:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.VerticalListSpacer4 ) --[[ @ 0]]
			f18_arg0.InfoDotline2:completeAnimation() --[[ @ 0]]
			f18_arg0.InfoDotline2:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.InfoDotline2 ) --[[ @ 0]]
			f18_arg0.XPReward:completeAnimation() --[[ @ 0]]
			f18_arg0.XPReward:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.XPReward ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARPlayerReward.__onClose = function ( f19_arg0 )
	f19_arg0.Backer:close() --[[ @ 0]]
	f19_arg0.VerticalListSpacer2:close() --[[ @ 0]]
	f19_arg0.AARRewardHeader:close() --[[ @ 0]]
	f19_arg0.VerticalListSpacer:close() --[[ @ 0]]
	f19_arg0.Reward1:close() --[[ @ 0]]
	f19_arg0.VerticalListSpacer3:close() --[[ @ 0]]
	f19_arg0.Reward2:close() --[[ @ 0]]
	f19_arg0.VerticalListSpacer4:close() --[[ @ 0]]
	f19_arg0.VerticalListSpacer5:close() --[[ @ 0]]
	f19_arg0.XPReward:close() --[[ @ 0]]
end
 --[[ @ 0]]
