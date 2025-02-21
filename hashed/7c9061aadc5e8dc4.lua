-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.KIllcamTeamPanelRight = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.KIllcamTeamPanelRight.__defaultWidth = 444 --[[ @ 0]]
CoD.KIllcamTeamPanelRight.__defaultHeight = 69 --[[ @ 0]]
CoD.KIllcamTeamPanelRight.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setUseCylinderMapping( false ) --[[ @ 0]]
	self:setClass( CoD.KIllcamTeamPanelRight ) --[[ @ 0]]
	self.id = "KIllcamTeamPanelRight" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BottomBackplateRight = LUI.UIImage.new( 0, 0, 58, 444, 0, 0, 0, 68 ) --[[ @ 0]]
	BottomBackplateRight:setAlpha( 0 ) --[[ @ 0]]
	BottomBackplateRight:setImage( RegisterImage( @"hash_5C87BEF5640733AB" ) ) --[[ @ 0]]
	self:addElement( BottomBackplateRight ) --[[ @ 0]]
	self.BottomBackplateRight = BottomBackplateRight --[[ @ 0]]
	
	local CallingCardHighlightRigh2 = LUI.UIImage.new( 0, 0, 0, 386, 0, 0, 0, 68 ) --[[ @ 0]]
	CallingCardHighlightRigh2:setRGB( ColorSet.Client_Self.r, ColorSet.Client_Self.g, ColorSet.Client_Self.b ) --[[ @ 0]]
	CallingCardHighlightRigh2:setImage( RegisterImage( @"uie_ui_hud_highlight" ) ) --[[ @ 0]]
	self:addElement( CallingCardHighlightRigh2 ) --[[ @ 0]]
	self.CallingCardHighlightRigh2 = CallingCardHighlightRigh2 --[[ @ 0]]
	
	local CallingCardGridPatternRight = LUI.UIImage.new( 0, 0, 64, 450, 0, 0, 0, 68 ) --[[ @ 0]]
	CallingCardGridPatternRight:setRGB( 0.79, 0.61, 0.11 ) --[[ @ 0]]
	CallingCardGridPatternRight:setImage( RegisterImage( @"hash_1684DCF03A2BF70F" ) ) --[[ @ 0]]
	CallingCardGridPatternRight:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	CallingCardGridPatternRight:setShaderVector( 0, 3, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( CallingCardGridPatternRight ) --[[ @ 0]]
	self.CallingCardGridPatternRight = CallingCardGridPatternRight --[[ @ 0]]
	
	local CallingcardHighlightRight1 = LUI.UIImage.new( 0, 0, 8, 394, 0, 0, 0.5, 68.5 ) --[[ @ 0]]
	CallingcardHighlightRight1:setRGB( ColorSet.Client_Self.r, ColorSet.Client_Self.g, ColorSet.Client_Self.b ) --[[ @ 0]]
	CallingcardHighlightRight1:setAlpha( 0.35 ) --[[ @ 0]]
	CallingcardHighlightRight1:setImage( RegisterImage( @"uie_ui_hud_highlight2" ) ) --[[ @ 0]]
	CallingcardHighlightRight1:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( CallingcardHighlightRight1 ) --[[ @ 0]]
	self.CallingcardHighlightRight1 = CallingcardHighlightRight1 --[[ @ 0]]
	
	local CallingCardFlareRight = LUI.UIImage.new( 0, 0, 61, 447, 0, 0, -0.5, 67.5 ) --[[ @ 0]]
	CallingCardFlareRight:setRGB( ColorSet.EnemyOrange_Protanopia.r, ColorSet.EnemyOrange_Protanopia.g, ColorSet.EnemyOrange_Protanopia.b ) --[[ @ 0]]
	CallingCardFlareRight:setImage( RegisterImage( @"hash_4C0D64C8709CA1C" ) ) --[[ @ 0]]
	CallingCardFlareRight:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( CallingCardFlareRight ) --[[ @ 0]]
	self.CallingCardFlareRight = CallingCardFlareRight --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Killcam",
			condition = function ( menu, element, event )
				local f2_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) --[[ @ 0]]
				if not f2_local0 then
					f2_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_nemesis_killcam"] ) --[[ @ 0]]
				end
				return f2_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local6 = self --[[ @ 0]]
	local f1_local7 = self.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_nemesis_killcam"]], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_nemesis_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.KIllcamTeamPanelRight.__resetProperties = function ( f5_arg0 )
	f5_arg0.CallingCardFlareRight:completeAnimation() --[[ @ 0]]
	f5_arg0.CallingCardGridPatternRight:completeAnimation() --[[ @ 0]]
	f5_arg0.CallingcardHighlightRight1:completeAnimation() --[[ @ 0]]
	f5_arg0.CallingCardHighlightRigh2:completeAnimation() --[[ @ 0]]
	f5_arg0.BottomBackplateRight:completeAnimation() --[[ @ 0]]
	f5_arg0.CallingCardFlareRight:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.CallingCardGridPatternRight:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.CallingcardHighlightRight1:setAlpha( 0.35 ) --[[ @ 0]]
	f5_arg0.CallingCardHighlightRigh2:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.BottomBackplateRight:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.KIllcamTeamPanelRight.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f6_arg0.BottomBackplateRight:completeAnimation() --[[ @ 0]]
			f6_arg0.BottomBackplateRight:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.BottomBackplateRight ) --[[ @ 0]]
			f6_arg0.CallingCardHighlightRigh2:completeAnimation() --[[ @ 0]]
			f6_arg0.CallingCardHighlightRigh2:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.CallingCardHighlightRigh2 ) --[[ @ 0]]
			f6_arg0.CallingCardGridPatternRight:completeAnimation() --[[ @ 0]]
			f6_arg0.CallingCardGridPatternRight:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.CallingCardGridPatternRight ) --[[ @ 0]]
			f6_arg0.CallingcardHighlightRight1:completeAnimation() --[[ @ 0]]
			f6_arg0.CallingcardHighlightRight1:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.CallingcardHighlightRight1 ) --[[ @ 0]]
			f6_arg0.CallingCardFlareRight:completeAnimation() --[[ @ 0]]
			f6_arg0.CallingCardFlareRight:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.CallingCardFlareRight ) --[[ @ 0]]
		end
	},
	Killcam = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
