-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.AmmoWidgetZM_CharacterPortrait = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidgetZM_CharacterPortrait.__defaultWidth = 103 --[[ @ 0]]
CoD.AmmoWidgetZM_CharacterPortrait.__defaultHeight = 103 --[[ @ 0]]
CoD.AmmoWidgetZM_CharacterPortrait.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidgetZM_CharacterPortrait ) --[[ @ 0]]
	self.id = "AmmoWidgetZM_CharacterPortrait" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Normal = LUI.UIImage.new( 0, 1, 0, 0, 0.14, 0.86, 0, 0 ) --[[ @ 0]]
	Normal:linkToElementModel( self, "characterIndex", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Normal:setImage( RegisterImage( GetPositionDraftStatePortraitByIndex( CoD.HUDUtility.CharacterPortraitStates.CHARACTER_PORTRAIT_NORMAL, f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Normal ) --[[ @ 0]]
	self.Normal = Normal --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local2 = self --[[ @ 0]]
	CoD.HUDUtility.SetupCharacterPortrait( self, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.AmmoWidgetZM_CharacterPortrait.__resetProperties = function ( f3_arg0 )
	f3_arg0.Normal:completeAnimation() --[[ @ 0]]
	f3_arg0.Normal:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AmmoWidgetZM_CharacterPortrait.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.Normal:completeAnimation() --[[ @ 0]]
			f4_arg0.Normal:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Normal ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AmmoWidgetZM_CharacterPortrait.__onClose = function ( f5_arg0 )
	f5_arg0.Normal:close() --[[ @ 0]]
end
 --[[ @ 0]]
