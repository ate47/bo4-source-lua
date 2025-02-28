-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.CodCaster_Keyboard = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCaster_Keyboard.__defaultWidth = 1920 --[[ @ 0]]
CoD.CodCaster_Keyboard.__defaultHeight = 1080 --[[ @ 0]]
CoD.CodCaster_Keyboard.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCaster_Keyboard ) --[[ @ 0]]
	self.id = "CodCaster_Keyboard" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Blur = LUI.UIImage.new( 0, 0, 389.5, 1512.5, 0, 0, 200, 880 ) --[[ @ 0]]
	Blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	Blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Blur ) --[[ @ 0]]
	self.Blur = Blur --[[ @ 0]]
	
	local TintBody03 = LUI.UIImage.new( 0, 0, 389.5, 1512.5, 0, 0, 871.5, 879.5 ) --[[ @ 0]]
	TintBody03:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TintBody03:setAlpha( 0.15 ) --[[ @ 0]]
	self:addElement( TintBody03 ) --[[ @ 0]]
	self.TintBody03 = TintBody03 --[[ @ 0]]
	
	local TintBody02 = LUI.UIImage.new( 0, 0, 387.5, 1514.5, 0, 0, 198, 882 ) --[[ @ 0]]
	TintBody02:setRGB( 0.87, 0.87, 0.87 ) --[[ @ 0]]
	TintBody02:setImage( RegisterImage( @"uie_ui_menu_mp_scoreboard_list_bg" ) ) --[[ @ 0]]
	self:addElement( TintBody02 ) --[[ @ 0]]
	self.TintBody02 = TintBody02 --[[ @ 0]]
	
	local Keyboard = LUI.UIImage.new( 0, 0, 393, 1527, 0, 0, 221, 859 ) --[[ @ 0]]
	Keyboard:setImage( RegisterImage( @"uie_ui_codcaster_keyboard" ) ) --[[ @ 0]]
	self:addElement( Keyboard ) --[[ @ 0]]
	self.Keyboard = Keyboard --[[ @ 0]]
	
	local ArrowsFPS = LUI.UIText.new( 0, 0, 626, 1126, 0, 0, 268.5, 283.5 ) --[[ @ 0]]
	ArrowsFPS:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6CC03F6E4651CC85" ) ) --[[ @ 0]]
	ArrowsFPS:setTTF( "default" ) --[[ @ 0]]
	ArrowsFPS:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( ArrowsFPS ) --[[ @ 0]]
	self.ArrowsFPS = ArrowsFPS --[[ @ 0]]
	
	local Numbers = LUI.UIText.new( 0, 0, 569.5, 1069.5, 0, 0, 253.5, 268.5 ) --[[ @ 0]]
	Numbers:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4B9AD6ACC2FEA3DD" ) ) --[[ @ 0]]
	Numbers:setTTF( "default" ) --[[ @ 0]]
	Numbers:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Numbers ) --[[ @ 0]]
	self.Numbers = Numbers --[[ @ 0]]
	
	local R = LUI.UIText.new( 0, 0, 701, 1201, 0, 0, 284.5, 299.5 ) --[[ @ 0]]
	R:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5082ECE165D3E0C" ) ) --[[ @ 0]]
	R:setTTF( "default" ) --[[ @ 0]]
	R:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( R ) --[[ @ 0]]
	self.R = R --[[ @ 0]]
	
	local T = LUI.UIText.new( 0, 0, 738, 1238, 0, 0, 300.5, 315.5 ) --[[ @ 0]]
	T:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1EF1D244CD091910" ) ) --[[ @ 0]]
	T:setTTF( "default" ) --[[ @ 0]]
	T:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( T ) --[[ @ 0]]
	self.T = T --[[ @ 0]]
	
	local Y = LUI.UIText.new( 0, 0, 776, 1276, 0, 0, 314.5, 329.5 ) --[[ @ 0]]
	Y:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1E9D5F20B19EC763" ) ) --[[ @ 0]]
	Y:setTTF( "default" ) --[[ @ 0]]
	Y:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Y ) --[[ @ 0]]
	self.Y = Y --[[ @ 0]]
	
	local ZoomOut = LUI.UIText.new( 0, 0, 962.5, 1462.5, 0, 0, 370.5, 385.5 ) --[[ @ 0]]
	ZoomOut:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_582758552FB3DD94" ) ) --[[ @ 0]]
	ZoomOut:setTTF( "default" ) --[[ @ 0]]
	ZoomOut:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( ZoomOut ) --[[ @ 0]]
	self.ZoomOut = ZoomOut --[[ @ 0]]
	
	local Shift = LUI.UIText.new( 0, 0, 440.5, 698.5, 0, 0, 670, 686 ) --[[ @ 0]]
	Shift:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_32D4D1AF93A1C593" ) ) --[[ @ 0]]
	Shift:setTTF( "default" ) --[[ @ 0]]
	Shift:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Shift ) --[[ @ 0]]
	self.Shift = Shift --[[ @ 0]]
	
	local Enter = LUI.UIText.new( 0, 0, 1084, 1584, 0, 0, 385.5, 400.5 ) --[[ @ 0]]
	Enter:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_E528282EC1246D5" ) ) --[[ @ 0]]
	Enter:setTTF( "default" ) --[[ @ 0]]
	Enter:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Enter ) --[[ @ 0]]
	self.Enter = Enter --[[ @ 0]]
	
	local C = LUI.UIText.new( 0, 0, 413, 671, 0, 0, 778.5, 794.5 ) --[[ @ 0]]
	C:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4F4695A8C0A844EF" ) ) --[[ @ 0]]
	C:setTTF( "default" ) --[[ @ 0]]
	C:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	self:addElement( C ) --[[ @ 0]]
	self.C = C --[[ @ 0]]
	
	local F = LUI.UIText.new( 0, 0, 431, 689, 0, 0, 796.5, 811.5 ) --[[ @ 0]]
	F:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_74780A983DA51A66" ) ) --[[ @ 0]]
	F:setTTF( "default" ) --[[ @ 0]]
	F:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	self:addElement( F ) --[[ @ 0]]
	self.F = F --[[ @ 0]]
	
	local G = LUI.UIText.new( 0, 0, 751.5, 1251.5, 0, 0, 796.5, 811.5 ) --[[ @ 0]]
	G:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_51FDC6938F3218D0" ) ) --[[ @ 0]]
	G:setTTF( "default" ) --[[ @ 0]]
	G:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( G ) --[[ @ 0]]
	self.G = G --[[ @ 0]]
	
	local H = LUI.UIText.new( 0, 0, 788.5, 1288.5, 0, 0, 778.5, 793.5 ) --[[ @ 0]]
	H:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_629C3F7E140F260A" ) ) --[[ @ 0]]
	H:setTTF( "default" ) --[[ @ 0]]
	H:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( H ) --[[ @ 0]]
	self.H = H --[[ @ 0]]
	
	local J = LUI.UIText.new( 0, 0, 826.5, 1326.5, 0, 0, 328.5, 343.5 ) --[[ @ 0]]
	J:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6239BFD1BBD74729" ) ) --[[ @ 0]]
	J:setTTF( "default" ) --[[ @ 0]]
	J:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( J ) --[[ @ 0]]
	self.J = J --[[ @ 0]]
	
	local M = LUI.UIText.new( 0, 0, 844.5, 1344.5, 0, 0, 746.5, 761.5 ) --[[ @ 0]]
	M:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6D9622B4FC02DFBA" ) ) --[[ @ 0]]
	M:setTTF( "default" ) --[[ @ 0]]
	M:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( M ) --[[ @ 0]]
	self.M = M --[[ @ 0]]
	
	local K = LUI.UIText.new( 0, 0, 862.5, 1362.5, 0, 0, 342.5, 357.5 ) --[[ @ 0]]
	K:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2295108BDCD43FFC" ) ) --[[ @ 0]]
	K:setTTF( "default" ) --[[ @ 0]]
	K:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( K ) --[[ @ 0]]
	self.K = K --[[ @ 0]]
	
	local Prev = LUI.UIText.new( 0, 0, 883.5, 1383.5, 0, 0, 715.5, 730.5 ) --[[ @ 0]]
	Prev:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_644D944499B494E8" ) ) --[[ @ 0]]
	Prev:setTTF( "default" ) --[[ @ 0]]
	Prev:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Prev ) --[[ @ 0]]
	self.Prev = Prev --[[ @ 0]]
	
	local L = LUI.UIText.new( 0, 0, 901.5, 1401.5, 0, 0, 356.5, 371.5 ) --[[ @ 0]]
	L:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6DBD347CE6E79536" ) ) --[[ @ 0]]
	L:setTTF( "default" ) --[[ @ 0]]
	L:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( L ) --[[ @ 0]]
	self.L = L --[[ @ 0]]
	
	local Next = LUI.UIText.new( 0, 0, 918.5, 1418.5, 0, 0, 696.5, 711.5 ) --[[ @ 0]]
	Next:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2A2F2B5E2765E548" ) ) --[[ @ 0]]
	Next:setTTF( "default" ) --[[ @ 0]]
	Next:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Next ) --[[ @ 0]]
	self.Next = Next --[[ @ 0]]
	
	local Semicolon = LUI.UIText.new( 0, 0, 938.5, 1438.5, 0, 0, 680.5, 695.5 ) --[[ @ 0]]
	Semicolon:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_524B92E40440B5ED" ) ) --[[ @ 0]]
	Semicolon:setTTF( "default" ) --[[ @ 0]]
	Semicolon:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Semicolon ) --[[ @ 0]]
	self.Semicolon = Semicolon --[[ @ 0]]
	
	local Comma = LUI.UIText.new( 0, 0, 975.5, 1475.5, 0, 0, 660.5, 675.5 ) --[[ @ 0]]
	Comma:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_72EB128302A523CF" ) ) --[[ @ 0]]
	Comma:setTTF( "default" ) --[[ @ 0]]
	Comma:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Comma ) --[[ @ 0]]
	self.Comma = Comma --[[ @ 0]]
	
	local UpDownArrows = LUI.UIText.new( 0, 0, 1149.5, 1649.5, 0, 0, 711, 726 ) --[[ @ 0]]
	UpDownArrows:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_101C66D706E4682A" ) ) --[[ @ 0]]
	UpDownArrows:setTTF( "default" ) --[[ @ 0]]
	UpDownArrows:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( UpDownArrows ) --[[ @ 0]]
	self.UpDownArrows = UpDownArrows --[[ @ 0]]
	
	local LeftRightArrows = LUI.UIText.new( 0, 0, 1215.5, 1715.5, 0, 0, 695, 710 ) --[[ @ 0]]
	LeftRightArrows:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_311D93615BDAC5C3" ) ) --[[ @ 0]]
	LeftRightArrows:setTTF( "default" ) --[[ @ 0]]
	LeftRightArrows:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( LeftRightArrows ) --[[ @ 0]]
	self.LeftRightArrows = LeftRightArrows --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "VisibleAsianLanguage",
			condition = function ( menu, element, event )
				return CoD.BaseUtility.IsCurrentLanguageAsian() and CoD.ModelUtility.IsModelValueTrue( f1_arg1, "CodCaster.showKeyboard" )
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueTrue( f1_arg1, "CodCaster.showKeyboard" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local27 = self --[[ @ 0]]
	local f1_local28 = self.subscribeToModel --[[ @ 0]]
	local f1_local29 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local28( f1_local27, f1_local29["CodCaster.showKeyboard"], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "CodCaster.showKeyboard"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CodCaster_Keyboard.__resetProperties = function ( f5_arg0 )
	f5_arg0.Keyboard:completeAnimation() --[[ @ 0]]
	f5_arg0.LeftRightArrows:completeAnimation() --[[ @ 0]]
	f5_arg0.UpDownArrows:completeAnimation() --[[ @ 0]]
	f5_arg0.Comma:completeAnimation() --[[ @ 0]]
	f5_arg0.Semicolon:completeAnimation() --[[ @ 0]]
	f5_arg0.Next:completeAnimation() --[[ @ 0]]
	f5_arg0.L:completeAnimation() --[[ @ 0]]
	f5_arg0.Prev:completeAnimation() --[[ @ 0]]
	f5_arg0.K:completeAnimation() --[[ @ 0]]
	f5_arg0.M:completeAnimation() --[[ @ 0]]
	f5_arg0.J:completeAnimation() --[[ @ 0]]
	f5_arg0.H:completeAnimation() --[[ @ 0]]
	f5_arg0.G:completeAnimation() --[[ @ 0]]
	f5_arg0.F:completeAnimation() --[[ @ 0]]
	f5_arg0.C:completeAnimation() --[[ @ 0]]
	f5_arg0.Enter:completeAnimation() --[[ @ 0]]
	f5_arg0.ZoomOut:completeAnimation() --[[ @ 0]]
	f5_arg0.Y:completeAnimation() --[[ @ 0]]
	f5_arg0.T:completeAnimation() --[[ @ 0]]
	f5_arg0.R:completeAnimation() --[[ @ 0]]
	f5_arg0.Numbers:completeAnimation() --[[ @ 0]]
	f5_arg0.ArrowsFPS:completeAnimation() --[[ @ 0]]
	f5_arg0.TintBody02:completeAnimation() --[[ @ 0]]
	f5_arg0.TintBody03:completeAnimation() --[[ @ 0]]
	f5_arg0.Blur:completeAnimation() --[[ @ 0]]
	f5_arg0.Shift:completeAnimation() --[[ @ 0]]
	f5_arg0.Keyboard:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.LeftRightArrows:setTopBottom( 0, 0, 695, 710 ) --[[ @ 0]]
	f5_arg0.LeftRightArrows:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.UpDownArrows:setTopBottom( 0, 0, 711, 726 ) --[[ @ 0]]
	f5_arg0.UpDownArrows:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.Comma:setTopBottom( 0, 0, 660.5, 675.5 ) --[[ @ 0]]
	f5_arg0.Comma:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.Semicolon:setTopBottom( 0, 0, 680.5, 695.5 ) --[[ @ 0]]
	f5_arg0.Semicolon:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.Next:setTopBottom( 0, 0, 696.5, 711.5 ) --[[ @ 0]]
	f5_arg0.Next:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.L:setTopBottom( 0, 0, 356.5, 371.5 ) --[[ @ 0]]
	f5_arg0.L:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.Prev:setTopBottom( 0, 0, 715.5, 730.5 ) --[[ @ 0]]
	f5_arg0.Prev:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.K:setTopBottom( 0, 0, 342.5, 357.5 ) --[[ @ 0]]
	f5_arg0.K:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.M:setTopBottom( 0, 0, 746.5, 761.5 ) --[[ @ 0]]
	f5_arg0.M:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.J:setTopBottom( 0, 0, 328.5, 343.5 ) --[[ @ 0]]
	f5_arg0.J:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.H:setTopBottom( 0, 0, 778.5, 793.5 ) --[[ @ 0]]
	f5_arg0.H:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.G:setTopBottom( 0, 0, 796.5, 811.5 ) --[[ @ 0]]
	f5_arg0.G:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.F:setTopBottom( 0, 0, 796.5, 811.5 ) --[[ @ 0]]
	f5_arg0.F:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.C:setTopBottom( 0, 0, 778.5, 794.5 ) --[[ @ 0]]
	f5_arg0.C:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.Enter:setTopBottom( 0, 0, 385.5, 400.5 ) --[[ @ 0]]
	f5_arg0.Enter:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.ZoomOut:setTopBottom( 0, 0, 370.5, 385.5 ) --[[ @ 0]]
	f5_arg0.ZoomOut:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.Y:setTopBottom( 0, 0, 314.5, 329.5 ) --[[ @ 0]]
	f5_arg0.Y:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.T:setTopBottom( 0, 0, 300.5, 315.5 ) --[[ @ 0]]
	f5_arg0.T:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.R:setTopBottom( 0, 0, 284.5, 299.5 ) --[[ @ 0]]
	f5_arg0.R:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.Numbers:setTopBottom( 0, 0, 253.5, 268.5 ) --[[ @ 0]]
	f5_arg0.Numbers:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.ArrowsFPS:setTopBottom( 0, 0, 268.5, 283.5 ) --[[ @ 0]]
	f5_arg0.ArrowsFPS:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.TintBody02:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.TintBody03:setAlpha( 0.15 ) --[[ @ 0]]
	f5_arg0.Blur:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.Shift:setTopBottom( 0, 0, 670, 686 ) --[[ @ 0]]
	f5_arg0.Shift:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCaster_Keyboard.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 26 ) --[[ @ 0]]
			f6_arg0.Blur:completeAnimation() --[[ @ 0]]
			f6_arg0.Blur:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Blur ) --[[ @ 0]]
			f6_arg0.TintBody03:completeAnimation() --[[ @ 0]]
			f6_arg0.TintBody03:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.TintBody03 ) --[[ @ 0]]
			f6_arg0.TintBody02:completeAnimation() --[[ @ 0]]
			f6_arg0.TintBody02:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.TintBody02 ) --[[ @ 0]]
			f6_arg0.Keyboard:completeAnimation() --[[ @ 0]]
			f6_arg0.Keyboard:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Keyboard ) --[[ @ 0]]
			f6_arg0.ArrowsFPS:completeAnimation() --[[ @ 0]]
			f6_arg0.ArrowsFPS:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.ArrowsFPS ) --[[ @ 0]]
			f6_arg0.Numbers:completeAnimation() --[[ @ 0]]
			f6_arg0.Numbers:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Numbers ) --[[ @ 0]]
			f6_arg0.R:completeAnimation() --[[ @ 0]]
			f6_arg0.R:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.R ) --[[ @ 0]]
			f6_arg0.T:completeAnimation() --[[ @ 0]]
			f6_arg0.T:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.T ) --[[ @ 0]]
			f6_arg0.Y:completeAnimation() --[[ @ 0]]
			f6_arg0.Y:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Y ) --[[ @ 0]]
			f6_arg0.ZoomOut:completeAnimation() --[[ @ 0]]
			f6_arg0.ZoomOut:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.ZoomOut ) --[[ @ 0]]
			f6_arg0.Shift:completeAnimation() --[[ @ 0]]
			f6_arg0.Shift:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Shift ) --[[ @ 0]]
			f6_arg0.Enter:completeAnimation() --[[ @ 0]]
			f6_arg0.Enter:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Enter ) --[[ @ 0]]
			f6_arg0.C:completeAnimation() --[[ @ 0]]
			f6_arg0.C:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.C ) --[[ @ 0]]
			f6_arg0.F:completeAnimation() --[[ @ 0]]
			f6_arg0.F:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.F ) --[[ @ 0]]
			f6_arg0.G:completeAnimation() --[[ @ 0]]
			f6_arg0.G:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.G ) --[[ @ 0]]
			f6_arg0.H:completeAnimation() --[[ @ 0]]
			f6_arg0.H:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.H ) --[[ @ 0]]
			f6_arg0.J:completeAnimation() --[[ @ 0]]
			f6_arg0.J:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.J ) --[[ @ 0]]
			f6_arg0.M:completeAnimation() --[[ @ 0]]
			f6_arg0.M:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.M ) --[[ @ 0]]
			f6_arg0.K:completeAnimation() --[[ @ 0]]
			f6_arg0.K:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.K ) --[[ @ 0]]
			f6_arg0.Prev:completeAnimation() --[[ @ 0]]
			f6_arg0.Prev:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Prev ) --[[ @ 0]]
			f6_arg0.L:completeAnimation() --[[ @ 0]]
			f6_arg0.L:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.L ) --[[ @ 0]]
			f6_arg0.Next:completeAnimation() --[[ @ 0]]
			f6_arg0.Next:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Next ) --[[ @ 0]]
			f6_arg0.Semicolon:completeAnimation() --[[ @ 0]]
			f6_arg0.Semicolon:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Semicolon ) --[[ @ 0]]
			f6_arg0.Comma:completeAnimation() --[[ @ 0]]
			f6_arg0.Comma:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Comma ) --[[ @ 0]]
			f6_arg0.UpDownArrows:completeAnimation() --[[ @ 0]]
			f6_arg0.UpDownArrows:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.UpDownArrows ) --[[ @ 0]]
			f6_arg0.LeftRightArrows:completeAnimation() --[[ @ 0]]
			f6_arg0.LeftRightArrows:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.LeftRightArrows ) --[[ @ 0]]
		end
	},
	VisibleAsianLanguage = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 22 ) --[[ @ 0]]
			f7_arg0.ArrowsFPS:completeAnimation() --[[ @ 0]]
			f7_arg0.ArrowsFPS:setTopBottom( 0, 0, 270.5, 279.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.ArrowsFPS ) --[[ @ 0]]
			f7_arg0.Numbers:completeAnimation() --[[ @ 0]]
			f7_arg0.Numbers:setTopBottom( 0, 0, 255.5, 264.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Numbers ) --[[ @ 0]]
			f7_arg0.R:completeAnimation() --[[ @ 0]]
			f7_arg0.R:setTopBottom( 0, 0, 286.5, 295.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.R ) --[[ @ 0]]
			f7_arg0.T:completeAnimation() --[[ @ 0]]
			f7_arg0.T:setTopBottom( 0, 0, 302.5, 311.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.T ) --[[ @ 0]]
			f7_arg0.Y:completeAnimation() --[[ @ 0]]
			f7_arg0.Y:setTopBottom( 0, 0, 316.5, 325.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Y ) --[[ @ 0]]
			f7_arg0.ZoomOut:completeAnimation() --[[ @ 0]]
			f7_arg0.ZoomOut:setTopBottom( 0, 0, 372.5, 381.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.ZoomOut ) --[[ @ 0]]
			f7_arg0.Shift:completeAnimation() --[[ @ 0]]
			f7_arg0.Shift:setTopBottom( 0, 0, 672, 681 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Shift ) --[[ @ 0]]
			f7_arg0.Enter:completeAnimation() --[[ @ 0]]
			f7_arg0.Enter:setTopBottom( 0, 0, 387.5, 396.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Enter ) --[[ @ 0]]
			f7_arg0.C:completeAnimation() --[[ @ 0]]
			f7_arg0.C:setTopBottom( 0, 0, 780.5, 789.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.C ) --[[ @ 0]]
			f7_arg0.F:completeAnimation() --[[ @ 0]]
			f7_arg0.F:setTopBottom( 0, 0, 798.5, 807.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.F ) --[[ @ 0]]
			f7_arg0.G:completeAnimation() --[[ @ 0]]
			f7_arg0.G:setTopBottom( 0, 0, 798.5, 807.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.G ) --[[ @ 0]]
			f7_arg0.H:completeAnimation() --[[ @ 0]]
			f7_arg0.H:setTopBottom( 0, 0, 780.5, 789.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.H ) --[[ @ 0]]
			f7_arg0.J:completeAnimation() --[[ @ 0]]
			f7_arg0.J:setTopBottom( 0, 0, 330.5, 339.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.J ) --[[ @ 0]]
			f7_arg0.M:completeAnimation() --[[ @ 0]]
			f7_arg0.M:setTopBottom( 0, 0, 748.5, 757.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.M ) --[[ @ 0]]
			f7_arg0.K:completeAnimation() --[[ @ 0]]
			f7_arg0.K:setTopBottom( 0, 0, 344.5, 353.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.K ) --[[ @ 0]]
			f7_arg0.Prev:completeAnimation() --[[ @ 0]]
			f7_arg0.Prev:setTopBottom( 0, 0, 717.5, 726.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Prev ) --[[ @ 0]]
			f7_arg0.L:completeAnimation() --[[ @ 0]]
			f7_arg0.L:setTopBottom( 0, 0, 358.5, 367.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.L ) --[[ @ 0]]
			f7_arg0.Next:completeAnimation() --[[ @ 0]]
			f7_arg0.Next:setTopBottom( 0, 0, 698.5, 707.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Next ) --[[ @ 0]]
			f7_arg0.Semicolon:completeAnimation() --[[ @ 0]]
			f7_arg0.Semicolon:setTopBottom( 0, 0, 682.5, 691.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Semicolon ) --[[ @ 0]]
			f7_arg0.Comma:completeAnimation() --[[ @ 0]]
			f7_arg0.Comma:setTopBottom( 0, 0, 662.5, 671.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Comma ) --[[ @ 0]]
			f7_arg0.UpDownArrows:completeAnimation() --[[ @ 0]]
			f7_arg0.UpDownArrows:setTopBottom( 0, 0, 713, 722 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.UpDownArrows ) --[[ @ 0]]
			f7_arg0.LeftRightArrows:completeAnimation() --[[ @ 0]]
			f7_arg0.LeftRightArrows:setTopBottom( 0, 0, 697, 706 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.LeftRightArrows ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
