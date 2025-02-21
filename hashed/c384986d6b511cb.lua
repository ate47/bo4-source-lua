-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/hud/mp_scorestreakwidget/scrstk_combatefficiencybackglow" ) --[[ @ 0]]
require( "ui/uieditor/widgets/hud/mp_scorestreakwidget/scrstk_meter" ) --[[ @ 0]]
require( "x64:5be811794932364b" ) --[[ @ 0]]

CoD.ScrStk_Container = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScrStk_Container.__defaultWidth = 163 --[[ @ 0]]
CoD.ScrStk_Container.__defaultHeight = 262 --[[ @ 0]]
CoD.ScrStk_Container.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.ScorestreakSelectUtility.ScorestreakPreLoad( self, f1_arg1 ) --[[ @ 0]]
	self:setClass( CoD.ScrStk_Container ) --[[ @ 0]]
	self.id = "ScrStk_Container" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ScrStkCombatEfficiencyBackGlow0 = CoD.ScrStk_CombatEfficiencyBackGlow.new( f1_arg0, f1_arg1, 1, 1, -232.5, 85.5, 1, 1, -333, 37 ) --[[ @ 0]]
	ScrStkCombatEfficiencyBackGlow0:setAlpha( 0.53 ) --[[ @ 0]]
	ScrStkCombatEfficiencyBackGlow0:subscribeToGlobalModel( f1_arg1, "PlayerAbilities", "playerGadget2", function ( model )
		ScrStkCombatEfficiencyBackGlow0:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ScrStkCombatEfficiencyBackGlow0 ) --[[ @ 0]]
	self.ScrStkCombatEfficiencyBackGlow0 = ScrStkCombatEfficiencyBackGlow0 --[[ @ 0]]
	
	local Blur = LUI.UIImage.new( 0, 0, 91.5, 155.5, 1, 1, -208, -31 ) --[[ @ 0]]
	Blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	Blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Blur ) --[[ @ 0]]
	self.Blur = Blur --[[ @ 0]]
	
	local PanelDark = LUI.UIImage.new( 0, 0, 94, 156, 1, 1, -205, -29 ) --[[ @ 0]]
	PanelDark:setRGB( 0.18, 0.17, 0.16 ) --[[ @ 0]]
	PanelDark:setAlpha( 0.94 ) --[[ @ 0]]
	self:addElement( PanelDark ) --[[ @ 0]]
	self.PanelDark = PanelDark --[[ @ 0]]
	
	local MeterBacker = LUI.UIImage.new( 0, 0, 142.5, 155.5, 0, 0, 58.5, 209.5 ) --[[ @ 0]]
	MeterBacker:setRGB( 0.07, 0.07, 0.07 ) --[[ @ 0]]
	self:addElement( MeterBacker ) --[[ @ 0]]
	self.MeterBacker = MeterBacker --[[ @ 0]]
	
	local Frame = LUI.UIImage.new( 0, 0, 77, 169, 1, 1, -221.5, -21.5 ) --[[ @ 0]]
	Frame:setImage( RegisterImage( @"uie_ui_hud_core_frame_streaks_widget" ) ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	local LED = LUI.UIImage.new( 0, 0, 77, 169, 1, 1, -221.5, -21.5 ) --[[ @ 0]]
	LED:setRGB( 0, 0, 0 ) --[[ @ 0]]
	LED:setAlpha( 0.2 ) --[[ @ 0]]
	LED:setImage( RegisterImage( @"uie_ui_hud_core_streak_widget_led" ) ) --[[ @ 0]]
	self:addElement( LED ) --[[ @ 0]]
	self.LED = LED --[[ @ 0]]
	
	local ScrStkMeter1 = CoD.ScrStk_Meter.new( f1_arg0, f1_arg1, 1, 1, -67.5, 7.5, 1, 1, -249, -54 ) --[[ @ 0]]
	ScrStkMeter1:subscribeToGlobalModel( f1_arg1, "PlayerAbilities", "playerGadget2", function ( model )
		ScrStkMeter1:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ScrStkMeter1 ) --[[ @ 0]]
	self.ScrStkMeter1 = ScrStkMeter1 --[[ @ 0]]
	
	local ScrStkButtons = LUI.UIList.new( f1_arg0, f1_arg1, 6, 0, nil, false, false, false, false ) --[[ @ 0]]
	ScrStkButtons:setLeftRight( 1, 1, -64, -24 ) --[[ @ 0]]
	ScrStkButtons:setTopBottom( 1, 1, -243, -61 ) --[[ @ 0]]
	ScrStkButtons:setWidgetType( CoD.Support_Button ) --[[ @ 0]]
	ScrStkButtons:setVerticalCount( 4 ) --[[ @ 0]]
	ScrStkButtons:setSpacing( 6 ) --[[ @ 0]]
	ScrStkButtons:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ScrStkButtons:setDataSource( "KillstreakRewardsList" ) --[[ @ 0]]
	ScrStkButtons:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		CoD.ScorestreakInGameUtility.SetScorestreakSelectedSlot( element, f1_arg1 ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	self:addElement( ScrStkButtons ) --[[ @ 0]]
	self.ScrStkButtons = ScrStkButtons --[[ @ 0]]
	
	local Rule = LUI.UIImage.new( 0, 0, 98, 138, 1, 1, -202.5, -193.5 ) --[[ @ 0]]
	Rule:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
	Rule:setAlpha( 0.08 ) --[[ @ 0]]
	Rule:setImage( RegisterImage( @"uie_ui_hud_core_streak_widget_rule_thin" ) ) --[[ @ 0]]
	self:addElement( Rule ) --[[ @ 0]]
	self.Rule = Rule --[[ @ 0]]
	
	local Rule2 = LUI.UIImage.new( 0, 0, 98, 138, 1, 1, -61, -53 ) --[[ @ 0]]
	Rule2:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
	Rule2:setAlpha( 0.08 ) --[[ @ 0]]
	Rule2:setImage( RegisterImage( @"uie_ui_hud_core_streak_widget_rule_thin" ) ) --[[ @ 0]]
	self:addElement( Rule2 ) --[[ @ 0]]
	self.Rule2 = Rule2 --[[ @ 0]]
	
	local Rule3 = LUI.UIImage.new( 0, 0, 98, 138, 1, 1, -108, -100 ) --[[ @ 0]]
	Rule3:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
	Rule3:setAlpha( 0.08 ) --[[ @ 0]]
	Rule3:setImage( RegisterImage( @"uie_ui_hud_core_streak_widget_rule_thin" ) ) --[[ @ 0]]
	self:addElement( Rule3 ) --[[ @ 0]]
	self.Rule3 = Rule3 --[[ @ 0]]
	
	local Rule4 = LUI.UIImage.new( 0, 0, 98, 138, 1, 1, -154.5, -146.5 ) --[[ @ 0]]
	Rule4:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
	Rule4:setAlpha( 0.08 ) --[[ @ 0]]
	Rule4:setImage( RegisterImage( @"uie_ui_hud_core_streak_widget_rule_thin" ) ) --[[ @ 0]]
	self:addElement( Rule4 ) --[[ @ 0]]
	self.Rule4 = Rule4 --[[ @ 0]]
	
	local triangle2 = LUI.UIImage.new( 0, 0, 140, 144, 0, 0, 205.5, 209.5 ) --[[ @ 0]]
	triangle2:setRGB( 0.07, 0.07, 0.07 ) --[[ @ 0]]
	triangle2:setZRot( 90 ) --[[ @ 0]]
	triangle2:setImage( RegisterImage( @"uie_ui_icon_corner_triangle" ) ) --[[ @ 0]]
	self:addElement( triangle2 ) --[[ @ 0]]
	self.triangle2 = triangle2 --[[ @ 0]]
	
	local triangle = LUI.UIImage.new( 0, 0, 139, 143, 0, 0, 60.5, 64.5 ) --[[ @ 0]]
	triangle:setRGB( 0.07, 0.07, 0.07 ) --[[ @ 0]]
	triangle:setZRot( 180 ) --[[ @ 0]]
	triangle:setImage( RegisterImage( @"uie_ui_icon_corner_triangle" ) ) --[[ @ 0]]
	self:addElement( triangle ) --[[ @ 0]]
	self.triangle = triangle --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HudStart",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	ScrStkButtons.id = "ScrStkButtons" --[[ @ 0]]
	self.__defaultFocus = ScrStkButtons --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local15 = self --[[ @ 0]]
	if not IsDemoPlaying() then
		CoD.HUDUtility.AddCustomGainFocusWidget( self, self.ScrStkButtons ) --[[ @ 0]]
	end
	f1_local15 = ScrStkButtons --[[ @ 0]]
	CoD.FreeCursorUtility.SetListFocusIgnoresFreeCursor( f1_local15, f1_arg1 ) --[[ @ 0]]
	CoD.ScorestreakInGameUtility.AddScorestreakListNavigation( f1_arg0, f1_local15, f1_arg1 ) --[[ @ 0]]
	CoD.ScorestreakInGameUtility.InitScorestreakUpdateListener( f1_local15, f1_arg1, "Usable" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ScrStk_Container.__resetProperties = function ( f6_arg0 )
	f6_arg0.ScrStkMeter1:completeAnimation() --[[ @ 0]]
	f6_arg0.ScrStkButtons:completeAnimation() --[[ @ 0]]
	f6_arg0.ScrStkCombatEfficiencyBackGlow0:completeAnimation() --[[ @ 0]]
	f6_arg0.ScrStkMeter1:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.ScrStkButtons:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.ScrStkCombatEfficiencyBackGlow0:setAlpha( 0.53 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ScrStk_Container.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f7_arg0.ScrStkCombatEfficiencyBackGlow0:completeAnimation() --[[ @ 0]]
			f7_arg0.ScrStkCombatEfficiencyBackGlow0:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.ScrStkCombatEfficiencyBackGlow0 ) --[[ @ 0]]
			f7_arg0.ScrStkMeter1:completeAnimation() --[[ @ 0]]
			f7_arg0.ScrStkMeter1:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.ScrStkMeter1 ) --[[ @ 0]]
			f7_arg0.ScrStkButtons:completeAnimation() --[[ @ 0]]
			f7_arg0.ScrStkButtons:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.ScrStkButtons ) --[[ @ 0]]
		end,
		HudStart = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.ScrStkCombatEfficiencyBackGlow0:beginAnimation( 60 ) --[[ @ 0]]
				f8_arg0.ScrStkCombatEfficiencyBackGlow0:setAlpha( 0.53 ) --[[ @ 0]]
				f8_arg0.ScrStkCombatEfficiencyBackGlow0:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.ScrStkCombatEfficiencyBackGlow0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.ScrStkCombatEfficiencyBackGlow0:completeAnimation() --[[ @ 0]]
			f8_arg0.ScrStkCombatEfficiencyBackGlow0:setAlpha( 0 ) --[[ @ 0]]
			f8_local0( f8_arg0.ScrStkCombatEfficiencyBackGlow0 ) --[[ @ 0]]
			local f8_local1 = function ( f10_arg0 )
				f8_arg0.ScrStkMeter1:beginAnimation( 150, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
				f8_arg0.ScrStkMeter1:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.ScrStkMeter1:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.ScrStkMeter1:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.ScrStkMeter1:completeAnimation() --[[ @ 0]]
			f8_arg0.ScrStkMeter1:setAlpha( 0 ) --[[ @ 0]]
			f8_local1( f8_arg0.ScrStkMeter1 ) --[[ @ 0]]
			local f8_local2 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					f12_arg0:beginAnimation( 149, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
					f12_arg0:setAlpha( 1 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.ScrStkButtons:beginAnimation( 110 ) --[[ @ 0]]
				f8_arg0.ScrStkButtons:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.ScrStkButtons:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.ScrStkButtons:completeAnimation() --[[ @ 0]]
			f8_arg0.ScrStkButtons:setAlpha( 0 ) --[[ @ 0]]
			f8_local2( f8_arg0.ScrStkButtons ) --[[ @ 0]]
		end
	},
	HudStart = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		HudStop = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				f14_arg0.ScrStkCombatEfficiencyBackGlow0:beginAnimation( 240 ) --[[ @ 0]]
				f14_arg0.ScrStkCombatEfficiencyBackGlow0:setAlpha( 0 ) --[[ @ 0]]
				f14_arg0.ScrStkCombatEfficiencyBackGlow0:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.ScrStkCombatEfficiencyBackGlow0:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.ScrStkCombatEfficiencyBackGlow0:completeAnimation() --[[ @ 0]]
			f14_arg0.ScrStkCombatEfficiencyBackGlow0:setAlpha( 0.53 ) --[[ @ 0]]
			f14_local0( f14_arg0.ScrStkCombatEfficiencyBackGlow0 ) --[[ @ 0]]
			local f14_local1 = function ( f16_arg0 )
				f14_arg0.ScrStkMeter1:beginAnimation( 130, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
				f14_arg0.ScrStkMeter1:setAlpha( 0 ) --[[ @ 0]]
				f14_arg0.ScrStkMeter1:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.ScrStkMeter1:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.ScrStkMeter1:completeAnimation() --[[ @ 0]]
			f14_arg0.ScrStkMeter1:setAlpha( 1 ) --[[ @ 0]]
			f14_local1( f14_arg0.ScrStkMeter1 ) --[[ @ 0]]
			local f14_local2 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					f18_arg0:beginAnimation( 130, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
					f18_arg0:setAlpha( 0 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f14_arg0.ScrStkButtons:beginAnimation( 70 ) --[[ @ 0]]
				f14_arg0.ScrStkButtons:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.ScrStkButtons:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.ScrStkButtons:completeAnimation() --[[ @ 0]]
			f14_arg0.ScrStkButtons:setAlpha( 1 ) --[[ @ 0]]
			f14_local2( f14_arg0.ScrStkButtons ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ScrStk_Container.__onClose = function ( f19_arg0 )
	f19_arg0.ScrStkCombatEfficiencyBackGlow0:close() --[[ @ 0]]
	f19_arg0.ScrStkMeter1:close() --[[ @ 0]]
	f19_arg0.ScrStkButtons:close() --[[ @ 0]]
end
 --[[ @ 0]]
