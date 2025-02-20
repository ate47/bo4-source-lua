-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.CraftAuthorInfo = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CraftAuthorInfo.__defaultWidth = 350 --[[ @ 0]]
CoD.CraftAuthorInfo.__defaultHeight = 100 --[[ @ 0]]
CoD.CraftAuthorInfo.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CraftAuthorInfo ) --[[ @ 0]]
	self.id = "CraftAuthorInfo" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TimestampText = LUI.UIText.new( 1, 1, -218, 0, 0, 0, 61, 73 ) --[[ @ 0]]
	TimestampText:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	TimestampText:setTTF( "notosans_regular" ) --[[ @ 0]]
	TimestampText:setLetterSpacing( 1 ) --[[ @ 0]]
	TimestampText:setLineSpacing( 1 ) --[[ @ 0]]
	TimestampText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	TimestampText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	TimestampText:subscribeToGlobalModel( f1_arg1, "EmblemEditing", "createTime", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			TimestampText:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TimestampText ) --[[ @ 0]]
	self.TimestampText = TimestampText --[[ @ 0]]
	
	local CreatedTitle = LUI.UIText.new( 0, 0, 0, 132, 0, 0, 60, 75 ) --[[ @ 0]]
	CreatedTitle:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	CreatedTitle:setText( AppendString( ":", LocalizeHash( @"hash_6D3788D7E2C0B9C9" ) ) ) --[[ @ 0]]
	CreatedTitle:setTTF( "notosans_regular" ) --[[ @ 0]]
	CreatedTitle:setLetterSpacing( 1 ) --[[ @ 0]]
	CreatedTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	CreatedTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( CreatedTitle ) --[[ @ 0]]
	self.CreatedTitle = CreatedTitle --[[ @ 0]]
	
	local AuthorGamertag = LUI.UIText.new( 1, 1, -218, 0, 0, 0, 32, 44 ) --[[ @ 0]]
	AuthorGamertag:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	AuthorGamertag:setTTF( "notosans_regular" ) --[[ @ 0]]
	AuthorGamertag:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	AuthorGamertag:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	AuthorGamertag:linkToElementModel( self, "xuid", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			AuthorGamertag:setupPlayerGamertag( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AuthorGamertag ) --[[ @ 0]]
	self.AuthorGamertag = AuthorGamertag --[[ @ 0]]
	
	local AuthorTitle = LUI.UIText.new( 0, 0, 0, 132, 0, 0, 30, 45 ) --[[ @ 0]]
	AuthorTitle:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	AuthorTitle:setText( AppendString( ":", LocalizeHash( @"hash_1BB51460D8D38CE0" ) ) ) --[[ @ 0]]
	AuthorTitle:setTTF( "notosans_regular" ) --[[ @ 0]]
	AuthorTitle:setLetterSpacing( 1 ) --[[ @ 0]]
	AuthorTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	AuthorTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( AuthorTitle ) --[[ @ 0]]
	self.AuthorTitle = AuthorTitle --[[ @ 0]]
	
	local EmblemName = LUI.UIText.new( 1, 1, -218, 0, 0, 0, 0, 12 ) --[[ @ 0]]
	EmblemName:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	EmblemName:setTTF( "notosans_regular" ) --[[ @ 0]]
	EmblemName:setLetterSpacing( 1 ) --[[ @ 0]]
	EmblemName:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	EmblemName:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	EmblemName:subscribeToGlobalModel( f1_arg1, "EmblemEditing", "emblemTextEntry", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			EmblemName:setText( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( EmblemName ) --[[ @ 0]]
	self.EmblemName = EmblemName --[[ @ 0]]
	
	local NameTitle = LUI.UIText.new( 0, 0, 0, 132, 0, 0, 0, 15 ) --[[ @ 0]]
	NameTitle:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	NameTitle:setText( AppendString( ":", LocalizeHash( @"hash_B4D317741E876CC" ) ) ) --[[ @ 0]]
	NameTitle:setTTF( "notosans_regular" ) --[[ @ 0]]
	NameTitle:setLetterSpacing( 1 ) --[[ @ 0]]
	NameTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	NameTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( NameTitle ) --[[ @ 0]]
	self.NameTitle = NameTitle --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CraftAuthorInfo.__resetProperties = function ( f5_arg0 )
	f5_arg0.TimestampText:completeAnimation() --[[ @ 0]]
	f5_arg0.NameTitle:completeAnimation() --[[ @ 0]]
	f5_arg0.EmblemName:completeAnimation() --[[ @ 0]]
	f5_arg0.AuthorTitle:completeAnimation() --[[ @ 0]]
	f5_arg0.AuthorGamertag:completeAnimation() --[[ @ 0]]
	f5_arg0.CreatedTitle:completeAnimation() --[[ @ 0]]
	f5_arg0.TimestampText:setLeftRight( 1, 1, -218, 0 ) --[[ @ 0]]
	f5_arg0.TimestampText:setTopBottom( 0, 0, 61, 73 ) --[[ @ 0]]
	f5_arg0.TimestampText:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.NameTitle:setLeftRight( 0, 0, 0, 132 ) --[[ @ 0]]
	f5_arg0.NameTitle:setTopBottom( 0, 0, 0, 15 ) --[[ @ 0]]
	f5_arg0.NameTitle:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.EmblemName:setLeftRight( 1, 1, -218, 0 ) --[[ @ 0]]
	f5_arg0.EmblemName:setTopBottom( 0, 0, 0, 12 ) --[[ @ 0]]
	f5_arg0.EmblemName:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.AuthorTitle:setLeftRight( 0, 0, 0, 132 ) --[[ @ 0]]
	f5_arg0.AuthorTitle:setTopBottom( 0, 0, 30, 45 ) --[[ @ 0]]
	f5_arg0.AuthorTitle:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.AuthorGamertag:setLeftRight( 1, 1, -218, 0 ) --[[ @ 0]]
	f5_arg0.AuthorGamertag:setTopBottom( 0, 0, 32, 44 ) --[[ @ 0]]
	f5_arg0.AuthorGamertag:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.CreatedTitle:setLeftRight( 0, 0, 0, 132 ) --[[ @ 0]]
	f5_arg0.CreatedTitle:setTopBottom( 0, 0, 60, 75 ) --[[ @ 0]]
	f5_arg0.CreatedTitle:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CraftAuthorInfo.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f7_arg0.TimestampText:completeAnimation() --[[ @ 0]]
			f7_arg0.TimestampText:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.TimestampText ) --[[ @ 0]]
			f7_arg0.CreatedTitle:completeAnimation() --[[ @ 0]]
			f7_arg0.CreatedTitle:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.CreatedTitle ) --[[ @ 0]]
			f7_arg0.AuthorGamertag:completeAnimation() --[[ @ 0]]
			f7_arg0.AuthorGamertag:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.AuthorGamertag ) --[[ @ 0]]
			f7_arg0.AuthorTitle:completeAnimation() --[[ @ 0]]
			f7_arg0.AuthorTitle:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.AuthorTitle ) --[[ @ 0]]
			f7_arg0.EmblemName:completeAnimation() --[[ @ 0]]
			f7_arg0.EmblemName:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.EmblemName ) --[[ @ 0]]
			f7_arg0.NameTitle:completeAnimation() --[[ @ 0]]
			f7_arg0.NameTitle:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.NameTitle ) --[[ @ 0]]
		end
	},
	Arabic = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f8_arg0.TimestampText:completeAnimation() --[[ @ 0]]
			f8_arg0.TimestampText:setLeftRight( 1, 1, -350, -132 ) --[[ @ 0]]
			f8_arg0.TimestampText:setTopBottom( 0, 0, 58, 77 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.TimestampText ) --[[ @ 0]]
			f8_arg0.CreatedTitle:completeAnimation() --[[ @ 0]]
			f8_arg0.CreatedTitle:setLeftRight( 0, 0, 160, 292 ) --[[ @ 0]]
			f8_arg0.CreatedTitle:setTopBottom( 0, 0, 58, 77 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.CreatedTitle ) --[[ @ 0]]
			f8_arg0.AuthorGamertag:completeAnimation() --[[ @ 0]]
			f8_arg0.AuthorGamertag:setLeftRight( 1, 1, -350, -132 ) --[[ @ 0]]
			f8_arg0.AuthorGamertag:setTopBottom( 0, 0, 29, 48 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.AuthorGamertag ) --[[ @ 0]]
			f8_arg0.AuthorTitle:completeAnimation() --[[ @ 0]]
			f8_arg0.AuthorTitle:setLeftRight( 0, 0, 160, 292 ) --[[ @ 0]]
			f8_arg0.AuthorTitle:setTopBottom( 0, 0, 29, 48 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.AuthorTitle ) --[[ @ 0]]
			f8_arg0.EmblemName:completeAnimation() --[[ @ 0]]
			f8_arg0.EmblemName:setLeftRight( 1, 1, -350, -132 ) --[[ @ 0]]
			f8_arg0.EmblemName:setTopBottom( 0, 0, 0, 19 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.EmblemName ) --[[ @ 0]]
			f8_arg0.NameTitle:completeAnimation() --[[ @ 0]]
			f8_arg0.NameTitle:setLeftRight( 0, 0, 160, 292 ) --[[ @ 0]]
			f8_arg0.NameTitle:setTopBottom( 0, 0, 0, 19 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.NameTitle ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CraftAuthorInfo.__onClose = function ( f9_arg0 )
	f9_arg0.TimestampText:close() --[[ @ 0]]
	f9_arg0.AuthorGamertag:close() --[[ @ 0]]
	f9_arg0.EmblemName:close() --[[ @ 0]]
end
 --[[ @ 0]]
