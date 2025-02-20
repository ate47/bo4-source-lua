-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.AAR_LeaguePlay_PlacementPip = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AAR_LeaguePlay_PlacementPip.__defaultWidth = 64 --[[ @ 0]]
CoD.AAR_LeaguePlay_PlacementPip.__defaultHeight = 64 --[[ @ 0]]
CoD.AAR_LeaguePlay_PlacementPip.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AAR_LeaguePlay_PlacementPip ) --[[ @ 0]]
	self.id = "AAR_LeaguePlay_PlacementPip" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Bg = LUI.UIImage.new( 0.5, 1.5, -32, -32, 0.5, 1.5, -32, -32 ) --[[ @ 0]]
	Bg:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Bg:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( Bg ) --[[ @ 0]]
	self.Bg = Bg --[[ @ 0]]
	
	local FrontendFrame = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	FrontendFrame:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrontendFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	FrontendFrame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrame:setupNineSliceShader( 16, 16 ) --[[ @ 0]]
	self:addElement( FrontendFrame ) --[[ @ 0]]
	self.FrontendFrame = FrontendFrame --[[ @ 0]]
	
	local FrontendFrameAdd = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	FrontendFrameAdd:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrontendFrameAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrameAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrameAdd:setupNineSliceShader( 16, 16 ) --[[ @ 0]]
	self:addElement( FrontendFrameAdd ) --[[ @ 0]]
	self.FrontendFrameAdd = FrontendFrameAdd --[[ @ 0]]
	
	local dashBacking = LUI.UIImage.new( 0, 0, 0, 64, 0, 0, 0, 64 ) --[[ @ 0]]
	dashBacking:setScale( 1.5, 1.5 ) --[[ @ 0]]
	dashBacking:setImage( RegisterImage( @"uie_ui_menu_cac_allocation_pip_empty" ) ) --[[ @ 0]]
	self:addElement( dashBacking ) --[[ @ 0]]
	self.dashBacking = dashBacking --[[ @ 0]]
	
	local Empty = LUI.UIImage.new( 0, 1, -8, 8, 0, 1, -8, 8 ) --[[ @ 0]]
	Empty:setScale( 0.67, 0.67 ) --[[ @ 0]]
	Empty:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_selectbox_empty" ) ) --[[ @ 0]]
	Empty:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Empty ) --[[ @ 0]]
	self.Empty = Empty --[[ @ 0]]
	
	local dash = LUI.UIImage.new( 0, 0, 0, 64, 0, 0, 0, 64 ) --[[ @ 0]]
	dash:setScale( 1.5, 1.5 ) --[[ @ 0]]
	dash:setImage( RegisterImage( @"uie_ui_menu_cac_allocation_pip_full" ) ) --[[ @ 0]]
	self:addElement( dash ) --[[ @ 0]]
	self.dash = dash --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Off",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "on" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "on", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "on"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AAR_LeaguePlay_PlacementPip.__resetProperties = function ( f4_arg0 )
	f4_arg0.Bg:completeAnimation() --[[ @ 0]]
	f4_arg0.dash:completeAnimation() --[[ @ 0]]
	f4_arg0.dashBacking:completeAnimation() --[[ @ 0]]
	f4_arg0.Bg:setRGB( 0, 0, 0 ) --[[ @ 0]]
	f4_arg0.Bg:setAlpha( 0.5 ) --[[ @ 0]]
	f4_arg0.dash:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.dashBacking:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AAR_LeaguePlay_PlacementPip.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.Bg:completeAnimation() --[[ @ 0]]
			f5_arg0.Bg:setAlpha( 0.5 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Bg ) --[[ @ 0]]
		end
	},
	Off = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f6_arg0.Bg:completeAnimation() --[[ @ 0]]
			f6_arg0.Bg:setRGB( 0.16, 0.16, 0.16 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Bg ) --[[ @ 0]]
			f6_arg0.dashBacking:completeAnimation() --[[ @ 0]]
			f6_arg0.dashBacking:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.dashBacking ) --[[ @ 0]]
			f6_arg0.dash:completeAnimation() --[[ @ 0]]
			f6_arg0.dash:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.dash ) --[[ @ 0]]
		end,
		DefaultState = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.Bg:beginAnimation( 200 ) --[[ @ 0]]
				f7_arg0.Bg:setRGB( 0, 0, 0 ) --[[ @ 0]]
				f7_arg0.Bg:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.Bg:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.Bg:completeAnimation() --[[ @ 0]]
			f7_arg0.Bg:setRGB( 0.16, 0.16, 0.16 ) --[[ @ 0]]
			f7_arg0.Bg:setAlpha( 0.5 ) --[[ @ 0]]
			f7_local0( f7_arg0.Bg ) --[[ @ 0]]
			local f7_local1 = function ( f9_arg0 )
				f7_arg0.dashBacking:beginAnimation( 200 ) --[[ @ 0]]
				f7_arg0.dashBacking:setAlpha( 1 ) --[[ @ 0]]
				f7_arg0.dashBacking:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.dashBacking:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.dashBacking:completeAnimation() --[[ @ 0]]
			f7_arg0.dashBacking:setAlpha( 0 ) --[[ @ 0]]
			f7_local1( f7_arg0.dashBacking ) --[[ @ 0]]
			local f7_local2 = function ( f10_arg0 )
				f7_arg0.dash:beginAnimation( 200 ) --[[ @ 0]]
				f7_arg0.dash:setAlpha( 1 ) --[[ @ 0]]
				f7_arg0.dash:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.dash:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.dash:completeAnimation() --[[ @ 0]]
			f7_arg0.dash:setAlpha( 0 ) --[[ @ 0]]
			f7_local2( f7_arg0.dash ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
