-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.PC_Korea_Event_Day_Progression_Separators = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_Korea_Event_Day_Progression_Separators.__defaultWidth = 10 --[[ @ 0]]
CoD.PC_Korea_Event_Day_Progression_Separators.__defaultHeight = 28 --[[ @ 0]]
CoD.PC_Korea_Event_Day_Progression_Separators.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setUseCylinderMapping( false ) --[[ @ 0]]
	self:setClass( CoD.PC_Korea_Event_Day_Progression_Separators ) --[[ @ 0]]
	self.id = "PC_Korea_Event_Day_Progression_Separators" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Separator01 = LUI.UIImage.new( 0.5, 0.5, -6, 6, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	Separator01:setImage( RegisterImage( @"uie_pc_igrevent_progression_separator" ) ) --[[ @ 0]]
	self:addElement( Separator01 ) --[[ @ 0]]
	self.Separator01 = Separator01 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
