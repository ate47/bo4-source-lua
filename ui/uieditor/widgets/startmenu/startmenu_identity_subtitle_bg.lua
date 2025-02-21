-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.StartMenu_Identity_Subtitle_BG = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Identity_Subtitle_BG.__defaultWidth = 352 --[[ @ 0]]
CoD.StartMenu_Identity_Subtitle_BG.__defaultHeight = 36 --[[ @ 0]]
CoD.StartMenu_Identity_Subtitle_BG.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Identity_Subtitle_BG ) --[[ @ 0]]
	self.id = "StartMenu_Identity_Subtitle_BG" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Image:setImage( RegisterImage( @"uie_t7_menu_frontend_listheaderpanelfull" ) ) --[[ @ 0]]
	Image:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	Image:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Image:setupNineSliceShader( 24, 6 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Identity_Subtitle_BG.__resetProperties = function ( f2_arg0 )
	f2_arg0.Image:completeAnimation() --[[ @ 0]]
	f2_arg0.Image:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Identity_Subtitle_BG.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.Image:completeAnimation() --[[ @ 0]]
			f5_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Image ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
