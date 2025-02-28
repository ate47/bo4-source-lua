-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.PCSocialMenu_PlayerListItem_PlayerInfos_CancelInviteToParty = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PCSocialMenu_PlayerListItem_PlayerInfos_CancelInviteToParty.__defaultWidth = 80 --[[ @ 0]]
CoD.PCSocialMenu_PlayerListItem_PlayerInfos_CancelInviteToParty.__defaultHeight = 30 --[[ @ 0]]
CoD.PCSocialMenu_PlayerListItem_PlayerInfos_CancelInviteToParty.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PCSocialMenu_PlayerListItem_PlayerInfos_CancelInviteToParty ) --[[ @ 0]]
	self.id = "PCSocialMenu_PlayerListItem_PlayerInfos_CancelInviteToParty" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Border = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Border:setRGB( 0.79, 0.73, 0 ) --[[ @ 0]]
	Border:setImage( RegisterImage( @"uie_highlight_border_line" ) ) --[[ @ 0]]
	Border:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	Border:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Border:setupNineSliceShader( 12, 16 ) --[[ @ 0]]
	self:addElement( Border ) --[[ @ 0]]
	self.Border = Border --[[ @ 0]]
	
	local TextBox = LUI.UIText.new( 0, 0, 6, 206, 0, 0, 5, 25 ) --[[ @ 0]]
	TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_79477D8B17843EA2" ) ) --[[ @ 0]]
	TextBox:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TextBox ) --[[ @ 0]]
	self.TextBox = TextBox --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PCSocialMenu_PlayerListItem_PlayerInfos_CancelInviteToParty.__resetProperties = function ( f2_arg0 )
	f2_arg0.TextBox:completeAnimation() --[[ @ 0]]
	f2_arg0.TextBox:setRGB( 1, 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PCSocialMenu_PlayerListItem_PlayerInfos_CancelInviteToParty.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f4_arg0.TextBox:setRGB( 1, 0.87, 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.TextBox ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
