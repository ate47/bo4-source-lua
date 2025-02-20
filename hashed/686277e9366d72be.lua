-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/common/commonsocialarrow" ) --[[ @ 0]]

CoD.TabletIcePickHackDetectionBar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TabletIcePickHackDetectionBar.__defaultWidth = 115 --[[ @ 0]]
CoD.TabletIcePickHackDetectionBar.__defaultHeight = 20 --[[ @ 0]]
CoD.TabletIcePickHackDetectionBar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TabletIcePickHackDetectionBar ) --[[ @ 0]]
	self.id = "TabletIcePickHackDetectionBar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BG = LUI.UIImage.new( 0, 0, -37.5, 152.5, 0.09, 0.09, -1.5, 18.5 ) --[[ @ 0]]
	BG:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	BG:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	BG:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BG:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( BG ) --[[ @ 0]]
	self.BG = BG --[[ @ 0]]
	
	local Glow = LUI.UIImage.new( 0, 0, -114.5, 225.5, 0, 0, -60, 80 ) --[[ @ 0]]
	Glow:setImage( RegisterImage( @"hash_5F3052FD0F0098FB" ) ) --[[ @ 0]]
	Glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Glow:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Glow ) --[[ @ 0]]
	self.Glow = Glow --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0.5, 0.5, -200, 200, 0, 0, 26.5, 47.5 ) --[[ @ 0]]
	Title:setRGB( 0.22, 0.77, 1 ) --[[ @ 0]]
	Title:setText( LocalizeToUpperString( @"hash_759519CFCE1BB1DB" ) ) --[[ @ 0]]
	Title:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Title:setLetterSpacing( 4 ) --[[ @ 0]]
	Title:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local FillFrame = LUI.UIImage.new( 0, 0, -50.5, 165.5, 0, 0, -12, 32 ) --[[ @ 0]]
	FillFrame:setRGB( 0.02, 0.59, 0.99 ) --[[ @ 0]]
	FillFrame:setImage( RegisterImage( @"hash_22AABF859E4BD498" ) ) --[[ @ 0]]
	FillFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FillFrame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FillFrame:setupNineSliceShader( 216, 44 ) --[[ @ 0]]
	self:addElement( FillFrame ) --[[ @ 0]]
	self.FillFrame = FillFrame --[[ @ 0]]
	
	local FillFrame2 = LUI.UIImage.new( 0, 0, -50.5, 165.5, 0, 0, -12, 32 ) --[[ @ 0]]
	FillFrame2:setRGB( 0.02, 0.59, 0.99 ) --[[ @ 0]]
	FillFrame2:setAlpha( 0 ) --[[ @ 0]]
	FillFrame2:setImage( RegisterImage( @"hash_22AABF859E4BD498" ) ) --[[ @ 0]]
	FillFrame2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FillFrame2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FillFrame2:setupNineSliceShader( 216, 44 ) --[[ @ 0]]
	self:addElement( FillFrame2 ) --[[ @ 0]]
	self.FillFrame2 = FillFrame2 --[[ @ 0]]
	
	local Stripe = LUI.UIImage.new( 0, 0, -38.5, 153.5, 0, 0, -1.5, 22.5 ) --[[ @ 0]]
	Stripe:setImage( RegisterImage( @"hash_1A7E361974EC3A2E" ) ) --[[ @ 0]]
	Stripe:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll_animated" ) ) --[[ @ 0]]
	Stripe:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Stripe:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	Stripe:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	Stripe:setShaderVector( 3, 1, 1, 0, 0 ) --[[ @ 0]]
	Stripe:setShaderVector( 4, 1, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( Stripe ) --[[ @ 0]]
	self.Stripe = Stripe --[[ @ 0]]
	
	local EdgeRight = LUI.UIImage.new( 0, 0, -48.5, -40.5, 0, 0, -1.5, 22.5 ) --[[ @ 0]]
	EdgeRight:setImage( RegisterImage( @"hash_A8B500A007A9B7C" ) ) --[[ @ 0]]
	EdgeRight:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	EdgeRight:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( EdgeRight ) --[[ @ 0]]
	self.EdgeRight = EdgeRight --[[ @ 0]]
	
	local EdgeLeft = LUI.UIImage.new( 0, 0, 163.5, 155.5, 0, 0, -1.5, 22.5 ) --[[ @ 0]]
	EdgeLeft:setImage( RegisterImage( @"hash_A8B500A007A9B7C" ) ) --[[ @ 0]]
	EdgeLeft:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	EdgeLeft:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( EdgeLeft ) --[[ @ 0]]
	self.EdgeLeft = EdgeLeft --[[ @ 0]]
	
	local Fill = LUI.UIImage.new( 0.5, 0.5, -95, 95, 0, 0, 0, 20 ) --[[ @ 0]]
	Fill:setRGB( 0.02, 0.59, 0.99 ) --[[ @ 0]]
	Fill:setAlpha( 0.2 ) --[[ @ 0]]
	Fill:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	Fill:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Fill:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	Fill:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	Fill:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	Fill:linkToElementModel( self, "detectionProgress", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Fill:setShaderVector( 0, CoD.GetVectorComponentFromString( f2_local0, 1 ), CoD.GetVectorComponentFromString( f2_local0, 2 ), CoD.GetVectorComponentFromString( f2_local0, 3 ), CoD.GetVectorComponentFromString( f2_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Fill ) --[[ @ 0]]
	self.Fill = Fill --[[ @ 0]]
	
	local Fill2 = LUI.UIImage.new( 0.5, 0.5, -95, 95, 0, 0, 0, 20 ) --[[ @ 0]]
	Fill2:setRGB( 0.22, 0.77, 1 ) --[[ @ 0]]
	Fill2:setAlpha( 0.6 ) --[[ @ 0]]
	Fill2:setImage( RegisterImage( @"hash_583C3A03D42E5F7A" ) ) --[[ @ 0]]
	Fill2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	Fill2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Fill2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	Fill2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	Fill2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	Fill2:linkToElementModel( self, "detectionProgress", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Fill2:setShaderVector( 0, CoD.GetVectorComponentFromString( f3_local0, 1 ), CoD.GetVectorComponentFromString( f3_local0, 2 ), CoD.GetVectorComponentFromString( f3_local0, 3 ), CoD.GetVectorComponentFromString( f3_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Fill2 ) --[[ @ 0]]
	self.Fill2 = Fill2 --[[ @ 0]]
	
	local CommonSocialArrowL = CoD.CommonSocialArrow.new( f1_arg0, f1_arg1, 0, 0, -79.5, -55.5, 0, 0, 32, 44 ) --[[ @ 0]]
	CommonSocialArrowL:setRGB( 1, 0, 0 ) --[[ @ 0]]
	CommonSocialArrowL:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( CommonSocialArrowL ) --[[ @ 0]]
	self.CommonSocialArrowL = CommonSocialArrowL --[[ @ 0]]
	
	local CommonSocialArrowR = CoD.CommonSocialArrow.new( f1_arg0, f1_arg1, 0, 0, 171.5, 195.5, 0, 0, 32, 44 ) --[[ @ 0]]
	CommonSocialArrowR:setRGB( 1, 0, 0 ) --[[ @ 0]]
	CommonSocialArrowR:setAlpha( 0 ) --[[ @ 0]]
	CommonSocialArrowR:setZRot( 180 ) --[[ @ 0]]
	self:addElement( CommonSocialArrowR ) --[[ @ 0]]
	self.CommonSocialArrowR = CommonSocialArrowR --[[ @ 0]]
	
	local warning = LUI.UIText.new( 0, 0, -44.5, 155.5, 0, 0, 0, 21 ) --[[ @ 0]]
	warning:setRGB( 1, 0, 0 ) --[[ @ 0]]
	warning:setAlpha( 0 ) --[[ @ 0]]
	warning:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3DBDEBD27773724A" ) ) --[[ @ 0]]
	warning:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	warning:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_3336C1AE82B1520A" ) ) --[[ @ 0]]
	warning:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	warning:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( warning ) --[[ @ 0]]
	self.warning = warning --[[ @ 0]]
	
	local LayoutLabelL = LUI.UIImage.new( 0, 0, -234, -166, 0, 0, 30, 46 ) --[[ @ 0]]
	LayoutLabelL:setRGB( 0.22, 0.77, 1 ) --[[ @ 0]]
	LayoutLabelL:setAlpha( 0.4 ) --[[ @ 0]]
	LayoutLabelL:setZRot( 180 ) --[[ @ 0]]
	LayoutLabelL:setImage( RegisterImage( @"uie_ui_hud_tak5_layout_common_element03" ) ) --[[ @ 0]]
	LayoutLabelL:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( LayoutLabelL ) --[[ @ 0]]
	self.LayoutLabelL = LayoutLabelL --[[ @ 0]]
	
	local LayoutLabelR = LUI.UIImage.new( 0, 0, 280, 348, 0, 0, 30, 46 ) --[[ @ 0]]
	LayoutLabelR:setRGB( 0.22, 0.77, 1 ) --[[ @ 0]]
	LayoutLabelR:setAlpha( 0.4 ) --[[ @ 0]]
	LayoutLabelR:setImage( RegisterImage( @"uie_ui_hud_tak5_layout_common_element03" ) ) --[[ @ 0]]
	LayoutLabelR:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( LayoutLabelR ) --[[ @ 0]]
	self.LayoutLabelR = LayoutLabelR --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Detected",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueGreaterThan( f1_arg1, "IcePickInfo.hackStarted", 0 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local16 = self --[[ @ 0]]
	local f1_local17 = self.subscribeToModel --[[ @ 0]]
	local f1_local18 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local17( f1_local16, f1_local18["IcePickInfo.hackStarted"], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "IcePickInfo.hackStarted"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.TabletIcePickHackDetectionBar.__resetProperties = function ( f6_arg0 )
	f6_arg0.EdgeRight:completeAnimation() --[[ @ 0]]
	f6_arg0.EdgeLeft:completeAnimation() --[[ @ 0]]
	f6_arg0.Stripe:completeAnimation() --[[ @ 0]]
	f6_arg0.Glow:completeAnimation() --[[ @ 0]]
	f6_arg0.Title:completeAnimation() --[[ @ 0]]
	f6_arg0.LayoutLabelR:completeAnimation() --[[ @ 0]]
	f6_arg0.LayoutLabelL:completeAnimation() --[[ @ 0]]
	f6_arg0.FillFrame:completeAnimation() --[[ @ 0]]
	f6_arg0.Fill2:completeAnimation() --[[ @ 0]]
	f6_arg0.CommonSocialArrowL:completeAnimation() --[[ @ 0]]
	f6_arg0.CommonSocialArrowR:completeAnimation() --[[ @ 0]]
	f6_arg0.Fill:completeAnimation() --[[ @ 0]]
	f6_arg0.warning:completeAnimation() --[[ @ 0]]
	f6_arg0.FillFrame2:completeAnimation() --[[ @ 0]]
	f6_arg0.EdgeRight:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.EdgeRight:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	f6_arg0.EdgeLeft:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.EdgeLeft:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	f6_arg0.Stripe:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.Stripe:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	f6_arg0.Stripe:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	f6_arg0.Stripe:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	f6_arg0.Stripe:setShaderVector( 3, 1, 1, 0, 0 ) --[[ @ 0]]
	f6_arg0.Stripe:setShaderVector( 4, 1, 1, 0, 0 ) --[[ @ 0]]
	f6_arg0.Glow:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.Glow:setScale( 1, 1 ) --[[ @ 0]]
	f6_arg0.Glow:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f6_arg0.Title:setRGB( 0.22, 0.77, 1 ) --[[ @ 0]]
	f6_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.Title:setText( LocalizeToUpperString( @"hash_759519CFCE1BB1DB" ) ) --[[ @ 0]]
	f6_arg0.LayoutLabelR:setRGB( 0.22, 0.77, 1 ) --[[ @ 0]]
	f6_arg0.LayoutLabelR:setAlpha( 0.4 ) --[[ @ 0]]
	f6_arg0.LayoutLabelL:setRGB( 0.22, 0.77, 1 ) --[[ @ 0]]
	f6_arg0.LayoutLabelL:setAlpha( 0.4 ) --[[ @ 0]]
	f6_arg0.FillFrame:setRGB( 0.02, 0.59, 0.99 ) --[[ @ 0]]
	f6_arg0.Fill2:setAlpha( 0.6 ) --[[ @ 0]]
	f6_arg0.CommonSocialArrowL:setRGB( 1, 0, 0 ) --[[ @ 0]]
	f6_arg0.CommonSocialArrowL:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.CommonSocialArrowR:setRGB( 1, 0, 0 ) --[[ @ 0]]
	f6_arg0.CommonSocialArrowR:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.Fill:setAlpha( 0.2 ) --[[ @ 0]]
	f6_arg0.warning:setRGB( 1, 0, 0 ) --[[ @ 0]]
	f6_arg0.warning:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.FillFrame2:setRGB( 0.02, 0.59, 0.99 ) --[[ @ 0]]
	f6_arg0.FillFrame2:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TabletIcePickHackDetectionBar.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f7_arg0.Glow:completeAnimation() --[[ @ 0]]
			f7_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Glow ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f9_arg0:setAlpha( 1 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.Title:beginAnimation( 1000 ) --[[ @ 0]]
				f7_arg0.Title:setAlpha( 0.3 ) --[[ @ 0]]
				f7_arg0.Title:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.Title:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.Title:completeAnimation() --[[ @ 0]]
			f7_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
			f7_local0( f7_arg0.Title ) --[[ @ 0]]
			f7_arg0.Stripe:completeAnimation() --[[ @ 0]]
			f7_arg0.Stripe:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Stripe ) --[[ @ 0]]
			f7_arg0.EdgeRight:completeAnimation() --[[ @ 0]]
			f7_arg0.EdgeRight:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.EdgeRight ) --[[ @ 0]]
			f7_arg0.EdgeLeft:completeAnimation() --[[ @ 0]]
			f7_arg0.EdgeLeft:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.EdgeLeft ) --[[ @ 0]]
			local f7_local1 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					f11_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f11_arg0:setAlpha( 0.4 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.LayoutLabelL:beginAnimation( 1000 ) --[[ @ 0]]
				f7_arg0.LayoutLabelL:setAlpha( 0.1 ) --[[ @ 0]]
				f7_arg0.LayoutLabelL:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.LayoutLabelL:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.LayoutLabelL:completeAnimation() --[[ @ 0]]
			f7_arg0.LayoutLabelL:setAlpha( 0.4 ) --[[ @ 0]]
			f7_local1( f7_arg0.LayoutLabelL ) --[[ @ 0]]
			local f7_local2 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					f13_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f13_arg0:setAlpha( 0.4 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.LayoutLabelR:beginAnimation( 1000 ) --[[ @ 0]]
				f7_arg0.LayoutLabelR:setAlpha( 0.1 ) --[[ @ 0]]
				f7_arg0.LayoutLabelR:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.LayoutLabelR:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.LayoutLabelR:completeAnimation() --[[ @ 0]]
			f7_arg0.LayoutLabelR:setRGB( 0.22, 0.77, 1 ) --[[ @ 0]]
			f7_arg0.LayoutLabelR:setAlpha( 0.4 ) --[[ @ 0]]
			f7_local2( f7_arg0.LayoutLabelR ) --[[ @ 0]]
			f7_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end,
		Detected = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 14 ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				f14_arg0.Glow:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.Glow:setScale( 0.8, 0.4 ) --[[ @ 0]]
				f14_arg0.Glow:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.Glow:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.Glow:completeAnimation() --[[ @ 0]]
			f14_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.Glow:setScale( 1, 1 ) --[[ @ 0]]
			f14_arg0.Glow:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f14_local0( f14_arg0.Glow ) --[[ @ 0]]
			local f14_local1 = function ( f16_arg0 )
				f14_arg0.Title:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.Title:setRGB( 1, 0, 0 ) --[[ @ 0]]
				f14_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
				f14_arg0.Title:setText( LocalizeToUpperString( @"hash_2BFBA1BAC637A9AD" ) ) --[[ @ 0]]
				f14_arg0.Title:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.Title:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.Title:completeAnimation() --[[ @ 0]]
			f14_arg0.Title:setRGB( 0.22, 0.77, 1 ) --[[ @ 0]]
			f14_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.Title:setText( LocalizeToUpperString( @"hash_759519CFCE1BB1DB" ) ) --[[ @ 0]]
			f14_local1( f14_arg0.Title ) --[[ @ 0]]
			local f14_local2 = function ( f17_arg0 )
				f14_arg0.FillFrame:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.FillFrame:setRGB( 1, 0, 0 ) --[[ @ 0]]
				f14_arg0.FillFrame:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.FillFrame:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.FillFrame:completeAnimation() --[[ @ 0]]
			f14_arg0.FillFrame:setRGB( 0.02, 0.59, 0.99 ) --[[ @ 0]]
			f14_local2( f14_arg0.FillFrame ) --[[ @ 0]]
			local f14_local3 = function ( f18_arg0 )
				f14_arg0.FillFrame2:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.FillFrame2:setRGB( 1, 0, 0 ) --[[ @ 0]]
				f14_arg0.FillFrame2:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.FillFrame2:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.FillFrame2:completeAnimation() --[[ @ 0]]
			f14_arg0.FillFrame2:setRGB( 0.02, 0.59, 0.99 ) --[[ @ 0]]
			f14_arg0.FillFrame2:setAlpha( 0 ) --[[ @ 0]]
			f14_local3( f14_arg0.FillFrame2 ) --[[ @ 0]]
			local f14_local4 = function ( f19_arg0 )
				f14_arg0.Stripe:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.Stripe:setAlpha( 1 ) --[[ @ 0]]
				f14_arg0.Stripe:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.Stripe:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.Stripe:completeAnimation() --[[ @ 0]]
			f14_arg0.Stripe:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.Stripe:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f14_arg0.Stripe:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
			f14_arg0.Stripe:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
			f14_arg0.Stripe:setShaderVector( 3, 1, 1, 0, 0 ) --[[ @ 0]]
			f14_arg0.Stripe:setShaderVector( 4, 1, 1, 0, 0 ) --[[ @ 0]]
			f14_local4( f14_arg0.Stripe ) --[[ @ 0]]
			local f14_local5 = function ( f20_arg0 )
				f14_arg0.EdgeRight:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.EdgeRight:setAlpha( 1 ) --[[ @ 0]]
				f14_arg0.EdgeRight:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.EdgeRight:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.EdgeRight:completeAnimation() --[[ @ 0]]
			f14_arg0.EdgeRight:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.EdgeRight:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
			f14_local5( f14_arg0.EdgeRight ) --[[ @ 0]]
			local f14_local6 = function ( f21_arg0 )
				f14_arg0.EdgeLeft:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.EdgeLeft:setAlpha( 1 ) --[[ @ 0]]
				f14_arg0.EdgeLeft:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.EdgeLeft:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.EdgeLeft:completeAnimation() --[[ @ 0]]
			f14_arg0.EdgeLeft:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.EdgeLeft:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
			f14_local6( f14_arg0.EdgeLeft ) --[[ @ 0]]
			local f14_local7 = function ( f22_arg0 )
				f14_arg0.Fill:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.Fill:setAlpha( 0 ) --[[ @ 0]]
				f14_arg0.Fill:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.Fill:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.Fill:completeAnimation() --[[ @ 0]]
			f14_arg0.Fill:setAlpha( 0.2 ) --[[ @ 0]]
			f14_local7( f14_arg0.Fill ) --[[ @ 0]]
			local f14_local8 = function ( f23_arg0 )
				f14_arg0.Fill2:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.Fill2:setAlpha( 0 ) --[[ @ 0]]
				f14_arg0.Fill2:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.Fill2:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.Fill2:completeAnimation() --[[ @ 0]]
			f14_arg0.Fill2:setAlpha( 0.6 ) --[[ @ 0]]
			f14_local8( f14_arg0.Fill2 ) --[[ @ 0]]
			local f14_local9 = function ( f24_arg0 )
				f14_arg0.CommonSocialArrowL:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.CommonSocialArrowL:setAlpha( 1 ) --[[ @ 0]]
				f14_arg0.CommonSocialArrowL:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.CommonSocialArrowL:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.CommonSocialArrowL:completeAnimation() --[[ @ 0]]
			f14_arg0.CommonSocialArrowL:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f14_arg0.CommonSocialArrowL:setAlpha( 0 ) --[[ @ 0]]
			f14_local9( f14_arg0.CommonSocialArrowL ) --[[ @ 0]]
			local f14_local10 = function ( f25_arg0 )
				f14_arg0.CommonSocialArrowR:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.CommonSocialArrowR:setAlpha( 1 ) --[[ @ 0]]
				f14_arg0.CommonSocialArrowR:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.CommonSocialArrowR:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.CommonSocialArrowR:completeAnimation() --[[ @ 0]]
			f14_arg0.CommonSocialArrowR:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f14_arg0.CommonSocialArrowR:setAlpha( 0 ) --[[ @ 0]]
			f14_local10( f14_arg0.CommonSocialArrowR ) --[[ @ 0]]
			local f14_local11 = function ( f26_arg0 )
				f14_arg0.warning:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.warning:setAlpha( 1 ) --[[ @ 0]]
				f14_arg0.warning:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.warning:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.warning:completeAnimation() --[[ @ 0]]
			f14_arg0.warning:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f14_arg0.warning:setAlpha( 0 ) --[[ @ 0]]
			f14_local11( f14_arg0.warning ) --[[ @ 0]]
			local f14_local12 = function ( f27_arg0 )
				f14_arg0.LayoutLabelL:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.LayoutLabelL:setRGB( 1, 0.07, 0 ) --[[ @ 0]]
				f14_arg0.LayoutLabelL:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.LayoutLabelL:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.LayoutLabelL:completeAnimation() --[[ @ 0]]
			f14_arg0.LayoutLabelL:setRGB( 0.22, 0.77, 1 ) --[[ @ 0]]
			f14_local12( f14_arg0.LayoutLabelL ) --[[ @ 0]]
			local f14_local13 = function ( f28_arg0 )
				f14_arg0.LayoutLabelR:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.LayoutLabelR:setRGB( 1, 0.07, 0 ) --[[ @ 0]]
				f14_arg0.LayoutLabelR:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.LayoutLabelR:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.LayoutLabelR:completeAnimation() --[[ @ 0]]
			f14_arg0.LayoutLabelR:setRGB( 0.22, 0.77, 1 ) --[[ @ 0]]
			f14_local13( f14_arg0.LayoutLabelR ) --[[ @ 0]]
		end
	},
	Detected = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 14 ) --[[ @ 0]]
			local f29_local0 = function ( f30_arg0 )
				local f30_local0 = function ( f31_arg0 )
					f31_arg0:beginAnimation( 800 ) --[[ @ 0]]
					f31_arg0:setAlpha( 0 ) --[[ @ 0]]
					f31_arg0:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f29_arg0.Glow:beginAnimation( 800 ) --[[ @ 0]]
				f29_arg0.Glow:setAlpha( 0.8 ) --[[ @ 0]]
				f29_arg0.Glow:setScale( 1, 1 ) --[[ @ 0]]
				f29_arg0.Glow:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.Glow:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.Glow:completeAnimation() --[[ @ 0]]
			f29_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.Glow:setScale( 0.8, 0.4 ) --[[ @ 0]]
			f29_arg0.Glow:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f29_local0( f29_arg0.Glow ) --[[ @ 0]]
			local f29_local1 = function ( f32_arg0 )
				local f32_local0 = function ( f33_arg0 )
					f33_arg0:beginAnimation( 800 ) --[[ @ 0]]
					f33_arg0:setAlpha( 0 ) --[[ @ 0]]
					f33_arg0:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f29_arg0.Title:beginAnimation( 800 ) --[[ @ 0]]
				f29_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
				f29_arg0.Title:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.Title:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.Title:completeAnimation() --[[ @ 0]]
			f29_arg0.Title:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f29_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.Title:setText( LocalizeToUpperString( @"hash_2BFBA1BAC637A9AD" ) ) --[[ @ 0]]
			f29_local1( f29_arg0.Title ) --[[ @ 0]]
			f29_arg0.FillFrame:completeAnimation() --[[ @ 0]]
			f29_arg0.FillFrame:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.FillFrame ) --[[ @ 0]]
			local f29_local2 = function ( f34_arg0 )
				local f34_local0 = function ( f35_arg0 )
					f35_arg0:beginAnimation( 800 ) --[[ @ 0]]
					f35_arg0:setAlpha( 0 ) --[[ @ 0]]
					f35_arg0:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f29_arg0.FillFrame2:beginAnimation( 800 ) --[[ @ 0]]
				f29_arg0.FillFrame2:setAlpha( 1 ) --[[ @ 0]]
				f29_arg0.FillFrame2:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.FillFrame2:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.FillFrame2:completeAnimation() --[[ @ 0]]
			f29_arg0.FillFrame2:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f29_arg0.FillFrame2:setAlpha( 0 ) --[[ @ 0]]
			f29_local2( f29_arg0.FillFrame2 ) --[[ @ 0]]
			local f29_local3 = function ( f36_arg0 )
				f29_arg0.Stripe:beginAnimation( 1600 ) --[[ @ 0]]
				f29_arg0.Stripe:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
				f29_arg0.Stripe:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.Stripe:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.Stripe:completeAnimation() --[[ @ 0]]
			f29_arg0.Stripe:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f29_arg0.Stripe:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
			f29_arg0.Stripe:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
			f29_arg0.Stripe:setShaderVector( 3, 1, 1, 0, 0 ) --[[ @ 0]]
			f29_arg0.Stripe:setShaderVector( 4, 1, 1, 0, 0 ) --[[ @ 0]]
			f29_local3( f29_arg0.Stripe ) --[[ @ 0]]
			local f29_local4 = function ( f37_arg0 )
				local f37_local0 = function ( f38_arg0 )
					f38_arg0:beginAnimation( 800 ) --[[ @ 0]]
					f38_arg0:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
					f38_arg0:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f29_arg0.EdgeRight:beginAnimation( 800 ) --[[ @ 0]]
				f29_arg0.EdgeRight:setShaderVector( 0, 3, 0, 0, 0 ) --[[ @ 0]]
				f29_arg0.EdgeRight:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.EdgeRight:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.EdgeRight:completeAnimation() --[[ @ 0]]
			f29_arg0.EdgeRight:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
			f29_local4( f29_arg0.EdgeRight ) --[[ @ 0]]
			local f29_local5 = function ( f39_arg0 )
				local f39_local0 = function ( f40_arg0 )
					f40_arg0:beginAnimation( 800 ) --[[ @ 0]]
					f40_arg0:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
					f40_arg0:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f29_arg0.EdgeLeft:beginAnimation( 800 ) --[[ @ 0]]
				f29_arg0.EdgeLeft:setShaderVector( 0, 3, 0, 0, 0 ) --[[ @ 0]]
				f29_arg0.EdgeLeft:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.EdgeLeft:registerEventHandler( "transition_complete_keyframe", f39_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.EdgeLeft:completeAnimation() --[[ @ 0]]
			f29_arg0.EdgeLeft:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
			f29_local5( f29_arg0.EdgeLeft ) --[[ @ 0]]
			f29_arg0.Fill:completeAnimation() --[[ @ 0]]
			f29_arg0.Fill:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.Fill ) --[[ @ 0]]
			f29_arg0.Fill2:completeAnimation() --[[ @ 0]]
			f29_arg0.Fill2:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.Fill2 ) --[[ @ 0]]
			f29_arg0.CommonSocialArrowL:completeAnimation() --[[ @ 0]]
			f29_arg0.CommonSocialArrowL:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f29_arg0.CommonSocialArrowL:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.CommonSocialArrowL ) --[[ @ 0]]
			f29_arg0.CommonSocialArrowR:completeAnimation() --[[ @ 0]]
			f29_arg0.CommonSocialArrowR:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f29_arg0.CommonSocialArrowR:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.CommonSocialArrowR ) --[[ @ 0]]
			local f29_local6 = function ( f41_arg0 )
				local f41_local0 = function ( f42_arg0 )
					local f42_local0 = function ( f43_arg0 )
						local f43_local0 = function ( f44_arg0 )
							f44_arg0:beginAnimation( 399 ) --[[ @ 0]]
							f44_arg0:setRGB( 1, 0, 0 ) --[[ @ 0]]
							f44_arg0:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f43_arg0:beginAnimation( 400 ) --[[ @ 0]]
						f43_arg0:setRGB( 1, 0.92, 0.92 ) --[[ @ 0]]
						f43_arg0:registerEventHandler( "transition_complete_keyframe", f43_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f42_arg0:beginAnimation( 400 ) --[[ @ 0]]
					f42_arg0:setRGB( 1, 0, 0 ) --[[ @ 0]]
					f42_arg0:registerEventHandler( "transition_complete_keyframe", f42_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f29_arg0.warning:beginAnimation( 400 ) --[[ @ 0]]
				f29_arg0.warning:setRGB( 1, 0.92, 0.92 ) --[[ @ 0]]
				f29_arg0.warning:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.warning:registerEventHandler( "transition_complete_keyframe", f41_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.warning:completeAnimation() --[[ @ 0]]
			f29_arg0.warning:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f29_arg0.warning:setAlpha( 1 ) --[[ @ 0]]
			f29_local6( f29_arg0.warning ) --[[ @ 0]]
			f29_arg0.LayoutLabelL:completeAnimation() --[[ @ 0]]
			f29_arg0.LayoutLabelL:setRGB( 1, 0.07, 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.LayoutLabelL ) --[[ @ 0]]
			f29_arg0.LayoutLabelR:completeAnimation() --[[ @ 0]]
			f29_arg0.LayoutLabelR:setRGB( 1, 0.07, 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.LayoutLabelR ) --[[ @ 0]]
			f29_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.TabletIcePickHackDetectionBar.__onClose = function ( f45_arg0 )
	f45_arg0.Fill:close() --[[ @ 0]]
	f45_arg0.Fill2:close() --[[ @ 0]]
	f45_arg0.CommonSocialArrowL:close() --[[ @ 0]]
	f45_arg0.CommonSocialArrowR:close() --[[ @ 0]]
end
 --[[ @ 0]]
