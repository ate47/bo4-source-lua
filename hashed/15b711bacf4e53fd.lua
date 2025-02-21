-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.SpawnRegionCursor = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SpawnRegionCursor.__defaultWidth = 128 --[[ @ 0]]
CoD.SpawnRegionCursor.__defaultHeight = 128 --[[ @ 0]]
CoD.SpawnRegionCursor.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SpawnRegionCursor ) --[[ @ 0]]
	self.id = "SpawnRegionCursor" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Crosshair = LUI.UIImage.new( 0, 0, 0, 128, 0, 0, 0, 128 ) --[[ @ 0]]
	Crosshair:setRGB( 0.67, 0.92, 1 ) --[[ @ 0]]
	Crosshair:setImage( RegisterImage( @"uie_ui_hud_selectspawn_cursor" ) ) --[[ @ 0]]
	self:addElement( Crosshair ) --[[ @ 0]]
	self.Crosshair = Crosshair --[[ @ 0]]
	
	local CrosshairAdd = LUI.UIImage.new( 0, 0, 0, 128, 0, 0, 0, 128 ) --[[ @ 0]]
	CrosshairAdd:setRGB( 0.67, 0.92, 1 ) --[[ @ 0]]
	CrosshairAdd:setAlpha( 0 ) --[[ @ 0]]
	CrosshairAdd:setImage( RegisterImage( @"uie_ui_hud_selectspawn_cursor" ) ) --[[ @ 0]]
	CrosshairAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( CrosshairAdd ) --[[ @ 0]]
	self.CrosshairAdd = CrosshairAdd --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SpawnRegionCursor.__resetProperties = function ( f2_arg0 )
	f2_arg0.Crosshair:completeAnimation() --[[ @ 0]]
	f2_arg0.CrosshairAdd:completeAnimation() --[[ @ 0]]
	f2_arg0.Crosshair:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Crosshair:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.CrosshairAdd:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.CrosshairAdd:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SpawnRegionCursor.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.Crosshair:completeAnimation() --[[ @ 0]]
			f3_arg0.Crosshair:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Crosshair ) --[[ @ 0]]
		end,
		Release = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				f4_arg0.Crosshair:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.Crosshair:setAlpha( 0 ) --[[ @ 0]]
				f4_arg0.Crosshair:setScale( 1, 1 ) --[[ @ 0]]
				f4_arg0.Crosshair:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.Crosshair:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.Crosshair:completeAnimation() --[[ @ 0]]
			f4_arg0.Crosshair:setAlpha( 0.8 ) --[[ @ 0]]
			f4_arg0.Crosshair:setScale( 0.9, 0.9 ) --[[ @ 0]]
			f4_local0( f4_arg0.Crosshair ) --[[ @ 0]]
		end,
		Acquire = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.Crosshair:beginAnimation( 100 ) --[[ @ 0]]
				f6_arg0.Crosshair:setAlpha( 0.8 ) --[[ @ 0]]
				f6_arg0.Crosshair:setScale( 0.9, 0.9 ) --[[ @ 0]]
				f6_arg0.Crosshair:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.Crosshair:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.Crosshair:completeAnimation() --[[ @ 0]]
			f6_arg0.Crosshair:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.Crosshair:setScale( 2.5, 2.5 ) --[[ @ 0]]
			f6_local0( f6_arg0.Crosshair ) --[[ @ 0]]
		end,
		Snap = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.Crosshair:beginAnimation( 90, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f8_arg0.Crosshair:setAlpha( 0.8 ) --[[ @ 0]]
				f8_arg0.Crosshair:setScale( 0.9, 0.9 ) --[[ @ 0]]
				f8_arg0.Crosshair:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Crosshair:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Crosshair:completeAnimation() --[[ @ 0]]
			f8_arg0.Crosshair:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.Crosshair:setScale( 4, 4 ) --[[ @ 0]]
			f8_local0( f8_arg0.Crosshair ) --[[ @ 0]]
			local f8_local1 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					f11_arg0:beginAnimation( 29, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
					f11_arg0:setAlpha( 0 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.CrosshairAdd:beginAnimation( 90, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f8_arg0.CrosshairAdd:setScale( 0.9, 0.9 ) --[[ @ 0]]
				f8_arg0.CrosshairAdd:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.CrosshairAdd:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.CrosshairAdd:completeAnimation() --[[ @ 0]]
			f8_arg0.CrosshairAdd:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.CrosshairAdd:setScale( 4, 4 ) --[[ @ 0]]
			f8_local1( f8_arg0.CrosshairAdd ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
