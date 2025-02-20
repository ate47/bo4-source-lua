-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "ui/uieditor/menus/challenges/challenges" ) --[[ @ 0]]
require( "x64:2715c17feb5d981e" ) --[[ @ 0]]
require( "x64:5f2b682f28d27631" ) --[[ @ 0]]
require( "x64:34f2b91f8688c47b" ) --[[ @ 0]]

CoD.ChallengesSummaryCategoryList_WZ = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ChallengesSummaryCategoryList_WZ.__defaultWidth = 1175 --[[ @ 0]]
CoD.ChallengesSummaryCategoryList_WZ.__defaultHeight = 225 --[[ @ 0]]
CoD.ChallengesSummaryCategoryList_WZ.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 44, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.ChallengesSummaryCategoryList_WZ ) --[[ @ 0]]
	self.id = "ChallengesSummaryCategoryList_WZ" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Career = CoD.ChallengesSummaryCategory.new( f1_arg0, f1_arg1, 0, 0, 0, 363, 0.5, 0.5, -112.5, 112.5 ) --[[ @ 0]]
	Career.SummaryCategory.Icon:setImage( RegisterImage( @"ui_icon_challenges_wzcareer" ) ) --[[ @ 0]]
	Career.SummaryCategory.Name:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_51BEB13BCC1D1E4E" ) ) --[[ @ 0]]
	Career:subscribeToGlobalModel( f1_arg1, "ChallengesWZCategoryStats", "career", function ( model )
		Career:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Career:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( Career, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if not IsElementInState( element, "Disabled" ) then
			SetGlobalModelValue( "defaultChallengeTab", "career" ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			OpenOverlay( self, "Challenges", controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsElementInState( element, "Disabled" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( Career ) --[[ @ 0]]
	self.Career = Career --[[ @ 0]]
	
	local Operations = CoD.ChallengesSummaryCategory.new( f1_arg0, f1_arg1, 0, 0, 407, 770, 0.5, 0.5, -112.5, 112.5 ) --[[ @ 0]]
	Operations.SummaryCategory.Icon:setImage( RegisterImage( @"ui_icon_challenges_wzoperations" ) ) --[[ @ 0]]
	Operations.SummaryCategory.Name:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_12177A3C9161B05A" ) ) --[[ @ 0]]
	Operations:subscribeToGlobalModel( f1_arg1, "ChallengesWZCategoryStats", "operations", function ( model )
		Operations:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Operations:registerEventHandler( "gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f7_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f7_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( Operations, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if not IsElementInState( element, "Disabled" ) then
			SetGlobalModelValue( "defaultChallengeTab", "operations" ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			OpenOverlay( self, "Challenges", controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsElementInState( element, "Disabled" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( Operations ) --[[ @ 0]]
	self.Operations = Operations --[[ @ 0]]
	
	local DarkOps = CoD.ChallengesSummaryDarkOps.new( f1_arg0, f1_arg1, 0, 0, 814, 1177, 0.5, 0.5, -112.5, 112.5 ) --[[ @ 0]]
	DarkOps:mergeStateConditions( {
		{
			stateName = "Zombie",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	DarkOps.SummaryCategoryBlackOps.Icon:setImage( RegisterImage( @"ui_icon_challenges_wzdarkops" ) ) --[[ @ 0]]
	DarkOps:registerEventHandler( "gain_focus", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f11_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f11_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f11_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( DarkOps, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if not IsElementInState( element, "Disabled" ) then
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			OpenOverlay( self, "ChallengesDarkOps", controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsElementInState( element, "Disabled" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( DarkOps ) --[[ @ 0]]
	self.DarkOps = DarkOps --[[ @ 0]]
	
	Career.id = "Career" --[[ @ 0]]
	Operations.id = "Operations" --[[ @ 0]]
	DarkOps.id = "DarkOps" --[[ @ 0]]
	self.__defaultFocus = Career --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ChallengesSummaryCategoryList_WZ.__onClose = function ( f14_arg0 )
	f14_arg0.Career:close() --[[ @ 0]]
	f14_arg0.Operations:close() --[[ @ 0]]
	f14_arg0.DarkOps:close() --[[ @ 0]]
end
 --[[ @ 0]]
