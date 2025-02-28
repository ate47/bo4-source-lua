-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:55f8cf56752aa71b" ) --[[ @ 0]]
require( "ui/uieditor/widgets/store/storecommontextbacking" ) --[[ @ 0]]

CoD.ArchivesVideoButtonInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArchivesVideoButtonInternal.__defaultWidth = 510 --[[ @ 0]]
CoD.ArchivesVideoButtonInternal.__defaultHeight = 42 --[[ @ 0]]
CoD.ArchivesVideoButtonInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ArchivesVideoButtonInternal ) --[[ @ 0]]
	self.id = "ArchivesVideoButtonInternal" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SceneBlur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SceneBlur:setRGB( 0, 0, 0 ) --[[ @ 0]]
	SceneBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	SceneBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SceneBlur ) --[[ @ 0]]
	self.SceneBlur = SceneBlur --[[ @ 0]]
	
	local BlackBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BlackBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackBacking:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( BlackBacking ) --[[ @ 0]]
	self.BlackBacking = BlackBacking --[[ @ 0]]
	
	local TiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	TiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TiledBacking ) --[[ @ 0]]
	self.TiledBacking = TiledBacking --[[ @ 0]]
	
	local TiledBackingAdd = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	TiledBackingAdd:setAlpha( 0 ) --[[ @ 0]]
	TiledBackingAdd:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TiledBackingAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	TiledBackingAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBackingAdd:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TiledBackingAdd ) --[[ @ 0]]
	self.TiledBackingAdd = TiledBackingAdd --[[ @ 0]]
	
	local StoreCommonTextBacking = CoD.StoreCommonTextBacking.new( f1_arg0, f1_arg1, 0, 1, 6, -4, 0, 1, 7, -5 ) --[[ @ 0]]
	StoreCommonTextBacking:setAlpha( 0.4 ) --[[ @ 0]]
	StoreCommonTextBacking.TiledShaderImage:setupNineSliceShader( 42, 42 ) --[[ @ 0]]
	self:addElement( StoreCommonTextBacking ) --[[ @ 0]]
	self.StoreCommonTextBacking = StoreCommonTextBacking --[[ @ 0]]
	
	local SelectionOverlay = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SelectionOverlay:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( SelectionOverlay ) --[[ @ 0]]
	self.SelectionOverlay = SelectionOverlay --[[ @ 0]]
	
	local BracketL = LUI.UIImage.new( 1, 1, -105.5, -97.5, 0.5, 0.5, -10.5, 13.5 ) --[[ @ 0]]
	BracketL:setAlpha( 0 ) --[[ @ 0]]
	BracketL:setImage( RegisterImage( @"hash_6AA0A70F33D3978" ) ) --[[ @ 0]]
	BracketL:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( BracketL ) --[[ @ 0]]
	self.BracketL = BracketL --[[ @ 0]]
	
	local BracketR = LUI.UIImage.new( 1, 1, -29.5, -21.5, 0.5, 0.5, -11.5, 12.5 ) --[[ @ 0]]
	BracketR:setAlpha( 0 ) --[[ @ 0]]
	BracketR:setZRot( 180 ) --[[ @ 0]]
	BracketR:setImage( RegisterImage( @"hash_6AA0A70F33D3978" ) ) --[[ @ 0]]
	BracketR:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( BracketR ) --[[ @ 0]]
	self.BracketR = BracketR --[[ @ 0]]
	
	local LockedIcon = LUI.UIImage.new( 1, 1, -127.5, 0.5, 0.5, 0.5, -64, 64 ) --[[ @ 0]]
	LockedIcon:setAlpha( 0 ) --[[ @ 0]]
	LockedIcon:setScale( 0.25, 0.25 ) --[[ @ 0]]
	LockedIcon:setImage( RegisterImage( @"uie_ui_icon_global_lock" ) ) --[[ @ 0]]
	LockedIcon:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	LockedIcon:setShaderVector( 0, 4, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( LockedIcon ) --[[ @ 0]]
	self.LockedIcon = LockedIcon --[[ @ 0]]
	
	local ButtonFrame = CoD.CommonButtonOutline.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( ButtonFrame ) --[[ @ 0]]
	self.ButtonFrame = ButtonFrame --[[ @ 0]]
	
	local ButtonText = LUI.UIText.new( 0, 0, 10, 500, 0.5, 0.5, -10, 10 ) --[[ @ 0]]
	ButtonText:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ButtonText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ButtonText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ButtonText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	ButtonText:linkToElementModel( self, "title", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ButtonText:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ButtonText ) --[[ @ 0]]
	self.ButtonText = ButtonText --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "disabled" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "disabled", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "disabled"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ButtonFrame.id = "ButtonFrame" --[[ @ 0]]
	self.__defaultFocus = ButtonFrame --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ArchivesVideoButtonInternal.__resetProperties = function ( f5_arg0 )
	f5_arg0.SelectionOverlay:completeAnimation() --[[ @ 0]]
	f5_arg0.StoreCommonTextBacking:completeAnimation() --[[ @ 0]]
	f5_arg0.ButtonFrame:completeAnimation() --[[ @ 0]]
	f5_arg0.BracketL:completeAnimation() --[[ @ 0]]
	f5_arg0.BracketR:completeAnimation() --[[ @ 0]]
	f5_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
	f5_arg0.SelectionOverlay:setAlpha( 0.01 ) --[[ @ 0]]
	f5_arg0.StoreCommonTextBacking:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f5_arg0.StoreCommonTextBacking:setAlpha( 0.4 ) --[[ @ 0]]
	f5_arg0.ButtonFrame:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.BracketL:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.BracketR:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.LockedIcon:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ArchivesVideoButtonInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.StoreCommonTextBacking:completeAnimation() --[[ @ 0]]
			f7_arg0.StoreCommonTextBacking:setRGB( 1, 0.68, 0.12 ) --[[ @ 0]]
			f7_arg0.StoreCommonTextBacking:setAlpha( 0.6 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.StoreCommonTextBacking ) --[[ @ 0]]
			f7_arg0.SelectionOverlay:completeAnimation() --[[ @ 0]]
			f7_arg0.SelectionOverlay:setAlpha( 0.03 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.SelectionOverlay ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.StoreCommonTextBacking:beginAnimation( 100 ) --[[ @ 0]]
				f8_arg0.StoreCommonTextBacking:setRGB( 0.92, 0.61, 0.08 ) --[[ @ 0]]
				f8_arg0.StoreCommonTextBacking:setAlpha( 0.6 ) --[[ @ 0]]
				f8_arg0.StoreCommonTextBacking:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.StoreCommonTextBacking:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.StoreCommonTextBacking:completeAnimation() --[[ @ 0]]
			f8_arg0.StoreCommonTextBacking:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f8_arg0.StoreCommonTextBacking:setAlpha( 0.4 ) --[[ @ 0]]
			f8_local0( f8_arg0.StoreCommonTextBacking ) --[[ @ 0]]
			local f8_local1 = function ( f10_arg0 )
				f8_arg0.SelectionOverlay:beginAnimation( 100 ) --[[ @ 0]]
				f8_arg0.SelectionOverlay:setAlpha( 0.03 ) --[[ @ 0]]
				f8_arg0.SelectionOverlay:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.SelectionOverlay:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.SelectionOverlay:completeAnimation() --[[ @ 0]]
			f8_arg0.SelectionOverlay:setAlpha( 0.01 ) --[[ @ 0]]
			f8_local1( f8_arg0.SelectionOverlay ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.StoreCommonTextBacking:beginAnimation( 100 ) --[[ @ 0]]
				f11_arg0.StoreCommonTextBacking:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f11_arg0.StoreCommonTextBacking:setAlpha( 0.4 ) --[[ @ 0]]
				f11_arg0.StoreCommonTextBacking:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.StoreCommonTextBacking:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.StoreCommonTextBacking:completeAnimation() --[[ @ 0]]
			f11_arg0.StoreCommonTextBacking:setRGB( 0.92, 0.61, 0.08 ) --[[ @ 0]]
			f11_arg0.StoreCommonTextBacking:setAlpha( 0.6 ) --[[ @ 0]]
			f11_local0( f11_arg0.StoreCommonTextBacking ) --[[ @ 0]]
			local f11_local1 = function ( f13_arg0 )
				f11_arg0.SelectionOverlay:beginAnimation( 100 ) --[[ @ 0]]
				f11_arg0.SelectionOverlay:setAlpha( 0.01 ) --[[ @ 0]]
				f11_arg0.SelectionOverlay:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.SelectionOverlay:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.SelectionOverlay:completeAnimation() --[[ @ 0]]
			f11_arg0.SelectionOverlay:setAlpha( 0.03 ) --[[ @ 0]]
			f11_local1( f11_arg0.SelectionOverlay ) --[[ @ 0]]
		end,
		Active = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.ButtonFrame:completeAnimation() --[[ @ 0]]
			f14_arg0.ButtonFrame:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ButtonFrame ) --[[ @ 0]]
		end,
		ActiveAndChildFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f15_arg0.StoreCommonTextBacking:completeAnimation() --[[ @ 0]]
			f15_arg0.StoreCommonTextBacking:setRGB( 1, 0.68, 0.12 ) --[[ @ 0]]
			f15_arg0.StoreCommonTextBacking:setAlpha( 0.6 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.StoreCommonTextBacking ) --[[ @ 0]]
			f15_arg0.SelectionOverlay:completeAnimation() --[[ @ 0]]
			f15_arg0.SelectionOverlay:setAlpha( 0.03 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.SelectionOverlay ) --[[ @ 0]]
		end,
		ActiveToActiveAndChildFocus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.StoreCommonTextBacking:beginAnimation( 100 ) --[[ @ 0]]
				f16_arg0.StoreCommonTextBacking:setRGB( 1, 0.68, 0.12 ) --[[ @ 0]]
				f16_arg0.StoreCommonTextBacking:setAlpha( 0.6 ) --[[ @ 0]]
				f16_arg0.StoreCommonTextBacking:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.StoreCommonTextBacking:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.StoreCommonTextBacking:completeAnimation() --[[ @ 0]]
			f16_arg0.StoreCommonTextBacking:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f16_arg0.StoreCommonTextBacking:setAlpha( 0.4 ) --[[ @ 0]]
			f16_local0( f16_arg0.StoreCommonTextBacking ) --[[ @ 0]]
			local f16_local1 = function ( f18_arg0 )
				f16_arg0.SelectionOverlay:beginAnimation( 100 ) --[[ @ 0]]
				f16_arg0.SelectionOverlay:setAlpha( 0.03 ) --[[ @ 0]]
				f16_arg0.SelectionOverlay:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.SelectionOverlay:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.SelectionOverlay:completeAnimation() --[[ @ 0]]
			f16_arg0.SelectionOverlay:setAlpha( 0.01 ) --[[ @ 0]]
			f16_local1( f16_arg0.SelectionOverlay ) --[[ @ 0]]
			f16_arg0.ButtonFrame:completeAnimation() --[[ @ 0]]
			f16_arg0.ButtonFrame:setAlpha( 1 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.ButtonFrame ) --[[ @ 0]]
		end,
		ActiveAndChildFocusToActive = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				f19_arg0.StoreCommonTextBacking:beginAnimation( 100 ) --[[ @ 0]]
				f19_arg0.StoreCommonTextBacking:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f19_arg0.StoreCommonTextBacking:setAlpha( 0.4 ) --[[ @ 0]]
				f19_arg0.StoreCommonTextBacking:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.StoreCommonTextBacking:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.StoreCommonTextBacking:completeAnimation() --[[ @ 0]]
			f19_arg0.StoreCommonTextBacking:setRGB( 1, 0.68, 0.12 ) --[[ @ 0]]
			f19_arg0.StoreCommonTextBacking:setAlpha( 0.6 ) --[[ @ 0]]
			f19_local0( f19_arg0.StoreCommonTextBacking ) --[[ @ 0]]
			local f19_local1 = function ( f21_arg0 )
				f19_arg0.SelectionOverlay:beginAnimation( 100 ) --[[ @ 0]]
				f19_arg0.SelectionOverlay:setAlpha( 0.01 ) --[[ @ 0]]
				f19_arg0.SelectionOverlay:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.SelectionOverlay:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.SelectionOverlay:completeAnimation() --[[ @ 0]]
			f19_arg0.SelectionOverlay:setAlpha( 0.03 ) --[[ @ 0]]
			f19_local1( f19_arg0.SelectionOverlay ) --[[ @ 0]]
			f19_arg0.ButtonFrame:completeAnimation() --[[ @ 0]]
			f19_arg0.ButtonFrame:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.ButtonFrame ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f22_arg0.BracketL:completeAnimation() --[[ @ 0]]
			f22_arg0.BracketL:setAlpha( 0.5 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.BracketL ) --[[ @ 0]]
			f22_arg0.BracketR:completeAnimation() --[[ @ 0]]
			f22_arg0.BracketR:setAlpha( 0.5 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.BracketR ) --[[ @ 0]]
			f22_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
			f22_arg0.LockedIcon:setAlpha( 0.02 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.LockedIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
if not CoD.isPC then
	CoD.ArchivesVideoButtonInternal.__clipsPerState.DefaultState.Active = nil --[[ @ 0]]
	CoD.ArchivesVideoButtonInternal.__clipsPerState.DefaultState.ActiveAndChildFocus = nil --[[ @ 0]]
	CoD.ArchivesVideoButtonInternal.__clipsPerState.DefaultState.ActiveToActiveAndChildFocus = nil --[[ @ 0]]
	CoD.ArchivesVideoButtonInternal.__clipsPerState.DefaultState.ActiveAndChildFocusToActive = nil --[[ @ 0]]
end
CoD.ArchivesVideoButtonInternal.__onClose = function ( f23_arg0 )
	f23_arg0.StoreCommonTextBacking:close() --[[ @ 0]]
	f23_arg0.ButtonFrame:close() --[[ @ 0]]
	f23_arg0.ButtonText:close() --[[ @ 0]]
end
 --[[ @ 0]]
