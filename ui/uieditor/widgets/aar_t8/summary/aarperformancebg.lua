-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.AARPerformanceBg = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARPerformanceBg.__defaultWidth = 354 --[[ @ 0]]
CoD.AARPerformanceBg.__defaultHeight = 140 --[[ @ 0]]
CoD.AARPerformanceBg.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARPerformanceBg ) --[[ @ 0]]
	self.id = "AARPerformanceBg" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local blurBg = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	blurBg:setAlpha( 0 ) --[[ @ 0]]
	blurBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	blurBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( blurBg ) --[[ @ 0]]
	self.blurBg = blurBg --[[ @ 0]]
	
	local Tint = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Tint:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	Tint:setAlpha( 0.03 ) --[[ @ 0]]
	Tint:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Tint ) --[[ @ 0]]
	self.Tint = Tint --[[ @ 0]]
	
	local PerformBracketBlur = LUI.UIImage.new( 0, 1, -3.5, 4.5, 1, 1, -14, 6 ) --[[ @ 0]]
	PerformBracketBlur:setAlpha( 0.3 ) --[[ @ 0]]
	PerformBracketBlur:setImage( RegisterImage( @"uie_ui_menu_aar_perform_botline_blur" ) ) --[[ @ 0]]
	PerformBracketBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	PerformBracketBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PerformBracketBlur:setupNineSliceShader( 174, 10 ) --[[ @ 0]]
	self:addElement( PerformBracketBlur ) --[[ @ 0]]
	self.PerformBracketBlur = PerformBracketBlur --[[ @ 0]]
	
	local PerformBg = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	PerformBg:setAlpha( 0.8 ) --[[ @ 0]]
	PerformBg:setImage( RegisterImage( @"uie_ui_menu_aar_perform_repeat_bg" ) ) --[[ @ 0]]
	PerformBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PerformBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PerformBg:setupNineSliceShader( 172, 136 ) --[[ @ 0]]
	self:addElement( PerformBg ) --[[ @ 0]]
	self.PerformBg = PerformBg --[[ @ 0]]
	
	local infoBracketBot = LUI.UIImage.new( 0, 1, -1, 1, 1, 1, -7, 1 ) --[[ @ 0]]
	infoBracketBot:setAlpha( 0.5 ) --[[ @ 0]]
	infoBracketBot:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	infoBracketBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	infoBracketBot:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	infoBracketBot:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( infoBracketBot ) --[[ @ 0]]
	self.infoBracketBot = infoBracketBot --[[ @ 0]]
	
	local DotPipL = LUI.UIImage.new( 0, 0, -2, 2, 1, 1, -12.5, -8.5 ) --[[ @ 0]]
	DotPipL:setAlpha( 0.5 ) --[[ @ 0]]
	DotPipL:setImage( RegisterImage( @"hash_73854665C02218EF" ) ) --[[ @ 0]]
	DotPipL:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DotPipL ) --[[ @ 0]]
	self.DotPipL = DotPipL --[[ @ 0]]
	
	local DotPipR = LUI.UIImage.new( 1, 1, -2, 2, 1, 1, -12.5, -8.5 ) --[[ @ 0]]
	DotPipR:setAlpha( 0.5 ) --[[ @ 0]]
	DotPipR:setImage( RegisterImage( @"hash_73854665C02218EF" ) ) --[[ @ 0]]
	DotPipR:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DotPipR ) --[[ @ 0]]
	self.DotPipR = DotPipR --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Objective",
			condition = function ( menu, element, event )
				return CoD.AARUtility.IsGametypeObjectiveType( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local8 = self --[[ @ 0]]
	local f1_local9 = self.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["AAR.gametype"], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "AAR.gametype"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
