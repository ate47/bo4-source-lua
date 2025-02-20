-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.FE_Menu_LeftGraphics = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FE_Menu_LeftGraphics.__defaultWidth = 78 --[[ @ 0]]
CoD.FE_Menu_LeftGraphics.__defaultHeight = 925 --[[ @ 0]]
CoD.FE_Menu_LeftGraphics.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.FE_Menu_LeftGraphics ) --[[ @ 0]]
	self.id = "FE_Menu_LeftGraphics" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Pixel200 = LUI.UIImage.new( 0, 0, 13, 67, 0, 0, 847, 853 ) --[[ @ 0]]
	Pixel200:setYRot( -180 ) --[[ @ 0]]
	Pixel200:setImage( RegisterImage( @"uie_t7_menu_frontend_pixelist" ) ) --[[ @ 0]]
	Pixel200:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Pixel200 ) --[[ @ 0]]
	self.Pixel200 = Pixel200 --[[ @ 0]]
	
	local Pixel2001 = LUI.UIImage.new( 0, 0, 13, 67, 0, 0, 66, 72 ) --[[ @ 0]]
	Pixel2001:setYRot( -180 ) --[[ @ 0]]
	Pixel2001:setImage( RegisterImage( @"uie_t7_menu_frontend_pixelist" ) ) --[[ @ 0]]
	Pixel2001:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Pixel2001 ) --[[ @ 0]]
	self.Pixel2001 = Pixel2001 --[[ @ 0]]
	
	local LineSide = LUI.UIImage.new( 0, 0, 50, 53, 0, 0, 48, 874 ) --[[ @ 0]]
	LineSide:setZRot( 180 ) --[[ @ 0]]
	LineSide:setImage( RegisterImage( @"uie_t7_menu_frontend_lineside" ) ) --[[ @ 0]]
	LineSide:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( LineSide ) --[[ @ 0]]
	self.LineSide = LineSide --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.FE_Menu_LeftGraphics.__resetProperties = function ( f2_arg0 )
	f2_arg0.Pixel2001:completeAnimation() --[[ @ 0]]
	f2_arg0.Pixel200:completeAnimation() --[[ @ 0]]
	f2_arg0.LineSide:completeAnimation() --[[ @ 0]]
	f2_arg0.Pixel2001:setLeftRight( 0, 0, 13, 67 ) --[[ @ 0]]
	f2_arg0.Pixel2001:setTopBottom( 0, 0, 66, 72 ) --[[ @ 0]]
	f2_arg0.Pixel2001:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Pixel200:setLeftRight( 0, 0, 13, 67 ) --[[ @ 0]]
	f2_arg0.Pixel200:setTopBottom( 0, 0, 847, 853 ) --[[ @ 0]]
	f2_arg0.Pixel200:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.LineSide:setLeftRight( 0, 0, 50, 53 ) --[[ @ 0]]
	f2_arg0.LineSide:setTopBottom( 0, 0, 48, 874 ) --[[ @ 0]]
	f2_arg0.LineSide:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FE_Menu_LeftGraphics.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				f4_arg0:beginAnimation( 450 ) --[[ @ 0]]
				f4_arg0:setTopBottom( 0, 0, 847, 853 ) --[[ @ 0]]
				f4_arg0:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Pixel200:beginAnimation( 200 ) --[[ @ 0]]
			f3_arg0.Pixel200:setLeftRight( 0, 0, 13, 67 ) --[[ @ 0]]
			f3_arg0.Pixel200:setTopBottom( 0, 0, -67, -61 ) --[[ @ 0]]
			f3_arg0.Pixel200:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.Pixel200:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.Pixel200:registerEventHandler( "transition_complete_keyframe", f3_local0 ) --[[ @ 0]]
			local f3_local1 = function ( f5_arg0 )
				f5_arg0:beginAnimation( 130 ) --[[ @ 0]]
				f5_arg0:setTopBottom( 0, 0, 66, 72 ) --[[ @ 0]]
				f5_arg0:setAlpha( 1 ) --[[ @ 0]]
				f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Pixel2001:beginAnimation( 160 ) --[[ @ 0]]
			f3_arg0.Pixel2001:setLeftRight( 0, 0, 13, 67 ) --[[ @ 0]]
			f3_arg0.Pixel2001:setTopBottom( 0, 0, -54, -48 ) --[[ @ 0]]
			f3_arg0.Pixel2001:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.Pixel2001:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.Pixel2001:registerEventHandler( "transition_complete_keyframe", f3_local1 ) --[[ @ 0]]
			local f3_local2 = function ( f6_arg0 )
				f6_arg0:beginAnimation( 380 ) --[[ @ 0]]
				f6_arg0:setTopBottom( 0, 0, 48, 874 ) --[[ @ 0]]
				f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.LineSide:beginAnimation( 230 ) --[[ @ 0]]
			f3_arg0.LineSide:setLeftRight( 0, 0, 50, 53 ) --[[ @ 0]]
			f3_arg0.LineSide:setTopBottom( 0, 0, 48, 54 ) --[[ @ 0]]
			f3_arg0.LineSide:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.LineSide:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.LineSide:registerEventHandler( "transition_complete_keyframe", f3_local2 ) --[[ @ 0]]
		end,
		Intro = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f8_arg0:beginAnimation( 450 ) --[[ @ 0]]
				f8_arg0:setTopBottom( 0, 0, 847, 853 ) --[[ @ 0]]
				f8_arg0:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.Pixel200:beginAnimation( 200 ) --[[ @ 0]]
			f7_arg0.Pixel200:setLeftRight( 0, 0, 13, 67 ) --[[ @ 0]]
			f7_arg0.Pixel200:setTopBottom( 0, 0, -67, -61 ) --[[ @ 0]]
			f7_arg0.Pixel200:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.Pixel200:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
			f7_arg0.Pixel200:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			local f7_local1 = function ( f9_arg0 )
				f7_arg0.Pixel2001:beginAnimation( 290 ) --[[ @ 0]]
				f7_arg0.Pixel2001:setTopBottom( 0, 0, 66, 72 ) --[[ @ 0]]
				f7_arg0.Pixel2001:setAlpha( 1 ) --[[ @ 0]]
				f7_arg0.Pixel2001:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.Pixel2001:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.Pixel2001:completeAnimation() --[[ @ 0]]
			f7_arg0.Pixel2001:setLeftRight( 0, 0, 13, 67 ) --[[ @ 0]]
			f7_arg0.Pixel2001:setTopBottom( 0, 0, -54, -48 ) --[[ @ 0]]
			f7_arg0.Pixel2001:setAlpha( 0 ) --[[ @ 0]]
			f7_local1( f7_arg0.Pixel2001 ) --[[ @ 0]]
			local f7_local2 = function ( f10_arg0 )
				f10_arg0:beginAnimation( 380 ) --[[ @ 0]]
				f10_arg0:setTopBottom( 0, 0, 48, 874 ) --[[ @ 0]]
				f10_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.LineSide:beginAnimation( 230 ) --[[ @ 0]]
			f7_arg0.LineSide:setLeftRight( 0, 0, 50, 53 ) --[[ @ 0]]
			f7_arg0.LineSide:setTopBottom( 0, 0, 48, 54 ) --[[ @ 0]]
			f7_arg0.LineSide:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.LineSide:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
			f7_arg0.LineSide:registerEventHandler( "transition_complete_keyframe", f7_local2 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
