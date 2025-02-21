-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:35f6bd8a847938ba" ) --[[ @ 0]]
require( "x64:7bf2d1bc346498a7" ) --[[ @ 0]]

CoD.StartMenu_SmallTierLevel = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_SmallTierLevel.__defaultWidth = 349 --[[ @ 0]]
CoD.StartMenu_SmallTierLevel.__defaultHeight = 80 --[[ @ 0]]
CoD.StartMenu_SmallTierLevel.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_SmallTierLevel ) --[[ @ 0]]
	self.id = "StartMenu_SmallTierLevel" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 0, 0, 349, 0, 0, 16, 75 ) --[[ @ 0]]
	Background:setRGB( 0.11, 0.18, 0.24 ) --[[ @ 0]]
	Background:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	Background:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	Background:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Background:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	Background:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	Background:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local Gradient = LUI.UIImage.new( 0, 0, 0, 349, 0, 0, 16, 72 ) --[[ @ 0]]
	Gradient:setRGB( 0.08, 0.21, 0.31 ) --[[ @ 0]]
	Gradient:setAlpha( 0.94 ) --[[ @ 0]]
	Gradient:setImage( RegisterImage( @"uie_ui_menu_common_gradient" ) ) --[[ @ 0]]
	Gradient:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Gradient ) --[[ @ 0]]
	self.Gradient = Gradient --[[ @ 0]]
	
	local TiledShaderImage = LUI.UIImage.new( 0, 1, 0, 0, 0, 0.74, 16, 16 ) --[[ @ 0]]
	TiledShaderImage:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TiledShaderImage:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	TiledShaderImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledShaderImage:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledShaderImage:setupNineSliceShader( 24, 24 ) --[[ @ 0]]
	self:addElement( TiledShaderImage ) --[[ @ 0]]
	self.TiledShaderImage = TiledShaderImage --[[ @ 0]]
	
	local TiledShaderImage2 = LUI.UIImage.new( 0, 1, 0, 0, 0, 0.74, 16, 16 ) --[[ @ 0]]
	TiledShaderImage2:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TiledShaderImage2:setAlpha( 0.7 ) --[[ @ 0]]
	TiledShaderImage2:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	TiledShaderImage2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledShaderImage2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledShaderImage2:setupNineSliceShader( 24, 24 ) --[[ @ 0]]
	self:addElement( TiledShaderImage2 ) --[[ @ 0]]
	self.TiledShaderImage2 = TiledShaderImage2 --[[ @ 0]]
	
	local NextText = LUI.UIText.new( 0, 0, 266, 345, 0, 0, 53.5, 70.5 ) --[[ @ 0]]
	NextText:setRGB( 0.88, 0.96, 1 ) --[[ @ 0]]
	NextText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	NextText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	NextText:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NextText:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	NextText:setShaderVector( 2, 0, 0.7, 1, 0.2 ) --[[ @ 0]]
	NextText:setLetterSpacing( 1 ) --[[ @ 0]]
	NextText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	NextText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	NextText:subscribeToGlobalModel( f1_arg1, "LootStreamProgress", "nextTier", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			NextText:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( NextText ) --[[ @ 0]]
	self.NextText = NextText --[[ @ 0]]
	
	local TierText = LUI.UIText.new( 0, 0, 12.5, 129.5, 0, 0, 25.5, 53.5 ) --[[ @ 0]]
	TierText:setRGB( 0.88, 0.96, 1 ) --[[ @ 0]]
	TierText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TierText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	TierText:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	TierText:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	TierText:setShaderVector( 2, 0, 0.7, 1, 0.2 ) --[[ @ 0]]
	TierText:setLetterSpacing( 4 ) --[[ @ 0]]
	TierText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TierText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	TierText:subscribeToGlobalModel( f1_arg1, "LootStreamProgress", "currentTier", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			TierText:setText( CoD.BlackMarketUtility.AppendCurrentSeasonTier( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TierText ) --[[ @ 0]]
	self.TierText = TierText --[[ @ 0]]
	
	local Border = LUI.UIImage.new( 0.04, 0.04, -3.5, 248.5, 0, 0, 55.5, 67.5 ) --[[ @ 0]]
	Border:setRGB( 0.08, 0.14, 0.18 ) --[[ @ 0]]
	Border:setAlpha( 0.8 ) --[[ @ 0]]
	Border:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_edges" ) ) --[[ @ 0]]
	Border:setShaderVector( 0, 0, 0.1, 0, 0.1 ) --[[ @ 0]]
	self:addElement( Border ) --[[ @ 0]]
	self.Border = Border --[[ @ 0]]
	
	local tierProgressBackground = LUI.UIImage.new( 0.04, 0.76, -3, -3, 0, 0, 55, 67 ) --[[ @ 0]]
	tierProgressBackground:setRGB( 0.09, 0.09, 0.09 ) --[[ @ 0]]
	tierProgressBackground:setImage( RegisterImage( @"hash_32F80AF66C054F97" ) ) --[[ @ 0]]
	self:addElement( tierProgressBackground ) --[[ @ 0]]
	self.tierProgressBackground = tierProgressBackground --[[ @ 0]]
	
	local tierProgressFill = LUI.UIImage.new( -0.27, -0.27, 107.5, 357.5, 1, 1, -23.5, -14.5 ) --[[ @ 0]]
	tierProgressFill:setRGB( 0.88, 0.96, 1 ) --[[ @ 0]]
	tierProgressFill:setAlpha( 0 ) --[[ @ 0]]
	tierProgressFill:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe" ) ) --[[ @ 0]]
	tierProgressFill:setShaderVector( 0, 0.64, 0, 0, 0 ) --[[ @ 0]]
	tierProgressFill:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	tierProgressFill:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	tierProgressFill:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	tierProgressFill:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( tierProgressFill ) --[[ @ 0]]
	self.tierProgressFill = tierProgressFill --[[ @ 0]]
	
	local tierProgress = LUI.UIImage.new( 0, 0, 11, 263, 0, 0, 55, 67 ) --[[ @ 0]]
	tierProgress:setRGB( 0.5, 0.85, 1 ) --[[ @ 0]]
	tierProgress:setImage( RegisterImage( @"hash_3E51FDFB95E8F82B" ) ) --[[ @ 0]]
	tierProgress:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	tierProgress:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	tierProgress:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	tierProgress:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	tierProgress:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	tierProgress:subscribeToGlobalModel( f1_arg1, "LootStreamProgress", "tierProgress", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			tierProgress:setShaderVector( 0, CoD.GetVectorComponentFromString( f4_local0, 1 ), CoD.GetVectorComponentFromString( f4_local0, 2 ), CoD.GetVectorComponentFromString( f4_local0, 3 ), CoD.GetVectorComponentFromString( f4_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( tierProgress ) --[[ @ 0]]
	self.tierProgress = tierProgress --[[ @ 0]]
	
	local StartMenuSmallTierBoostNotification = CoD.StartMenu_SmallTierBoostNotification.new( f1_arg0, f1_arg1, 0, 0, 299, 349, 0, 0, 21, 71 ) --[[ @ 0]]
	StartMenuSmallTierBoostNotification:mergeStateConditions( {
		{
			stateName = "TierBoost",
			condition = function ( menu, element, event )
				return IsTierBoostActive( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:addElement( StartMenuSmallTierBoostNotification ) --[[ @ 0]]
	self.StartMenuSmallTierBoostNotification = StartMenuSmallTierBoostNotification --[[ @ 0]]
	
	local LootTierBoostPercent = CoD.LootTierBoostPercentContraband.new( f1_arg0, f1_arg1, 0, 0, 1, 136, 0, 0, -15, 1 ) --[[ @ 0]]
	LootTierBoostPercent:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not CoD.BlackMarketUtility.ShowTierBoostPercent( f1_arg1, menu )
			end
		}
	} ) --[[ @ 0]]
	local f1_local13 = LootTierBoostPercent --[[ @ 0]]
	local f1_local14 = LootTierBoostPercent.subscribeToModel --[[ @ 0]]
	local f1_local15 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local14( f1_local13, f1_local15["LootStreamProgress.personalTierBoost"], function ( f7_arg0 )
		f1_arg0:updateElementState( LootTierBoostPercent, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "LootStreamProgress.personalTierBoost"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( LootTierBoostPercent ) --[[ @ 0]]
	self.LootTierBoostPercent = LootTierBoostPercent --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_SmallTierLevel.__onClose = function ( f8_arg0 )
	f8_arg0.NextText:close() --[[ @ 0]]
	f8_arg0.TierText:close() --[[ @ 0]]
	f8_arg0.tierProgress:close() --[[ @ 0]]
	f8_arg0.StartMenuSmallTierBoostNotification:close() --[[ @ 0]]
	f8_arg0.LootTierBoostPercent:close() --[[ @ 0]]
end
 --[[ @ 0]]
