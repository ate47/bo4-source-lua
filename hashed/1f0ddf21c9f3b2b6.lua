-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.ChatClientChatEntryChannel = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ChatClientChatEntryChannel.__defaultWidth = 57 --[[ @ 0]]
CoD.ChatClientChatEntryChannel.__defaultHeight = 27 --[[ @ 0]]
CoD.ChatClientChatEntryChannel.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ChatClientChatEntryChannel ) --[[ @ 0]]
	self.id = "ChatClientChatEntryChannel" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local entryChannelText = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 0, 21 ) --[[ @ 0]]
	entryChannelText:setTTF( "notosans_light" ) --[[ @ 0]]
	entryChannelText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	entryChannelText:setShaderVector( 0, 0.25, 0, 0, 0 ) --[[ @ 0]]
	entryChannelText:setShaderVector( 1, 0.05, 0, 0, 0 ) --[[ @ 0]]
	entryChannelText:setShaderVector( 2, 0, 0, 0, 0.67 ) --[[ @ 0]]
	entryChannelText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	entryChannelText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( entryChannelText ) --[[ @ 0]]
	self.entryChannelText = entryChannelText --[[ @ 0]]
	
	self.entryChannelText:linkToElementModel( self, "chColor", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			entryChannelText:setRGB( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self.entryChannelText:linkToElementModel( self, "chText", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			entryChannelText:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local2 = self --[[ @ 0]]
	CoD.PCWidgetUtility.SetupClickableChatChannel( self, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ChatClientChatEntryChannel.__resetProperties = function ( f4_arg0 )
	f4_arg0.entryChannelText:completeAnimation() --[[ @ 0]]
	f4_arg0.entryChannelText:setBackingType( 0 ) --[[ @ 0]]
	f4_arg0.entryChannelText:setBackingAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ChatClientChatEntryChannel.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.entryChannelText:completeAnimation() --[[ @ 0]]
			f5_arg0.entryChannelText:setBackingType( 2 ) --[[ @ 0]]
			f5_arg0.entryChannelText:setBackingAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.entryChannelText ) --[[ @ 0]]
		end,
		Over = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.entryChannelText:completeAnimation() --[[ @ 0]]
			f6_arg0.entryChannelText:setBackingType( 2 ) --[[ @ 0]]
			f6_arg0.entryChannelText:setBackingAlpha( 0.3 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.entryChannelText ) --[[ @ 0]]
		end,
		Focus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.entryChannelText:completeAnimation() --[[ @ 0]]
			f7_arg0.entryChannelText:setBackingType( 2 ) --[[ @ 0]]
			f7_arg0.entryChannelText:setBackingAlpha( 0.3 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.entryChannelText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ChatClientChatEntryChannel.__onClose = function ( f8_arg0 )
	f8_arg0.entryChannelText:close() --[[ @ 0]]
end
 --[[ @ 0]]
