-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:21e60cbe5188f2c2" ) --[[ @ 0]]
require( "x64:6a31173ca2293cf" ) --[[ @ 0]]
require( "x64:4d5c930d2fd55eb0" ) --[[ @ 0]]

CoD.MeritOverlayBoardWithMedals = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MeritOverlayBoardWithMedals.__defaultWidth = 540 --[[ @ 0]]
CoD.MeritOverlayBoardWithMedals.__defaultHeight = 628 --[[ @ 0]]
CoD.MeritOverlayBoardWithMedals.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MeritOverlayBoardWithMedals ) --[[ @ 0]]
	self.id = "MeritOverlayBoardWithMedals" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local MeritOverlayManualLayoutVerticalBG = CoD.MeritOverlayManualLayoutVerticalBG.new( f1_arg0, f1_arg1, 0.5, 0.5, -270, 270, 0.5, 0.5, -314, 314 ) --[[ @ 0]]
	MeritOverlayManualLayoutVerticalBG:linkToElementModel( self, nil, false, function ( model )
		MeritOverlayManualLayoutVerticalBG:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( MeritOverlayManualLayoutVerticalBG ) --[[ @ 0]]
	self.MeritOverlayManualLayoutVerticalBG = MeritOverlayManualLayoutVerticalBG --[[ @ 0]]
	
	local MeritOverlayManualLayoutVertical = CoD.MeritOverlayManualLayoutVertical.new( f1_arg0, f1_arg1, 0.5, 0.5, -180, 180, 0.5, 0.5, -187, 71 ) --[[ @ 0]]
	MeritOverlayManualLayoutVertical:mergeStateConditions( {
		{
			stateName = "FiveEntriesNoIntro",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "numInGameEntries", 4 ) and CoD.BaseUtility.IsSelfInState( self, "NoIntro" )
			end
		},
		{
			stateName = "FiveEntries",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "numInGameEntries", 4 ) and not CoD.BaseUtility.IsSelfInState( self, "NoIntro" )
			end
		},
		{
			stateName = "FourEntriesNoIntro",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "numInGameEntries", 3 ) and CoD.BaseUtility.IsSelfInState( self, "NoIntro" )
			end
		},
		{
			stateName = "FourEntries",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "numInGameEntries", 3 ) and not CoD.BaseUtility.IsSelfInState( self, "NoIntro" )
			end
		},
		{
			stateName = "ThreeEntriesNoIntro",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "numInGameEntries", 2 ) and CoD.BaseUtility.IsSelfInState( self, "NoIntro" )
			end
		},
		{
			stateName = "ThreeEntries",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "numInGameEntries", 2 ) and not CoD.BaseUtility.IsSelfInState( self, "NoIntro" )
			end
		},
		{
			stateName = "TwoEntriesNoIntro",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "numInGameEntries", 1 ) and CoD.BaseUtility.IsSelfInState( self, "NoIntro" )
			end
		},
		{
			stateName = "TwoEntries",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "numInGameEntries", 1 ) and not CoD.BaseUtility.IsSelfInState( self, "NoIntro" )
			end
		},
		{
			stateName = "OneEntryNoIntro",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "numInGameEntries", 0 ) and CoD.BaseUtility.IsSelfInState( self, "NoIntro" )
			end
		},
		{
			stateName = "OneEntry",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "numInGameEntries", 0 ) and not CoD.BaseUtility.IsSelfInState( self, "NoIntro" )
			end
		}
	} ) --[[ @ 0]]
	MeritOverlayManualLayoutVertical:linkToElementModel( MeritOverlayManualLayoutVertical, "numInGameEntries", true, function ( model )
		f1_arg0:updateElementState( MeritOverlayManualLayoutVertical, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "numInGameEntries"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	MeritOverlayManualLayoutVertical:linkToElementModel( self, nil, false, function ( model )
		MeritOverlayManualLayoutVertical:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( MeritOverlayManualLayoutVertical ) --[[ @ 0]]
	self.MeritOverlayManualLayoutVertical = MeritOverlayManualLayoutVertical --[[ @ 0]]
	
	local AAREchelon = CoD.AAREchelon.new( f1_arg0, f1_arg1, 0, 0, 70, 470, 0, 0, 77, 477 ) --[[ @ 0]]
	AAREchelon.NoiseTiledBacking:setAlpha( 1 ) --[[ @ 0]]
	AAREchelon:linkToElementModel( self, nil, false, function ( model )
		AAREchelon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( AAREchelon ) --[[ @ 0]]
	self.AAREchelon = AAREchelon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoIntro",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f17_arg2, f17_arg3, f17_arg4 )
		UpdateElementState( self, "MeritOverlayManualLayoutVertical", controller ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MeritOverlayBoardWithMedals.__onClose = function ( f18_arg0 )
	f18_arg0.MeritOverlayManualLayoutVerticalBG:close() --[[ @ 0]]
	f18_arg0.MeritOverlayManualLayoutVertical:close() --[[ @ 0]]
	f18_arg0.AAREchelon:close() --[[ @ 0]]
end
 --[[ @ 0]]
