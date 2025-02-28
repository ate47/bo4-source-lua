-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/border" ) --[[ @ 0]]

CoD.DossierProgressBulletPoint = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DossierProgressBulletPoint.__defaultWidth = 250 --[[ @ 0]]
CoD.DossierProgressBulletPoint.__defaultHeight = 30 --[[ @ 0]]
CoD.DossierProgressBulletPoint.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DossierProgressBulletPoint ) --[[ @ 0]]
	self.id = "DossierProgressBulletPoint" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DossierProgressBulletPoint = LUI.UIText.new( 0, 0, 37, 250, 0, 0, 5, 26 ) --[[ @ 0]]
	DossierProgressBulletPoint:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	DossierProgressBulletPoint:setAlpha( 0.5 ) --[[ @ 0]]
	DossierProgressBulletPoint:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	DossierProgressBulletPoint:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	DossierProgressBulletPoint:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( DossierProgressBulletPoint ) --[[ @ 0]]
	self.DossierProgressBulletPoint = DossierProgressBulletPoint --[[ @ 0]]
	
	local Border = CoD.Border.new( f1_arg0, f1_arg1, 0, 0, 3, 29, 0, 0, 2, 28 ) --[[ @ 0]]
	self:addElement( Border ) --[[ @ 0]]
	self.Border = Border --[[ @ 0]]
	
	local BorderAdd = CoD.Border.new( f1_arg0, f1_arg1, 0, 0, 3, 29, 0, 0, 2, 28 ) --[[ @ 0]]
	self:addElement( BorderAdd ) --[[ @ 0]]
	self.BorderAdd = BorderAdd --[[ @ 0]]
	
	local Empty = LUI.UIImage.new( 0, 0, 0.5, 33.5, 0, 0, -1.5, 31.5 ) --[[ @ 0]]
	Empty:setScale( 0.67, 0.67 ) --[[ @ 0]]
	Empty:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_selectbox_empty" ) ) --[[ @ 0]]
	Empty:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Empty ) --[[ @ 0]]
	self.Empty = Empty --[[ @ 0]]
	
	local dashBacking = LUI.UIImage.new( 0, 0, 2, 32, 0, 0, 0.5, 30.5 ) --[[ @ 0]]
	dashBacking:setScale( 1.5, 1.5 ) --[[ @ 0]]
	dashBacking:setImage( RegisterImage( @"uie_ui_menu_cac_allocation_pip_empty" ) ) --[[ @ 0]]
	self:addElement( dashBacking ) --[[ @ 0]]
	self.dashBacking = dashBacking --[[ @ 0]]
	
	local dash = LUI.UIImage.new( 0, 0, 2, 32, 0, 0, 0.5, 30.5 ) --[[ @ 0]]
	dash:setScale( 1.5, 1.5 ) --[[ @ 0]]
	dash:setImage( RegisterImage( @"uie_ui_menu_cac_allocation_pip_full" ) ) --[[ @ 0]]
	self:addElement( dash ) --[[ @ 0]]
	self.dash = dash --[[ @ 0]]
	
	local Glow = LUI.UIImage.new( 0, 0, -3.5, 38.5, 0, 0, -20.5, 52.5 ) --[[ @ 0]]
	Glow:setRGB( 0.88, 0.8, 0.45 ) --[[ @ 0]]
	Glow:setAlpha( 0 ) --[[ @ 0]]
	Glow:setImage( RegisterImage( @"uie_t7_menu_cac_glow" ) ) --[[ @ 0]]
	Glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Glow ) --[[ @ 0]]
	self.Glow = Glow --[[ @ 0]]
	
	local CornerDots = LUI.UIImage.new( 0, 0, 3.5, 30.5, 0, 0, 1.5, 28.5 ) --[[ @ 0]]
	CornerDots:setScale( 1.5, 1.5 ) --[[ @ 0]]
	CornerDots:setImage( RegisterImage( @"uie_ui_menu_cac_allocation_pip_dots" ) ) --[[ @ 0]]
	self:addElement( CornerDots ) --[[ @ 0]]
	self.CornerDots = CornerDots --[[ @ 0]]
	
	local CursorOver = LUI.UIImage.new( 0, 0, -5, 39, 0, 0, -6.5, 37.5 ) --[[ @ 0]]
	CursorOver:setAlpha( 0 ) --[[ @ 0]]
	CursorOver:setImage( RegisterImage( @"uie_ui_menu_cac_allocation_pip_over" ) ) --[[ @ 0]]
	self:addElement( CursorOver ) --[[ @ 0]]
	self.CursorOver = CursorOver --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "CheckedKR15",
			condition = function ( menu, element, event )
				return IsPC() and CoD.PCKoreaUtility.ShowKorea15Plus()
			end
		},
		{
			stateName = "Checked",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DossierProgressBulletPoint.__resetProperties = function ( f4_arg0 )
	f4_arg0.CornerDots:completeAnimation() --[[ @ 0]]
	f4_arg0.dash:completeAnimation() --[[ @ 0]]
	f4_arg0.dashBacking:completeAnimation() --[[ @ 0]]
	f4_arg0.Glow:completeAnimation() --[[ @ 0]]
	f4_arg0.CornerDots:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.dash:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.dashBacking:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DossierProgressBulletPoint.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f5_arg0.dashBacking:completeAnimation() --[[ @ 0]]
			f5_arg0.dashBacking:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.dashBacking ) --[[ @ 0]]
			f5_arg0.dash:completeAnimation() --[[ @ 0]]
			f5_arg0.dash:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.dash ) --[[ @ 0]]
			f5_arg0.CornerDots:completeAnimation() --[[ @ 0]]
			f5_arg0.CornerDots:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.CornerDots ) --[[ @ 0]]
		end
	},
	CheckedKR15 = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					local f8_local0 = function ( f9_arg0 )
						f9_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f9_arg0:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f8_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f8_arg0:setAlpha( 0 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0.Glow:beginAnimation( 1000 ) --[[ @ 0]]
				f6_arg0.Glow:setAlpha( 0.2 ) --[[ @ 0]]
				f6_arg0.Glow:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.Glow:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.Glow:completeAnimation() --[[ @ 0]]
			f6_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f6_local0( f6_arg0.Glow ) --[[ @ 0]]
			f6_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	Checked = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					local f12_local0 = function ( f13_arg0 )
						f13_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f13_arg0:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f12_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f12_arg0:setAlpha( 0 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f10_arg0.Glow:beginAnimation( 1000 ) --[[ @ 0]]
				f10_arg0.Glow:setAlpha( 0.2 ) --[[ @ 0]]
				f10_arg0.Glow:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.Glow:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.Glow:completeAnimation() --[[ @ 0]]
			f10_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f10_local0( f10_arg0.Glow ) --[[ @ 0]]
			f10_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DossierProgressBulletPoint.__onClose = function ( f14_arg0 )
	f14_arg0.Border:close() --[[ @ 0]]
	f14_arg0.BorderAdd:close() --[[ @ 0]]
end
 --[[ @ 0]]
