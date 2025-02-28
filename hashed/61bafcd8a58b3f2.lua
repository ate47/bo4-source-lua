-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmaincorners" ) --[[ @ 0]]

CoD.StartMenu_Options_PC_GraphicsOptions_VRAMBar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Options_PC_GraphicsOptions_VRAMBar.__defaultWidth = 366 --[[ @ 0]]
CoD.StartMenu_Options_PC_GraphicsOptions_VRAMBar.__defaultHeight = 45 --[[ @ 0]]
CoD.StartMenu_Options_PC_GraphicsOptions_VRAMBar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Options_PC_GraphicsOptions_VRAMBar ) --[[ @ 0]]
	self.id = "StartMenu_Options_PC_GraphicsOptions_VRAMBar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Maximum = LUI.UIText.new( 1, 1, -125, 0, 0.5, 0.5, 12.5, 27.5 ) --[[ @ 0]]
	Maximum:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
	Maximum:setAlpha( 0.44 ) --[[ @ 0]]
	Maximum:setText( LocalizeToUpperString( @"hash_404EF66575DDB929" ) ) --[[ @ 0]]
	Maximum:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Maximum:setLetterSpacing( 1 ) --[[ @ 0]]
	Maximum:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	self:addElement( Maximum ) --[[ @ 0]]
	self.Maximum = Maximum --[[ @ 0]]
	
	local FilledBarBackground = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -3, 5 ) --[[ @ 0]]
	FilledBarBackground:setAlpha( 0.03 ) --[[ @ 0]]
	self:addElement( FilledBarBackground ) --[[ @ 0]]
	self.FilledBarBackground = FilledBarBackground --[[ @ 0]]
	
	local FilledBar = LUI.UIImage.new( 0, 0, 0, 166, 0.5, 0.5, -3, 5 ) --[[ @ 0]]
	FilledBar:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
	self:addElement( FilledBar ) --[[ @ 0]]
	self.FilledBar = FilledBar --[[ @ 0]]
	
	local OverflowIndicator1 = LUI.UIImage.new( 1, 1, 4, 9, 0.5, 0.5, -3, 5 ) --[[ @ 0]]
	OverflowIndicator1:setRGB( 0.68, 0.14, 0.1 ) --[[ @ 0]]
	self:addElement( OverflowIndicator1 ) --[[ @ 0]]
	self.OverflowIndicator1 = OverflowIndicator1 --[[ @ 0]]
	
	local OverflowIndicator3 = LUI.UIImage.new( 1, 1, 22, 27, 0.5, 0.5, -3, 5 ) --[[ @ 0]]
	OverflowIndicator3:setRGB( 0.68, 0.14, 0.1 ) --[[ @ 0]]
	self:addElement( OverflowIndicator3 ) --[[ @ 0]]
	self.OverflowIndicator3 = OverflowIndicator3 --[[ @ 0]]
	
	local OverflowIndicator2 = LUI.UIImage.new( 1, 1, 13, 18, 0.5, 0.5, -3, 5 ) --[[ @ 0]]
	OverflowIndicator2:setRGB( 0.68, 0.14, 0.1 ) --[[ @ 0]]
	self:addElement( OverflowIndicator2 ) --[[ @ 0]]
	self.OverflowIndicator2 = OverflowIndicator2 --[[ @ 0]]
	
	local OverflowIndicator4 = LUI.UIImage.new( 1, 1, -4, 26, 0.5, 0.5, -32, -2 ) --[[ @ 0]]
	OverflowIndicator4:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
	OverflowIndicator4:setAlpha( 0.44 ) --[[ @ 0]]
	OverflowIndicator4:setImage( RegisterImage( @"uie_warning_small" ) ) --[[ @ 0]]
	self:addElement( OverflowIndicator4 ) --[[ @ 0]]
	self.OverflowIndicator4 = OverflowIndicator4 --[[ @ 0]]
	
	local Corners = CoD.StartMenuOptionsMainCorners.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0.5, 0.5, -3, 5 ) --[[ @ 0]]
	Corners:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( Corners ) --[[ @ 0]]
	self.Corners = Corners --[[ @ 0]]
	
	local TextBox = LUI.UIText.new( 0, 1, 0, -180, 0.5, 0.5, -24.5, -7.5 ) --[[ @ 0]]
	TextBox:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
	TextBox:setAlpha( 0.6 ) --[[ @ 0]]
	TextBox:setText( LocalizeToUpperString( @"hash_5CCC02F6B5D8DCE1" ) ) --[[ @ 0]]
	TextBox:setTTF( "dinnext_regular" ) --[[ @ 0]]
	TextBox:setLetterSpacing( 1 ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TextBox ) --[[ @ 0]]
	self.TextBox = TextBox --[[ @ 0]]
	
	local MbUsage = LUI.UIText.new( 1, 1, -125, 0, 0.5, 0.5, -24.5, -7.5 ) --[[ @ 0]]
	MbUsage:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
	MbUsage:setAlpha( 0.44 ) --[[ @ 0]]
	MbUsage:setText( LocalizeToUpperString( @"hash_5BF86D864C077F3E" ) ) --[[ @ 0]]
	MbUsage:setTTF( "dinnext_regular" ) --[[ @ 0]]
	MbUsage:setLetterSpacing( 1 ) --[[ @ 0]]
	MbUsage:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	self:addElement( MbUsage ) --[[ @ 0]]
	self.MbUsage = MbUsage --[[ @ 0]]
	
	local RecommendedLimit = LUI.UIImage.new( 0, 0, 284, 285, 0.5, 0.5, -3, 5 ) --[[ @ 0]]
	RecommendedLimit:setRGB( 0.68, 0.14, 0.1 ) --[[ @ 0]]
	self:addElement( RecommendedLimit ) --[[ @ 0]]
	self.RecommendedLimit = RecommendedLimit --[[ @ 0]]
	
	local TooltipFocus = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0, 0, 0, 366, 0, 0, 0, 62 ) --[[ @ 0]]
	TooltipFocus:subscribeToGlobalModel( f1_arg1, "PerController", "CurrentOptionTab", function ( model )
		local f2_local0 = TooltipFocus --[[ @ 0]]
		if not CoD.PCOptionsUtility.IsGraphicsOptions( f1_arg1 ) then
			MakeNotFocusable( f2_local0, f1_arg1 ) --[[ @ 0]]
		elseif CoD.PCOptionsUtility.IsGraphicsOptions( f1_arg1 ) then
			MakeFocusable( f2_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TooltipFocus ) --[[ @ 0]]
	self.TooltipFocus = TooltipFocus --[[ @ 0]]
	
	self:subscribeToGlobalModel( f1_arg1, "PerController", "PC.VRAMBar", function ( model )
		local f3_local0 = self --[[ @ 0]]
		CoD.PCOptionsUtility.UpdateVRAMBar( f1_arg1, self, model ) --[[ @ 0]]
	end ) --[[ @ 0]]
	TooltipFocus.id = "TooltipFocus" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local13 = self --[[ @ 0]]
	f1_local13 = TooltipFocus --[[ @ 0]]
	CoD.PCWidgetUtility.SetupEmptyFocusableTooltip( f1_local13, f1_arg1, @"hash_5CCC02F6B5D8DCE1", @"hash_10A669610927190D" ) --[[ @ 0]]
	DisableKeyboardNavigationByElement( f1_local13 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Options_PC_GraphicsOptions_VRAMBar.__resetProperties = function ( f4_arg0 )
	f4_arg0.OverflowIndicator4:completeAnimation() --[[ @ 0]]
	f4_arg0.OverflowIndicator3:completeAnimation() --[[ @ 0]]
	f4_arg0.OverflowIndicator2:completeAnimation() --[[ @ 0]]
	f4_arg0.OverflowIndicator1:completeAnimation() --[[ @ 0]]
	f4_arg0.Maximum:completeAnimation() --[[ @ 0]]
	f4_arg0.RecommendedLimit:completeAnimation() --[[ @ 0]]
	f4_arg0.MbUsage:completeAnimation() --[[ @ 0]]
	f4_arg0.TextBox:completeAnimation() --[[ @ 0]]
	f4_arg0.Corners:completeAnimation() --[[ @ 0]]
	f4_arg0.FilledBar:completeAnimation() --[[ @ 0]]
	f4_arg0.FilledBarBackground:completeAnimation() --[[ @ 0]]
	f4_arg0.OverflowIndicator4:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
	f4_arg0.OverflowIndicator4:setAlpha( 0.44 ) --[[ @ 0]]
	f4_arg0.OverflowIndicator3:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.OverflowIndicator2:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.OverflowIndicator1:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.Maximum:setAlpha( 0.44 ) --[[ @ 0]]
	f4_arg0.RecommendedLimit:setRGB( 0.68, 0.14, 0.1 ) --[[ @ 0]]
	f4_arg0.RecommendedLimit:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.MbUsage:setAlpha( 0.44 ) --[[ @ 0]]
	f4_arg0.TextBox:setAlpha( 0.6 ) --[[ @ 0]]
	f4_arg0.Corners:setAlpha( 0.5 ) --[[ @ 0]]
	f4_arg0.FilledBar:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
	f4_arg0.FilledBar:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.FilledBarBackground:setAlpha( 0.03 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Options_PC_GraphicsOptions_VRAMBar.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f5_arg0.OverflowIndicator1:completeAnimation() --[[ @ 0]]
			f5_arg0.OverflowIndicator1:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.OverflowIndicator1 ) --[[ @ 0]]
			f5_arg0.OverflowIndicator3:completeAnimation() --[[ @ 0]]
			f5_arg0.OverflowIndicator3:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.OverflowIndicator3 ) --[[ @ 0]]
			f5_arg0.OverflowIndicator2:completeAnimation() --[[ @ 0]]
			f5_arg0.OverflowIndicator2:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.OverflowIndicator2 ) --[[ @ 0]]
			f5_arg0.OverflowIndicator4:completeAnimation() --[[ @ 0]]
			f5_arg0.OverflowIndicator4:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.OverflowIndicator4 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 11 ) --[[ @ 0]]
			f6_arg0.Maximum:completeAnimation() --[[ @ 0]]
			f6_arg0.Maximum:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Maximum ) --[[ @ 0]]
			f6_arg0.FilledBarBackground:completeAnimation() --[[ @ 0]]
			f6_arg0.FilledBarBackground:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.FilledBarBackground ) --[[ @ 0]]
			f6_arg0.FilledBar:completeAnimation() --[[ @ 0]]
			f6_arg0.FilledBar:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.FilledBar ) --[[ @ 0]]
			f6_arg0.OverflowIndicator1:completeAnimation() --[[ @ 0]]
			f6_arg0.OverflowIndicator1:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.OverflowIndicator1 ) --[[ @ 0]]
			f6_arg0.OverflowIndicator3:completeAnimation() --[[ @ 0]]
			f6_arg0.OverflowIndicator3:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.OverflowIndicator3 ) --[[ @ 0]]
			f6_arg0.OverflowIndicator2:completeAnimation() --[[ @ 0]]
			f6_arg0.OverflowIndicator2:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.OverflowIndicator2 ) --[[ @ 0]]
			f6_arg0.OverflowIndicator4:completeAnimation() --[[ @ 0]]
			f6_arg0.OverflowIndicator4:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.OverflowIndicator4 ) --[[ @ 0]]
			f6_arg0.Corners:completeAnimation() --[[ @ 0]]
			f6_arg0.Corners:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Corners ) --[[ @ 0]]
			f6_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f6_arg0.TextBox:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.TextBox ) --[[ @ 0]]
			f6_arg0.MbUsage:completeAnimation() --[[ @ 0]]
			f6_arg0.MbUsage:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.MbUsage ) --[[ @ 0]]
			f6_arg0.RecommendedLimit:completeAnimation() --[[ @ 0]]
			f6_arg0.RecommendedLimit:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.RecommendedLimit ) --[[ @ 0]]
		end
	},
	Overflow = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f7_arg0.FilledBar:completeAnimation() --[[ @ 0]]
			f7_arg0.FilledBar:setRGB( 0.68, 0.14, 0.1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.FilledBar ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 280 ) --[[ @ 0]]
					f9_arg0:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.OverflowIndicator4:beginAnimation( 220 ) --[[ @ 0]]
				f7_arg0.OverflowIndicator4:setRGB( 1, 0, 0 ) --[[ @ 0]]
				f7_arg0.OverflowIndicator4:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.OverflowIndicator4:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.OverflowIndicator4:completeAnimation() --[[ @ 0]]
			f7_arg0.OverflowIndicator4:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
			f7_local0( f7_arg0.OverflowIndicator4 ) --[[ @ 0]]
			f7_arg0.RecommendedLimit:completeAnimation() --[[ @ 0]]
			f7_arg0.RecommendedLimit:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.RecommendedLimit ) --[[ @ 0]]
			f7_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	OverRecommended = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f10_arg0.FilledBar:completeAnimation() --[[ @ 0]]
			f10_arg0.FilledBar:setRGB( 0.68, 0.14, 0.1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.FilledBar ) --[[ @ 0]]
			f10_arg0.OverflowIndicator1:completeAnimation() --[[ @ 0]]
			f10_arg0.OverflowIndicator1:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.OverflowIndicator1 ) --[[ @ 0]]
			f10_arg0.OverflowIndicator3:completeAnimation() --[[ @ 0]]
			f10_arg0.OverflowIndicator3:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.OverflowIndicator3 ) --[[ @ 0]]
			f10_arg0.OverflowIndicator2:completeAnimation() --[[ @ 0]]
			f10_arg0.OverflowIndicator2:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.OverflowIndicator2 ) --[[ @ 0]]
			f10_arg0.OverflowIndicator4:completeAnimation() --[[ @ 0]]
			f10_arg0.OverflowIndicator4:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.OverflowIndicator4 ) --[[ @ 0]]
			f10_arg0.RecommendedLimit:completeAnimation() --[[ @ 0]]
			f10_arg0.RecommendedLimit:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.RecommendedLimit ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_Options_PC_GraphicsOptions_VRAMBar.__onClose = function ( f11_arg0 )
	f11_arg0.Corners:close() --[[ @ 0]]
	f11_arg0.TooltipFocus:close() --[[ @ 0]]
end
 --[[ @ 0]]
