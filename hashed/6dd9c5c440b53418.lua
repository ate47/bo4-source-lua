-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/menus/lobby/common/popups/vodviewer" ) --[[ @ 0]]
require( "x64:289b04dc853e4449" ) --[[ @ 0]]
require( "x64:4d2fe0e2acf462d9" ) --[[ @ 0]]
require( "x64:1bd69df1474261e5" ) --[[ @ 0]]
require( "x64:b61cab1fde61ef1" ) --[[ @ 0]]

CoD.SpecialistDossierInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SpecialistDossierInternal.__defaultWidth = 1920 --[[ @ 0]]
CoD.SpecialistDossierInternal.__defaultHeight = 1080 --[[ @ 0]]
CoD.SpecialistDossierInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SpecialistDossierInternal ) --[[ @ 0]]
	self.id = "SpecialistDossierInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local JobTitle = LUI.UIText.new( 0.5, 0.5, -860, -360, 0.5, 0.5, -390, -370 ) --[[ @ 0]]
	JobTitle:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	JobTitle:setZoom( 3 ) --[[ @ 0]]
	JobTitle:setText( LocalizeToUpperString( @"hash_41ADE64D69903E6E" ) ) --[[ @ 0]]
	JobTitle:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	JobTitle:setLetterSpacing( 10 ) --[[ @ 0]]
	JobTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( JobTitle ) --[[ @ 0]]
	self.JobTitle = JobTitle --[[ @ 0]]
	
	local SpecialistName = LUI.UIText.new( 0.5, 0.5, -860, -360, 0.5, 0.5, -370, -280 ) --[[ @ 0]]
	SpecialistName:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
	SpecialistName:setAlpha( 0.7 ) --[[ @ 0]]
	SpecialistName:setZoom( 3 ) --[[ @ 0]]
	SpecialistName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	SpecialistName:setLetterSpacing( 10 ) --[[ @ 0]]
	SpecialistName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	SpecialistName:subscribeToGlobalModel( f1_arg1, "SpecialistDossier", "callsign", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			SpecialistName:setText( LocalizeToUpperString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SpecialistName ) --[[ @ 0]]
	self.SpecialistName = SpecialistName --[[ @ 0]]
	
	local FilesHeader = LUI.UIText.new( 0.5, 0.5, -860, -360, 0.5, 0.5, -80, -56 ) --[[ @ 0]]
	FilesHeader:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	FilesHeader:setText( LocalizeToUpperString( @"hash_5A497494F91D625A" ) ) --[[ @ 0]]
	FilesHeader:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	FilesHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	FilesHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( FilesHeader ) --[[ @ 0]]
	self.FilesHeader = FilesHeader --[[ @ 0]]
	
	local BackstoryVideoButton = CoD.SpecialistDossierButton.new( f1_arg0, f1_arg1, 0.5, 0.5, -865, -355, 0.5, 0.5, -56, -7 ) --[[ @ 0]]
	BackstoryVideoButton:mergeStateConditions( {
		{
			stateName = "PCKorea15Plus",
			condition = function ( menu, element, event )
				return IsPC() and CoD.PCKoreaUtility.ShowKorea15Plus()
			end
		},
		{
			stateName = "MatureContentFiltered",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "SpecialistDossier", "backstoryVideoMatureContent" ) and not CoD.CTUtility.IsMatureContent( f1_arg1 )
			end
		},
		{
			stateName = "Classified",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "SpecialistDossier", "backstoryVideoUnlocked" )
			end
		}
	} ) --[[ @ 0]]
	local BioHeader = BackstoryVideoButton --[[ @ 0]]
	local IntroVideoButton = BackstoryVideoButton.subscribeToModel --[[ @ 0]]
	local BioButton = DataSources.SpecialistDossier.getModel( f1_arg1 ) --[[ @ 0]]
	IntroVideoButton( BioHeader, BioButton.backstoryVideoMatureContent, function ( f6_arg0 )
		f1_arg0:updateElementState( BackstoryVideoButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "backstoryVideoMatureContent"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	BioHeader = BackstoryVideoButton --[[ @ 0]]
	IntroVideoButton = BackstoryVideoButton.subscribeToModel --[[ @ 0]]
	BioButton = Engine[@"getglobalmodel"]() --[[ @ 0]]
	IntroVideoButton( BioHeader, BioButton["storageGlobalRoot.user_settings"], function ( f7_arg0 )
		f1_arg0:updateElementState( BackstoryVideoButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "storageGlobalRoot.user_settings"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	BioHeader = BackstoryVideoButton --[[ @ 0]]
	IntroVideoButton = BackstoryVideoButton.subscribeToModel --[[ @ 0]]
	BioButton = DataSources.SpecialistDossier.getModel( f1_arg1 ) --[[ @ 0]]
	IntroVideoButton( BioHeader, BioButton.backstoryVideoUnlocked, function ( f8_arg0 )
		f1_arg0:updateElementState( BackstoryVideoButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "backstoryVideoUnlocked"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	BackstoryVideoButton.SpecialistPersonalizationButtonOptionInternal.ButtonFrame.FocusGlow:setScale( 1, 0.8 ) --[[ @ 0]]
	BackstoryVideoButton.ButtonText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	BackstoryVideoButton:subscribeToGlobalModel( f1_arg1, "SpecialistDossier", "backstoryVideoDesc", function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			BackstoryVideoButton.ButtonText:setText( f9_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	BioHeader = BackstoryVideoButton --[[ @ 0]]
	IntroVideoButton = BackstoryVideoButton.subscribeToModel --[[ @ 0]]
	BioButton = DataSources.SpecialistDossier.getModel( f1_arg1 ) --[[ @ 0]]
	IntroVideoButton( BioHeader, BioButton["backstoryVideo.hiResVideo.movieName"], function ( f10_arg0, f10_arg1 )
		CoD.Menu.UpdateButtonShownState( f10_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	BackstoryVideoButton:registerEventHandler( "gain_focus", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f11_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f11_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f11_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( BackstoryVideoButton, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if CoD.ModelUtility.IsGlobalDataSourceModelValueNonEmptyString( controller, "SpecialistDossier", "backstoryVideo.hiResVideo.movieName" ) and not IsElementInState( self.BackstoryVideoButton, "MatureContentFiltered" ) then
			CoD.VideoStreamingUtility.SetupVoDMovie( controller, self.BackstoryPreview, "hiResVideo" ) --[[ @ 0]]
			SetLoseFocusToElement( self, "BackstoryVideoButton", controller ) --[[ @ 0]]
			DelayOpenOverlay( menu, "VoDViewer", controller, {
				fullscreen = true
			} ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsGlobalDataSourceModelValueNonEmptyString( controller, "SpecialistDossier", "backstoryVideo.hiResVideo.movieName" ) and not IsElementInState( self.BackstoryVideoButton, "MatureContentFiltered" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_D31D493AE40DA0F", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( BackstoryVideoButton, "childFocusGained", function ( element )
		SetState( self, "ShowBackstoryVideo", f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( BackstoryVideoButton ) --[[ @ 0]]
	self.BackstoryVideoButton = BackstoryVideoButton --[[ @ 0]]
	
	IntroVideoButton = CoD.SpecialistDossierButton.new( f1_arg0, f1_arg1, 0.5, 0.5, -865, -355, 0.5, 0.5, 10, 53 ) --[[ @ 0]]
	IntroVideoButton:mergeStateConditions( {
		{
			stateName = "MatureContentFiltered",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "SpecialistDossier", "introVideoMatureContent" ) and not CoD.CTUtility.IsMatureContent( f1_arg1 )
			end
		},
		{
			stateName = "Classified",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "SpecialistDossier", "introVideoUnlocked" )
			end
		}
	} ) --[[ @ 0]]
	BioButton = IntroVideoButton --[[ @ 0]]
	BioHeader = IntroVideoButton.subscribeToModel --[[ @ 0]]
	local IntroPreview = DataSources.SpecialistDossier.getModel( f1_arg1 ) --[[ @ 0]]
	BioHeader( BioButton, IntroPreview.introVideoMatureContent, function ( f17_arg0 )
		f1_arg0:updateElementState( IntroVideoButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "introVideoMatureContent"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	BioButton = IntroVideoButton --[[ @ 0]]
	BioHeader = IntroVideoButton.subscribeToModel --[[ @ 0]]
	IntroPreview = Engine[@"getglobalmodel"]() --[[ @ 0]]
	BioHeader( BioButton, IntroPreview["storageGlobalRoot.user_settings"], function ( f18_arg0 )
		f1_arg0:updateElementState( IntroVideoButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "storageGlobalRoot.user_settings"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	BioButton = IntroVideoButton --[[ @ 0]]
	BioHeader = IntroVideoButton.subscribeToModel --[[ @ 0]]
	IntroPreview = DataSources.SpecialistDossier.getModel( f1_arg1 ) --[[ @ 0]]
	BioHeader( BioButton, IntroPreview.introVideoUnlocked, function ( f19_arg0 )
		f1_arg0:updateElementState( IntroVideoButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f19_arg0:get(),
			modelName = "introVideoUnlocked"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	IntroVideoButton.SpecialistPersonalizationButtonOptionInternal.ButtonFrame.FocusGlow:setScale( 1, 0.8 ) --[[ @ 0]]
	IntroVideoButton.ButtonText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	IntroVideoButton:subscribeToGlobalModel( f1_arg1, "SpecialistDossier", "introVideoDesc", function ( model )
		local f20_local0 = model:get() --[[ @ 0]]
		if f20_local0 ~= nil then
			IntroVideoButton.ButtonText:setText( Engine[@"hash_4F9F1239CFD921FE"]( f20_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	BioButton = IntroVideoButton --[[ @ 0]]
	BioHeader = IntroVideoButton.subscribeToModel --[[ @ 0]]
	IntroPreview = DataSources.SpecialistDossier.getModel( f1_arg1 ) --[[ @ 0]]
	BioHeader( BioButton, IntroPreview["introVideo.hiResVideo.movieName"], function ( f21_arg0, f21_arg1 )
		CoD.Menu.UpdateButtonShownState( f21_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	IntroVideoButton:registerEventHandler( "gain_focus", function ( element, event )
		local f22_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f22_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f22_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f22_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( IntroVideoButton, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if CoD.ModelUtility.IsGlobalDataSourceModelValueNonEmptyString( controller, "SpecialistDossier", "introVideo.hiResVideo.movieName" ) and not IsElementInState( self.IntroVideoButton, "MatureContentFiltered" ) then
			CoD.VideoStreamingUtility.SetupVoDMovie( controller, self.IntroPreview, "hiResVideo" ) --[[ @ 0]]
			SetLoseFocusToElement( self, "IntroVideoButton", controller ) --[[ @ 0]]
			DelayOpenOverlay( menu, "VoDViewer", controller, {
				fullscreen = true
			} ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsGlobalDataSourceModelValueNonEmptyString( controller, "SpecialistDossier", "introVideo.hiResVideo.movieName" ) and not IsElementInState( self.IntroVideoButton, "MatureContentFiltered" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_D31D493AE40DA0F", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( IntroVideoButton, "childFocusGained", function ( element )
		if IsPC() and CoD.PCKoreaUtility.ShowKorea15Plus() then
			SetState( self, "ShowIntroVideoKR15", f1_arg1 ) --[[ @ 0]]
		else
			SetState( self, "ShowIntroVideo", f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( IntroVideoButton ) --[[ @ 0]]
	self.IntroVideoButton = IntroVideoButton --[[ @ 0]]
	
	BioHeader = LUI.UIText.new( 0.5, 0.5, -860, -360, 0.5, 0.5, 110, 134 ) --[[ @ 0]]
	BioHeader:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	BioHeader:setText( LocalizeToUpperString( @"hash_2BECB6115D1FE883" ) ) --[[ @ 0]]
	BioHeader:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	BioHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	BioHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( BioHeader ) --[[ @ 0]]
	self.BioHeader = BioHeader --[[ @ 0]]
	
	BioButton = CoD.SpecialistDossierButton.new( f1_arg0, f1_arg1, 0.5, 0.5, -865, -355, 0.5, 0.5, 144, 315 ) --[[ @ 0]]
	BioButton.ButtonText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	BioButton:subscribeToGlobalModel( f1_arg1, "SpecialistDossier", "bioPreview", function ( model )
		local f26_local0 = model:get() --[[ @ 0]]
		if f26_local0 ~= nil then
			BioButton.ButtonText:setText( Engine[@"hash_4F9F1239CFD921FE"]( f26_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	BioButton:registerEventHandler( "gain_focus", function ( element, event )
		local f27_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f27_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f27_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f27_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( BioButton, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		OpenOverlay( self, "SpecialistBio", controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_2BECB6115D1FE883", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( BioButton, "childFocusGained", function ( element )
		if IsPC() and CoD.PCKoreaUtility.ShowKorea15Plus() then
			SetState( self, "DefaultStateKR15", f1_arg1 ) --[[ @ 0]]
		else
			SetState( self, "DefaultState", f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BioButton ) --[[ @ 0]]
	self.BioButton = BioButton --[[ @ 0]]
	
	IntroPreview = CoD.DossierVoDPreview.new( f1_arg0, f1_arg1, 0.5, 0.5, 350, 860, 0.5, 0.5, -340, 40 ) --[[ @ 0]]
	IntroPreview:mergeStateConditions( {
		{
			stateName = "MatureContentFiltered",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "SpecialistDossier", "introVideoMatureContent" ) and not CoD.CTUtility.IsMatureContent( f1_arg1 )
			end
		},
		{
			stateName = "Classified",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "SpecialistDossier", "introVideoUnlocked" )
			end
		}
	} ) --[[ @ 0]]
	local Designation = IntroPreview --[[ @ 0]]
	local BackstoryPreview = IntroPreview.subscribeToModel --[[ @ 0]]
	local f1_local11 = DataSources.SpecialistDossier.getModel( f1_arg1 ) --[[ @ 0]]
	BackstoryPreview( Designation, f1_local11.introVideoMatureContent, function ( f33_arg0 )
		f1_arg0:updateElementState( IntroPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f33_arg0:get(),
			modelName = "introVideoMatureContent"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Designation = IntroPreview --[[ @ 0]]
	BackstoryPreview = IntroPreview.subscribeToModel --[[ @ 0]]
	f1_local11 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	BackstoryPreview( Designation, f1_local11["storageGlobalRoot.user_settings"], function ( f34_arg0 )
		f1_arg0:updateElementState( IntroPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f34_arg0:get(),
			modelName = "storageGlobalRoot.user_settings"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Designation = IntroPreview --[[ @ 0]]
	BackstoryPreview = IntroPreview.subscribeToModel --[[ @ 0]]
	f1_local11 = DataSources.SpecialistDossier.getModel( f1_arg1 ) --[[ @ 0]]
	BackstoryPreview( Designation, f1_local11.introVideoUnlocked, function ( f35_arg0 )
		f1_arg0:updateElementState( IntroPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f35_arg0:get(),
			modelName = "introVideoUnlocked"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	IntroPreview:setAlpha( 0 ) --[[ @ 0]]
	IntroPreview:subscribeToGlobalModel( f1_arg1, "SpecialistDossier", "introVideo", function ( model )
		IntroPreview:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	IntroPreview:subscribeToGlobalModel( f1_arg1, "SpecialistDossier", "introVideoTitle", function ( model )
		local f37_local0 = model:get() --[[ @ 0]]
		if f37_local0 ~= nil then
			IntroPreview.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( f37_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	IntroPreview:subscribeToGlobalModel( f1_arg1, "SpecialistDossier", "introVideoDesc", function ( model )
		local f38_local0 = model:get() --[[ @ 0]]
		if f38_local0 ~= nil then
			IntroPreview.Desc:setText( Engine[@"hash_4F9F1239CFD921FE"]( f38_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( IntroPreview ) --[[ @ 0]]
	self.IntroPreview = IntroPreview --[[ @ 0]]
	
	BackstoryPreview = CoD.DossierVoDPreview.new( f1_arg0, f1_arg1, 0.5, 0.5, 350, 860, 0.5, 0.5, -340, 40 ) --[[ @ 0]]
	BackstoryPreview:mergeStateConditions( {
		{
			stateName = "MatureContentFiltered",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "SpecialistDossier", "backstoryVideoMatureContent" ) and not CoD.CTUtility.IsMatureContent( f1_arg1 )
			end
		},
		{
			stateName = "Classified",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "SpecialistDossier", "backstoryVideoUnlocked" )
			end
		}
	} ) --[[ @ 0]]
	f1_local11 = BackstoryPreview --[[ @ 0]]
	Designation = BackstoryPreview.subscribeToModel --[[ @ 0]]
	local f1_local12 = DataSources.SpecialistDossier.getModel( f1_arg1 ) --[[ @ 0]]
	Designation( f1_local11, f1_local12.backstoryVideoMatureContent, function ( f41_arg0 )
		f1_arg0:updateElementState( BackstoryPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f41_arg0:get(),
			modelName = "backstoryVideoMatureContent"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = BackstoryPreview --[[ @ 0]]
	Designation = BackstoryPreview.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	Designation( f1_local11, f1_local12["storageGlobalRoot.user_settings"], function ( f42_arg0 )
		f1_arg0:updateElementState( BackstoryPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f42_arg0:get(),
			modelName = "storageGlobalRoot.user_settings"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = BackstoryPreview --[[ @ 0]]
	Designation = BackstoryPreview.subscribeToModel --[[ @ 0]]
	f1_local12 = DataSources.SpecialistDossier.getModel( f1_arg1 ) --[[ @ 0]]
	Designation( f1_local11, f1_local12.backstoryVideoUnlocked, function ( f43_arg0 )
		f1_arg0:updateElementState( BackstoryPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f43_arg0:get(),
			modelName = "backstoryVideoUnlocked"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	BackstoryPreview:setAlpha( 0 ) --[[ @ 0]]
	BackstoryPreview:subscribeToGlobalModel( f1_arg1, "SpecialistDossier", "backstoryVideo", function ( model )
		BackstoryPreview:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	BackstoryPreview:subscribeToGlobalModel( f1_arg1, "SpecialistDossier", "backstoryVideoTitle", function ( model )
		local f45_local0 = model:get() --[[ @ 0]]
		if f45_local0 ~= nil then
			BackstoryPreview.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( f45_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	BackstoryPreview:subscribeToGlobalModel( f1_arg1, "SpecialistDossier", "backstoryVideoDesc", function ( model )
		local f46_local0 = model:get() --[[ @ 0]]
		if f46_local0 ~= nil then
			BackstoryPreview.Desc:setText( Engine[@"hash_4F9F1239CFD921FE"]( f46_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BackstoryPreview ) --[[ @ 0]]
	self.BackstoryPreview = BackstoryPreview --[[ @ 0]]
	
	Designation = CoD.SpecialistDossierInternalBioText.new( f1_arg0, f1_arg1, 0.5, 0.5, -865, -355, 0.5, 0.5, -285, -155 ) --[[ @ 0]]
	self:addElement( Designation ) --[[ @ 0]]
	self.Designation = Designation --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "DefaultStateKR15",
			condition = function ( menu, element, event )
				return IsPC() and CoD.PCKoreaUtility.ShowKorea15Plus()
			end
		},
		{
			stateName = "ShowBackstoryVideo",
			condition = function ( menu, element, event )
				return true
			end
		},
		{
			stateName = "ShowIntroVideo",
			condition = function ( menu, element, event )
				return true
			end
		},
		{
			stateName = "ShowIntroVideoKR15",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	BackstoryVideoButton.id = "BackstoryVideoButton" --[[ @ 0]]
	IntroVideoButton.id = "IntroVideoButton" --[[ @ 0]]
	BioButton.id = "BioButton" --[[ @ 0]]
	IntroPreview.id = "IntroPreview" --[[ @ 0]]
	BackstoryPreview.id = "BackstoryPreview" --[[ @ 0]]
	self.__defaultFocus = BackstoryVideoButton --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SpecialistDossierInternal.__resetProperties = function ( f51_arg0 )
	f51_arg0.IntroVideoButton:completeAnimation() --[[ @ 0]]
	f51_arg0.BackstoryPreview:completeAnimation() --[[ @ 0]]
	f51_arg0.IntroPreview:completeAnimation() --[[ @ 0]]
	f51_arg0.IntroVideoButton:setTopBottom( 0.5, 0.5, 10, 53 ) --[[ @ 0]]
	f51_arg0.BackstoryPreview:setAlpha( 0 ) --[[ @ 0]]
	f51_arg0.IntroPreview:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SpecialistDossierInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f52_arg0, f52_arg1 )
			f52_arg0:__resetProperties() --[[ @ 0]]
			f52_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	DefaultStateKR15 = {
		DefaultClip = function ( f53_arg0, f53_arg1 )
			f53_arg0:__resetProperties() --[[ @ 0]]
			f53_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f53_arg0.IntroVideoButton:completeAnimation() --[[ @ 0]]
			f53_arg0.IntroVideoButton:setTopBottom( 0.5, 0.5, -50, -7 ) --[[ @ 0]]
			f53_arg0.clipFinished( f53_arg0.IntroVideoButton ) --[[ @ 0]]
		end
	},
	ShowBackstoryVideo = {
		DefaultClip = function ( f54_arg0, f54_arg1 )
			f54_arg0:__resetProperties() --[[ @ 0]]
			f54_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f54_arg0.BackstoryPreview:completeAnimation() --[[ @ 0]]
			f54_arg0.BackstoryPreview:setAlpha( 1 ) --[[ @ 0]]
			f54_arg0.clipFinished( f54_arg0.BackstoryPreview ) --[[ @ 0]]
		end
	},
	ShowIntroVideo = {
		DefaultClip = function ( f55_arg0, f55_arg1 )
			f55_arg0:__resetProperties() --[[ @ 0]]
			f55_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f55_arg0.IntroPreview:completeAnimation() --[[ @ 0]]
			f55_arg0.IntroPreview:setAlpha( 1 ) --[[ @ 0]]
			f55_arg0.clipFinished( f55_arg0.IntroPreview ) --[[ @ 0]]
		end
	},
	ShowIntroVideoKR15 = {
		DefaultClip = function ( f56_arg0, f56_arg1 )
			f56_arg0:__resetProperties() --[[ @ 0]]
			f56_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f56_arg0.IntroVideoButton:completeAnimation() --[[ @ 0]]
			f56_arg0.IntroVideoButton:setTopBottom( 0.5, 0.5, -50, -7 ) --[[ @ 0]]
			f56_arg0.clipFinished( f56_arg0.IntroVideoButton ) --[[ @ 0]]
			f56_arg0.IntroPreview:completeAnimation() --[[ @ 0]]
			f56_arg0.IntroPreview:setAlpha( 1 ) --[[ @ 0]]
			f56_arg0.clipFinished( f56_arg0.IntroPreview ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.SpecialistDossierInternal.__onClose = function ( f57_arg0 )
	f57_arg0.SpecialistName:close() --[[ @ 0]]
	f57_arg0.BackstoryVideoButton:close() --[[ @ 0]]
	f57_arg0.IntroVideoButton:close() --[[ @ 0]]
	f57_arg0.BioButton:close() --[[ @ 0]]
	f57_arg0.IntroPreview:close() --[[ @ 0]]
	f57_arg0.BackstoryPreview:close() --[[ @ 0]]
	f57_arg0.Designation:close() --[[ @ 0]]
end
 --[[ @ 0]]
