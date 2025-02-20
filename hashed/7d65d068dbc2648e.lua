-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.TabletLocationSelector_MarkerCursor = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TabletLocationSelector_MarkerCursor.__defaultWidth = 50 --[[ @ 0]]
CoD.TabletLocationSelector_MarkerCursor.__defaultHeight = 50 --[[ @ 0]]
CoD.TabletLocationSelector_MarkerCursor.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TabletLocationSelector_MarkerCursor ) --[[ @ 0]]
	self.id = "TabletLocationSelector_MarkerCursor" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Crosshair = LUI.UIImage.new( 0.5, 0.5, -50, 50, 0.5, 0.5, -50, 50 ) --[[ @ 0]]
	Crosshair:setImage( RegisterImage( @"uie_ui_hud_cp_hud_tacmode_crosshair" ) ) --[[ @ 0]]
	self:addElement( Crosshair ) --[[ @ 0]]
	self.Crosshair = Crosshair --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.TabletLocationSelector_MarkerCursor.__resetProperties = function ( f2_arg0 )
	f2_arg0.Crosshair:completeAnimation() --[[ @ 0]]
	f2_arg0.Crosshair:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.Crosshair:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Crosshair:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TabletLocationSelector_MarkerCursor.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Release = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				f4_arg0.Crosshair:beginAnimation( 150 ) --[[ @ 0]]
				f4_arg0.Crosshair:setScale( 8, 8 ) --[[ @ 0]]
				f4_arg0.Crosshair:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.Crosshair:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.Crosshair:completeAnimation() --[[ @ 0]]
			f4_arg0.Crosshair:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.Crosshair:setScale( 1, 1 ) --[[ @ 0]]
			f4_local0( f4_arg0.Crosshair ) --[[ @ 0]]
		end,
		Acquire = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.Crosshair:beginAnimation( 150 ) --[[ @ 0]]
				f6_arg0.Crosshair:setAlpha( 1 ) --[[ @ 0]]
				f6_arg0.Crosshair:setScale( 1, 1 ) --[[ @ 0]]
				f6_arg0.Crosshair:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.Crosshair:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.Crosshair:completeAnimation() --[[ @ 0]]
			f6_arg0.Crosshair:setRGB( 1, 0.82, 0 ) --[[ @ 0]]
			f6_arg0.Crosshair:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.Crosshair:setScale( 8, 8 ) --[[ @ 0]]
			f6_local0( f6_arg0.Crosshair ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
