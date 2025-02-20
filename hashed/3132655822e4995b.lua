-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.CodCasterPortraitObjectiveStatus = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterPortraitObjectiveStatus.__defaultWidth = 64 --[[ @ 0]]
CoD.CodCasterPortraitObjectiveStatus.__defaultHeight = 64 --[[ @ 0]]
CoD.CodCasterPortraitObjectiveStatus.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterPortraitObjectiveStatus ) --[[ @ 0]]
	self.id = "CodCasterPortraitObjectiveStatus" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local ObjectiveStatusImage = LUI.UIImage.new( 0.5, 0.5, -32, 32, 0.5, 0.5, -32, 32 ) --[[ @ 0]]
	ObjectiveStatusImage:linkToElementModel( self, "clientNumScoreInfoUpdated", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ObjectiveStatusImage:setRGB( GetPlayerListObjectiveColor( f1_arg1, f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ObjectiveStatusImage:linkToElementModel( self, "clientNumScoreInfoUpdated", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ObjectiveStatusImage:setImage( RegisterImage( GetPlayerListObjectiveMinimapImage( f1_arg1, f3_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ObjectiveStatusImage ) --[[ @ 0]]
	self.ObjectiveStatusImage = ObjectiveStatusImage --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local2 = self --[[ @ 0]]
	CoD.CodCasterUtility.InitPortraitObjectiveStatus( self, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.CodCasterPortraitObjectiveStatus.__onClose = function ( f4_arg0 )
	f4_arg0.ObjectiveStatusImage:close() --[[ @ 0]]
end
 --[[ @ 0]]
