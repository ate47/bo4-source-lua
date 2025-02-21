-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.LoadingScreenPlayerStats = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LoadingScreenPlayerStats.__defaultWidth = 465 --[[ @ 0]]
CoD.LoadingScreenPlayerStats.__defaultHeight = 70 --[[ @ 0]]
CoD.LoadingScreenPlayerStats.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LoadingScreenPlayerStats ) --[[ @ 0]]
	self.id = "LoadingScreenPlayerStats" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BackingTint = LUI.UIImage.new( 0, 0, 2.5, 464.5, 0, 0, 0, 70 ) --[[ @ 0]]
	BackingTint:setRGB( 0.22, 0.22, 0.22 ) --[[ @ 0]]
	self:addElement( BackingTint ) --[[ @ 0]]
	self.BackingTint = BackingTint --[[ @ 0]]
	
	local BackingNoise = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackingNoise:setAlpha( 0.5 ) --[[ @ 0]]
	BackingNoise:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	BackingNoise:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	BackingNoise:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BackingNoise:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( BackingNoise ) --[[ @ 0]]
	self.BackingNoise = BackingNoise --[[ @ 0]]
	
	local Stat1Label = LUI.UIText.new( 0, 0, 5, 148, 0, 0, 14, 32 ) --[[ @ 0]]
	Stat1Label:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Stat1Label:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Stat1Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Stat1Label:linkToElementModel( self, "stat1Label", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Stat1Label:setText( LocalizeToUpperString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Stat1Label ) --[[ @ 0]]
	self.Stat1Label = Stat1Label --[[ @ 0]]
	
	local Stat1 = LUI.UIText.new( 0, 0, 5, 148, 0, 0, 37, 67 ) --[[ @ 0]]
	Stat1:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	Stat1:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Stat1:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Stat1:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Stat1:linkToElementModel( self, "stat1", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Stat1:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Stat1 ) --[[ @ 0]]
	self.Stat1 = Stat1 --[[ @ 0]]
	
	local Stat2Label = LUI.UIText.new( 0, 0, 161, 304, 0, 0, 14, 32 ) --[[ @ 0]]
	Stat2Label:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Stat2Label:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Stat2Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Stat2Label:linkToElementModel( self, "stat2Label", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			Stat2Label:setText( LocalizeToUpperString( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Stat2Label ) --[[ @ 0]]
	self.Stat2Label = Stat2Label --[[ @ 0]]
	
	local Stat2 = LUI.UIText.new( 0, 0, 161, 304, 0, 0, 37, 67 ) --[[ @ 0]]
	Stat2:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	Stat2:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Stat2:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Stat2:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Stat2:linkToElementModel( self, "stat2", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			Stat2:setText( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Stat2 ) --[[ @ 0]]
	self.Stat2 = Stat2 --[[ @ 0]]
	
	local Stat3Label = LUI.UIText.new( 0, 0, 317, 460, 0, 0, 14, 32 ) --[[ @ 0]]
	Stat3Label:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Stat3Label:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Stat3Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Stat3Label:linkToElementModel( self, "stat3Label", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			Stat3Label:setText( LocalizeToUpperString( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Stat3Label ) --[[ @ 0]]
	self.Stat3Label = Stat3Label --[[ @ 0]]
	
	local Stat3 = LUI.UIText.new( 0, 0, 317, 460, 0, 0, 37, 67 ) --[[ @ 0]]
	Stat3:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	Stat3:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Stat3:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Stat3:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Stat3:linkToElementModel( self, "stat3", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			Stat3:setText( f7_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Stat3 ) --[[ @ 0]]
	self.Stat3 = Stat3 --[[ @ 0]]
	
	local Divider = LUI.UIImage.new( 0, 0, 154, 155, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	Divider:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Divider:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( Divider ) --[[ @ 0]]
	self.Divider = Divider --[[ @ 0]]
	
	local Divider2 = LUI.UIImage.new( 0, 0, 309.5, 310.5, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	Divider2:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Divider2:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( Divider2 ) --[[ @ 0]]
	self.Divider2 = Divider2 --[[ @ 0]]
	
	local Arrow = LUI.UIImage.new( 0, 0, 66.5, 86.5, 0, 0, -5, 15 ) --[[ @ 0]]
	Arrow:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Arrow:setAlpha( 0.7 ) --[[ @ 0]]
	Arrow:setImage( RegisterImage( @"uie_ui_loadscreen_arrow" ) ) --[[ @ 0]]
	self:addElement( Arrow ) --[[ @ 0]]
	self.Arrow = Arrow --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 0, 222.5, 242.5, 0, 0, -5, 15 ) --[[ @ 0]]
	Image:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Image:setAlpha( 0.7 ) --[[ @ 0]]
	Image:setImage( RegisterImage( @"uie_ui_loadscreen_arrow" ) ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local Image2 = LUI.UIImage.new( 0, 0, 378.5, 398.5, 0, 0, -5, 15 ) --[[ @ 0]]
	Image2:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Image2:setAlpha( 0.7 ) --[[ @ 0]]
	Image2:setImage( RegisterImage( @"uie_ui_loadscreen_arrow" ) ) --[[ @ 0]]
	self:addElement( Image2 ) --[[ @ 0]]
	self.Image2 = Image2 --[[ @ 0]]
	
	local TitleModesStats = LUI.UIText.new( 0, 0, 0, 960, 0, 0, -26, -5 ) --[[ @ 0]]
	TitleModesStats:setRGB( 0.66, 0.66, 0.66 ) --[[ @ 0]]
	TitleModesStats:setText( LocalizeToUpperString( @"hash_49271DCE3B09CFBF" ) ) --[[ @ 0]]
	TitleModesStats:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TitleModesStats:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TitleModesStats:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TitleModesStats ) --[[ @ 0]]
	self.TitleModesStats = TitleModesStats --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "statsValid" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "statsValid", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "statsValid"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LoadingScreenPlayerStats.__resetProperties = function ( f10_arg0 )
	f10_arg0.Stat3:completeAnimation() --[[ @ 0]]
	f10_arg0.Stat3Label:completeAnimation() --[[ @ 0]]
	f10_arg0.Stat2:completeAnimation() --[[ @ 0]]
	f10_arg0.Stat2Label:completeAnimation() --[[ @ 0]]
	f10_arg0.Stat1:completeAnimation() --[[ @ 0]]
	f10_arg0.Stat1Label:completeAnimation() --[[ @ 0]]
	f10_arg0.TitleModesStats:completeAnimation() --[[ @ 0]]
	f10_arg0.Arrow:completeAnimation() --[[ @ 0]]
	f10_arg0.Image:completeAnimation() --[[ @ 0]]
	f10_arg0.Image2:completeAnimation() --[[ @ 0]]
	f10_arg0.Divider2:completeAnimation() --[[ @ 0]]
	f10_arg0.Divider:completeAnimation() --[[ @ 0]]
	f10_arg0.Stat3:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.Stat3Label:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.Stat2:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.Stat2Label:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.Stat1:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.Stat1Label:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.TitleModesStats:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.Arrow:setAlpha( 0.7 ) --[[ @ 0]]
	f10_arg0.Image:setAlpha( 0.7 ) --[[ @ 0]]
	f10_arg0.Image2:setAlpha( 0.7 ) --[[ @ 0]]
	f10_arg0.Divider2:setAlpha( 0.5 ) --[[ @ 0]]
	f10_arg0.Divider:setAlpha( 0.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LoadingScreenPlayerStats.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 12 ) --[[ @ 0]]
			f12_arg0.Stat1Label:completeAnimation() --[[ @ 0]]
			f12_arg0.Stat1Label:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Stat1Label ) --[[ @ 0]]
			f12_arg0.Stat1:completeAnimation() --[[ @ 0]]
			f12_arg0.Stat1:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Stat1 ) --[[ @ 0]]
			f12_arg0.Stat2Label:completeAnimation() --[[ @ 0]]
			f12_arg0.Stat2Label:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Stat2Label ) --[[ @ 0]]
			f12_arg0.Stat2:completeAnimation() --[[ @ 0]]
			f12_arg0.Stat2:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Stat2 ) --[[ @ 0]]
			f12_arg0.Stat3Label:completeAnimation() --[[ @ 0]]
			f12_arg0.Stat3Label:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Stat3Label ) --[[ @ 0]]
			f12_arg0.Stat3:completeAnimation() --[[ @ 0]]
			f12_arg0.Stat3:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Stat3 ) --[[ @ 0]]
			f12_arg0.Divider:completeAnimation() --[[ @ 0]]
			f12_arg0.Divider:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Divider ) --[[ @ 0]]
			f12_arg0.Divider2:completeAnimation() --[[ @ 0]]
			f12_arg0.Divider2:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Divider2 ) --[[ @ 0]]
			f12_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f12_arg0.Arrow:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Arrow ) --[[ @ 0]]
			f12_arg0.Image:completeAnimation() --[[ @ 0]]
			f12_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Image ) --[[ @ 0]]
			f12_arg0.Image2:completeAnimation() --[[ @ 0]]
			f12_arg0.Image2:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Image2 ) --[[ @ 0]]
			f12_arg0.TitleModesStats:completeAnimation() --[[ @ 0]]
			f12_arg0.TitleModesStats:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.TitleModesStats ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.LoadingScreenPlayerStats.__onClose = function ( f13_arg0 )
	f13_arg0.Stat1Label:close() --[[ @ 0]]
	f13_arg0.Stat1:close() --[[ @ 0]]
	f13_arg0.Stat2Label:close() --[[ @ 0]]
	f13_arg0.Stat2:close() --[[ @ 0]]
	f13_arg0.Stat3Label:close() --[[ @ 0]]
	f13_arg0.Stat3:close() --[[ @ 0]]
end
 --[[ @ 0]]
