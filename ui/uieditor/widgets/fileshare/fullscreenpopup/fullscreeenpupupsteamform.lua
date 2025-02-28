-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/genericpopups/dialogspinner" ) --[[ @ 0]]

CoD.FullscreeenPupupSteamForm = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FullscreeenPupupSteamForm.__defaultWidth = 1920 --[[ @ 0]]
CoD.FullscreeenPupupSteamForm.__defaultHeight = 1080 --[[ @ 0]]
CoD.FullscreeenPupupSteamForm.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.FullscreeenPupupSteamForm ) --[[ @ 0]]
	self.id = "FullscreeenPupupSteamForm" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 0, 0, 1920, 0, 0, 0, 1080 ) --[[ @ 0]]
	Background:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Background:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local RedLine = LUI.UIImage.new( 0, 0, 0, 1920, 0, 0, 310, 318 ) --[[ @ 0]]
	RedLine:setRGB( 1, 0.6, 0 ) --[[ @ 0]]
	RedLine:setAlpha( 0.82 ) --[[ @ 0]]
	self:addElement( RedLine ) --[[ @ 0]]
	self.RedLine = RedLine --[[ @ 0]]
	
	local BodyBackground = LUI.UIImage.new( 0, 0, 0, 1920, 0, 0, 314, 845 ) --[[ @ 0]]
	BodyBackground:setRGB( 0.1, 0.1, 0.1 ) --[[ @ 0]]
	self:addElement( BodyBackground ) --[[ @ 0]]
	self.BodyBackground = BodyBackground --[[ @ 0]]
	
	local PromptBackground = LUI.UIImage.new( 0, 0, 0, 1920, 0, 0, 845, 917 ) --[[ @ 0]]
	PromptBackground:setRGB( 0.24, 0.24, 0.24 ) --[[ @ 0]]
	self:addElement( PromptBackground ) --[[ @ 0]]
	self.PromptBackground = PromptBackground --[[ @ 0]]
	
	local DialogSpinner0 = CoD.DialogSpinner.new( f1_arg0, f1_arg1, 0, 0, 804, 996, 0, 0, 540, 732 ) --[[ @ 0]]
	self:addElement( DialogSpinner0 ) --[[ @ 0]]
	self.DialogSpinner0 = DialogSpinner0 --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0, 0, 690, 990, 0, 0, 365, 437 ) --[[ @ 0]]
	Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Title:setTTF( "default" ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local Subtitle = LUI.UIText.new( 0, 0, 690, 1538, 0, 0, 435, 473 ) --[[ @ 0]]
	Subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Subtitle:setTTF( "default" ) --[[ @ 0]]
	Subtitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Subtitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Subtitle ) --[[ @ 0]]
	self.Subtitle = Subtitle --[[ @ 0]]
	
	local WorkingTitle = LUI.UIText.new( 0, 0, 690, 990, 0, 0, 365, 437 ) --[[ @ 0]]
	WorkingTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	WorkingTitle:setTTF( "default" ) --[[ @ 0]]
	WorkingTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( WorkingTitle ) --[[ @ 0]]
	self.WorkingTitle = WorkingTitle --[[ @ 0]]
	
	local DoneTitle = LUI.UIText.new( 0, 0, 690, 990, 0, 0, 365, 437 ) --[[ @ 0]]
	DoneTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	DoneTitle:setTTF( "default" ) --[[ @ 0]]
	DoneTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( DoneTitle ) --[[ @ 0]]
	self.DoneTitle = DoneTitle --[[ @ 0]]
	
	local ErrorTitle = LUI.UIText.new( 0, 0, 690, 990, 0, 0, 365, 437 ) --[[ @ 0]]
	ErrorTitle:setAlpha( 0 ) --[[ @ 0]]
	ErrorTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_127999393F1681" ) ) --[[ @ 0]]
	ErrorTitle:setTTF( "default" ) --[[ @ 0]]
	ErrorTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( ErrorTitle ) --[[ @ 0]]
	self.ErrorTitle = ErrorTitle --[[ @ 0]]
	
	local ErrorSubtitle = LUI.UIText.new( 0, 0, 690, 1538, 0, 0, 435, 473 ) --[[ @ 0]]
	ErrorSubtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	ErrorSubtitle:setTTF( "default" ) --[[ @ 0]]
	ErrorSubtitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ErrorSubtitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( ErrorSubtitle ) --[[ @ 0]]
	self.ErrorSubtitle = ErrorSubtitle --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.FullscreeenPupupSteamForm.__resetProperties = function ( f2_arg0 )
	f2_arg0.WorkingTitle:completeAnimation() --[[ @ 0]]
	f2_arg0.DialogSpinner0:completeAnimation() --[[ @ 0]]
	f2_arg0.DoneTitle:completeAnimation() --[[ @ 0]]
	f2_arg0.ErrorSubtitle:completeAnimation() --[[ @ 0]]
	f2_arg0.Title:completeAnimation() --[[ @ 0]]
	f2_arg0.Subtitle:completeAnimation() --[[ @ 0]]
	f2_arg0.ErrorTitle:completeAnimation() --[[ @ 0]]
	f2_arg0.WorkingTitle:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.DialogSpinner0:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.DoneTitle:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.ErrorSubtitle:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Subtitle:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	f2_arg0.ErrorTitle:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FullscreeenPupupSteamForm.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f3_arg0.DialogSpinner0:completeAnimation() --[[ @ 0]]
			f3_arg0.DialogSpinner0:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.DialogSpinner0 ) --[[ @ 0]]
			f3_arg0.WorkingTitle:completeAnimation() --[[ @ 0]]
			f3_arg0.WorkingTitle:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.WorkingTitle ) --[[ @ 0]]
			f3_arg0.DoneTitle:completeAnimation() --[[ @ 0]]
			f3_arg0.DoneTitle:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.DoneTitle ) --[[ @ 0]]
			f3_arg0.ErrorSubtitle:completeAnimation() --[[ @ 0]]
			f3_arg0.ErrorSubtitle:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.ErrorSubtitle ) --[[ @ 0]]
		end
	},
	WorkingState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f4_arg0.Title:completeAnimation() --[[ @ 0]]
			f4_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Title ) --[[ @ 0]]
			f4_arg0.Subtitle:completeAnimation() --[[ @ 0]]
			f4_arg0.Subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_411A5E60064F7C24" ) ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Subtitle ) --[[ @ 0]]
			f4_arg0.DoneTitle:completeAnimation() --[[ @ 0]]
			f4_arg0.DoneTitle:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.DoneTitle ) --[[ @ 0]]
			f4_arg0.ErrorSubtitle:completeAnimation() --[[ @ 0]]
			f4_arg0.ErrorSubtitle:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.ErrorSubtitle ) --[[ @ 0]]
		end
	},
	ErrorState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f5_arg0.DialogSpinner0:completeAnimation() --[[ @ 0]]
			f5_arg0.DialogSpinner0:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.DialogSpinner0 ) --[[ @ 0]]
			f5_arg0.Title:completeAnimation() --[[ @ 0]]
			f5_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Title ) --[[ @ 0]]
			f5_arg0.Subtitle:completeAnimation() --[[ @ 0]]
			f5_arg0.Subtitle:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.Subtitle:setText( "" ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Subtitle ) --[[ @ 0]]
			f5_arg0.WorkingTitle:completeAnimation() --[[ @ 0]]
			f5_arg0.WorkingTitle:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.WorkingTitle ) --[[ @ 0]]
			f5_arg0.DoneTitle:completeAnimation() --[[ @ 0]]
			f5_arg0.DoneTitle:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.DoneTitle ) --[[ @ 0]]
			f5_arg0.ErrorTitle:completeAnimation() --[[ @ 0]]
			f5_arg0.ErrorTitle:setAlpha( 1 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.ErrorTitle ) --[[ @ 0]]
		end
	},
	CustomState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f6_arg0.DialogSpinner0:completeAnimation() --[[ @ 0]]
			f6_arg0.DialogSpinner0:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.DialogSpinner0 ) --[[ @ 0]]
			f6_arg0.WorkingTitle:completeAnimation() --[[ @ 0]]
			f6_arg0.WorkingTitle:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.WorkingTitle ) --[[ @ 0]]
			f6_arg0.DoneTitle:completeAnimation() --[[ @ 0]]
			f6_arg0.DoneTitle:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.DoneTitle ) --[[ @ 0]]
			f6_arg0.ErrorSubtitle:completeAnimation() --[[ @ 0]]
			f6_arg0.ErrorSubtitle:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.ErrorSubtitle ) --[[ @ 0]]
		end
	},
	DoneState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f7_arg0.DialogSpinner0:completeAnimation() --[[ @ 0]]
			f7_arg0.DialogSpinner0:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.DialogSpinner0 ) --[[ @ 0]]
			f7_arg0.Title:completeAnimation() --[[ @ 0]]
			f7_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Title ) --[[ @ 0]]
			f7_arg0.Subtitle:completeAnimation() --[[ @ 0]]
			f7_arg0.Subtitle:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Subtitle ) --[[ @ 0]]
			f7_arg0.WorkingTitle:completeAnimation() --[[ @ 0]]
			f7_arg0.WorkingTitle:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.WorkingTitle ) --[[ @ 0]]
			f7_arg0.ErrorSubtitle:completeAnimation() --[[ @ 0]]
			f7_arg0.ErrorSubtitle:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.ErrorSubtitle ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.FullscreeenPupupSteamForm.__onClose = function ( f8_arg0 )
	f8_arg0.DialogSpinner0:close() --[[ @ 0]]
end
 --[[ @ 0]]
