-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.StartMenu_QuitButtonFill = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_QuitButtonFill.__defaultWidth = 320 --[[ @ 0]]
CoD.StartMenu_QuitButtonFill.__defaultHeight = 128 --[[ @ 0]]
CoD.StartMenu_QuitButtonFill.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_QuitButtonFill ) --[[ @ 0]]
	self.id = "StartMenu_QuitButtonFill" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local HoldButtonFill = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, -16, 16 ) --[[ @ 0]]
	HoldButtonFill:setImage( RegisterImage( @"uie_ui_menu_common_quit_glow" ) ) --[[ @ 0]]
	HoldButtonFill:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe" ) ) --[[ @ 0]]
	HoldButtonFill:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	HoldButtonFill:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	HoldButtonFill:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	HoldButtonFill:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	HoldButtonFill.__X_Fraction = function ( f2_arg0 )
		local f2_local0 = f2_arg0:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			HoldButtonFill:setShaderVector( 0, CoD.GetVectorComponentFromString( f2_local0, 1 ), CoD.GetVectorComponentFromString( f2_local0, 2 ), CoD.GetVectorComponentFromString( f2_local0, 3 ), CoD.GetVectorComponentFromString( f2_local0, 4 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	HoldButtonFill:linkToElementModel( self, "buttonBit", true, function ( model, f3_arg1 )
		if f3_arg1["__HoldButtonFill.__X_Fraction_buttonBit->progress"] then
			f3_arg1:removeSubscription( f3_arg1["__HoldButtonFill.__X_Fraction_buttonBit->progress"] ) --[[ @ 0]]
			f3_arg1["__HoldButtonFill.__X_Fraction_buttonBit->progress"] = nil --[[ @ 0]]
		end
		if model then
			local f3_local0 = model:get() --[[ @ 0]]
			local f3_local1 = model:get() --[[ @ 0]]
			model = f3_local0 and f3_local1.progress --[[ @ 0]]
		end
		if model then
			f3_arg1["__HoldButtonFill.__X_Fraction_buttonBit->progress"] = f3_arg1:subscribeToModel( model, HoldButtonFill.__X_Fraction ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HoldButtonFill ) --[[ @ 0]]
	self.HoldButtonFill = HoldButtonFill --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Playing",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f5_arg2, f5_arg3, f5_arg4 )
		if IsSelfInState( self, "Playing" ) then
			PlaySoundAlias( "uin_mp_end_bar" ) --[[ @ 0]]
		elseif IsSelfInState( self, "DefaultState" ) then
			StopSoundAlias( "uin_mp_end_bar" ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_QuitButtonFill.__onClose = function ( f6_arg0 )
	f6_arg0.HoldButtonFill:close() --[[ @ 0]]
end
 --[[ @ 0]]
