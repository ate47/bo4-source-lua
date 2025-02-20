-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/aar_t8/summary/aarperformancebg" ) --[[ @ 0]]

CoD.AARPaintCansStat = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARPaintCansStat.__defaultWidth = 180 --[[ @ 0]]
CoD.AARPaintCansStat.__defaultHeight = 132 --[[ @ 0]]
CoD.AARPaintCansStat.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARPaintCansStat ) --[[ @ 0]]
	self.id = "AARPaintCansStat" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PerformBg = CoD.AARPerformanceBg.new( f1_arg0, f1_arg1, 0, 0, 0, 180, 0, 0, 0, 132 ) --[[ @ 0]]
	PerformBg:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( PerformBg ) --[[ @ 0]]
	self.PerformBg = PerformBg --[[ @ 0]]
	
	local StatValueGlow = LUI.UIText.new( 0, 0, 76, 180, 0, 0, 42, 122 ) --[[ @ 0]]
	StatValueGlow:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	StatValueGlow:setAlpha( 0 ) --[[ @ 0]]
	StatValueGlow:setText( 15 ) --[[ @ 0]]
	StatValueGlow:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	StatValueGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	StatValueGlow:setShaderVector( 0, 0.3, 0, 0, 0 ) --[[ @ 0]]
	StatValueGlow:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	StatValueGlow:setShaderVector( 2, 1, 0, 0, 0.8 ) --[[ @ 0]]
	StatValueGlow:setLetterSpacing( 2 ) --[[ @ 0]]
	StatValueGlow:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	StatValueGlow:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( StatValueGlow ) --[[ @ 0]]
	self.StatValueGlow = StatValueGlow --[[ @ 0]]
	
	local StatLabel = LUI.UIText.new( 0, 0, 17.5, 179.5, 0, 0, 12, 33 ) --[[ @ 0]]
	StatLabel:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	StatLabel:setAlpha( 0 ) --[[ @ 0]]
	StatLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_49FE863E6425C8CE" ) ) --[[ @ 0]]
	StatLabel:setTTF( "dinnext_regular" ) --[[ @ 0]]
	StatLabel:setLetterSpacing( 2 ) --[[ @ 0]]
	StatLabel:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	StatLabel:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( StatLabel ) --[[ @ 0]]
	self.StatLabel = StatLabel --[[ @ 0]]
	
	local StatValue = LUI.UIText.new( 0, 0, 76, 180, 0, 0, 42, 122 ) --[[ @ 0]]
	StatValue:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	StatValue:setAlpha( 0 ) --[[ @ 0]]
	StatValue:setText( 15 ) --[[ @ 0]]
	StatValue:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	StatValue:setLetterSpacing( 2 ) --[[ @ 0]]
	StatValue:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	StatValue:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( StatValue ) --[[ @ 0]]
	self.StatValue = StatValue --[[ @ 0]]
	
	local PaintCanImage = LUI.UIImage.new( 0, 0, -13, 92, 0, 0, 29, 134 ) --[[ @ 0]]
	PaintCanImage:setAlpha( 0 ) --[[ @ 0]]
	PaintCanImage:setImage( RegisterImage( @"ui_icon_inventory_spray_can" ) ) --[[ @ 0]]
	self:addElement( PaintCanImage ) --[[ @ 0]]
	self.PaintCanImage = PaintCanImage --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return IsBooleanDvarSet( "ui_ShowWZPersonalization" )
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
CoD.AARPaintCansStat.__resetProperties = function ( f3_arg0 )
	f3_arg0.PaintCanImage:completeAnimation() --[[ @ 0]]
	f3_arg0.StatValue:completeAnimation() --[[ @ 0]]
	f3_arg0.StatLabel:completeAnimation() --[[ @ 0]]
	f3_arg0.StatValueGlow:completeAnimation() --[[ @ 0]]
	f3_arg0.PerformBg:completeAnimation() --[[ @ 0]]
	f3_arg0.PaintCanImage:setAlpha( 0 ) --[[ @ 0]]
	f3_arg0.StatValue:setAlpha( 0 ) --[[ @ 0]]
	f3_arg0.StatLabel:setAlpha( 0 ) --[[ @ 0]]
	f3_arg0.StatValueGlow:setAlpha( 0 ) --[[ @ 0]]
	f3_arg0.PerformBg:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARPaintCansStat.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f5_arg0.PerformBg:completeAnimation() --[[ @ 0]]
			f5_arg0.PerformBg:setAlpha( 1 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.PerformBg ) --[[ @ 0]]
			f5_arg0.StatValueGlow:completeAnimation() --[[ @ 0]]
			f5_arg0.StatValueGlow:setAlpha( 0.4 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.StatValueGlow ) --[[ @ 0]]
			f5_arg0.StatLabel:completeAnimation() --[[ @ 0]]
			f5_arg0.StatLabel:setAlpha( 0.2 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.StatLabel ) --[[ @ 0]]
			f5_arg0.StatValue:completeAnimation() --[[ @ 0]]
			f5_arg0.StatValue:setAlpha( 0.8 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.StatValue ) --[[ @ 0]]
			f5_arg0.PaintCanImage:completeAnimation() --[[ @ 0]]
			f5_arg0.PaintCanImage:setAlpha( 1 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.PaintCanImage ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARPaintCansStat.__onClose = function ( f6_arg0 )
	f6_arg0.PerformBg:close() --[[ @ 0]]
end
 --[[ @ 0]]
