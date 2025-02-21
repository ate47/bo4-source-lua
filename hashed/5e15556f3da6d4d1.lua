-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:279a33fa130e04bc" ) --[[ @ 0]]

CoD.CodCasterObjectiveStatusCTF = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterObjectiveStatusCTF.__defaultWidth = 412 --[[ @ 0]]
CoD.CodCasterObjectiveStatusCTF.__defaultHeight = 64 --[[ @ 0]]
CoD.CodCasterObjectiveStatusCTF.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterObjectiveStatusCTF ) --[[ @ 0]]
	self.id = "CodCasterObjectiveStatusCTF" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CodCasterObjectiveStatusFlagA = CoD.CodCasterObjectiveStatusFlag.new( f1_arg0, f1_arg1, 0.05, 0.05, -32, 32, 0.85, 0.85, -32, 32 ) --[[ @ 0]]
	CodCasterObjectiveStatusFlagA:setScale( 0.85, 0.85 ) --[[ @ 0]]
	CodCasterObjectiveStatusFlagA:subscribeToGlobalModel( f1_arg1, "HUDItems", "codcaster.ObjectiveA.color", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CodCasterObjectiveStatusFlagA.FlagIcon:setRGB( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CodCasterObjectiveStatusFlagA ) --[[ @ 0]]
	self.CodCasterObjectiveStatusFlagA = CodCasterObjectiveStatusFlagA --[[ @ 0]]
	
	local CodCasterObjectiveStatusFlagB = CoD.CodCasterObjectiveStatusFlag.new( f1_arg0, f1_arg1, 0.94, 0.94, -32, 32, 0.85, 0.85, -32, 32 ) --[[ @ 0]]
	CodCasterObjectiveStatusFlagB:setScale( 0.85, 0.85 ) --[[ @ 0]]
	CodCasterObjectiveStatusFlagB:subscribeToGlobalModel( f1_arg1, "HUDItems", "codcaster.ObjectiveB.color", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			CodCasterObjectiveStatusFlagB.FlagIcon:setRGB( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CodCasterObjectiveStatusFlagB ) --[[ @ 0]]
	self.CodCasterObjectiveStatusFlagB = CodCasterObjectiveStatusFlagB --[[ @ 0]]
	
	local flagStatusA = LUI.UIText.new( 0.08, 0.08, 0, 200, 0.87, 0.87, -7.5, 7.5 ) --[[ @ 0]]
	flagStatusA:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	flagStatusA:setLetterSpacing( 2 ) --[[ @ 0]]
	flagStatusA:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	flagStatusA:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	flagStatusA:subscribeToGlobalModel( f1_arg1, "HUDItems", "codcaster.ObjectiveA.text", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			flagStatusA:setText( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( flagStatusA ) --[[ @ 0]]
	self.flagStatusA = flagStatusA --[[ @ 0]]
	
	local flagStatusB = LUI.UIText.new( 0.92, 0.92, -200, 0, 0.87, 0.87, -7.5, 7.5 ) --[[ @ 0]]
	flagStatusB:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	flagStatusB:setLetterSpacing( 2 ) --[[ @ 0]]
	flagStatusB:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	flagStatusB:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	flagStatusB:subscribeToGlobalModel( f1_arg1, "HUDItems", "codcaster.ObjectiveB.text", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			flagStatusB:setText( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( flagStatusB ) --[[ @ 0]]
	self.flagStatusB = flagStatusB --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CodCasterObjectiveStatusCTF.__resetProperties = function ( f6_arg0 )
	f6_arg0.flagStatusA:completeAnimation() --[[ @ 0]]
	f6_arg0.CodCasterObjectiveStatusFlagB:completeAnimation() --[[ @ 0]]
	f6_arg0.CodCasterObjectiveStatusFlagA:completeAnimation() --[[ @ 0]]
	f6_arg0.flagStatusB:completeAnimation() --[[ @ 0]]
	f6_arg0.flagStatusA:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.CodCasterObjectiveStatusFlagB:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.CodCasterObjectiveStatusFlagA:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.flagStatusB:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCasterObjectiveStatusCTF.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f8_arg0.CodCasterObjectiveStatusFlagA:completeAnimation() --[[ @ 0]]
			f8_arg0.CodCasterObjectiveStatusFlagA:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.CodCasterObjectiveStatusFlagA ) --[[ @ 0]]
			f8_arg0.CodCasterObjectiveStatusFlagB:completeAnimation() --[[ @ 0]]
			f8_arg0.CodCasterObjectiveStatusFlagB:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.CodCasterObjectiveStatusFlagB ) --[[ @ 0]]
			f8_arg0.flagStatusA:completeAnimation() --[[ @ 0]]
			f8_arg0.flagStatusA:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.flagStatusA ) --[[ @ 0]]
			f8_arg0.flagStatusB:completeAnimation() --[[ @ 0]]
			f8_arg0.flagStatusB:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.flagStatusB ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CodCasterObjectiveStatusCTF.__onClose = function ( f9_arg0 )
	f9_arg0.CodCasterObjectiveStatusFlagA:close() --[[ @ 0]]
	f9_arg0.CodCasterObjectiveStatusFlagB:close() --[[ @ 0]]
	f9_arg0.flagStatusA:close() --[[ @ 0]]
	f9_arg0.flagStatusB:close() --[[ @ 0]]
end
 --[[ @ 0]]
