-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.PC_StartMenu_Options_Glow = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_StartMenu_Options_Glow.__defaultWidth = 46 --[[ @ 0]]
CoD.PC_StartMenu_Options_Glow.__defaultHeight = 64 --[[ @ 0]]
CoD.PC_StartMenu_Options_Glow.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_StartMenu_Options_Glow ) --[[ @ 0]]
	self.id = "PC_StartMenu_Options_Glow" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Glow = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Glow:setZRot( 180 ) --[[ @ 0]]
	Glow:setImage( RegisterImage( @"hash_61F4A521D2954B6" ) ) --[[ @ 0]]
	Glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Glow ) --[[ @ 0]]
	self.Glow = Glow --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_StartMenu_Options_Glow.__resetProperties = function ( f2_arg0 )
	f2_arg0.Glow:completeAnimation() --[[ @ 0]]
	f2_arg0.Glow:setRGB( 1, 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_StartMenu_Options_Glow.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.Glow:completeAnimation() --[[ @ 0]]
			f3_arg0.Glow:setRGB( 0.42, 0.4, 0.37 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Glow ) --[[ @ 0]]
		end
	},
	Custom = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.Glow:completeAnimation() --[[ @ 0]]
			f4_arg0.Glow:setRGB( 0.84, 0.47, 0.17 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Glow ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
