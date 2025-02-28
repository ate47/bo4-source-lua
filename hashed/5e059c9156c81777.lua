-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:5aac73e3cb2db880" ) --[[ @ 0]]
require( "x64:515cf4f01e6aec35" ) --[[ @ 0]]
require( "x64:138e03e34ad8f0b5" ) --[[ @ 0]]
require( "x64:2a5c094515c7c87e" ) --[[ @ 0]]

CoD.SpecialEventWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SpecialEventWidget.__defaultWidth = 477 --[[ @ 0]]
CoD.SpecialEventWidget.__defaultHeight = 382 --[[ @ 0]]
CoD.SpecialEventWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.CreateGlobalModel( "AutoEvents.zm_halloween_2018_timer" ) --[[ @ 0]]
	self:setClass( CoD.SpecialEventWidget ) --[[ @ 0]]
	self.id = "SpecialEventWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local HeaderText = LUI.UIText.new( 0, 0, 9, 252, 0, 0, 6, 32 ) --[[ @ 0]]
	HeaderText:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	HeaderText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	HeaderText:setLetterSpacing( 4 ) --[[ @ 0]]
	HeaderText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	HeaderText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	HeaderText:linkToElementModel( self, "eventName", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			HeaderText:setText( LocalizeToUpperString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HeaderText ) --[[ @ 0]]
	self.HeaderText = HeaderText --[[ @ 0]]
	
	local SpecialSubtitleText = LUI.UIText.new( 0, 0, 9, 215, 0, 0, 35, 53 ) --[[ @ 0]]
	SpecialSubtitleText:setRGB( ColorSet.T8_PC_CHAT_PARTY.r, ColorSet.T8_PC_CHAT_PARTY.g, ColorSet.T8_PC_CHAT_PARTY.b ) --[[ @ 0]]
	SpecialSubtitleText:setText( LocalizeToUpperString( @"hash_9D2993B90351AC9" ) ) --[[ @ 0]]
	SpecialSubtitleText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	SpecialSubtitleText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	SpecialSubtitleText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( SpecialSubtitleText ) --[[ @ 0]]
	self.SpecialSubtitleText = SpecialSubtitleText --[[ @ 0]]
	
	local TimerText = LUI.UIText.new( 0, 0, 215, 465, 0, 0, 35, 50 ) --[[ @ 0]]
	TimerText:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	TimerText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TimerText:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	TimerText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	TimerText:subscribeToGlobalModel( f1_arg1, "AutoEvents", "zm_halloween_2018_timer", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			TimerText:setText( LocalizeIntoStringIfNotEmpty( @"hash_1C0CE2452CF87DB1", f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TimerText ) --[[ @ 0]]
	self.TimerText = TimerText --[[ @ 0]]
	
	local NextDailyTimerText = LUI.UIText.new( 0.5, 0.5, -194, 194, 0.5, 0.5, 12.5, 27.5 ) --[[ @ 0]]
	NextDailyTimerText:setRGB( ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b ) --[[ @ 0]]
	NextDailyTimerText:setAlpha( 0 ) --[[ @ 0]]
	NextDailyTimerText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	NextDailyTimerText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	NextDailyTimerText:subscribeToGlobalModel( f1_arg1, "AutoEvents", "zm_daily_callings_timer", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			NextDailyTimerText:setText( LocalizeIntoStringIfNotEmpty( @"hash_5F79DED252995605", f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( NextDailyTimerText ) --[[ @ 0]]
	self.NextDailyTimerText = NextDailyTimerText --[[ @ 0]]
	
	local StepText = LUI.UIText.new( 0, 0, 12, 228, 0, 0, 79, 95 ) --[[ @ 0]]
	StepText:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	StepText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	StepText:setLetterSpacing( 1 ) --[[ @ 0]]
	StepText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	StepText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	StepText:linkToElementModel( self, "stepProgress", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			StepText:setText( ToUpper( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StepText ) --[[ @ 0]]
	self.StepText = StepText --[[ @ 0]]
	
	local TaskInfo = CoD.SpecialEventTaskWidget.new( f1_arg0, f1_arg1, 0, 0, 12, 465, 0, 0, 99, 199 ) --[[ @ 0]]
	TaskInfo:linkToElementModel( self, nil, false, function ( model )
		TaskInfo:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( TaskInfo ) --[[ @ 0]]
	self.TaskInfo = TaskInfo --[[ @ 0]]
	
	local RewardsHeader = LUI.UIText.new( 0, 0, 12, 228, 0, 0, 224.5, 240.5 ) --[[ @ 0]]
	RewardsHeader:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	RewardsHeader:setText( LocalizeToUpperString( @"menu/rewards" ) ) --[[ @ 0]]
	RewardsHeader:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	RewardsHeader:setLetterSpacing( 1 ) --[[ @ 0]]
	RewardsHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	RewardsHeader:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( RewardsHeader ) --[[ @ 0]]
	self.RewardsHeader = RewardsHeader --[[ @ 0]]
	
	local RewardQuantityText = CoD.SpecialEventRewardsWidget.new( f1_arg0, f1_arg1, 0, 0, 12, 465, 0, 0, 244.5, 344.5 ) --[[ @ 0]]
	RewardQuantityText.RewardGrid:setDataSource( "SpecialEventRewards" ) --[[ @ 0]]
	RewardQuantityText:linkToElementModel( self, nil, false, function ( model )
		RewardQuantityText:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( RewardQuantityText ) --[[ @ 0]]
	self.RewardQuantityText = RewardQuantityText --[[ @ 0]]
	
	local CompleteText = LUI.UIText.new( 0.5, 0.5, -194, 194, 0.5, 0.5, -12, 12 ) --[[ @ 0]]
	CompleteText:setAlpha( 0 ) --[[ @ 0]]
	CompleteText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	CompleteText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	CompleteText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	CompleteText:linkToElementModel( self, "allTasksCompleteText", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			CompleteText:setText( LocalizeToUpperString( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CompleteText ) --[[ @ 0]]
	self.CompleteText = CompleteText --[[ @ 0]]
	
	local SpecialEventPips = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 4, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	SpecialEventPips:setLeftRight( 0, 0, 376, 464 ) --[[ @ 0]]
	SpecialEventPips:setTopBottom( 0, 0, 73, 91 ) --[[ @ 0]]
	SpecialEventPips:setAutoScaleContent( true ) --[[ @ 0]]
	SpecialEventPips:setWidgetType( CoD.SpecialEventProgressPip ) --[[ @ 0]]
	SpecialEventPips:setHorizontalCount( 4 ) --[[ @ 0]]
	SpecialEventPips:setSpacing( 4 ) --[[ @ 0]]
	SpecialEventPips:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	SpecialEventPips:setDataSource( "SpecialEventSteps" ) --[[ @ 0]]
	self:addElement( SpecialEventPips ) --[[ @ 0]]
	self.SpecialEventPips = SpecialEventPips --[[ @ 0]]
	
	local BarracksTimeDisplayText = CoD.Barracks_TimeDisplayText.new( f1_arg0, f1_arg1, 0, 0, 215, 465, 0, 0, 35, 50 ) --[[ @ 0]]
	BarracksTimeDisplayText:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	BarracksTimeDisplayText:subscribeToGlobalModel( f1_arg1, "DailyCallingInfo", nil, function ( model )
		BarracksTimeDisplayText:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	BarracksTimeDisplayText:subscribeToGlobalModel( f1_arg1, "AutoEvents", "zm_daily_callings_timer", function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			BarracksTimeDisplayText.DailyTimerText:setText( LocalizeIntoStringIfNotEmpty( @"hash_1C0CE2452CF87DB1", f10_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BarracksTimeDisplayText ) --[[ @ 0]]
	self.BarracksTimeDisplayText = BarracksTimeDisplayText --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "DailyCompleteLayoutSmall",
			condition = function ( menu, element, event )
				local f11_local0 = CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "showDailyLayout" ) --[[ @ 0]]
				if f11_local0 then
					f11_local0 = CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "allTasksComplete" ) --[[ @ 0]]
					if f11_local0 then
						f11_local0 = AlwaysFalse() --[[ @ 0]]
					end
				end
				return f11_local0
			end
		},
		{
			stateName = "DailyCompleteLayout",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "showDailyLayout" ) and CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "allTasksComplete" )
			end
		},
		{
			stateName = "DailyLayoutSmall",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "showDailyLayout" ) and AlwaysFalse()
			end
		},
		{
			stateName = "DailyLayout",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "showDailyLayout" )
			end
		},
		{
			stateName = "CompleteLayout",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "allTasksComplete" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "showDailyLayout", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "showDailyLayout"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "allTasksComplete", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "allTasksComplete"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	RewardQuantityText.id = "RewardQuantityText" --[[ @ 0]]
	SpecialEventPips.id = "SpecialEventPips" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local12 = self --[[ @ 0]]
	CoD.BlackMarketUtility.EnableLiveCountDownTimer( self ) --[[ @ 0]]
	CoD.ZombiesCallingsUtility.SubscribeToAutoEvents( self, f1_arg1 ) --[[ @ 0]]
	CoD.ZombiesCallingsUtility.EnableLiveDailyCallingsCountDownTimer( self ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.SpecialEventWidget.__resetProperties = function ( f18_arg0 )
	f18_arg0.SpecialSubtitleText:completeAnimation() --[[ @ 0]]
	f18_arg0.StepText:completeAnimation() --[[ @ 0]]
	f18_arg0.TaskInfo:completeAnimation() --[[ @ 0]]
	f18_arg0.TimerText:completeAnimation() --[[ @ 0]]
	f18_arg0.CompleteText:completeAnimation() --[[ @ 0]]
	f18_arg0.HeaderText:completeAnimation() --[[ @ 0]]
	f18_arg0.RewardQuantityText:completeAnimation() --[[ @ 0]]
	f18_arg0.RewardsHeader:completeAnimation() --[[ @ 0]]
	f18_arg0.NextDailyTimerText:completeAnimation() --[[ @ 0]]
	f18_arg0.BarracksTimeDisplayText:completeAnimation() --[[ @ 0]]
	f18_arg0.SpecialSubtitleText:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.StepText:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.TaskInfo:setTopBottom( 0, 0, 99, 199 ) --[[ @ 0]]
	f18_arg0.TaskInfo:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.TimerText:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.CompleteText:setTopBottom( 0.5, 0.5, -12, 12 ) --[[ @ 0]]
	f18_arg0.CompleteText:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.HeaderText:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.RewardQuantityText:setTopBottom( 0, 0, 244.5, 344.5 ) --[[ @ 0]]
	f18_arg0.RewardQuantityText:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.RewardsHeader:setTopBottom( 0, 0, 224.5, 240.5 ) --[[ @ 0]]
	f18_arg0.RewardsHeader:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.NextDailyTimerText:setTopBottom( 0.5, 0.5, 12.5, 27.5 ) --[[ @ 0]]
	f18_arg0.NextDailyTimerText:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.BarracksTimeDisplayText:setTopBottom( 0, 0, 35, 50 ) --[[ @ 0]]
	f18_arg0.BarracksTimeDisplayText:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SpecialEventWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	DailyCompleteLayoutSmall = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 10 ) --[[ @ 0]]
			f20_arg0.HeaderText:completeAnimation() --[[ @ 0]]
			f20_arg0.HeaderText:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.HeaderText ) --[[ @ 0]]
			f20_arg0.SpecialSubtitleText:completeAnimation() --[[ @ 0]]
			f20_arg0.SpecialSubtitleText:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.SpecialSubtitleText ) --[[ @ 0]]
			f20_arg0.TimerText:completeAnimation() --[[ @ 0]]
			f20_arg0.TimerText:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.TimerText ) --[[ @ 0]]
			f20_arg0.NextDailyTimerText:completeAnimation() --[[ @ 0]]
			f20_arg0.NextDailyTimerText:setTopBottom( 0.5, 0.5, -44, -29 ) --[[ @ 0]]
			f20_arg0.NextDailyTimerText:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.NextDailyTimerText ) --[[ @ 0]]
			f20_arg0.StepText:completeAnimation() --[[ @ 0]]
			f20_arg0.StepText:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.StepText ) --[[ @ 0]]
			f20_arg0.TaskInfo:completeAnimation() --[[ @ 0]]
			f20_arg0.TaskInfo:setTopBottom( 0, 0, 79, 179 ) --[[ @ 0]]
			f20_arg0.TaskInfo:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.TaskInfo ) --[[ @ 0]]
			f20_arg0.RewardsHeader:completeAnimation() --[[ @ 0]]
			f20_arg0.RewardsHeader:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.RewardsHeader ) --[[ @ 0]]
			f20_arg0.RewardQuantityText:completeAnimation() --[[ @ 0]]
			f20_arg0.RewardQuantityText:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.RewardQuantityText ) --[[ @ 0]]
			f20_arg0.CompleteText:completeAnimation() --[[ @ 0]]
			f20_arg0.CompleteText:setTopBottom( 0.5, 0.5, -68.5, -44.5 ) --[[ @ 0]]
			f20_arg0.CompleteText:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.CompleteText ) --[[ @ 0]]
			f20_arg0.BarracksTimeDisplayText:completeAnimation() --[[ @ 0]]
			f20_arg0.BarracksTimeDisplayText:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.BarracksTimeDisplayText ) --[[ @ 0]]
		end
	},
	DailyCompleteLayout = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 10 ) --[[ @ 0]]
			f21_arg0.HeaderText:completeAnimation() --[[ @ 0]]
			f21_arg0.HeaderText:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.HeaderText ) --[[ @ 0]]
			f21_arg0.SpecialSubtitleText:completeAnimation() --[[ @ 0]]
			f21_arg0.SpecialSubtitleText:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.SpecialSubtitleText ) --[[ @ 0]]
			f21_arg0.TimerText:completeAnimation() --[[ @ 0]]
			f21_arg0.TimerText:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.TimerText ) --[[ @ 0]]
			f21_arg0.NextDailyTimerText:completeAnimation() --[[ @ 0]]
			f21_arg0.NextDailyTimerText:setTopBottom( 0.5, 0.5, 17.5, 32.5 ) --[[ @ 0]]
			f21_arg0.NextDailyTimerText:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.NextDailyTimerText ) --[[ @ 0]]
			f21_arg0.StepText:completeAnimation() --[[ @ 0]]
			f21_arg0.StepText:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.StepText ) --[[ @ 0]]
			f21_arg0.TaskInfo:completeAnimation() --[[ @ 0]]
			f21_arg0.TaskInfo:setTopBottom( 0, 0, 79, 179 ) --[[ @ 0]]
			f21_arg0.TaskInfo:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.TaskInfo ) --[[ @ 0]]
			f21_arg0.RewardsHeader:completeAnimation() --[[ @ 0]]
			f21_arg0.RewardsHeader:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.RewardsHeader ) --[[ @ 0]]
			f21_arg0.RewardQuantityText:completeAnimation() --[[ @ 0]]
			f21_arg0.RewardQuantityText:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.RewardQuantityText ) --[[ @ 0]]
			f21_arg0.CompleteText:completeAnimation() --[[ @ 0]]
			f21_arg0.CompleteText:setTopBottom( 0.5, 0.5, -17, 7 ) --[[ @ 0]]
			f21_arg0.CompleteText:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.CompleteText ) --[[ @ 0]]
			f21_arg0.BarracksTimeDisplayText:completeAnimation() --[[ @ 0]]
			f21_arg0.BarracksTimeDisplayText:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.BarracksTimeDisplayText ) --[[ @ 0]]
		end
	},
	DailyLayoutSmall = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f22_arg0.SpecialSubtitleText:completeAnimation() --[[ @ 0]]
			f22_arg0.SpecialSubtitleText:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.SpecialSubtitleText ) --[[ @ 0]]
			f22_arg0.TimerText:completeAnimation() --[[ @ 0]]
			f22_arg0.TimerText:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.TimerText ) --[[ @ 0]]
			f22_arg0.StepText:completeAnimation() --[[ @ 0]]
			f22_arg0.StepText:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.StepText ) --[[ @ 0]]
			f22_arg0.TaskInfo:completeAnimation() --[[ @ 0]]
			f22_arg0.TaskInfo:setTopBottom( 0, 0, 37, 137 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.TaskInfo ) --[[ @ 0]]
			f22_arg0.RewardsHeader:completeAnimation() --[[ @ 0]]
			f22_arg0.RewardsHeader:setTopBottom( 0, 0, 141.5, 157.5 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.RewardsHeader ) --[[ @ 0]]
			f22_arg0.RewardQuantityText:completeAnimation() --[[ @ 0]]
			f22_arg0.RewardQuantityText:setTopBottom( 0, 0, 161.5, 261.5 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.RewardQuantityText ) --[[ @ 0]]
			f22_arg0.BarracksTimeDisplayText:completeAnimation() --[[ @ 0]]
			f22_arg0.BarracksTimeDisplayText:setTopBottom( 0, 0, 17, 32 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.BarracksTimeDisplayText ) --[[ @ 0]]
		end
	},
	DailyLayout = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f23_arg0.SpecialSubtitleText:completeAnimation() --[[ @ 0]]
			f23_arg0.SpecialSubtitleText:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.SpecialSubtitleText ) --[[ @ 0]]
			f23_arg0.TimerText:completeAnimation() --[[ @ 0]]
			f23_arg0.TimerText:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.TimerText ) --[[ @ 0]]
			f23_arg0.StepText:completeAnimation() --[[ @ 0]]
			f23_arg0.StepText:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.StepText ) --[[ @ 0]]
			f23_arg0.TaskInfo:completeAnimation() --[[ @ 0]]
			f23_arg0.TaskInfo:setTopBottom( 0, 0, 79, 179 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.TaskInfo ) --[[ @ 0]]
		end
	},
	CompleteLayout = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			f24_arg0.HeaderText:completeAnimation() --[[ @ 0]]
			f24_arg0.HeaderText:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.HeaderText ) --[[ @ 0]]
			f24_arg0.SpecialSubtitleText:completeAnimation() --[[ @ 0]]
			f24_arg0.SpecialSubtitleText:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.SpecialSubtitleText ) --[[ @ 0]]
			f24_arg0.TimerText:completeAnimation() --[[ @ 0]]
			f24_arg0.TimerText:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.TimerText ) --[[ @ 0]]
			f24_arg0.StepText:completeAnimation() --[[ @ 0]]
			f24_arg0.StepText:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.StepText ) --[[ @ 0]]
			f24_arg0.TaskInfo:completeAnimation() --[[ @ 0]]
			f24_arg0.TaskInfo:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.TaskInfo ) --[[ @ 0]]
			f24_arg0.RewardsHeader:completeAnimation() --[[ @ 0]]
			f24_arg0.RewardsHeader:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.RewardsHeader ) --[[ @ 0]]
			f24_arg0.RewardQuantityText:completeAnimation() --[[ @ 0]]
			f24_arg0.RewardQuantityText:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.RewardQuantityText ) --[[ @ 0]]
			f24_arg0.CompleteText:completeAnimation() --[[ @ 0]]
			f24_arg0.CompleteText:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.CompleteText ) --[[ @ 0]]
			f24_arg0.BarracksTimeDisplayText:completeAnimation() --[[ @ 0]]
			f24_arg0.BarracksTimeDisplayText:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.BarracksTimeDisplayText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.SpecialEventWidget.__onClose = function ( f25_arg0 )
	f25_arg0.HeaderText:close() --[[ @ 0]]
	f25_arg0.TimerText:close() --[[ @ 0]]
	f25_arg0.NextDailyTimerText:close() --[[ @ 0]]
	f25_arg0.StepText:close() --[[ @ 0]]
	f25_arg0.TaskInfo:close() --[[ @ 0]]
	f25_arg0.RewardQuantityText:close() --[[ @ 0]]
	f25_arg0.CompleteText:close() --[[ @ 0]]
	f25_arg0.SpecialEventPips:close() --[[ @ 0]]
	f25_arg0.BarracksTimeDisplayText:close() --[[ @ 0]]
end
 --[[ @ 0]]
