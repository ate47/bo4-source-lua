-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:329a6d5c6da0dd3d" ) --[[ @ 0]]

CoD.GameEndScore_DeathCam = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GameEndScore_DeathCam.__defaultWidth = 1920 --[[ @ 0]]
CoD.GameEndScore_DeathCam.__defaultHeight = 1080 --[[ @ 0]]
CoD.GameEndScore_DeathCam.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GameEndScore_DeathCam ) --[[ @ 0]]
	self.id = "GameEndScore_DeathCam" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	local f1_local1 = nil --[[ @ 0]]
	self.Prompt = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local2 = nil --[[ @ 0]]
	self.PromptAlt = LUI.UIElement.createFake() --[[ @ 0]]
	local PromptPC = nil --[[ @ 0]]
	
	PromptPC = CoD.GameEndScore_DeathCamPrompt.new( f1_arg0, f1_arg1, 0.5, 0.5, -878.5, -676.5, 1, 1, -241, -118 ) --[[ @ 0]]
	PromptPC:subscribeToGlobalModel( f1_arg1, "Controller", "primary_button_image", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			PromptPC.ButtonIcon.buttonImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PromptPC ) --[[ @ 0]]
	self.PromptPC = PromptPC --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GameEndScore_DeathCam.__onClose = function ( f3_arg0 )
	f3_arg0.Prompt:close() --[[ @ 0]]
	f3_arg0.PromptAlt:close() --[[ @ 0]]
	f3_arg0.PromptPC:close() --[[ @ 0]]
end
 --[[ @ 0]]
