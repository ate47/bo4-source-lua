-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.EquippedMarker = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.EquippedMarker.__defaultWidth = 44 --[[ @ 0]]
CoD.EquippedMarker.__defaultHeight = 44 --[[ @ 0]]
CoD.EquippedMarker.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.EquippedMarker ) --[[ @ 0]]
	self.id = "EquippedMarker" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local EquippedMarkerBG = LUI.UIImage.new( 1, 1, -44, 0, 0, 0, 0, 44 ) --[[ @ 0]]
	EquippedMarkerBG:setAlpha( 0 ) --[[ @ 0]]
	EquippedMarkerBG:setZoom( 4 ) --[[ @ 0]]
	EquippedMarkerBG:setImage( RegisterImage( @"uie_ui_menu_cac_equipped_marker_bg" ) ) --[[ @ 0]]
	EquippedMarkerBG:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( EquippedMarkerBG ) --[[ @ 0]]
	self.EquippedMarkerBG = EquippedMarkerBG --[[ @ 0]]
	
	local EquippedMarkerTick = LUI.UIImage.new( 1, 1, -44, 0, 0, 0, 0, 44 ) --[[ @ 0]]
	EquippedMarkerTick:setAlpha( 0 ) --[[ @ 0]]
	EquippedMarkerTick:setZoom( 4 ) --[[ @ 0]]
	EquippedMarkerTick:setImage( RegisterImage( @"uie_ui_menu_cac_equipped_marker_tick" ) ) --[[ @ 0]]
	self:addElement( EquippedMarkerTick ) --[[ @ 0]]
	self.EquippedMarkerTick = EquippedMarkerTick --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.EquippedMarker.__resetProperties = function ( f2_arg0 )
	f2_arg0.EquippedMarkerBG:completeAnimation() --[[ @ 0]]
	f2_arg0.EquippedMarkerTick:completeAnimation() --[[ @ 0]]
	f2_arg0.EquippedMarkerBG:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.EquippedMarkerTick:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.EquippedMarker.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Equipped = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f4_arg0.EquippedMarkerBG:completeAnimation() --[[ @ 0]]
			f4_arg0.EquippedMarkerBG:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.EquippedMarkerBG ) --[[ @ 0]]
			f4_arg0.EquippedMarkerTick:completeAnimation() --[[ @ 0]]
			f4_arg0.EquippedMarkerTick:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.EquippedMarkerTick ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
