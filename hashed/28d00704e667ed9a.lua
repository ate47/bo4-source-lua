-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:588c6f65f2dd32da" ) --[[ @ 0]]

CoD.DirectorGauntletMapSelectItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorGauntletMapSelectItem.__defaultWidth = 246 --[[ @ 0]]
CoD.DirectorGauntletMapSelectItem.__defaultHeight = 104 --[[ @ 0]]
CoD.DirectorGauntletMapSelectItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorGauntletMapSelectItem ) --[[ @ 0]]
	self.id = "DirectorGauntletMapSelectItem" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Button = CoD.DirectorZMMapSelectItemOffline_Internal.new( f1_arg0, f1_arg1, 0, 0, 0, 246, 0, 0, 0, 104 ) --[[ @ 0]]
	Button:mergeStateConditions( {
		{
			stateName = "Selected",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualToSelfModelValue( element, "MapVote.mapVoteMapNext", "id" ) and CoD.ModelUtility.IsGlobalModelValueEqualToSelfModelValue( element, "localZMTrialVariant", "trialVariant" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = Button --[[ @ 0]]
	local f1_local3 = Button.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["MapVote.mapVoteMapNext"], function ( f3_arg0 )
		f1_arg0:updateElementState( Button, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "MapVote.mapVoteMapNext"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Button:linkToElementModel( Button, "id", true, function ( model )
		f1_arg0:updateElementState( Button, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "id"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local2 = Button --[[ @ 0]]
	f1_local3 = Button.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.localZMTrialVariant, function ( f5_arg0 )
		f1_arg0:updateElementState( Button, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "localZMTrialVariant"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Button:linkToElementModel( Button, "trialVariant", true, function ( model )
		f1_arg0:updateElementState( Button, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "trialVariant"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Button.FeaturedTag:setText( LocalizeToUpperString( @"menu/public_tab" ) ) --[[ @ 0]]
	Button:linkToElementModel( self, nil, false, function ( model )
		Button:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Button:linkToElementModel( self, "id", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			Button.MapImage:setImage( RegisterImage( MapNameToMapImage( f8_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Button.MapName.__MapName_String_Reference = function ( f9_arg0 )
		local f9_local0 = f9_arg0:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			Button.MapName:setText( Engine[@"hash_4F9F1239CFD921FE"]( CoD.ZombieUtility.GauntletMapNameToLocalizedMapDetailedName( f1_arg1, self:getModel(), f9_local0 ) ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	Button:linkToElementModel( self, "id", true, Button.MapName.__MapName_String_Reference ) --[[ @ 0]]
	Button.MapName.__MapName_String_Reference_FullPath = function ()
		local f10_local0 = self:getModel() --[[ @ 0]]
		if f10_local0 then
			f10_local0 = self:getModel() --[[ @ 0]]
			f10_local0 = f10_local0.id --[[ @ 0]]
		end
		if f10_local0 then
			Button.MapName.__MapName_String_Reference( f10_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	Button:linkToElementModel( self, "id", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			Button.TeamName:setText( Engine[@"hash_4F9F1239CFD921FE"]( CoD.MapUtility.GetMapTeamNameFromMapID( f11_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Button ) --[[ @ 0]]
	self.Button = Button --[[ @ 0]]
	
	Button:linkToElementModel( self, "trialVariant", true, Button.MapName.__MapName_String_Reference_FullPath ) --[[ @ 0]]
	Button.id = "Button" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorGauntletMapSelectItem.__resetProperties = function ( f12_arg0 )
	f12_arg0.Button:completeAnimation() --[[ @ 0]]
	f12_arg0.Button:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorGauntletMapSelectItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.Button:completeAnimation() --[[ @ 0]]
			f14_arg0.Button:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Button ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				f15_arg0.Button:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.Button:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f15_arg0.Button:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.Button:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.Button:completeAnimation() --[[ @ 0]]
			f15_arg0.Button:setScale( 1, 1 ) --[[ @ 0]]
			f15_local0( f15_arg0.Button ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				f17_arg0.Button:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.Button:setScale( 1, 1 ) --[[ @ 0]]
				f17_arg0.Button:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.Button:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.Button:completeAnimation() --[[ @ 0]]
			f17_arg0.Button:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f17_local0( f17_arg0.Button ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorGauntletMapSelectItem.__onClose = function ( f19_arg0 )
	f19_arg0.Button:close() --[[ @ 0]]
end
 --[[ @ 0]]
