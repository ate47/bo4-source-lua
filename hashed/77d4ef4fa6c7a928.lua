-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/menus/challenges/challenges_operations" ) --[[ @ 0]]
require( "ui/uieditor/widgets/challenges/challenges_category_title" ) --[[ @ 0]]
require( "x64:79fe6ac43673588" ) --[[ @ 0]]
require( "x64:283b9fa839e546ff" ) --[[ @ 0]]

CoD.Challenges_FrameWidget_Operations = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Challenges_FrameWidget_Operations.__defaultWidth = 1560 --[[ @ 0]]
CoD.Challenges_FrameWidget_Operations.__defaultHeight = 780 --[[ @ 0]]
CoD.Challenges_FrameWidget_Operations.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Challenges_FrameWidget_Operations ) --[[ @ 0]]
	self.id = "Challenges_FrameWidget_Operations" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local TitleBG = CoD.Challenges_FrameWidget_TitleBackground.new( f1_arg0, f1_arg1, 0, 0, 0, 525, 0.5, 0.5, -406, 406 ) --[[ @ 0]]
	self:addElement( TitleBG ) --[[ @ 0]]
	self.TitleBG = TitleBG --[[ @ 0]]
	
	local Title = CoD.Challenges_Category_Title.new( f1_arg0, f1_arg1, 0, 0, 112.5, 412.5, 0.5, 0.5, -300, 300 ) --[[ @ 0]]
	Title.ChallengesPercentCompleteWidgetLG.Name:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"challenge/operations" ) ) --[[ @ 0]]
	Title.ChallengesPercentCompleteWidgetLG.Icon:setImage( RegisterImage( @"ui_icon_challenges_mpoperations_large" ) ) --[[ @ 0]]
	Title:subscribeToGlobalModel( f1_arg1, "ChallengesMPCategoryStats", "operations", function ( model )
		Title:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local Bootcamp = CoD.ChallengesCategoryButton.new( f1_arg0, f1_arg1, 0, 0, 555, 1555, 0, 0, 0, 100 ) --[[ @ 0]]
	Bootcamp.ChallengesCategoryButtonInternal.Name:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_177600252B55C452" ) ) --[[ @ 0]]
	Bootcamp:subscribeToGlobalModel( f1_arg1, "ChallengesMPCategoryStats", "bootcamp", function ( model )
		Bootcamp:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Bootcamp:registerEventHandler( "gain_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f4_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f4_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( Bootcamp, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if not IsElementInState( element, "Disabled" ) then
			SetGlobalModelValue( "challengeCategory", "bootcamp" ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			OpenPopup( self, "Challenges_Operations", controller, nil ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsElementInState( element, "Disabled" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( Bootcamp ) --[[ @ 0]]
	self.Bootcamp = Bootcamp --[[ @ 0]]
	
	local Killer = CoD.ChallengesCategoryButton.new( f1_arg0, f1_arg1, 0, 0, 555, 1555, 0, 0, 115, 215 ) --[[ @ 0]]
	Killer.ChallengesCategoryButtonInternal.Name:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"challenge/killer" ) ) --[[ @ 0]]
	Killer:subscribeToGlobalModel( f1_arg1, "ChallengesMPCategoryStats", "killer", function ( model )
		Killer:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Killer:registerEventHandler( "gain_focus", function ( element, event )
		local f8_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f8_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f8_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f8_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( Killer, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if not IsElementInState( element, "Disabled" ) then
			SetGlobalModelValue( "challengeCategory", "killer" ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			OpenPopup( self, "Challenges_Operations", controller, nil ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsElementInState( element, "Disabled" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( Killer ) --[[ @ 0]]
	self.Killer = Killer --[[ @ 0]]
	
	local Humiliation = CoD.ChallengesCategoryButton.new( f1_arg0, f1_arg1, 0, 0, 555, 1555, 0, 0, 227, 327 ) --[[ @ 0]]
	Humiliation.ChallengesCategoryButtonInternal.Name:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6AB782700D73E766" ) ) --[[ @ 0]]
	Humiliation:subscribeToGlobalModel( f1_arg1, "ChallengesMPCategoryStats", "humiliation", function ( model )
		Humiliation:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Humiliation:registerEventHandler( "gain_focus", function ( element, event )
		local f12_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f12_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f12_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f12_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( Humiliation, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if not IsElementInState( element, "Disabled" ) then
			SetGlobalModelValue( "challengeCategory", "humiliation" ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			OpenPopup( self, "Challenges_Operations", controller, nil ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsElementInState( element, "Disabled" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( Humiliation ) --[[ @ 0]]
	self.Humiliation = Humiliation --[[ @ 0]]
	
	local Precision = CoD.ChallengesCategoryButton.new( f1_arg0, f1_arg1, 0, 0, 555, 1555, 0, 0, 340, 440 ) --[[ @ 0]]
	Precision:setAlpha( 0.8 ) --[[ @ 0]]
	Precision.ChallengesCategoryButtonInternal.Name:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_686884AAE31003E5" ) ) --[[ @ 0]]
	Precision:subscribeToGlobalModel( f1_arg1, "ChallengesMPCategoryStats", "precision", function ( model )
		Precision:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Precision:registerEventHandler( "gain_focus", function ( element, event )
		local f16_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f16_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f16_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f16_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( Precision, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if not IsElementInState( element, "Disabled" ) then
			SetGlobalModelValue( "challengeCategory", "precision" ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			OpenPopup( self, "Challenges_Operations", controller, nil ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsElementInState( element, "Disabled" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( Precision ) --[[ @ 0]]
	self.Precision = Precision --[[ @ 0]]
	
	local Killjoys = CoD.ChallengesCategoryButton.new( f1_arg0, f1_arg1, 0, 0, 555, 1555, 0, 0, 451, 551 ) --[[ @ 0]]
	Killjoys.ChallengesCategoryButtonInternal.Name:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3A9D0747734C1994" ) ) --[[ @ 0]]
	Killjoys:subscribeToGlobalModel( f1_arg1, "ChallengesMPCategoryStats", "killjoys", function ( model )
		Killjoys:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Killjoys:registerEventHandler( "gain_focus", function ( element, event )
		local f20_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f20_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f20_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f20_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( Killjoys, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if not IsElementInState( element, "Disabled" ) then
			SetGlobalModelValue( "challengeCategory", "killjoys" ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			OpenPopup( self, "Challenges_Operations", controller, nil ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsElementInState( element, "Disabled" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( Killjoys ) --[[ @ 0]]
	self.Killjoys = Killjoys --[[ @ 0]]
	
	Bootcamp.id = "Bootcamp" --[[ @ 0]]
	Killer.id = "Killer" --[[ @ 0]]
	Humiliation.id = "Humiliation" --[[ @ 0]]
	Precision.id = "Precision" --[[ @ 0]]
	Killjoys.id = "Killjoys" --[[ @ 0]]
	self.__defaultFocus = Bootcamp --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Challenges_FrameWidget_Operations.__onClose = function ( f23_arg0 )
	f23_arg0.TitleBG:close() --[[ @ 0]]
	f23_arg0.Title:close() --[[ @ 0]]
	f23_arg0.Bootcamp:close() --[[ @ 0]]
	f23_arg0.Killer:close() --[[ @ 0]]
	f23_arg0.Humiliation:close() --[[ @ 0]]
	f23_arg0.Precision:close() --[[ @ 0]]
	f23_arg0.Killjoys:close() --[[ @ 0]]
end
 --[[ @ 0]]
