-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.LaboratoryListItemInternalIconAndText = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LaboratoryListItemInternalIconAndText.__defaultWidth = 109 --[[ @ 0]]
CoD.LaboratoryListItemInternalIconAndText.__defaultHeight = 109 --[[ @ 0]]
CoD.LaboratoryListItemInternalIconAndText.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LaboratoryListItemInternalIconAndText ) --[[ @ 0]]
	self.id = "LaboratoryListItemInternalIconAndText" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FixedAspectRatioImage = LUI.UIFixedAspectRatioImage.new( 0.5, 0.5, -54.5, 54.5, 0.5, 0.5, -54.5, 54.5 ) --[[ @ 0]]
	FixedAspectRatioImage:linkToElementModel( self, "icon", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			FixedAspectRatioImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( FixedAspectRatioImage ) --[[ @ 0]]
	self.FixedAspectRatioImage = FixedAspectRatioImage --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LaboratoryListItemInternalIconAndText.__onClose = function ( f3_arg0 )
	f3_arg0.FixedAspectRatioImage:close() --[[ @ 0]]
end
 --[[ @ 0]]
