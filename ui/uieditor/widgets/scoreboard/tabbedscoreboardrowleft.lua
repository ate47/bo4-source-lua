-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/onoffimage" ) --[[ @ 0]]
require( "x64:78f24caf62e0fdce" ) --[[ @ 0]]

CoD.TabbedScoreboardRowLeft = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TabbedScoreboardRowLeft.__defaultWidth = 684 --[[ @ 0]]
CoD.TabbedScoreboardRowLeft.__defaultHeight = 60 --[[ @ 0]]
CoD.TabbedScoreboardRowLeft.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TabbedScoreboardRowLeft ) --[[ @ 0]]
	self.id = "TabbedScoreboardRowLeft" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ScoreboardRowInternal = CoD.TabbedScoreboardRowInternal.new( f1_arg0, f1_arg1, 0, 0, -36, 688, 0, 0, -4, 64 ) --[[ @ 0]]
	ScoreboardRowInternal:linkToElementModel( self, nil, false, function ( model )
		ScoreboardRowInternal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ScoreboardRowInternal:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	self:addElement( ScoreboardRowInternal ) --[[ @ 0]]
	self.ScoreboardRowInternal = ScoreboardRowInternal --[[ @ 0]]
	
	local deadSkull = CoD.onOffImage.new( f1_arg0, f1_arg1, 0, 0, 390, 422, 0, 0, 14, 46 ) --[[ @ 0]]
	deadSkull:mergeStateConditions( {
		{
			stateName = "On",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "dead" )
			end
		}
	} ) --[[ @ 0]]
	deadSkull:linkToElementModel( deadSkull, "dead", true, function ( model )
		f1_arg0:updateElementState( deadSkull, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "dead"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	deadSkull.image:setImage( RegisterImage( @"hash_2B73FD6B1D4A1BAF" ) ) --[[ @ 0]]
	deadSkull:subscribeToGlobalModel( f1_arg1, "HUDItems", "colorBlindSensitiveFriendlyColor", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			deadSkull:setRGB( f6_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	deadSkull:linkToElementModel( self, nil, false, function ( model )
		deadSkull:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( deadSkull ) --[[ @ 0]]
	self.deadSkull = deadSkull --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "xuid", LuaDefine.INVALID_XUID_X64 ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isBot" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "xuid", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "xuid"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "isBot", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isBot"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ScoreboardRowInternal.id = "ScoreboardRowInternal" --[[ @ 0]]
	self.__defaultFocus = ScoreboardRowInternal --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local3 = self --[[ @ 0]]
	f1_local3 = ScoreboardRowInternal --[[ @ 0]]
	if IsPC() then
		CoD.PCWidgetUtility.SetupRightClickableContextualPlayerMenuScoreboard( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.TabbedScoreboardRowLeft.__resetProperties = function ( f11_arg0 )
	f11_arg0.deadSkull:completeAnimation() --[[ @ 0]]
	f11_arg0.ScoreboardRowInternal:completeAnimation() --[[ @ 0]]
	f11_arg0.deadSkull:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.ScoreboardRowInternal:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TabbedScoreboardRowLeft.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f13_arg0.ScoreboardRowInternal:completeAnimation() --[[ @ 0]]
			f13_arg0.ScoreboardRowInternal:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ScoreboardRowInternal ) --[[ @ 0]]
			f13_arg0.deadSkull:completeAnimation() --[[ @ 0]]
			f13_arg0.deadSkull:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.deadSkull ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.TabbedScoreboardRowLeft.__onClose = function ( f14_arg0 )
	f14_arg0.ScoreboardRowInternal:close() --[[ @ 0]]
	f14_arg0.deadSkull:close() --[[ @ 0]]
end
 --[[ @ 0]]
