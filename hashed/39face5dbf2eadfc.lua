-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:7086032b1d01da41" ) --[[ @ 0]]

CoD.AARTierRewardColumnHeader = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARTierRewardColumnHeader.__defaultWidth = 105 --[[ @ 0]]
CoD.AARTierRewardColumnHeader.__defaultHeight = 40 --[[ @ 0]]
CoD.AARTierRewardColumnHeader.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARTierRewardColumnHeader ) --[[ @ 0]]
	self.id = "AARTierRewardColumnHeader" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CommonOuterGlowThinVert = LUI.UIImage.new( 0, 1, -12, 12, 0, 0, -17.5, 10.5 ) --[[ @ 0]]
	CommonOuterGlowThinVert:setRGB( 1, 0.33, 0 ) --[[ @ 0]]
	CommonOuterGlowThinVert:setAlpha( 0 ) --[[ @ 0]]
	CommonOuterGlowThinVert:setImage( RegisterImage( @"uie_ui_menu_common_outer_glow_thin_vert01" ) ) --[[ @ 0]]
	CommonOuterGlowThinVert:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	CommonOuterGlowThinVert:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CommonOuterGlowThinVert:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
	CommonOuterGlowThinVert:setupNineSliceShader( 32, 32 ) --[[ @ 0]]
	self:addElement( CommonOuterGlowThinVert ) --[[ @ 0]]
	self.CommonOuterGlowThinVert = CommonOuterGlowThinVert --[[ @ 0]]
	
	local CommonOuterGlow01 = LUI.UIImage.new( 0, 1, -12, 12, 0, 1, -12, 12 ) --[[ @ 0]]
	CommonOuterGlow01:setRGB( 1, 0.33, 0 ) --[[ @ 0]]
	CommonOuterGlow01:setAlpha( 0 ) --[[ @ 0]]
	CommonOuterGlow01:setImage( RegisterImage( @"uie_ui_menu_common_outer_glow01" ) ) --[[ @ 0]]
	CommonOuterGlow01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	CommonOuterGlow01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CommonOuterGlow01:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
	CommonOuterGlow01:setupNineSliceShader( 32, 32 ) --[[ @ 0]]
	self:addElement( CommonOuterGlow01 ) --[[ @ 0]]
	self.CommonOuterGlow01 = CommonOuterGlow01 --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local brighten = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	brighten:setAlpha( 0.1 ) --[[ @ 0]]
	self:addElement( brighten ) --[[ @ 0]]
	self.brighten = brighten --[[ @ 0]]
	
	local CommonFrame01 = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	CommonFrame01:setAlpha( 0 ) --[[ @ 0]]
	CommonFrame01:setImage( RegisterImage( @"hash_5CA6E5C175806396" ) ) --[[ @ 0]]
	CommonFrame01:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	CommonFrame01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CommonFrame01:setupNineSliceShader( 8, 8 ) --[[ @ 0]]
	self:addElement( CommonFrame01 ) --[[ @ 0]]
	self.CommonFrame01 = CommonFrame01 --[[ @ 0]]
	
	local StripesBG = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	StripesBG:setRGB( 0.11, 0.11, 0.13 ) --[[ @ 0]]
	StripesBG:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( StripesBG ) --[[ @ 0]]
	self.StripesBG = StripesBG --[[ @ 0]]
	
	local StripesBGBtm = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -3, 0 ) --[[ @ 0]]
	StripesBGBtm:setRGB( 0.11, 0.11, 0.13 ) --[[ @ 0]]
	StripesBGBtm:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( StripesBGBtm ) --[[ @ 0]]
	self.StripesBGBtm = StripesBGBtm --[[ @ 0]]
	
	local StripesBGTop = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 3 ) --[[ @ 0]]
	StripesBGTop:setRGB( 0.11, 0.11, 0.13 ) --[[ @ 0]]
	StripesBGTop:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( StripesBGTop ) --[[ @ 0]]
	self.StripesBGTop = StripesBGTop --[[ @ 0]]
	
	local StripesBtm = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -3, 0 ) --[[ @ 0]]
	StripesBtm:setAlpha( 0 ) --[[ @ 0]]
	StripesBtm:setImage( RegisterImage( @"hash_2C7A051F5EFC70E5" ) ) --[[ @ 0]]
	StripesBtm:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	StripesBtm:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	StripesBtm:setupNineSliceShader( 50, 8 ) --[[ @ 0]]
	self:addElement( StripesBtm ) --[[ @ 0]]
	self.StripesBtm = StripesBtm --[[ @ 0]]
	
	local StripesTop = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 3 ) --[[ @ 0]]
	StripesTop:setAlpha( 0 ) --[[ @ 0]]
	StripesTop:setImage( RegisterImage( @"hash_2C7A051F5EFC70E5" ) ) --[[ @ 0]]
	StripesTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	StripesTop:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	StripesTop:setupNineSliceShader( 50, 8 ) --[[ @ 0]]
	self:addElement( StripesTop ) --[[ @ 0]]
	self.StripesTop = StripesTop --[[ @ 0]]
	
	local Line = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, -4, -3 ) --[[ @ 0]]
	Line:setRGB( 0.76, 0.93, 1 ) --[[ @ 0]]
	self:addElement( Line ) --[[ @ 0]]
	self.Line = Line --[[ @ 0]]
	
	local Tier = LUI.UIText.new( 0, 1, 3, -3, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	Tier:setRGB( 0.73, 0.74, 0.76 ) --[[ @ 0]]
	Tier:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Tier:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Tier:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	Tier:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	Tier:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Tier:setShaderVector( 2, 1, 0.32, 0, 0 ) --[[ @ 0]]
	Tier:setLetterSpacing( 3 ) --[[ @ 0]]
	Tier:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Tier:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Tier ) --[[ @ 0]]
	self.Tier = Tier --[[ @ 0]]
	
	local HighlightedHeader = CoD.AARTierRewardColumnHeaderHighlighted.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	HighlightedHeader:mergeStateConditions( {
		{
			stateName = "Highlighted",
			condition = function ( menu, element, event )
				return CoD.AARUtility.IsTierColumnItemHighlighted( self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local14 = HighlightedHeader --[[ @ 0]]
	local f1_local15 = HighlightedHeader.subscribeToModel --[[ @ 0]]
	local f1_local16 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local15( f1_local14, f1_local16["AAR.tierReward.highlightedTier"], function ( f3_arg0 )
		f1_arg0:updateElementState( HighlightedHeader, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "AAR.tierReward.highlightedTier"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	HighlightedHeader:linkToElementModel( HighlightedHeader, "tier", true, function ( model )
		f1_arg0:updateElementState( HighlightedHeader, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "tier"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	HighlightedHeader:linkToElementModel( self, nil, false, function ( model )
		HighlightedHeader:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( HighlightedHeader ) --[[ @ 0]]
	self.HighlightedHeader = HighlightedHeader --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARTierRewardColumnHeader.__resetProperties = function ( f6_arg0 )
	f6_arg0.StripesBG:completeAnimation() --[[ @ 0]]
	f6_arg0.Line:completeAnimation() --[[ @ 0]]
	f6_arg0.StripesBtm:completeAnimation() --[[ @ 0]]
	f6_arg0.StripesTop:completeAnimation() --[[ @ 0]]
	f6_arg0.Tier:completeAnimation() --[[ @ 0]]
	f6_arg0.StripesBGTop:completeAnimation() --[[ @ 0]]
	f6_arg0.StripesBGBtm:completeAnimation() --[[ @ 0]]
	f6_arg0.StripesBG:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.Line:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.StripesBtm:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.StripesTop:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.Tier:setRGB( 0.73, 0.74, 0.76 ) --[[ @ 0]]
	f6_arg0.Tier:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f6_arg0.Tier:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f6_arg0.Tier:setShaderVector( 2, 1, 0.32, 0, 0 ) --[[ @ 0]]
	f6_arg0.StripesBGTop:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.StripesBGBtm:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARTierRewardColumnHeader.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Locked = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f8_arg0.StripesBG:completeAnimation() --[[ @ 0]]
			f8_arg0.StripesBG:setAlpha( 0.8 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.StripesBG ) --[[ @ 0]]
			f8_arg0.StripesBGBtm:completeAnimation() --[[ @ 0]]
			f8_arg0.StripesBGBtm:setAlpha( 0.5 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.StripesBGBtm ) --[[ @ 0]]
			f8_arg0.StripesBGTop:completeAnimation() --[[ @ 0]]
			f8_arg0.StripesBGTop:setAlpha( 0.5 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.StripesBGTop ) --[[ @ 0]]
			f8_arg0.StripesBtm:completeAnimation() --[[ @ 0]]
			f8_arg0.StripesBtm:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.StripesBtm ) --[[ @ 0]]
			f8_arg0.StripesTop:completeAnimation() --[[ @ 0]]
			f8_arg0.StripesTop:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.StripesTop ) --[[ @ 0]]
			f8_arg0.Line:completeAnimation() --[[ @ 0]]
			f8_arg0.Line:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Line ) --[[ @ 0]]
			f8_arg0.Tier:completeAnimation() --[[ @ 0]]
			f8_arg0.Tier:setRGB( 0.49, 0.49, 0.49 ) --[[ @ 0]]
			f8_arg0.Tier:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f8_arg0.Tier:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f8_arg0.Tier:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Tier ) --[[ @ 0]]
		end
	},
	Earned = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.Line:completeAnimation() --[[ @ 0]]
			f9_arg0.Line:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Line ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARTierRewardColumnHeader.__onClose = function ( f10_arg0 )
	f10_arg0.HighlightedHeader:close() --[[ @ 0]]
end
 --[[ @ 0]]
