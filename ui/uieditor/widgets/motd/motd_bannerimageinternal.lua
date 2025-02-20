-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/motd/motd_bannerimagetext" ) --[[ @ 0]]
require( "ui/uieditor/widgets/motd/motd_bannerrender" ) --[[ @ 0]]

CoD.MOTD_BannerImageInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MOTD_BannerImageInternal.__defaultWidth = 328 --[[ @ 0]]
CoD.MOTD_BannerImageInternal.__defaultHeight = 160 --[[ @ 0]]
CoD.MOTD_BannerImageInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MOTD_BannerImageInternal ) --[[ @ 0]]
	self.id = "MOTD_BannerImageInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FrameSelected = LUI.UIImage.new( 0, 1, -10, 10, 0, 1, -10, 10 ) --[[ @ 0]]
	FrameSelected:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FrameSelected:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrameSelected:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameSelected:setupNineSliceShader( 28, 28 ) --[[ @ 0]]
	self:addElement( FrameSelected ) --[[ @ 0]]
	self.FrameSelected = FrameSelected --[[ @ 0]]
	
	local TiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	TiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TiledBacking ) --[[ @ 0]]
	self.TiledBacking = TiledBacking --[[ @ 0]]
	
	local TiledGrid = LUI.UIImage.new( 0, 1, 1, -1, 0, 1, 1, -1 ) --[[ @ 0]]
	TiledGrid:setScale( 1.01, 1.01 ) --[[ @ 0]]
	TiledGrid:setImage( RegisterImage( @"uie_ui_menu_store_bg_grid" ) ) --[[ @ 0]]
	TiledGrid:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledGrid:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledGrid:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( TiledGrid ) --[[ @ 0]]
	self.TiledGrid = TiledGrid --[[ @ 0]]
	
	local MOTDBannerRender = CoD.MOTD_BannerRender.new( f1_arg0, f1_arg1, 0, 0, 0, 328, 0, 0, 0, 160 ) --[[ @ 0]]
	self:addElement( MOTDBannerRender ) --[[ @ 0]]
	self.MOTDBannerRender = MOTDBannerRender --[[ @ 0]]
	
	local MOTDBannerImageText = CoD.MOTD_BannerImageText.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 1, 1, -26, 2 ) --[[ @ 0]]
	self:addElement( MOTDBannerImageText ) --[[ @ 0]]
	self.MOTDBannerImageText = MOTDBannerImageText --[[ @ 0]]
	
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
	
	local LockedIcon = LUI.UIImage.new( 0.5, 0.5, -64, 64, 0.5, 0.5, -64, 64 ) --[[ @ 0]]
	LockedIcon:setAlpha( 0 ) --[[ @ 0]]
	LockedIcon:setScale( 0.4, 0.4 ) --[[ @ 0]]
	LockedIcon:setImage( RegisterImage( @"uie_ui_icon_global_lock" ) ) --[[ @ 0]]
	self:addElement( LockedIcon ) --[[ @ 0]]
	self.LockedIcon = LockedIcon --[[ @ 0]]
	
	local FrameSelectedInnerGlow = LUI.UIImage.new( 0, 1, -10, 10, 0, 1, -10, 10 ) --[[ @ 0]]
	FrameSelectedInnerGlow:setAlpha( 0 ) --[[ @ 0]]
	FrameSelectedInnerGlow:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FrameSelectedInnerGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrameSelectedInnerGlow:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameSelectedInnerGlow:setupNineSliceShader( 28, 28 ) --[[ @ 0]]
	self:addElement( FrameSelectedInnerGlow ) --[[ @ 0]]
	self.FrameSelectedInnerGlow = FrameSelectedInnerGlow --[[ @ 0]]
	
	local FrameSelectedCorner = LUI.UIImage.new( 0, 1, -8, 8, 0, 1, -8, 8 ) --[[ @ 0]]
	FrameSelectedCorner:setImage( RegisterImage( @"uie_ui_menu_store_focus_pips" ) ) --[[ @ 0]]
	FrameSelectedCorner:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrameSelectedCorner:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameSelectedCorner:setupNineSliceShader( 44, 44 ) --[[ @ 0]]
	self:addElement( FrameSelectedCorner ) --[[ @ 0]]
	self.FrameSelectedCorner = FrameSelectedCorner --[[ @ 0]]
	
	self.MOTDBannerRender:linkToElementModel( self, nil, false, function ( model )
		MOTDBannerRender:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self.MOTDBannerImageText:linkToElementModel( self, "title", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			MOTDBannerImageText.Title:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "DefaultPC",
			condition = function ( menu, element, event )
				return IsPC()
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
CoD.MOTD_BannerImageInternal.__resetProperties = function ( f5_arg0 )
	f5_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
	f5_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
	f5_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
	f5_arg0.FrameSelectedInnerGlow:completeAnimation() --[[ @ 0]]
	f5_arg0.TiledGrid:completeAnimation() --[[ @ 0]]
	f5_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
	f5_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
	f5_arg0.MOTDBannerImageText:completeAnimation() --[[ @ 0]]
	f5_arg0.ItemFrame:completeAnimation() --[[ @ 0]]
	f5_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
	f5_arg0.ItemFrameAdd:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.LockedIcon:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.FrameSelectedInnerGlow:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.TiledGrid:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	f5_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.MOTDBannerImageText:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.ItemFrame:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MOTD_BannerImageInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f6_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f6_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.FrameSelected ) --[[ @ 0]]
			f6_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
			f6_arg0.TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.TiledBacking ) --[[ @ 0]]
			f6_arg0.TiledGrid:completeAnimation() --[[ @ 0]]
			f6_arg0.TiledGrid:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.TiledGrid ) --[[ @ 0]]
			f6_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f6_arg0.ItemFrameAdd:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.ItemFrameAdd ) --[[ @ 0]]
			f6_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
			f6_arg0.LockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.LockedIcon ) --[[ @ 0]]
			f6_arg0.FrameSelectedInnerGlow:completeAnimation() --[[ @ 0]]
			f6_arg0.FrameSelectedInnerGlow:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.FrameSelectedInnerGlow ) --[[ @ 0]]
			f6_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f6_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.FrameSelectedCorner:setScale( 1.05, 1.08 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end,
		Focus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			f7_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f7_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.FrameSelected ) --[[ @ 0]]
			f7_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
			f7_arg0.TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.TiledBacking ) --[[ @ 0]]
			f7_arg0.TiledGrid:completeAnimation() --[[ @ 0]]
			f7_arg0.TiledGrid:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.TiledGrid ) --[[ @ 0]]
			f7_arg0.MOTDBannerImageText:completeAnimation() --[[ @ 0]]
			f7_arg0.MOTDBannerImageText:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.MOTDBannerImageText ) --[[ @ 0]]
			f7_arg0.ItemFrame:completeAnimation() --[[ @ 0]]
			f7_arg0.ItemFrame:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.ItemFrame ) --[[ @ 0]]
			f7_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f7_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.ItemFrameAdd ) --[[ @ 0]]
			f7_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
			f7_arg0.LockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.LockedIcon ) --[[ @ 0]]
			f7_arg0.FrameSelectedInnerGlow:completeAnimation() --[[ @ 0]]
			f7_arg0.FrameSelectedInnerGlow:setAlpha( 0.05 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.FrameSelectedInnerGlow ) --[[ @ 0]]
			f7_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f7_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end,
		GainFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.FrameSelected:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f8_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f8_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f8_local0( f8_arg0.FrameSelected ) --[[ @ 0]]
			f8_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
			f8_arg0.TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.TiledBacking ) --[[ @ 0]]
			f8_arg0.TiledGrid:completeAnimation() --[[ @ 0]]
			f8_arg0.TiledGrid:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.TiledGrid ) --[[ @ 0]]
			f8_arg0.MOTDBannerImageText:completeAnimation() --[[ @ 0]]
			f8_arg0.MOTDBannerImageText:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.MOTDBannerImageText ) --[[ @ 0]]
			f8_arg0.ItemFrame:completeAnimation() --[[ @ 0]]
			f8_arg0.ItemFrame:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.ItemFrame ) --[[ @ 0]]
			local f8_local1 = function ( f10_arg0 )
				f8_arg0.ItemFrameAdd:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f8_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.ItemFrameAdd:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.ItemFrameAdd:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f8_arg0.ItemFrameAdd:setAlpha( 0 ) --[[ @ 0]]
			f8_local1( f8_arg0.ItemFrameAdd ) --[[ @ 0]]
			f8_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
			f8_arg0.LockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.LockedIcon ) --[[ @ 0]]
			local f8_local2 = function ( f11_arg0 )
				f8_arg0.FrameSelectedInnerGlow:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f8_arg0.FrameSelectedInnerGlow:setAlpha( 0.05 ) --[[ @ 0]]
				f8_arg0.FrameSelectedInnerGlow:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.FrameSelectedInnerGlow:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.FrameSelectedInnerGlow:completeAnimation() --[[ @ 0]]
			f8_arg0.FrameSelectedInnerGlow:setAlpha( 0 ) --[[ @ 0]]
			f8_local2( f8_arg0.FrameSelectedInnerGlow ) --[[ @ 0]]
			local f8_local3 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					f13_arg0:beginAnimation( 100, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f13_arg0:setAlpha( 1 ) --[[ @ 0]]
					f13_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.FrameSelectedCorner:beginAnimation( 50 ) --[[ @ 0]]
				f8_arg0.FrameSelectedCorner:setScale( 1.04, 1.06 ) --[[ @ 0]]
				f8_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f8_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.FrameSelectedCorner:setScale( 1.05, 1.08 ) --[[ @ 0]]
			f8_local3( f8_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end,
		LoseFocus = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				f14_arg0.FrameSelected:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f14_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
				f14_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f14_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f14_local0( f14_arg0.FrameSelected ) --[[ @ 0]]
			f14_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
			f14_arg0.TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.TiledBacking ) --[[ @ 0]]
			f14_arg0.TiledGrid:completeAnimation() --[[ @ 0]]
			f14_arg0.TiledGrid:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.TiledGrid ) --[[ @ 0]]
			f14_arg0.MOTDBannerImageText:completeAnimation() --[[ @ 0]]
			f14_arg0.MOTDBannerImageText:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.MOTDBannerImageText ) --[[ @ 0]]
			f14_arg0.ItemFrame:completeAnimation() --[[ @ 0]]
			f14_arg0.ItemFrame:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ItemFrame ) --[[ @ 0]]
			local f14_local1 = function ( f16_arg0 )
				f14_arg0.ItemFrameAdd:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f14_arg0.ItemFrameAdd:setAlpha( 0 ) --[[ @ 0]]
				f14_arg0.ItemFrameAdd:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.ItemFrameAdd:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f14_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
			f14_local1( f14_arg0.ItemFrameAdd ) --[[ @ 0]]
			f14_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
			f14_arg0.LockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.LockedIcon ) --[[ @ 0]]
			local f14_local2 = function ( f17_arg0 )
				f14_arg0.FrameSelectedInnerGlow:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f14_arg0.FrameSelectedInnerGlow:setAlpha( 0 ) --[[ @ 0]]
				f14_arg0.FrameSelectedInnerGlow:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.FrameSelectedInnerGlow:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.FrameSelectedInnerGlow:completeAnimation() --[[ @ 0]]
			f14_arg0.FrameSelectedInnerGlow:setAlpha( 0.05 ) --[[ @ 0]]
			f14_local2( f14_arg0.FrameSelectedInnerGlow ) --[[ @ 0]]
			local f14_local3 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					f19_arg0:beginAnimation( 50, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f19_arg0:setScale( 1.05, 1.08 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f14_arg0.FrameSelectedCorner:beginAnimation( 100 ) --[[ @ 0]]
				f14_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
				f14_arg0.FrameSelectedCorner:setScale( 1.04, 1.06 ) --[[ @ 0]]
				f14_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f14_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
			f14_local3( f14_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end
	},
	DefaultPC = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f20_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f20_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.FrameSelected ) --[[ @ 0]]
			f20_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
			f20_arg0.TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.TiledBacking ) --[[ @ 0]]
			f20_arg0.TiledGrid:completeAnimation() --[[ @ 0]]
			f20_arg0.TiledGrid:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.TiledGrid ) --[[ @ 0]]
			f20_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f20_arg0.ItemFrameAdd:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.ItemFrameAdd ) --[[ @ 0]]
			f20_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
			f20_arg0.LockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.LockedIcon ) --[[ @ 0]]
			f20_arg0.FrameSelectedInnerGlow:completeAnimation() --[[ @ 0]]
			f20_arg0.FrameSelectedInnerGlow:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.FrameSelectedInnerGlow ) --[[ @ 0]]
			f20_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f20_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.FrameSelectedCorner:setScale( 1.05, 1.08 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end,
		Focus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			f21_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f21_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.FrameSelected ) --[[ @ 0]]
			f21_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
			f21_arg0.TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.TiledBacking ) --[[ @ 0]]
			f21_arg0.TiledGrid:completeAnimation() --[[ @ 0]]
			f21_arg0.TiledGrid:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.TiledGrid ) --[[ @ 0]]
			f21_arg0.MOTDBannerImageText:completeAnimation() --[[ @ 0]]
			f21_arg0.MOTDBannerImageText:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.MOTDBannerImageText ) --[[ @ 0]]
			f21_arg0.ItemFrame:completeAnimation() --[[ @ 0]]
			f21_arg0.ItemFrame:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.ItemFrame ) --[[ @ 0]]
			f21_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f21_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.ItemFrameAdd ) --[[ @ 0]]
			f21_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
			f21_arg0.LockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.LockedIcon ) --[[ @ 0]]
			f21_arg0.FrameSelectedInnerGlow:completeAnimation() --[[ @ 0]]
			f21_arg0.FrameSelectedInnerGlow:setAlpha( 0.05 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.FrameSelectedInnerGlow ) --[[ @ 0]]
			f21_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f21_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end,
		GainFocus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				f22_arg0.FrameSelected:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f22_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
				f22_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f22_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f22_local0( f22_arg0.FrameSelected ) --[[ @ 0]]
			f22_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
			f22_arg0.TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.TiledBacking ) --[[ @ 0]]
			f22_arg0.TiledGrid:completeAnimation() --[[ @ 0]]
			f22_arg0.TiledGrid:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.TiledGrid ) --[[ @ 0]]
			f22_arg0.MOTDBannerImageText:completeAnimation() --[[ @ 0]]
			f22_arg0.MOTDBannerImageText:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.MOTDBannerImageText ) --[[ @ 0]]
			f22_arg0.ItemFrame:completeAnimation() --[[ @ 0]]
			f22_arg0.ItemFrame:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.ItemFrame ) --[[ @ 0]]
			local f22_local1 = function ( f24_arg0 )
				f22_arg0.ItemFrameAdd:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f22_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
				f22_arg0.ItemFrameAdd:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.ItemFrameAdd:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f22_arg0.ItemFrameAdd:setAlpha( 0 ) --[[ @ 0]]
			f22_local1( f22_arg0.ItemFrameAdd ) --[[ @ 0]]
			f22_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
			f22_arg0.LockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.LockedIcon ) --[[ @ 0]]
			local f22_local2 = function ( f25_arg0 )
				f22_arg0.FrameSelectedInnerGlow:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f22_arg0.FrameSelectedInnerGlow:setAlpha( 0.05 ) --[[ @ 0]]
				f22_arg0.FrameSelectedInnerGlow:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.FrameSelectedInnerGlow:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.FrameSelectedInnerGlow:completeAnimation() --[[ @ 0]]
			f22_arg0.FrameSelectedInnerGlow:setAlpha( 0 ) --[[ @ 0]]
			f22_local2( f22_arg0.FrameSelectedInnerGlow ) --[[ @ 0]]
			local f22_local3 = function ( f26_arg0 )
				local f26_local0 = function ( f27_arg0 )
					f27_arg0:beginAnimation( 100, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f27_arg0:setAlpha( 1 ) --[[ @ 0]]
					f27_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f27_arg0:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f22_arg0.FrameSelectedCorner:beginAnimation( 50 ) --[[ @ 0]]
				f22_arg0.FrameSelectedCorner:setScale( 1.04, 1.06 ) --[[ @ 0]]
				f22_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f22_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.FrameSelectedCorner:setScale( 1.05, 1.08 ) --[[ @ 0]]
			f22_local3( f22_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end,
		LoseFocus = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			local f28_local0 = function ( f29_arg0 )
				f28_arg0.FrameSelected:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f28_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
				f28_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f28_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f28_local0( f28_arg0.FrameSelected ) --[[ @ 0]]
			f28_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
			f28_arg0.TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.TiledBacking ) --[[ @ 0]]
			f28_arg0.TiledGrid:completeAnimation() --[[ @ 0]]
			f28_arg0.TiledGrid:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.TiledGrid ) --[[ @ 0]]
			f28_arg0.MOTDBannerImageText:completeAnimation() --[[ @ 0]]
			f28_arg0.MOTDBannerImageText:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.MOTDBannerImageText ) --[[ @ 0]]
			f28_arg0.ItemFrame:completeAnimation() --[[ @ 0]]
			f28_arg0.ItemFrame:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.ItemFrame ) --[[ @ 0]]
			local f28_local1 = function ( f30_arg0 )
				f28_arg0.ItemFrameAdd:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f28_arg0.ItemFrameAdd:setAlpha( 0 ) --[[ @ 0]]
				f28_arg0.ItemFrameAdd:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.ItemFrameAdd:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f28_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
			f28_local1( f28_arg0.ItemFrameAdd ) --[[ @ 0]]
			f28_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
			f28_arg0.LockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.LockedIcon ) --[[ @ 0]]
			local f28_local2 = function ( f31_arg0 )
				f28_arg0.FrameSelectedInnerGlow:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f28_arg0.FrameSelectedInnerGlow:setAlpha( 0 ) --[[ @ 0]]
				f28_arg0.FrameSelectedInnerGlow:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.FrameSelectedInnerGlow:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.FrameSelectedInnerGlow:completeAnimation() --[[ @ 0]]
			f28_arg0.FrameSelectedInnerGlow:setAlpha( 0.05 ) --[[ @ 0]]
			f28_local2( f28_arg0.FrameSelectedInnerGlow ) --[[ @ 0]]
			local f28_local3 = function ( f32_arg0 )
				local f32_local0 = function ( f33_arg0 )
					f33_arg0:beginAnimation( 50, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f33_arg0:setScale( 1.05, 1.08 ) --[[ @ 0]]
					f33_arg0:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f28_arg0.FrameSelectedCorner:beginAnimation( 100 ) --[[ @ 0]]
				f28_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
				f28_arg0.FrameSelectedCorner:setScale( 1.04, 1.06 ) --[[ @ 0]]
				f28_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f28_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
			f28_local3( f28_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end,
		Active = function ( f34_arg0, f34_arg1 )
			f34_arg0:__resetProperties() --[[ @ 0]]
			f34_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f34_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f34_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.FrameSelected ) --[[ @ 0]]
			f34_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
			f34_arg0.TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.TiledBacking ) --[[ @ 0]]
			f34_arg0.TiledGrid:completeAnimation() --[[ @ 0]]
			f34_arg0.TiledGrid:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.TiledGrid ) --[[ @ 0]]
			f34_arg0.ItemFrame:completeAnimation() --[[ @ 0]]
			f34_arg0.ItemFrame:setAlpha( 1 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.ItemFrame ) --[[ @ 0]]
			f34_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f34_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.ItemFrameAdd ) --[[ @ 0]]
			f34_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
			f34_arg0.LockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.LockedIcon ) --[[ @ 0]]
			f34_arg0.FrameSelectedInnerGlow:completeAnimation() --[[ @ 0]]
			f34_arg0.FrameSelectedInnerGlow:setAlpha( 0.05 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.FrameSelectedInnerGlow ) --[[ @ 0]]
			f34_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f34_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f34_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.MOTD_BannerImageInternal.__onClose = function ( f35_arg0 )
	f35_arg0.MOTDBannerRender:close() --[[ @ 0]]
	f35_arg0.MOTDBannerImageText:close() --[[ @ 0]]
end
 --[[ @ 0]]
