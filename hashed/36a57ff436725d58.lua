-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.MOTD_TopBottomText_HeavyImage = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MOTD_TopBottomText_HeavyImage.__defaultWidth = 1392 --[[ @ 0]]
CoD.MOTD_TopBottomText_HeavyImage.__defaultHeight = 680 --[[ @ 0]]
CoD.MOTD_TopBottomText_HeavyImage.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MOTD_TopBottomText_HeavyImage ) --[[ @ 0]]
	self.id = "MOTD_TopBottomText_HeavyImage" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 0, 0, 1392, 0, 0, 0, 680 ) --[[ @ 0]]
	Image:linkToElementModel( self, "popup_image", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Image:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local TopBorder = LUI.UIImage.new( 0, 0, 0, 1392, 0, 0, -1.5, 80.5 ) --[[ @ 0]]
	TopBorder:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TopBorder:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( TopBorder ) --[[ @ 0]]
	self.TopBorder = TopBorder --[[ @ 0]]
	
	local BottomBorder = LUI.UIImage.new( 0, 0, 0, 1392, 0, 0, 582, 680 ) --[[ @ 0]]
	BottomBorder:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BottomBorder:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( BottomBorder ) --[[ @ 0]]
	self.BottomBorder = BottomBorder --[[ @ 0]]
	
	local TitleLbl = LUI.UIText.new( 0, 0, 45.5, 1345.5, 0, 0, 19, 64 ) --[[ @ 0]]
	TitleLbl:setRGB( 0.86, 0.74, 0.25 ) --[[ @ 0]]
	TitleLbl:setAlpha( 0.1 ) --[[ @ 0]]
	TitleLbl:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TitleLbl:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	TitleLbl:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TitleLbl:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	TitleLbl:setShaderVector( 2, 1, 1, 1, 0 ) --[[ @ 0]]
	TitleLbl:setLetterSpacing( 10 ) --[[ @ 0]]
	TitleLbl:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"luialignment"][@"lui_alignment_center"] ) ) --[[ @ 0]]
	TitleLbl:linkToElementModel( self, "title", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			TitleLbl:setText( ConvertToUpperString( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TitleLbl ) --[[ @ 0]]
	self.TitleLbl = TitleLbl --[[ @ 0]]
	
	local TitleLbl0 = LUI.UIText.new( 0, 0, 45.5, 1345.5, 0, 0, 19, 64 ) --[[ @ 0]]
	TitleLbl0:setRGB( 0.86, 0.74, 0.25 ) --[[ @ 0]]
	TitleLbl0:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TitleLbl0:setLetterSpacing( 10 ) --[[ @ 0]]
	TitleLbl0:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"luialignment"][@"lui_alignment_center"] ) ) --[[ @ 0]]
	TitleLbl0:linkToElementModel( self, "title", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			TitleLbl0:setText( ConvertToUpperString( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TitleLbl0 ) --[[ @ 0]]
	self.TitleLbl0 = TitleLbl0 --[[ @ 0]]
	
	local spacer = LUI.UIImage.new( 0, 0, 0, 63, 0, 0, 64, 67 ) --[[ @ 0]]
	spacer:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( spacer ) --[[ @ 0]]
	self.spacer = spacer --[[ @ 0]]
	
	local txtDescription = LUI.UIText.new( 0, 0, 11, 1377, 0, 0, 592.5, 613.5 ) --[[ @ 0]]
	txtDescription:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	txtDescription:setTTF( "dinnext_regular" ) --[[ @ 0]]
	txtDescription:setLetterSpacing( 1 ) --[[ @ 0]]
	txtDescription:setLineSpacing( 2 ) --[[ @ 0]]
	txtDescription:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"luialignment"][@"lui_alignment_center"] ) ) --[[ @ 0]]
	txtDescription:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"luialignment"][@"lui_alignment_top"] ) ) --[[ @ 0]]
	self:addElement( txtDescription ) --[[ @ 0]]
	self.txtDescription = txtDescription --[[ @ 0]]
	
	local ItemFrame = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	ItemFrame:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	ItemFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	ItemFrame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	ItemFrame:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( ItemFrame ) --[[ @ 0]]
	self.ItemFrame = ItemFrame --[[ @ 0]]
	
	local ItemFrameAdd = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	ItemFrameAdd:setAlpha( 0 ) --[[ @ 0]]
	ItemFrameAdd:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	ItemFrameAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	ItemFrameAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	ItemFrameAdd:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( ItemFrameAdd ) --[[ @ 0]]
	self.ItemFrameAdd = ItemFrameAdd --[[ @ 0]]
	
	self.txtDescription:linkToElementModel( self, "content_long", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			txtDescription:setText( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "Arabic",
			condition = function ( menu, element, event )
				return IsCurrentLanguageArabic()
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
CoD.MOTD_TopBottomText_HeavyImage.__resetProperties = function ( f7_arg0 )
	f7_arg0.txtDescription:completeAnimation() --[[ @ 0]]
	f7_arg0.txtDescription:setLeftRight( 0, 0, 11, 1377 ) --[[ @ 0]]
	f7_arg0.txtDescription:setTopBottom( 0, 0, 592.5, 613.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MOTD_TopBottomText_HeavyImage.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Arabic = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.txtDescription:completeAnimation() --[[ @ 0]]
			f9_arg0.txtDescription:setLeftRight( 0, 0, 11, 1377 ) --[[ @ 0]]
			f9_arg0.txtDescription:setTopBottom( 0, 0, 592.5, 613.5 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.txtDescription ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.MOTD_TopBottomText_HeavyImage.__onClose = function ( f10_arg0 )
	f10_arg0.Image:close() --[[ @ 0]]
	f10_arg0.TitleLbl:close() --[[ @ 0]]
	f10_arg0.TitleLbl0:close() --[[ @ 0]]
	f10_arg0.txtDescription:close() --[[ @ 0]]
end
 --[[ @ 0]]
