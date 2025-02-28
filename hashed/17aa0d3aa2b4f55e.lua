-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.vhud_attack_helicopter_flare = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_attack_helicopter_flare.__defaultWidth = 50 --[[ @ 0]]
CoD.vhud_attack_helicopter_flare.__defaultHeight = 80 --[[ @ 0]]
CoD.vhud_attack_helicopter_flare.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_attack_helicopter_flare ) --[[ @ 0]]
	self.id = "vhud_attack_helicopter_flare" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local flareOutline = LUI.UIImage.new( 0.5, 0.5, -41, 41, 0.5, 0.5, -19, 19 ) --[[ @ 0]]
	flareOutline:setRGB( 0.33, 0.33, 0.33 ) --[[ @ 0]]
	flareOutline:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_flare_indicator" ) ) --[[ @ 0]]
	self:addElement( flareOutline ) --[[ @ 0]]
	self.flareOutline = flareOutline --[[ @ 0]]
	
	local flare = LUI.UIImage.new( 0.5, 0.5, -41, 41, 0.5, 0.5, -19, 19 ) --[[ @ 0]]
	flare:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_flare_indicator" ) ) --[[ @ 0]]
	self:addElement( flare ) --[[ @ 0]]
	self.flare = flare --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_attack_helicopter_flare.__resetProperties = function ( f2_arg0 )
	f2_arg0.flare:completeAnimation() --[[ @ 0]]
	f2_arg0.flare:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vhud_attack_helicopter_flare.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Inactive = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.flare:completeAnimation() --[[ @ 0]]
			f4_arg0.flare:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.flare ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
