-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/hud/obituary/obituaryblurbacking" ) --[[ @ 0]]
require( "x64:53c12759cdd48c2d" ) --[[ @ 0]]
require( "x64:7b2b59e28ed4c45" ) --[[ @ 0]]
require( "x64:131fac280b1c11fc" ) --[[ @ 0]]
require( "x64:334c9f21854c740b" ) --[[ @ 0]]
require( "x64:4507c4d91ba82906" ) --[[ @ 0]]
require( "x64:8d447a0d3920f3e" ) --[[ @ 0]]
require( "x64:2a333ad4686f031a" ) --[[ @ 0]]

CoD.prototype_hud = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.prototype_hud = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "prototype_hud", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.prototype_hud ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.ignoreCursor = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PromptBackground = LUI.UIImage.new( 0.5, 0.5, 418.5, 874.5, 0.5, 0.5, -243.5, -207.5 ) --[[ @ 0]]
	PromptBackground:setRGB( 0.24, 0.24, 0.24 ) --[[ @ 0]]
	PromptBackground:linkToElementModel( self, "barrier_prompt_visibility", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			PromptBackground:setAlpha( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PromptBackground ) --[[ @ 0]]
	self.PromptBackground = PromptBackground --[[ @ 0]]
	
	local Prompt = LUI.UIText.new( 0.5, 0.5, 389, 910, 0.5, 0.5, -238.5, -211.5 ) --[[ @ 0]]
	Prompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_78E86CC3A7EBB960" ) ) --[[ @ 0]]
	Prompt:setTTF( "default" ) --[[ @ 0]]
	Prompt:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_56250C6FCAC36BD4" ) ) --[[ @ 0]]
	Prompt:setShaderVector( 0, 0.09, 0, 0, 0 ) --[[ @ 0]]
	Prompt:setShaderVector( 1, 0, 0, 0, 1 ) --[[ @ 0]]
	Prompt:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Prompt:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Prompt:linkToElementModel( self, "barrier_prompt_visibility", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Prompt:setAlpha( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Prompt ) --[[ @ 0]]
	self.Prompt = Prompt --[[ @ 0]]
	
	local PromptBackground2 = LUI.UIImage.new( 0.5, 0.5, 418.5, 874.5, 0.5, 0.5, -199.5, -163.5 ) --[[ @ 0]]
	PromptBackground2:setRGB( 0.24, 0.24, 0.24 ) --[[ @ 0]]
	PromptBackground2:linkToElementModel( self, "deploy_prompt_visibility", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			PromptBackground2:setAlpha( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PromptBackground2 ) --[[ @ 0]]
	self.PromptBackground2 = PromptBackground2 --[[ @ 0]]
	
	local Prompt2 = LUI.UIText.new( 0.5, 0.5, 389, 910, 0.5, 0.5, -194.5, -167.5 ) --[[ @ 0]]
	Prompt2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_63E2C0F2EABE6FF5" ) ) --[[ @ 0]]
	Prompt2:setTTF( "default" ) --[[ @ 0]]
	Prompt2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_56250C6FCAC36BD4" ) ) --[[ @ 0]]
	Prompt2:setShaderVector( 0, 0.09, 0, 0, 0 ) --[[ @ 0]]
	Prompt2:setShaderVector( 1, 0, 0, 0, 1 ) --[[ @ 0]]
	Prompt2:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Prompt2:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Prompt2:linkToElementModel( self, "deploy_prompt_visibility", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			Prompt2:setAlpha( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Prompt2 ) --[[ @ 0]]
	self.Prompt2 = Prompt2 --[[ @ 0]]
	
	local ObjectiveString = LUI.UIText.new( 0.5, 0.5, -465.5, 465.5, 0.5, 0.5, -362.5, -326.5 ) --[[ @ 0]]
	ObjectiveString:setRGB( 0.96, 0.66, 0 ) --[[ @ 0]]
	ObjectiveString:setTTF( "default" ) --[[ @ 0]]
	ObjectiveString:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_56250C6FCAC36BD4" ) ) --[[ @ 0]]
	ObjectiveString:setShaderVector( 0, 0.24, 0, 0, 0 ) --[[ @ 0]]
	ObjectiveString:setShaderVector( 1, 0, 0, 0, 1 ) --[[ @ 0]]
	ObjectiveString:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ObjectiveString:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	ObjectiveString:setBackingType( 1 ) --[[ @ 0]]
	ObjectiveString:setBackingWidget( CoD.ObituaryBlurBacking, f1_local1, f1_arg0 ) --[[ @ 0]]
	ObjectiveString:setBackingAlpha( 0.8 ) --[[ @ 0]]
	ObjectiveString:setBackingXPadding( 8 ) --[[ @ 0]]
	ObjectiveString:setBackingYPadding( 4 ) --[[ @ 0]]
	ObjectiveString:linkToElementModel( self, "objective_prompt_visibility", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			ObjectiveString:setAlpha( f6_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ObjectiveString:linkToElementModel( self, "active_objective_string", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			ObjectiveString:setText( Engine[@"hash_4F9F1239CFD921FE"]( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ObjectiveString ) --[[ @ 0]]
	self.ObjectiveString = ObjectiveString --[[ @ 0]]
	
	local ResourceBackground = LUI.UIImage.new( 0.5, 0.5, 716.5, 874.5, 0.5, 0.5, -386.5, -266.5 ) --[[ @ 0]]
	ResourceBackground:setRGB( 0.24, 0.24, 0.24 ) --[[ @ 0]]
	ResourceBackground:linkToElementModel( self, "resource_count_visibility", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			ResourceBackground:setAlpha( f8_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ResourceBackground ) --[[ @ 0]]
	self.ResourceBackground = ResourceBackground --[[ @ 0]]
	
	local DefenseResourceImage = LUI.UIImage.new( 0, 0, 1691.5, 1755.5, 0, 0, 164, 228 ) --[[ @ 0]]
	DefenseResourceImage:setImage( RegisterImage( @"hash_405048DCEA2C3497" ) ) --[[ @ 0]]
	DefenseResourceImage:linkToElementModel( self, "resource_count_visibility", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			DefenseResourceImage:setAlpha( f9_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( DefenseResourceImage ) --[[ @ 0]]
	self.DefenseResourceImage = DefenseResourceImage --[[ @ 0]]
	
	local DefenseResourceCount = LUI.UIText.new( 0, 0, 1623.5, 1823.5, 0, 0, 228, 265 ) --[[ @ 0]]
	DefenseResourceCount:setRGB( 0.11, 0.63, 1 ) --[[ @ 0]]
	DefenseResourceCount:setTTF( "default" ) --[[ @ 0]]
	DefenseResourceCount:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_56250C6FCAC36BD4" ) ) --[[ @ 0]]
	DefenseResourceCount:setShaderVector( 0, 0.4, 0, 0, 0 ) --[[ @ 0]]
	DefenseResourceCount:setShaderVector( 1, 0, 0, 0, 1 ) --[[ @ 0]]
	DefenseResourceCount:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	DefenseResourceCount:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	DefenseResourceCount:linkToElementModel( self, "resource_count_visibility", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			DefenseResourceCount:setAlpha( f10_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	DefenseResourceCount:linkToElementModel( self, "defense_resource_count", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			DefenseResourceCount:setText( f11_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( DefenseResourceCount ) --[[ @ 0]]
	self.DefenseResourceCount = DefenseResourceCount --[[ @ 0]]
	
	local UpgradeResourceImage = LUI.UIImage.new( 0, 0, 1760.5, 1824.5, 0, 0, 164, 228 ) --[[ @ 0]]
	UpgradeResourceImage:setImage( RegisterImage( @"hash_2F65D54FFBEB9AC5" ) ) --[[ @ 0]]
	UpgradeResourceImage:linkToElementModel( self, "resource_count_visibility", true, function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			UpgradeResourceImage:setAlpha( f12_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( UpgradeResourceImage ) --[[ @ 0]]
	self.UpgradeResourceImage = UpgradeResourceImage --[[ @ 0]]
	
	local UpgradeResourceCount = LUI.UIText.new( 0, 0, 1692.5, 1892.5, 0, 0, 228, 265 ) --[[ @ 0]]
	UpgradeResourceCount:setRGB( 1, 0, 0 ) --[[ @ 0]]
	UpgradeResourceCount:setTTF( "default" ) --[[ @ 0]]
	UpgradeResourceCount:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_56250C6FCAC36BD4" ) ) --[[ @ 0]]
	UpgradeResourceCount:setShaderVector( 0, 0.4, 0, 0, 0 ) --[[ @ 0]]
	UpgradeResourceCount:setShaderVector( 1, 0, 0, 0, 1 ) --[[ @ 0]]
	UpgradeResourceCount:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	UpgradeResourceCount:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	UpgradeResourceCount:linkToElementModel( self, "resource_count_visibility", true, function ( model )
		local f13_local0 = model:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			UpgradeResourceCount:setAlpha( f13_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	UpgradeResourceCount:linkToElementModel( self, "upgrade_resource_count", true, function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			UpgradeResourceCount:setText( f14_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( UpgradeResourceCount ) --[[ @ 0]]
	self.UpgradeResourceCount = UpgradeResourceCount --[[ @ 0]]
	
	local PromptProgressBar = CoD.progressBar.new( f1_local1, f1_arg0, 0, 0, 1378.5, 1834.5, 0, 0, 332.5, 340.5 ) --[[ @ 0]]
	PromptProgressBar:setRGB( 0.96, 0.66, 0 ) --[[ @ 0]]
	PromptProgressBar.ProgressBar:setRGB( 0.96, 0.66, 0 ) --[[ @ 0]]
	PromptProgressBar:linkToElementModel( self, "barrier_prompt_visibility", true, function ( model )
		local f15_local0 = model:get() --[[ @ 0]]
		if f15_local0 ~= nil then
			PromptProgressBar:setAlpha( f15_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PromptProgressBar:linkToElementModel( self, "craft_progress", true, function ( model )
		local f16_local0 = model:get() --[[ @ 0]]
		if f16_local0 ~= nil then
			PromptProgressBar.ProgressBar:setShaderVector( 0, CoD.GetVectorComponentFromString( f16_local0, 1 ), CoD.GetVectorComponentFromString( f16_local0, 2 ), CoD.GetVectorComponentFromString( f16_local0, 3 ), CoD.GetVectorComponentFromString( f16_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PromptProgressBar ) --[[ @ 0]]
	self.PromptProgressBar = PromptProgressBar --[[ @ 0]]
	
	local ObjectiveLog = CoD.ObjectiveLog.new( f1_local1, f1_arg0, 0, 0, 98, 448, 0, 0, 60, 660 ) --[[ @ 0]]
	ObjectiveLog:setAlpha( 0 ) --[[ @ 0]]
	ObjectiveLog:linkToElementModel( self, "objective3_string", true, function ( model )
		local f17_local0 = model:get() --[[ @ 0]]
		if f17_local0 ~= nil then
			ObjectiveLog.ObjectiveLine3:setText( Engine[@"hash_4F9F1239CFD921FE"]( f17_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ObjectiveLog:linkToElementModel( self, "objective2_string", true, function ( model )
		local f18_local0 = model:get() --[[ @ 0]]
		if f18_local0 ~= nil then
			ObjectiveLog.ObjectiveLine2:setText( Engine[@"hash_4F9F1239CFD921FE"]( f18_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ObjectiveLog:linkToElementModel( self, "objective1_string", true, function ( model )
		local f19_local0 = model:get() --[[ @ 0]]
		if f19_local0 ~= nil then
			ObjectiveLog.ObjectiveLine1:setText( Engine[@"hash_4F9F1239CFD921FE"]( f19_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ObjectiveLog:linkToElementModel( self, "active_objective_string", true, function ( model )
		local f20_local0 = model:get() --[[ @ 0]]
		if f20_local0 ~= nil then
			ObjectiveLog.ActiveObjective:setText( Engine[@"hash_4F9F1239CFD921FE"]( f20_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ObjectiveLog:linkToElementModel( self, "objective1_strike", true, function ( model )
		local f21_local0 = model:get() --[[ @ 0]]
		if f21_local0 ~= nil then
			ObjectiveLog.Strikethrough1:setAlpha( f21_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ObjectiveLog:linkToElementModel( self, "objective3_strike", true, function ( model )
		local f22_local0 = model:get() --[[ @ 0]]
		if f22_local0 ~= nil then
			ObjectiveLog.Strikethrough3:setAlpha( f22_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ObjectiveLog:linkToElementModel( self, "objective2_strike", true, function ( model )
		local f23_local0 = model:get() --[[ @ 0]]
		if f23_local0 ~= nil then
			ObjectiveLog.Strikethrough2:setAlpha( f23_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ObjectiveLog ) --[[ @ 0]]
	self.ObjectiveLog = ObjectiveLog --[[ @ 0]]
	
	local PixelGrid = LUI.UIImage.new( 0, 0, 714.5, 1204.5, 0, 0, 234.5, 409.5 ) --[[ @ 0]]
	PixelGrid:setRGB( 0.64, 1, 0.64 ) --[[ @ 0]]
	PixelGrid:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGrid:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PixelGrid:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGrid:setupNineSliceShader( 100, 100 ) --[[ @ 0]]
	PixelGrid:linkToElementModel( self, "fanfare_visibility", true, function ( model )
		local f24_local0 = model:get() --[[ @ 0]]
		if f24_local0 ~= nil then
			PixelGrid:setAlpha( f24_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PixelGrid ) --[[ @ 0]]
	self.PixelGrid = PixelGrid --[[ @ 0]]
	
	local HeaderRight = CoD.WeaponLevelUpHeaderRight.new( f1_local1, f1_arg0, 0, 0, 1134.5, 1204.5, 0, 0, 224.5, 232.5 ) --[[ @ 0]]
	HeaderRight:linkToElementModel( self, "fanfare_visibility", true, function ( model )
		local f25_local0 = model:get() --[[ @ 0]]
		if f25_local0 ~= nil then
			HeaderRight:setAlpha( f25_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HeaderRight ) --[[ @ 0]]
	self.HeaderRight = HeaderRight --[[ @ 0]]
	
	local Header = CoD.WeaponLevelUpHeaderStripe.new( f1_local1, f1_arg0, 0, 0, 714.5, 1132.5, 0, 0, 224.5, 232.5 ) --[[ @ 0]]
	Header.HeaderBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Header.HeaderBacking:setShaderVector( 0, 0, 0.5, 0, 0 ) --[[ @ 0]]
	Header:linkToElementModel( self, "fanfare_visibility", true, function ( model )
		local f26_local0 = model:get() --[[ @ 0]]
		if f26_local0 ~= nil then
			Header:setAlpha( f26_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Header ) --[[ @ 0]]
	self.Header = Header --[[ @ 0]]
	
	local Hashes = CoD.WeaponLevelUpSideHashes.new( f1_local1, f1_arg0, 0, 0, 700.5, 1219.5, 0, 0, 308.5, 328.5 ) --[[ @ 0]]
	Hashes:linkToElementModel( self, "fanfare_visibility", true, function ( model )
		local f27_local0 = model:get() --[[ @ 0]]
		if f27_local0 ~= nil then
			Hashes:setAlpha( f27_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Hashes ) --[[ @ 0]]
	self.Hashes = Hashes --[[ @ 0]]
	
	local Brackets = CoD.WeaponLevelUpBrackets.new( f1_local1, f1_arg0, 0, 0, 702.5, 1216.5, 0, 0, 212.5, 422.5 ) --[[ @ 0]]
	Brackets:linkToElementModel( self, "fanfare_visibility", true, function ( model )
		local f28_local0 = model:get() --[[ @ 0]]
		if f28_local0 ~= nil then
			Brackets:setAlpha( f28_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Brackets ) --[[ @ 0]]
	self.Brackets = Brackets --[[ @ 0]]
	
	local FanfareText = LUI.UIText.new( 0, 0, 761.5, 1158.5, 0, 0, 365.5, 401.5 ) --[[ @ 0]]
	FanfareText:setRGB( 0.31, 1, 0.3 ) --[[ @ 0]]
	FanfareText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_18AF89F3E3E8DAE8" ) ) --[[ @ 0]]
	FanfareText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	FanfareText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_56250C6FCAC36BD4" ) ) --[[ @ 0]]
	FanfareText:setShaderVector( 0, 0.25, 0, 0, 0 ) --[[ @ 0]]
	FanfareText:setShaderVector( 1, 0, 0, 0, 1 ) --[[ @ 0]]
	FanfareText:setLetterSpacing( 2 ) --[[ @ 0]]
	FanfareText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	FanfareText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	FanfareText:setBackingType( -1 ) --[[ @ 0]]
	FanfareText:setBackingXPadding( 40 ) --[[ @ 0]]
	FanfareText:linkToElementModel( self, "fanfare_visibility", true, function ( model )
		local f29_local0 = model:get() --[[ @ 0]]
		if f29_local0 ~= nil then
			FanfareText:setAlpha( f29_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( FanfareText ) --[[ @ 0]]
	self.FanfareText = FanfareText --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 0, 896, 1024, 0, 0, 237.5, 365.5 ) --[[ @ 0]]
	Image:setImage( RegisterImage( @"ui_icon_medal_victor_large" ) ) --[[ @ 0]]
	Image:linkToElementModel( self, "fanfare_visibility", true, function ( model )
		local f30_local0 = model:get() --[[ @ 0]]
		if f30_local0 ~= nil then
			Image:setAlpha( f30_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local PixelGrid2 = LUI.UIImage.new( 0, 0, 714.5, 1204.5, 0, 0, 234.5, 409.5 ) --[[ @ 0]]
	PixelGrid2:setRGB( 1, 0.67, 0.67 ) --[[ @ 0]]
	PixelGrid2:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGrid2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PixelGrid2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGrid2:setupNineSliceShader( 100, 100 ) --[[ @ 0]]
	PixelGrid2:linkToElementModel( self, "fail_fanfare_visibility", true, function ( model )
		local f31_local0 = model:get() --[[ @ 0]]
		if f31_local0 ~= nil then
			PixelGrid2:setAlpha( f31_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PixelGrid2 ) --[[ @ 0]]
	self.PixelGrid2 = PixelGrid2 --[[ @ 0]]
	
	local HeaderRight2 = CoD.WeaponLevelUpHeaderRight.new( f1_local1, f1_arg0, 0, 0, 1134.5, 1204.5, 0, 0, 224.5, 232.5 ) --[[ @ 0]]
	HeaderRight2:linkToElementModel( self, "fail_fanfare_visibility", true, function ( model )
		local f32_local0 = model:get() --[[ @ 0]]
		if f32_local0 ~= nil then
			HeaderRight2:setAlpha( f32_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HeaderRight2 ) --[[ @ 0]]
	self.HeaderRight2 = HeaderRight2 --[[ @ 0]]
	
	local Header2 = CoD.WeaponLevelUpHeaderStripe.new( f1_local1, f1_arg0, 0, 0, 714.5, 1132.5, 0, 0, 224.5, 232.5 ) --[[ @ 0]]
	Header2.HeaderBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Header2.HeaderBacking:setShaderVector( 0, 0, 0.5, 0, 0 ) --[[ @ 0]]
	Header2:linkToElementModel( self, "fail_fanfare_visibility", true, function ( model )
		local f33_local0 = model:get() --[[ @ 0]]
		if f33_local0 ~= nil then
			Header2:setAlpha( f33_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Header2 ) --[[ @ 0]]
	self.Header2 = Header2 --[[ @ 0]]
	
	local Hashes2 = CoD.WeaponLevelUpSideHashes.new( f1_local1, f1_arg0, 0, 0, 700.5, 1219.5, 0, 0, 308.5, 328.5 ) --[[ @ 0]]
	Hashes2:linkToElementModel( self, "fail_fanfare_visibility", true, function ( model )
		local f34_local0 = model:get() --[[ @ 0]]
		if f34_local0 ~= nil then
			Hashes2:setAlpha( f34_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Hashes2 ) --[[ @ 0]]
	self.Hashes2 = Hashes2 --[[ @ 0]]
	
	local Brackets2 = CoD.WeaponLevelUpBrackets.new( f1_local1, f1_arg0, 0, 0, 702.5, 1216.5, 0, 0, 212.5, 422.5 ) --[[ @ 0]]
	Brackets2:linkToElementModel( self, "fail_fanfare_visibility", true, function ( model )
		local f35_local0 = model:get() --[[ @ 0]]
		if f35_local0 ~= nil then
			Brackets2:setAlpha( f35_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Brackets2 ) --[[ @ 0]]
	self.Brackets2 = Brackets2 --[[ @ 0]]
	
	local FanfareText2 = LUI.UIText.new( 0, 0, 761.5, 1158.5, 0, 0, 365.5, 401.5 ) --[[ @ 0]]
	FanfareText2:setRGB( 1, 0.38, 0.38 ) --[[ @ 0]]
	FanfareText2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3CA1BA4B6F3B4AF6" ) ) --[[ @ 0]]
	FanfareText2:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	FanfareText2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_56250C6FCAC36BD4" ) ) --[[ @ 0]]
	FanfareText2:setShaderVector( 0, 0.25, 0, 0, 0 ) --[[ @ 0]]
	FanfareText2:setShaderVector( 1, 0, 0, 0, 1 ) --[[ @ 0]]
	FanfareText2:setLetterSpacing( 2 ) --[[ @ 0]]
	FanfareText2:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	FanfareText2:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	FanfareText2:setBackingType( -1 ) --[[ @ 0]]
	FanfareText2:setBackingXPadding( 40 ) --[[ @ 0]]
	FanfareText2:linkToElementModel( self, "fail_fanfare_visibility", true, function ( model )
		local f36_local0 = model:get() --[[ @ 0]]
		if f36_local0 ~= nil then
			FanfareText2:setAlpha( f36_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( FanfareText2 ) --[[ @ 0]]
	self.FanfareText2 = FanfareText2 --[[ @ 0]]
	
	local Image2 = LUI.UIImage.new( 0, 0, 896, 1024, 0, 0, 237.5, 365.5 ) --[[ @ 0]]
	Image2:setImage( RegisterImage( @"ui_icon_medal_victor_large" ) ) --[[ @ 0]]
	Image2:linkToElementModel( self, "fail_fanfare_visibility", true, function ( model )
		local f37_local0 = model:get() --[[ @ 0]]
		if f37_local0 ~= nil then
			Image2:setAlpha( f37_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Image2 ) --[[ @ 0]]
	self.Image2 = Image2 --[[ @ 0]]
	
	self.HeaderRight:linkToElementModel( self, nil, false, function ( model )
		HeaderRight:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self.Header:linkToElementModel( self, nil, false, function ( model )
		Header:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self.FanfareText:linkToElementModel( self, nil, false, function ( model )
		FanfareText:setBackingModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self.HeaderRight2:linkToElementModel( self, nil, false, function ( model )
		HeaderRight2:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self.Header2:linkToElementModel( self, nil, false, function ( model )
		Header2:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self.FanfareText2:linkToElementModel( self, nil, false, function ( model )
		FanfareText2:setBackingModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "WZMapOpen",
			condition = function ( menu, element, event )
				return ScoreboardVisible( f1_arg0 )
			end
		},
		{
			stateName = "PlaySound",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	local f1_local28 = self --[[ @ 0]]
	local f1_local29 = self.subscribeToModel --[[ @ 0]]
	local f1_local30 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local29( f1_local28, f1_local30.forceScoreboard, function ( f46_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f46_arg0:get(),
			modelName = "forceScoreboard"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local28 = self --[[ @ 0]]
	f1_local29 = self.subscribeToModel --[[ @ 0]]
	f1_local30 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local29( f1_local28, f1_local30["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]], function ( f47_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f47_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.prototype_hud.__resetProperties = function ( f48_arg0 )
	f48_arg0.ObjectiveLog:completeAnimation() --[[ @ 0]]
	f48_arg0.ObjectiveLog:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.prototype_hud.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f49_arg0, f49_arg1 )
			f49_arg0:__resetProperties() --[[ @ 0]]
			f49_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		WZMapOpen = function ( f50_arg0, f50_arg1 )
			f50_arg0:__resetProperties() --[[ @ 0]]
			f50_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f50_arg0.ObjectiveLog:completeAnimation() --[[ @ 0]]
			f50_arg0.ObjectiveLog:setAlpha( 1 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.ObjectiveLog ) --[[ @ 0]]
		end
	},
	WZMapOpen = {
		DefaultClip = function ( f51_arg0, f51_arg1 )
			f51_arg0:__resetProperties() --[[ @ 0]]
			f51_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f51_arg0.ObjectiveLog:completeAnimation() --[[ @ 0]]
			f51_arg0.ObjectiveLog:setAlpha( 1 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.ObjectiveLog ) --[[ @ 0]]
		end
	},
	PlaySound = {
		DefaultClip = function ( f52_arg0, f52_arg1 )
			f52_arg0:__resetProperties() --[[ @ 0]]
			f52_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.prototype_hud.__onClose = function ( f53_arg0 )
	f53_arg0.PromptBackground:close() --[[ @ 0]]
	f53_arg0.Prompt:close() --[[ @ 0]]
	f53_arg0.PromptBackground2:close() --[[ @ 0]]
	f53_arg0.Prompt2:close() --[[ @ 0]]
	f53_arg0.ObjectiveString:close() --[[ @ 0]]
	f53_arg0.ResourceBackground:close() --[[ @ 0]]
	f53_arg0.DefenseResourceImage:close() --[[ @ 0]]
	f53_arg0.DefenseResourceCount:close() --[[ @ 0]]
	f53_arg0.UpgradeResourceImage:close() --[[ @ 0]]
	f53_arg0.UpgradeResourceCount:close() --[[ @ 0]]
	f53_arg0.PromptProgressBar:close() --[[ @ 0]]
	f53_arg0.ObjectiveLog:close() --[[ @ 0]]
	f53_arg0.PixelGrid:close() --[[ @ 0]]
	f53_arg0.HeaderRight:close() --[[ @ 0]]
	f53_arg0.Header:close() --[[ @ 0]]
	f53_arg0.Hashes:close() --[[ @ 0]]
	f53_arg0.Brackets:close() --[[ @ 0]]
	f53_arg0.FanfareText:close() --[[ @ 0]]
	f53_arg0.Image:close() --[[ @ 0]]
	f53_arg0.PixelGrid2:close() --[[ @ 0]]
	f53_arg0.HeaderRight2:close() --[[ @ 0]]
	f53_arg0.Header2:close() --[[ @ 0]]
	f53_arg0.Hashes2:close() --[[ @ 0]]
	f53_arg0.Brackets2:close() --[[ @ 0]]
	f53_arg0.FanfareText2:close() --[[ @ 0]]
	f53_arg0.Image2:close() --[[ @ 0]]
end
 --[[ @ 0]]
