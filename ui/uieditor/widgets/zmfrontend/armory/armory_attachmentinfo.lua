-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/director/directordividerwithgradient" ) --[[ @ 0]]
require( "ui/uieditor/widgets/onofftext" ) --[[ @ 0]]

CoD.Armory_AttachmentInfo = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Armory_AttachmentInfo.__defaultWidth = 753 --[[ @ 0]]
CoD.Armory_AttachmentInfo.__defaultHeight = 107 --[[ @ 0]]
CoD.Armory_AttachmentInfo.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Armory_AttachmentInfo ) --[[ @ 0]]
	self.id = "Armory_AttachmentInfo" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local DirectorDividerWithGradient = CoD.DirectorDividerWithGradient.new( f1_arg0, f1_arg1, 0, 0, 1, 401, 0, 0, 69.5, 70.5 ) --[[ @ 0]]
	DirectorDividerWithGradient:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	self:addElement( DirectorDividerWithGradient ) --[[ @ 0]]
	self.DirectorDividerWithGradient = DirectorDividerWithGradient --[[ @ 0]]
	
	local UnlockDescription = CoD.onOffText.new( f1_arg0, f1_arg1, 0, 0, 0, 347, 0, 0, -9, 9 ) --[[ @ 0]]
	UnlockDescription:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return not CoD.ZMLoadoutUtility.IsArmoryAttachmentItemLocked( menu, element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	UnlockDescription:linkToElementModel( UnlockDescription, "itemIndex", true, function ( model )
		f1_arg0:updateElementState( UnlockDescription, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "itemIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	UnlockDescription:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	UnlockDescription.TextBox:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	UnlockDescription:linkToElementModel( self, nil, false, function ( model )
		UnlockDescription:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	UnlockDescription:linkToElementModel( self, "itemIndex", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			UnlockDescription.TextBox:setText( CoD.BaseUtility.AlreadyLocalized( CoD.ZMLoadoutUtility.GetArmoryAttachmentUnlockDescription( f1_arg0, f1_arg1, f5_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( UnlockDescription ) --[[ @ 0]]
	self.UnlockDescription = UnlockDescription --[[ @ 0]]
	
	local AttachmentDescription = LUI.UIText.new( 0, 0, 0, 600, 0, 0, 87, 105 ) --[[ @ 0]]
	AttachmentDescription:setRGB( 0.8, 0.79, 0.78 ) --[[ @ 0]]
	AttachmentDescription:setTTF( "dinnext_regular" ) --[[ @ 0]]
	AttachmentDescription:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	AttachmentDescription:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	AttachmentDescription:linkToElementModel( self, "description", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			AttachmentDescription:setText( f6_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AttachmentDescription ) --[[ @ 0]]
	self.AttachmentDescription = AttachmentDescription --[[ @ 0]]
	
	local AttachmentName = LUI.UIText.new( 0, 0, 0, 753, 0, 0, 32.5, 64.5 ) --[[ @ 0]]
	AttachmentName:setRGB( 0.58, 0.85, 1 ) --[[ @ 0]]
	AttachmentName:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	AttachmentName:setLetterSpacing( 14 ) --[[ @ 0]]
	AttachmentName:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	AttachmentName:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	AttachmentName:linkToElementModel( self, "displayName", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			AttachmentName:setText( LocalizeToUpperString( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AttachmentName ) --[[ @ 0]]
	self.AttachmentName = AttachmentName --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Armory_AttachmentInfo.__onClose = function ( f8_arg0 )
	f8_arg0.DirectorDividerWithGradient:close() --[[ @ 0]]
	f8_arg0.UnlockDescription:close() --[[ @ 0]]
	f8_arg0.AttachmentDescription:close() --[[ @ 0]]
	f8_arg0.AttachmentName:close() --[[ @ 0]]
end
 --[[ @ 0]]
