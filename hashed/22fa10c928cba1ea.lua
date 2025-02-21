-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:5de488f119cdd59" ) --[[ @ 0]]

CoD.CodCasterObjectiveStatusDomination = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterObjectiveStatusDomination.__defaultWidth = 412 --[[ @ 0]]
CoD.CodCasterObjectiveStatusDomination.__defaultHeight = 64 --[[ @ 0]]
CoD.CodCasterObjectiveStatusDomination.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterObjectiveStatusDomination ) --[[ @ 0]]
	self.id = "CodCasterObjectiveStatusDomination" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CodCasterObjectiveStatusDominationSiteB = CoD.CodCasterObjectiveStatusDominationSite.new( f1_arg0, f1_arg1, 0.5, 0.5, -30, 30, 0.5, 0.5, -29.5, 30.5 ) --[[ @ 0]]
	CodCasterObjectiveStatusDominationSiteB.siteLetter:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_letter_b_02" ) ) --[[ @ 0]]
	CodCasterObjectiveStatusDominationSiteB:subscribeToGlobalModel( f1_arg1, "HUDItems", "codcaster.ObjectiveB.color", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CodCasterObjectiveStatusDominationSiteB.siteLetter:setRGB( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CodCasterObjectiveStatusDominationSiteB:subscribeToGlobalModel( f1_arg1, "HUDItems", "codcaster.ObjectiveB.color", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			CodCasterObjectiveStatusDominationSiteB.siteBackground2:setRGB( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CodCasterObjectiveStatusDominationSiteB ) --[[ @ 0]]
	self.CodCasterObjectiveStatusDominationSiteB = CodCasterObjectiveStatusDominationSiteB --[[ @ 0]]
	
	local CodCasterObjectiveStatusDominationSiteC = CoD.CodCasterObjectiveStatusDominationSite.new( f1_arg0, f1_arg1, 0.6, 0.6, -35, 25, 0.5, 0.5, -29.5, 30.5 ) --[[ @ 0]]
	CodCasterObjectiveStatusDominationSiteC.siteLetter:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_letter_c_02" ) ) --[[ @ 0]]
	CodCasterObjectiveStatusDominationSiteC:subscribeToGlobalModel( f1_arg1, "HUDItems", "codcaster.ObjectiveC.color", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			CodCasterObjectiveStatusDominationSiteC.siteLetter:setRGB( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CodCasterObjectiveStatusDominationSiteC:subscribeToGlobalModel( f1_arg1, "HUDItems", "codcaster.ObjectiveC.color", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			CodCasterObjectiveStatusDominationSiteC.siteBackground2:setRGB( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CodCasterObjectiveStatusDominationSiteC ) --[[ @ 0]]
	self.CodCasterObjectiveStatusDominationSiteC = CodCasterObjectiveStatusDominationSiteC --[[ @ 0]]
	
	local CodCasterObjectiveStatusDominationSiteA = CoD.CodCasterObjectiveStatusDominationSite.new( f1_arg0, f1_arg1, 0.4, 0.4, -25, 35, 0.5, 0.5, -29.5, 30.5 ) --[[ @ 0]]
	CodCasterObjectiveStatusDominationSiteA:subscribeToGlobalModel( f1_arg1, "HUDItems", "codcaster.ObjectiveA.color", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			CodCasterObjectiveStatusDominationSiteA.siteLetter:setRGB( f6_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CodCasterObjectiveStatusDominationSiteA:subscribeToGlobalModel( f1_arg1, "HUDItems", "codcaster.ObjectiveA.color", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			CodCasterObjectiveStatusDominationSiteA.siteBackground2:setRGB( f7_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CodCasterObjectiveStatusDominationSiteA ) --[[ @ 0]]
	self.CodCasterObjectiveStatusDominationSiteA = CodCasterObjectiveStatusDominationSiteA --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CodCasterObjectiveStatusDomination.__resetProperties = function ( f8_arg0 )
	f8_arg0.CodCasterObjectiveStatusDominationSiteA:completeAnimation() --[[ @ 0]]
	f8_arg0.CodCasterObjectiveStatusDominationSiteC:completeAnimation() --[[ @ 0]]
	f8_arg0.CodCasterObjectiveStatusDominationSiteB:completeAnimation() --[[ @ 0]]
	f8_arg0.CodCasterObjectiveStatusDominationSiteA:setLeftRight( 0.4, 0.4, -25, 35 ) --[[ @ 0]]
	f8_arg0.CodCasterObjectiveStatusDominationSiteA:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.CodCasterObjectiveStatusDominationSiteC:setLeftRight( 0.6, 0.6, -35, 25 ) --[[ @ 0]]
	f8_arg0.CodCasterObjectiveStatusDominationSiteC:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.CodCasterObjectiveStatusDominationSiteB:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCasterObjectiveStatusDomination.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.CodCasterObjectiveStatusDominationSiteC:completeAnimation() --[[ @ 0]]
			f9_arg0.CodCasterObjectiveStatusDominationSiteC:setLeftRight( 0.6, 0.6, -38, 22 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.CodCasterObjectiveStatusDominationSiteC ) --[[ @ 0]]
			f9_arg0.CodCasterObjectiveStatusDominationSiteA:completeAnimation() --[[ @ 0]]
			f9_arg0.CodCasterObjectiveStatusDominationSiteA:setLeftRight( 0.4, 0.4, -22, 38 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.CodCasterObjectiveStatusDominationSiteA ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f10_arg0.CodCasterObjectiveStatusDominationSiteB:completeAnimation() --[[ @ 0]]
			f10_arg0.CodCasterObjectiveStatusDominationSiteB:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.CodCasterObjectiveStatusDominationSiteB ) --[[ @ 0]]
			f10_arg0.CodCasterObjectiveStatusDominationSiteC:completeAnimation() --[[ @ 0]]
			f10_arg0.CodCasterObjectiveStatusDominationSiteC:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.CodCasterObjectiveStatusDominationSiteC ) --[[ @ 0]]
			f10_arg0.CodCasterObjectiveStatusDominationSiteA:completeAnimation() --[[ @ 0]]
			f10_arg0.CodCasterObjectiveStatusDominationSiteA:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.CodCasterObjectiveStatusDominationSiteA ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CodCasterObjectiveStatusDomination.__onClose = function ( f11_arg0 )
	f11_arg0.CodCasterObjectiveStatusDominationSiteB:close() --[[ @ 0]]
	f11_arg0.CodCasterObjectiveStatusDominationSiteC:close() --[[ @ 0]]
	f11_arg0.CodCasterObjectiveStatusDominationSiteA:close() --[[ @ 0]]
end
 --[[ @ 0]]
