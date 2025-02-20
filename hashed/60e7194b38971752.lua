-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:213633ff3df9547a" ) --[[ @ 0]]
require( "x64:3f4503439f328738" ) --[[ @ 0]]
require( "x64:23e426332d66c91e" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directorselectbuttonlines" ) --[[ @ 0]]
require( "x64:6fa09a25709d5433" ) --[[ @ 0]]

CoD.WeaponBribeItemInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WeaponBribeItemInternal.__defaultWidth = 274 --[[ @ 0]]
CoD.WeaponBribeItemInternal.__defaultHeight = 126 --[[ @ 0]]
CoD.WeaponBribeItemInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WeaponBribeItemInternal ) --[[ @ 0]]
	self.id = "WeaponBribeItemInternal" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BGGray = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BGGray:setRGB( 0.2, 0.2, 0.2 ) --[[ @ 0]]
	BGGray:setAlpha( 0.99 ) --[[ @ 0]]
	self:addElement( BGGray ) --[[ @ 0]]
	self.BGGray = BGGray --[[ @ 0]]
	
	local FocusGlow = LUI.UIImage.new( 0, 1, -49, 49, 0, 1, -49, 49 ) --[[ @ 0]]
	FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	FocusGlow:setImage( RegisterImage( @"uie_ui_menu_common_focus_glow_small" ) ) --[[ @ 0]]
	FocusGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FocusGlow:setShaderVector( 0, 0, 0, 0.25, 0.25 ) --[[ @ 0]]
	FocusGlow:setShaderVector( 1, 1.2, 0, 0, 0 ) --[[ @ 0]]
	FocusGlow:setupNineSliceShader( 100, 100 ) --[[ @ 0]]
	self:addElement( FocusGlow ) --[[ @ 0]]
	self.FocusGlow = FocusGlow --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local FrameBorder = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	FrameBorder:setAlpha( 0.15 ) --[[ @ 0]]
	FrameBorder:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrameBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrameBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameBorder:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrameBorder ) --[[ @ 0]]
	self.FrameBorder = FrameBorder --[[ @ 0]]
	
	local Lines = CoD.DirectorSelectButtonLines.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 1, -1 ) --[[ @ 0]]
	Lines:setRGB( 0.64, 0.71, 0.78 ) --[[ @ 0]]
	self:addElement( Lines ) --[[ @ 0]]
	self.Lines = Lines --[[ @ 0]]
	
	local FocusBorder = LUI.UIImage.new( 0, 1, -4, 4, 0, 1, -3, 3 ) --[[ @ 0]]
	FocusBorder:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
	FocusBorder:setAlpha( 0 ) --[[ @ 0]]
	FocusBorder:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FocusBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FocusBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FocusBorder:setupNineSliceShader( 10, 10 ) --[[ @ 0]]
	self:addElement( FocusBorder ) --[[ @ 0]]
	self.FocusBorder = FocusBorder --[[ @ 0]]
	
	local FocusBrackets = CoD.CommonFocusBrackets.new( f1_arg0, f1_arg1, 0, 1, -20, 20, 0, 1, -20, 20 ) --[[ @ 0]]
	FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( FocusBrackets ) --[[ @ 0]]
	self.FocusBrackets = FocusBrackets --[[ @ 0]]
	
	local BGDotPatternLarge = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BGDotPatternLarge:setAlpha( 0.01 ) --[[ @ 0]]
	BGDotPatternLarge:setImage( RegisterImage( @"hash_7FC21A8215EA012B" ) ) --[[ @ 0]]
	BGDotPatternLarge:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	BGDotPatternLarge:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BGDotPatternLarge:setupNineSliceShader( 4, 4 ) --[[ @ 0]]
	self:addElement( BGDotPatternLarge ) --[[ @ 0]]
	self.BGDotPatternLarge = BGDotPatternLarge --[[ @ 0]]
	
	local BGGlow = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BGGlow:setAlpha( 0.3 ) --[[ @ 0]]
	BGGlow:setImage( RegisterImage( @"uie_ui_menu_common_button_bg_glow_large" ) ) --[[ @ 0]]
	BGGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( BGGlow ) --[[ @ 0]]
	self.BGGlow = BGGlow --[[ @ 0]]
	
	local SignatureBonusExp = CoD.Mark2BonusExpBadge.new( f1_arg0, f1_arg1, 0, 0, 7, 267, 0, 0, 75, 93 ) --[[ @ 0]]
	SignatureBonusExp:linkToElementModel( self, nil, false, function ( model )
		SignatureBonusExp:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( SignatureBonusExp ) --[[ @ 0]]
	self.SignatureBonusExp = SignatureBonusExp --[[ @ 0]]
	
	local WeaponImage = LUI.UIFixedAspectRatioImage.new( 0.5, 0.5, -65, 57, 0.5, 0.5, -53, 18 ) --[[ @ 0]]
	WeaponImage:setZoom( 3 ) --[[ @ 0]]
	WeaponImage:linkToElementModel( self, "image", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			WeaponImage:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( WeaponImage ) --[[ @ 0]]
	self.WeaponImage = WeaponImage --[[ @ 0]]
	
	local WeaponName = CoD.WeaponSelectGridItemInternalName.new( f1_arg0, f1_arg1, 0, 0, 7, 267, 0, 0, 95, 113 ) --[[ @ 0]]
	WeaponName:linkToElementModel( self, "name", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			WeaponName.WeaponName:setText( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( WeaponName ) --[[ @ 0]]
	self.WeaponName = WeaponName --[[ @ 0]]
	
	local Darken = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Darken:setRGB( 0.09, 0.09, 0.09 ) --[[ @ 0]]
	Darken:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Darken ) --[[ @ 0]]
	self.Darken = Darken --[[ @ 0]]
	
	local WeaponBribeOwnedStamp = CoD.WeaponBribeOwned.new( f1_arg0, f1_arg1, 0, 0, 105, 169, 0, 0, 31, 95 ) --[[ @ 0]]
	WeaponBribeOwnedStamp:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( WeaponBribeOwnedStamp ) --[[ @ 0]]
	self.WeaponBribeOwnedStamp = WeaponBribeOwnedStamp --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Purchased",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "purchased" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "purchased", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "purchased"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WeaponBribeItemInternal.__resetProperties = function ( f7_arg0 )
	f7_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
	f7_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
	f7_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
	f7_arg0.BGGlow:completeAnimation() --[[ @ 0]]
	f7_arg0.BGDotPatternLarge:completeAnimation() --[[ @ 0]]
	f7_arg0.WeaponName:completeAnimation() --[[ @ 0]]
	f7_arg0.Darken:completeAnimation() --[[ @ 0]]
	f7_arg0.WeaponBribeOwnedStamp:completeAnimation() --[[ @ 0]]
	f7_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.FocusBrackets:setLeftRight( 0, 1, -20, 20 ) --[[ @ 0]]
	f7_arg0.FocusBrackets:setTopBottom( 0, 1, -20, 20 ) --[[ @ 0]]
	f7_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.BGGlow:setAlpha( 0.3 ) --[[ @ 0]]
	f7_arg0.BGDotPatternLarge:setAlpha( 0.01 ) --[[ @ 0]]
	f7_arg0.WeaponName.WeaponName:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
	f7_arg0.Darken:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.WeaponBribeOwnedStamp:setLeftRight( 0, 0, 105, 169 ) --[[ @ 0]]
	f7_arg0.WeaponBribeOwnedStamp:setTopBottom( 0, 0, 31, 95 ) --[[ @ 0]]
	f7_arg0.WeaponBribeOwnedStamp:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.WeaponBribeOwnedStamp.PurchasedTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_3830CFD395E6AA0A"] ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WeaponBribeItemInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f9_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f9_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.FocusGlow ) --[[ @ 0]]
			f9_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f9_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.FocusBorder ) --[[ @ 0]]
			f9_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f9_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f9_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f9_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.FocusBrackets ) --[[ @ 0]]
			f9_arg0.BGDotPatternLarge:completeAnimation() --[[ @ 0]]
			f9_arg0.BGDotPatternLarge:setAlpha( 0.02 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.BGDotPatternLarge ) --[[ @ 0]]
			f9_arg0.BGGlow:completeAnimation() --[[ @ 0]]
			f9_arg0.BGGlow:setAlpha( 0.66 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.BGGlow ) --[[ @ 0]]
			f9_arg0.WeaponName:completeAnimation() --[[ @ 0]]
			f9_arg0.WeaponName.WeaponName:completeAnimation() --[[ @ 0]]
			f9_arg0.WeaponName.WeaponName:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.WeaponName ) --[[ @ 0]]
		end,
		GainFocus = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				f10_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f10_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f10_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f10_local0( f10_arg0.FocusGlow ) --[[ @ 0]]
			local f10_local1 = function ( f12_arg0 )
				f10_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
				f10_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f10_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
			f10_local1( f10_arg0.FocusBorder ) --[[ @ 0]]
			local f10_local2 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					f14_arg0:beginAnimation( 50, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f14_arg0:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
					f14_arg0:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
					f14_arg0:setAlpha( 1 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f10_arg0.FocusBrackets:beginAnimation( 100 ) --[[ @ 0]]
				f10_arg0.FocusBrackets:setLeftRight( 0, 1, -8, 8 ) --[[ @ 0]]
				f10_arg0.FocusBrackets:setTopBottom( 0, 1, -8, 8 ) --[[ @ 0]]
				f10_arg0.FocusBrackets:setAlpha( 0.75 ) --[[ @ 0]]
				f10_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f10_arg0.FocusBrackets:setLeftRight( 0, 1, -40, 40 ) --[[ @ 0]]
			f10_arg0.FocusBrackets:setTopBottom( 0, 1, -40, 40 ) --[[ @ 0]]
			f10_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
			f10_local2( f10_arg0.FocusBrackets ) --[[ @ 0]]
			local f10_local3 = function ( f15_arg0 )
				f10_arg0.BGDotPatternLarge:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.BGDotPatternLarge:setAlpha( 0.02 ) --[[ @ 0]]
				f10_arg0.BGDotPatternLarge:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.BGDotPatternLarge:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.BGDotPatternLarge:completeAnimation() --[[ @ 0]]
			f10_arg0.BGDotPatternLarge:setAlpha( 0.01 ) --[[ @ 0]]
			f10_local3( f10_arg0.BGDotPatternLarge ) --[[ @ 0]]
			local f10_local4 = function ( f16_arg0 )
				f10_arg0.BGGlow:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.BGGlow:setAlpha( 0.66 ) --[[ @ 0]]
				f10_arg0.BGGlow:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.BGGlow:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.BGGlow:completeAnimation() --[[ @ 0]]
			f10_arg0.BGGlow:setAlpha( 0.3 ) --[[ @ 0]]
			f10_local4( f10_arg0.BGGlow ) --[[ @ 0]]
			local f10_local5 = function ( f17_arg0 )
				f10_arg0.WeaponName:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.WeaponName.WeaponName:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.WeaponName.WeaponName:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
				f10_arg0.WeaponName:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.WeaponName:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.WeaponName:completeAnimation() --[[ @ 0]]
			f10_arg0.WeaponName.WeaponName:completeAnimation() --[[ @ 0]]
			f10_arg0.WeaponName.WeaponName:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
			f10_local5( f10_arg0.WeaponName ) --[[ @ 0]]
		end,
		LoseFocus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f18_local0 = function ( f19_arg0 )
				f18_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f18_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f18_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f18_local0( f18_arg0.FocusGlow ) --[[ @ 0]]
			local f18_local1 = function ( f20_arg0 )
				f18_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
				f18_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f18_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f18_local1( f18_arg0.FocusBorder ) --[[ @ 0]]
			local f18_local2 = function ( f21_arg0 )
				f18_arg0.FocusBrackets:beginAnimation( 60, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f18_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
				f18_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f18_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f18_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f18_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f18_local2( f18_arg0.FocusBrackets ) --[[ @ 0]]
			local f18_local3 = function ( f22_arg0 )
				f18_arg0.BGDotPatternLarge:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.BGDotPatternLarge:setAlpha( 0.01 ) --[[ @ 0]]
				f18_arg0.BGDotPatternLarge:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.BGDotPatternLarge:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.BGDotPatternLarge:completeAnimation() --[[ @ 0]]
			f18_arg0.BGDotPatternLarge:setAlpha( 0.02 ) --[[ @ 0]]
			f18_local3( f18_arg0.BGDotPatternLarge ) --[[ @ 0]]
			local f18_local4 = function ( f23_arg0 )
				f18_arg0.BGGlow:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.BGGlow:setAlpha( 0.3 ) --[[ @ 0]]
				f18_arg0.BGGlow:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.BGGlow:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.BGGlow:completeAnimation() --[[ @ 0]]
			f18_arg0.BGGlow:setAlpha( 0.66 ) --[[ @ 0]]
			f18_local4( f18_arg0.BGGlow ) --[[ @ 0]]
			local f18_local5 = function ( f24_arg0 )
				f18_arg0.WeaponName:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.WeaponName.WeaponName:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.WeaponName.WeaponName:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
				f18_arg0.WeaponName:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.WeaponName:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.WeaponName:completeAnimation() --[[ @ 0]]
			f18_arg0.WeaponName.WeaponName:completeAnimation() --[[ @ 0]]
			f18_arg0.WeaponName.WeaponName:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f18_local5( f18_arg0.WeaponName ) --[[ @ 0]]
		end
	},
	Purchased = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f25_arg0.Darken:completeAnimation() --[[ @ 0]]
			f25_arg0.Darken:setAlpha( 0.85 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.Darken ) --[[ @ 0]]
			f25_arg0.WeaponBribeOwnedStamp:completeAnimation() --[[ @ 0]]
			f25_arg0.WeaponBribeOwnedStamp.PurchasedTitle:completeAnimation() --[[ @ 0]]
			f25_arg0.WeaponBribeOwnedStamp:setLeftRight( 0, 0, 149, 213 ) --[[ @ 0]]
			f25_arg0.WeaponBribeOwnedStamp:setTopBottom( 0, 0, 74, 138 ) --[[ @ 0]]
			f25_arg0.WeaponBribeOwnedStamp:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.WeaponBribeOwnedStamp.PurchasedTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_3830CFD395E6AA0A"] ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.WeaponBribeOwnedStamp ) --[[ @ 0]]
		end,
		Focus = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f26_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f26_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.FocusGlow ) --[[ @ 0]]
			f26_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f26_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.FocusBorder ) --[[ @ 0]]
			f26_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f26_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f26_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f26_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.FocusBrackets ) --[[ @ 0]]
			f26_arg0.BGDotPatternLarge:completeAnimation() --[[ @ 0]]
			f26_arg0.BGDotPatternLarge:setAlpha( 0.02 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.BGDotPatternLarge ) --[[ @ 0]]
			f26_arg0.BGGlow:completeAnimation() --[[ @ 0]]
			f26_arg0.BGGlow:setAlpha( 0.66 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.BGGlow ) --[[ @ 0]]
			f26_arg0.WeaponName:completeAnimation() --[[ @ 0]]
			f26_arg0.WeaponName.WeaponName:completeAnimation() --[[ @ 0]]
			f26_arg0.WeaponName.WeaponName:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.WeaponName ) --[[ @ 0]]
			f26_arg0.Darken:completeAnimation() --[[ @ 0]]
			f26_arg0.Darken:setAlpha( 0.85 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.Darken ) --[[ @ 0]]
			f26_arg0.WeaponBribeOwnedStamp:completeAnimation() --[[ @ 0]]
			f26_arg0.WeaponBribeOwnedStamp:setLeftRight( 0, 0, 149, 213 ) --[[ @ 0]]
			f26_arg0.WeaponBribeOwnedStamp:setTopBottom( 0, 0, 74, 138 ) --[[ @ 0]]
			f26_arg0.WeaponBribeOwnedStamp:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.WeaponBribeOwnedStamp ) --[[ @ 0]]
		end,
		GainFocus = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			local f27_local0 = function ( f28_arg0 )
				f27_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f27_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f27_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f27_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f27_local0( f27_arg0.FocusGlow ) --[[ @ 0]]
			local f27_local1 = function ( f29_arg0 )
				f27_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f27_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
				f27_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f27_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
			f27_local1( f27_arg0.FocusBorder ) --[[ @ 0]]
			local f27_local2 = function ( f30_arg0 )
				local f30_local0 = function ( f31_arg0 )
					f31_arg0:beginAnimation( 50, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f31_arg0:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
					f31_arg0:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
					f31_arg0:setAlpha( 1 ) --[[ @ 0]]
					f31_arg0:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f27_arg0.FocusBrackets:beginAnimation( 100 ) --[[ @ 0]]
				f27_arg0.FocusBrackets:setLeftRight( 0, 1, -8, 8 ) --[[ @ 0]]
				f27_arg0.FocusBrackets:setTopBottom( 0, 1, -8, 8 ) --[[ @ 0]]
				f27_arg0.FocusBrackets:setAlpha( 0.75 ) --[[ @ 0]]
				f27_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f27_arg0.FocusBrackets:setLeftRight( 0, 1, -40, 40 ) --[[ @ 0]]
			f27_arg0.FocusBrackets:setTopBottom( 0, 1, -40, 40 ) --[[ @ 0]]
			f27_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
			f27_local2( f27_arg0.FocusBrackets ) --[[ @ 0]]
			local f27_local3 = function ( f32_arg0 )
				f27_arg0.BGDotPatternLarge:beginAnimation( 200 ) --[[ @ 0]]
				f27_arg0.BGDotPatternLarge:setAlpha( 0.02 ) --[[ @ 0]]
				f27_arg0.BGDotPatternLarge:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.BGDotPatternLarge:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.BGDotPatternLarge:completeAnimation() --[[ @ 0]]
			f27_arg0.BGDotPatternLarge:setAlpha( 0.01 ) --[[ @ 0]]
			f27_local3( f27_arg0.BGDotPatternLarge ) --[[ @ 0]]
			local f27_local4 = function ( f33_arg0 )
				f27_arg0.BGGlow:beginAnimation( 200 ) --[[ @ 0]]
				f27_arg0.BGGlow:setAlpha( 0.66 ) --[[ @ 0]]
				f27_arg0.BGGlow:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.BGGlow:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.BGGlow:completeAnimation() --[[ @ 0]]
			f27_arg0.BGGlow:setAlpha( 0.3 ) --[[ @ 0]]
			f27_local4( f27_arg0.BGGlow ) --[[ @ 0]]
			local f27_local5 = function ( f34_arg0 )
				f27_arg0.WeaponName:beginAnimation( 200 ) --[[ @ 0]]
				f27_arg0.WeaponName.WeaponName:beginAnimation( 200 ) --[[ @ 0]]
				f27_arg0.WeaponName.WeaponName:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
				f27_arg0.WeaponName:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.WeaponName:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.WeaponName:completeAnimation() --[[ @ 0]]
			f27_arg0.WeaponName.WeaponName:completeAnimation() --[[ @ 0]]
			f27_arg0.WeaponName.WeaponName:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
			f27_local5( f27_arg0.WeaponName ) --[[ @ 0]]
			f27_arg0.Darken:completeAnimation() --[[ @ 0]]
			f27_arg0.Darken:setAlpha( 0.85 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.Darken ) --[[ @ 0]]
			f27_arg0.WeaponBribeOwnedStamp:completeAnimation() --[[ @ 0]]
			f27_arg0.WeaponBribeOwnedStamp:setLeftRight( 0, 0, 149, 213 ) --[[ @ 0]]
			f27_arg0.WeaponBribeOwnedStamp:setTopBottom( 0, 0, 74, 138 ) --[[ @ 0]]
			f27_arg0.WeaponBribeOwnedStamp:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.WeaponBribeOwnedStamp ) --[[ @ 0]]
		end,
		LoseFocus = function ( f35_arg0, f35_arg1 )
			f35_arg0:__resetProperties() --[[ @ 0]]
			f35_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			local f35_local0 = function ( f36_arg0 )
				f35_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f35_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f35_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f35_arg0.clipInterrupted ) --[[ @ 0]]
				f35_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f35_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f35_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f35_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f35_local0( f35_arg0.FocusGlow ) --[[ @ 0]]
			local f35_local1 = function ( f37_arg0 )
				f35_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f35_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
				f35_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f35_arg0.clipInterrupted ) --[[ @ 0]]
				f35_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f35_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f35_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f35_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f35_local1( f35_arg0.FocusBorder ) --[[ @ 0]]
			local f35_local2 = function ( f38_arg0 )
				f35_arg0.FocusBrackets:beginAnimation( 60, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f35_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
				f35_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f35_arg0.clipInterrupted ) --[[ @ 0]]
				f35_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f35_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f35_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f35_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f35_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f35_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f35_local2( f35_arg0.FocusBrackets ) --[[ @ 0]]
			local f35_local3 = function ( f39_arg0 )
				f35_arg0.BGDotPatternLarge:beginAnimation( 200 ) --[[ @ 0]]
				f35_arg0.BGDotPatternLarge:setAlpha( 0.01 ) --[[ @ 0]]
				f35_arg0.BGDotPatternLarge:registerEventHandler( "interrupted_keyframe", f35_arg0.clipInterrupted ) --[[ @ 0]]
				f35_arg0.BGDotPatternLarge:registerEventHandler( "transition_complete_keyframe", f35_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f35_arg0.BGDotPatternLarge:completeAnimation() --[[ @ 0]]
			f35_arg0.BGDotPatternLarge:setAlpha( 0.02 ) --[[ @ 0]]
			f35_local3( f35_arg0.BGDotPatternLarge ) --[[ @ 0]]
			local f35_local4 = function ( f40_arg0 )
				f35_arg0.BGGlow:beginAnimation( 200 ) --[[ @ 0]]
				f35_arg0.BGGlow:setAlpha( 0.3 ) --[[ @ 0]]
				f35_arg0.BGGlow:registerEventHandler( "interrupted_keyframe", f35_arg0.clipInterrupted ) --[[ @ 0]]
				f35_arg0.BGGlow:registerEventHandler( "transition_complete_keyframe", f35_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f35_arg0.BGGlow:completeAnimation() --[[ @ 0]]
			f35_arg0.BGGlow:setAlpha( 0.66 ) --[[ @ 0]]
			f35_local4( f35_arg0.BGGlow ) --[[ @ 0]]
			local f35_local5 = function ( f41_arg0 )
				f35_arg0.WeaponName:beginAnimation( 200 ) --[[ @ 0]]
				f35_arg0.WeaponName.WeaponName:beginAnimation( 200 ) --[[ @ 0]]
				f35_arg0.WeaponName.WeaponName:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
				f35_arg0.WeaponName:registerEventHandler( "interrupted_keyframe", f35_arg0.clipInterrupted ) --[[ @ 0]]
				f35_arg0.WeaponName:registerEventHandler( "transition_complete_keyframe", f35_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f35_arg0.WeaponName:completeAnimation() --[[ @ 0]]
			f35_arg0.WeaponName.WeaponName:completeAnimation() --[[ @ 0]]
			f35_arg0.WeaponName.WeaponName:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f35_local5( f35_arg0.WeaponName ) --[[ @ 0]]
			f35_arg0.Darken:completeAnimation() --[[ @ 0]]
			f35_arg0.Darken:setAlpha( 0.85 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.Darken ) --[[ @ 0]]
			f35_arg0.WeaponBribeOwnedStamp:completeAnimation() --[[ @ 0]]
			f35_arg0.WeaponBribeOwnedStamp:setLeftRight( 0, 0, 149, 213 ) --[[ @ 0]]
			f35_arg0.WeaponBribeOwnedStamp:setTopBottom( 0, 0, 74, 138 ) --[[ @ 0]]
			f35_arg0.WeaponBribeOwnedStamp:setAlpha( 1 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.WeaponBribeOwnedStamp ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WeaponBribeItemInternal.__onClose = function ( f42_arg0 )
	f42_arg0.Lines:close() --[[ @ 0]]
	f42_arg0.FocusBrackets:close() --[[ @ 0]]
	f42_arg0.SignatureBonusExp:close() --[[ @ 0]]
	f42_arg0.WeaponImage:close() --[[ @ 0]]
	f42_arg0.WeaponName:close() --[[ @ 0]]
	f42_arg0.WeaponBribeOwnedStamp:close() --[[ @ 0]]
end
 --[[ @ 0]]
