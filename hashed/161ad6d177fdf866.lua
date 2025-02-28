-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.PCSocialMenu_PlayerListItem_PlayerInfos_MuteButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PCSocialMenu_PlayerListItem_PlayerInfos_MuteButton.__defaultWidth = 50 --[[ @ 0]]
CoD.PCSocialMenu_PlayerListItem_PlayerInfos_MuteButton.__defaultHeight = 50 --[[ @ 0]]
CoD.PCSocialMenu_PlayerListItem_PlayerInfos_MuteButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PCSocialMenu_PlayerListItem_PlayerInfos_MuteButton ) --[[ @ 0]]
	self.id = "PCSocialMenu_PlayerListItem_PlayerInfos_MuteButton" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BG = LUI.UIImage.new( 0, 1, 0, 0, 0, 0.89, 0, 0 ) --[[ @ 0]]
	BG:setRGB( 0.12, 0.12, 0.12 ) --[[ @ 0]]
	self:addElement( BG ) --[[ @ 0]]
	self.BG = BG --[[ @ 0]]
	
	local MuteIcon = LUI.UIImage.new( 0.15, 0.85, 0, 0, 0.09, 0.79, 0, 0 ) --[[ @ 0]]
	MuteIcon:setImage( RegisterImage( @"uie_mute_icon" ) ) --[[ @ 0]]
	self:addElement( MuteIcon ) --[[ @ 0]]
	self.MuteIcon = MuteIcon --[[ @ 0]]
	
	local NineSliceShaderImage = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NineSliceShaderImage:setImage( RegisterImage( @"uie_borderbutton2_9s" ) ) --[[ @ 0]]
	NineSliceShaderImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	NineSliceShaderImage:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NineSliceShaderImage:setupNineSliceShader( 14, 14 ) --[[ @ 0]]
	self:addElement( NineSliceShaderImage ) --[[ @ 0]]
	self.NineSliceShaderImage = NineSliceShaderImage --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PCSocialMenu_PlayerListItem_PlayerInfos_MuteButton.__resetProperties = function ( f2_arg0 )
	f2_arg0.BG:completeAnimation() --[[ @ 0]]
	f2_arg0.MuteIcon:completeAnimation() --[[ @ 0]]
	f2_arg0.BG:setRGB( 0.12, 0.12, 0.12 ) --[[ @ 0]]
	f2_arg0.MuteIcon:setRGB( 1, 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PCSocialMenu_PlayerListItem_PlayerInfos_MuteButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				f4_arg0.BG:beginAnimation( 100 ) --[[ @ 0]]
				f4_arg0.BG:setRGB( 0.16, 0.16, 0.16 ) --[[ @ 0]]
				f4_arg0.BG:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.BG:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.BG:completeAnimation() --[[ @ 0]]
			f4_arg0.BG:setRGB( 0.12, 0.12, 0.12 ) --[[ @ 0]]
			f4_local0( f4_arg0.BG ) --[[ @ 0]]
			local f4_local1 = function ( f6_arg0 )
				f4_arg0.MuteIcon:beginAnimation( 100 ) --[[ @ 0]]
				f4_arg0.MuteIcon:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f4_arg0.MuteIcon:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.MuteIcon:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.MuteIcon:completeAnimation() --[[ @ 0]]
			f4_arg0.MuteIcon:setRGB( 0.57, 0.57, 0.57 ) --[[ @ 0]]
			f4_local1( f4_arg0.MuteIcon ) --[[ @ 0]]
		end,
		LoseFocus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.MuteIcon:beginAnimation( 100 ) --[[ @ 0]]
				f7_arg0.MuteIcon:setRGB( 0.57, 0.57, 0.57 ) --[[ @ 0]]
				f7_arg0.MuteIcon:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.MuteIcon:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.MuteIcon:completeAnimation() --[[ @ 0]]
			f7_arg0.MuteIcon:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f7_local0( f7_arg0.MuteIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
