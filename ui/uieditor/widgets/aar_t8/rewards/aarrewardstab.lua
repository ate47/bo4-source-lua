-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "x64:f00a10fc8301da2" ) --[[ @ 0]]
require( "ui/uieditor/widgets/aar_t8/rewards/aarweaponreward" ) --[[ @ 0]]
require( "ui/uieditor/widgets/aar_t8/summary/aarstattypetabheader" ) --[[ @ 0]]
require( "x64:20194a3c2b978e81" ) --[[ @ 0]]

CoD.AARRewardsTab = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARRewardsTab.__defaultWidth = 1920 --[[ @ 0]]
CoD.AARRewardsTab.__defaultHeight = 900 --[[ @ 0]]
CoD.AARRewardsTab.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARRewardsTab ) --[[ @ 0]]
	self.id = "AARRewardsTab" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = CoD.isPC --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local AarMpBacking = CoD.AARCommonBacking.new( f1_arg0, f1_arg1, 0.5, 0.5, -1100, 1100, 0, 0, 43, 878 ) --[[ @ 0]]
	self:addElement( AarMpBacking ) --[[ @ 0]]
	self.AarMpBacking = AarMpBacking --[[ @ 0]]
	
	local RewardsList = LUI.UIList.new( f1_arg0, f1_arg1, 30, 0, nil, false, false, false, false ) --[[ @ 0]]
	RewardsList:setLeftRight( 0, 0, 83, 1821 ) --[[ @ 0]]
	RewardsList:setTopBottom( 0, 0, 80, 852 ) --[[ @ 0]]
	RewardsList:setScale( 0.92, 0.92 ) --[[ @ 0]]
	RewardsList:setWidgetType( CoD.AARWeaponReward ) --[[ @ 0]]
	RewardsList:setHorizontalCount( 4 ) --[[ @ 0]]
	RewardsList:setSpacing( 30 ) --[[ @ 0]]
	RewardsList:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	RewardsList:setDataSource( "AARRewards" ) --[[ @ 0]]
	RewardsList:subscribeToGlobalModel( f1_arg1, "PerController", "AAR.rewards.newPage", function ( model )
		CoD.AARUtility.UpdateRewardListView( f1_arg1, RewardsList ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( RewardsList ) --[[ @ 0]]
	self.RewardsList = RewardsList --[[ @ 0]]
	
	local CommonSecondaryTabBar = CoD.CommonSecondaryTabBar.new( f1_arg0, f1_arg1, 0, 0, 0, 1920, 0, 0, 47.5, 108.5 ) --[[ @ 0]]
	CommonSecondaryTabBar:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsModelValueTrue( f1_arg1, "AAR.rewards.multiPage" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = CommonSecondaryTabBar --[[ @ 0]]
	local f1_local5 = CommonSecondaryTabBar.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["AAR.rewards.multiPage"], function ( f4_arg0 )
		f1_arg0:updateElementState( CommonSecondaryTabBar, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "AAR.rewards.multiPage"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CommonSecondaryTabBar.Tabs.grid:setWidgetType( CoD.AARStatTypeTabHeader ) --[[ @ 0]]
	CommonSecondaryTabBar.Tabs.grid:setHorizontalCount( 8 ) --[[ @ 0]]
	CommonSecondaryTabBar.Tabs.grid:setDataSource( "AARRewardPages" ) --[[ @ 0]]
	CommonSecondaryTabBar:registerEventHandler( "list_active_changed", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		CoD.AARUtility.AARRewardPageChanged( f1_arg1, self, element, event ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	self:addElement( CommonSecondaryTabBar ) --[[ @ 0]]
	self.CommonSecondaryTabBar = CommonSecondaryTabBar --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "ZM",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "AAR.activeTab", CoD.AARUtility.AARTabs.AAR_REWARDS ) and IsZombies()
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "AAR.activeTab", CoD.AARUtility.AARTabs.AAR_REWARDS )
			end
		}
	} ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["AAR.activeTab"], function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "AAR.activeTab"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["lobbyRoot.lobbyNav"], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	RewardsList.id = "RewardsList" --[[ @ 0]]
	CommonSecondaryTabBar.id = "CommonSecondaryTabBar" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local5 = self --[[ @ 0]]
	CoD.AARUtility.RegisterForTriggerNavigation( f1_arg0, CommonSecondaryTabBar, f1_arg1, "Tabs.grid", CoD.AARUtility.AARTabs.AAR_REWARDS ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.AARRewardsTab.__resetProperties = function ( f10_arg0 )
	f10_arg0.RewardsList:completeAnimation() --[[ @ 0]]
	f10_arg0.CommonSecondaryTabBar:completeAnimation() --[[ @ 0]]
	f10_arg0.AarMpBacking:completeAnimation() --[[ @ 0]]
	f10_arg0.RewardsList:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.CommonSecondaryTabBar:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.AarMpBacking:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.AarMpBacking.Backer:setRGB( 0.67, 0.67, 0.67 ) --[[ @ 0]]
	f10_arg0.AarMpBacking.Backer:setAlpha( 0.02 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARRewardsTab.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f11_arg0.AarMpBacking:completeAnimation() --[[ @ 0]]
			f11_arg0.AarMpBacking:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.AarMpBacking ) --[[ @ 0]]
			f11_arg0.RewardsList:completeAnimation() --[[ @ 0]]
			f11_arg0.RewardsList:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.RewardsList ) --[[ @ 0]]
			f11_arg0.CommonSecondaryTabBar:completeAnimation() --[[ @ 0]]
			f11_arg0.CommonSecondaryTabBar:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.CommonSecondaryTabBar ) --[[ @ 0]]
		end
	},
	ZM = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.AarMpBacking:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f12_arg0.AarMpBacking:setAlpha( 1 ) --[[ @ 0]]
				f12_arg0.AarMpBacking:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.AarMpBacking:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.AarMpBacking:completeAnimation() --[[ @ 0]]
			f12_arg0.AarMpBacking.Backer:completeAnimation() --[[ @ 0]]
			f12_arg0.AarMpBacking:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.AarMpBacking.Backer:setRGB( 0.02, 0, 0 ) --[[ @ 0]]
			f12_arg0.AarMpBacking.Backer:setAlpha( 0.4 ) --[[ @ 0]]
			f12_local0( f12_arg0.AarMpBacking ) --[[ @ 0]]
			local f12_local1 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					f15_arg0:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f15_arg0:setAlpha( 1 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.RewardsList:beginAnimation( 350 ) --[[ @ 0]]
				f12_arg0.RewardsList:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.RewardsList:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.RewardsList:completeAnimation() --[[ @ 0]]
			f12_arg0.RewardsList:setAlpha( 0 ) --[[ @ 0]]
			f12_local1( f12_arg0.RewardsList ) --[[ @ 0]]
			local f12_local2 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					f17_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f17_arg0:setAlpha( 1 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.CommonSecondaryTabBar:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.CommonSecondaryTabBar:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.CommonSecondaryTabBar:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.CommonSecondaryTabBar:completeAnimation() --[[ @ 0]]
			f12_arg0.CommonSecondaryTabBar:setAlpha( 0 ) --[[ @ 0]]
			f12_local2( f12_arg0.CommonSecondaryTabBar ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f18_local0 = function ( f19_arg0 )
				f18_arg0.AarMpBacking:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f18_arg0.AarMpBacking:setAlpha( 1 ) --[[ @ 0]]
				f18_arg0.AarMpBacking:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.AarMpBacking:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.AarMpBacking:completeAnimation() --[[ @ 0]]
			f18_arg0.AarMpBacking:setAlpha( 0 ) --[[ @ 0]]
			f18_local0( f18_arg0.AarMpBacking ) --[[ @ 0]]
			local f18_local1 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					f21_arg0:beginAnimation( 149, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f21_arg0:setAlpha( 1 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f18_arg0.RewardsList:beginAnimation( 300 ) --[[ @ 0]]
				f18_arg0.RewardsList:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.RewardsList:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.RewardsList:completeAnimation() --[[ @ 0]]
			f18_arg0.RewardsList:setAlpha( 0 ) --[[ @ 0]]
			f18_local1( f18_arg0.RewardsList ) --[[ @ 0]]
			local f18_local2 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					f23_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f23_arg0:setAlpha( 1 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f18_arg0.CommonSecondaryTabBar:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.CommonSecondaryTabBar:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.CommonSecondaryTabBar:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.CommonSecondaryTabBar:completeAnimation() --[[ @ 0]]
			f18_arg0.CommonSecondaryTabBar:setAlpha( 0 ) --[[ @ 0]]
			f18_local2( f18_arg0.CommonSecondaryTabBar ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARRewardsTab.__onClose = function ( f24_arg0 )
	f24_arg0.AarMpBacking:close() --[[ @ 0]]
	f24_arg0.RewardsList:close() --[[ @ 0]]
	f24_arg0.CommonSecondaryTabBar:close() --[[ @ 0]]
end
 --[[ @ 0]]
