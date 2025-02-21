-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/notifications/notificationqueuewidgets/notificationrewardqueuewidgets/iconrewardwidget" ) --[[ @ 0]]
require( "x64:131fac280b1c11fc" ) --[[ @ 0]]

CoD.NotificationRewardWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.NotificationRewardWidget.__defaultWidth = 384 --[[ @ 0]]
CoD.NotificationRewardWidget.__defaultHeight = 96 --[[ @ 0]]
CoD.NotificationRewardWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.NotificationRewardWidget ) --[[ @ 0]]
	self.id = "NotificationRewardWidget" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PixelBacking = LUI.UIImage.new( 0, 0, 312, 384, 0, 0, 12, 84 ) --[[ @ 0]]
	PixelBacking:setRGB( 0.12, 0.12, 0.12 ) --[[ @ 0]]
	PixelBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	PixelBacking:setShaderVector( 0, 0, 0.5, 0, 0 ) --[[ @ 0]]
	self:addElement( PixelBacking ) --[[ @ 0]]
	self.PixelBacking = PixelBacking --[[ @ 0]]
	
	local PixelGrid = LUI.UIImage.new( 0, 0, 312, 384, 0, 0, 12, 84 ) --[[ @ 0]]
	PixelGrid:setAlpha( 0.5 ) --[[ @ 0]]
	PixelGrid:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGrid:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PixelGrid:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGrid:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( PixelGrid ) --[[ @ 0]]
	self.PixelGrid = PixelGrid --[[ @ 0]]
	
	local ImageScanline = CoD.IconRewardWidget.new( f1_arg0, f1_arg1, 0, 0, 312, 384, 0, 0, 12, 84 ) --[[ @ 0]]
	ImageScanline:linkToElementModel( self, nil, false, function ( model )
		ImageScanline:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ImageScanline ) --[[ @ 0]]
	self.ImageScanline = ImageScanline --[[ @ 0]]
	
	local Text = LUI.UIText.new( 1, 1, -384, -82, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	Text:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Text:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	self:addElement( Text ) --[[ @ 0]]
	self.Text = Text --[[ @ 0]]
	
	local highlight = LUI.UIImage.new( 0, 0, 252, 444, 0, 0, -48, 144 ) --[[ @ 0]]
	highlight:setImage( RegisterImage( @"uie_t7_hud_notficationhighlight" ) ) --[[ @ 0]]
	highlight:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( highlight ) --[[ @ 0]]
	self.highlight = highlight --[[ @ 0]]
	
	local Header = CoD.WeaponLevelUpHeaderStripe.new( f1_arg0, f1_arg1, 0, 0, 312, 384, 0, 0, 4, 12 ) --[[ @ 0]]
	Header.HeaderBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Header.HeaderBacking:setShaderVector( 0, 0, 0.5, 0, 0 ) --[[ @ 0]]
	self:addElement( Header ) --[[ @ 0]]
	self.Header = Header --[[ @ 0]]
	
	self.Text:linkToElementModel( self, "title", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Text:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self.highlight:linkToElementModel( self, "color", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			highlight:setRGB( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self.Header:linkToElementModel( self, nil, false, function ( model )
		Header:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.NotificationRewardWidget.__resetProperties = function ( f6_arg0 )
	f6_arg0.ImageScanline:completeAnimation() --[[ @ 0]]
	f6_arg0.highlight:completeAnimation() --[[ @ 0]]
	f6_arg0.Text:completeAnimation() --[[ @ 0]]
	f6_arg0.ImageScanline:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.ImageScanline:setScale( 1, 1 ) --[[ @ 0]]
	f6_arg0.highlight:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.highlight:setZRot( 0 ) --[[ @ 0]]
	f6_arg0.highlight:setScale( 1, 1 ) --[[ @ 0]]
	f6_arg0.highlight:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	f6_arg0.Text:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.NotificationRewardWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					local f9_local0 = function ( f10_arg0 )
						local f10_local0 = function ( f11_arg0 )
							local f11_local0 = function ( f12_arg0 )
								local f12_local0 = function ( f13_arg0 )
									f13_arg0:beginAnimation( 79 ) --[[ @ 0]]
									f13_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f12_arg0:beginAnimation( 30 ) --[[ @ 0]]
								f12_arg0:setAlpha( 1 ) --[[ @ 0]]
								f12_arg0:setScale( 1, 1 ) --[[ @ 0]]
								f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f11_arg0:beginAnimation( 60 ) --[[ @ 0]]
							f11_arg0:setAlpha( 0.81 ) --[[ @ 0]]
							f11_arg0:setScale( 0.95, 0.95 ) --[[ @ 0]]
							f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f10_arg0:beginAnimation( 30 ) --[[ @ 0]]
						f10_arg0:setAlpha( 0.44 ) --[[ @ 0]]
						f10_arg0:setScale( 1, 1 ) --[[ @ 0]]
						f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f9_arg0:beginAnimation( 39 ) --[[ @ 0]]
					f9_arg0:setAlpha( 0.25 ) --[[ @ 0]]
					f9_arg0:setScale( 1.86, 1.86 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.ImageScanline:beginAnimation( 200 ) --[[ @ 0]]
				f7_arg0.ImageScanline:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.ImageScanline:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.ImageScanline:completeAnimation() --[[ @ 0]]
			f7_arg0.ImageScanline:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.ImageScanline:setScale( 3, 3 ) --[[ @ 0]]
			f7_local0( f7_arg0.ImageScanline ) --[[ @ 0]]
			local f7_local1 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					local f15_local0 = function ( f16_arg0 )
						local f16_local0 = function ( f17_arg0 )
							f17_arg0:beginAnimation( 30 ) --[[ @ 0]]
							f17_arg0:setAlpha( 0 ) --[[ @ 0]]
							f17_arg0:setZRot( 360 ) --[[ @ 0]]
							f17_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f16_arg0:beginAnimation( 60 ) --[[ @ 0]]
						f16_arg0:setAlpha( 0.5 ) --[[ @ 0]]
						f16_arg0:setZRot( 292 ) --[[ @ 0]]
						f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f15_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f15_arg0:setAlpha( 0.7 ) --[[ @ 0]]
					f15_arg0:setZRot( 158 ) --[[ @ 0]]
					f15_arg0:setScale( 1.5, 1.5 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.highlight:beginAnimation( 200 ) --[[ @ 0]]
				f7_arg0.highlight:setAlpha( 0.52 ) --[[ @ 0]]
				f7_arg0.highlight:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.highlight:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.highlight:completeAnimation() --[[ @ 0]]
			f7_arg0.highlight:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.highlight:setZRot( 0 ) --[[ @ 0]]
			f7_arg0.highlight:setScale( 0, 0 ) --[[ @ 0]]
			f7_arg0.highlight:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
			f7_local1( f7_arg0.highlight ) --[[ @ 0]]
		end,
		TimeUp = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f18_local0 = function ( f19_arg0 )
				local f19_local0 = function ( f20_arg0 )
					local f20_local0 = function ( f21_arg0 )
						local f21_local0 = function ( f22_arg0 )
							local f22_local0 = function ( f23_arg0 )
								f23_arg0:beginAnimation( 39, Enum[@"luitween"][@"luitween_bounce"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
								f23_arg0:setAlpha( 0 ) --[[ @ 0]]
								f23_arg0:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f22_arg0:beginAnimation( 40, Enum[@"luitween"][@"luitween_bounce"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
							f22_arg0:setAlpha( 0.6 ) --[[ @ 0]]
							f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f21_arg0:beginAnimation( 59, Enum[@"luitween"][@"luitween_bounce"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
						f21_arg0:setAlpha( 0 ) --[[ @ 0]]
						f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f20_arg0:beginAnimation( 50 ) --[[ @ 0]]
					f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f18_arg0.ImageScanline:beginAnimation( 50 ) --[[ @ 0]]
				f18_arg0.ImageScanline:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.ImageScanline:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.ImageScanline:completeAnimation() --[[ @ 0]]
			f18_arg0.ImageScanline:setAlpha( 1 ) --[[ @ 0]]
			f18_local0( f18_arg0.ImageScanline ) --[[ @ 0]]
			local f18_local1 = function ( f24_arg0 )
				local f24_local0 = function ( f25_arg0 )
					local f25_local0 = function ( f26_arg0 )
						local f26_local0 = function ( f27_arg0 )
							f27_arg0:beginAnimation( 39, Enum[@"luitween"][@"luitween_bounce"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
							f27_arg0:setAlpha( 0 ) --[[ @ 0]]
							f27_arg0:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f26_arg0:beginAnimation( 40, Enum[@"luitween"][@"luitween_bounce"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
						f26_arg0:setAlpha( 0.6 ) --[[ @ 0]]
						f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f25_arg0:beginAnimation( 59, Enum[@"luitween"][@"luitween_bounce"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f25_arg0:setAlpha( 0 ) --[[ @ 0]]
					f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f18_arg0.Text:beginAnimation( 100 ) --[[ @ 0]]
				f18_arg0.Text:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.Text:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.Text:completeAnimation() --[[ @ 0]]
			f18_arg0.Text:setAlpha( 1 ) --[[ @ 0]]
			f18_local1( f18_arg0.Text ) --[[ @ 0]]
			f18_arg0.highlight:completeAnimation() --[[ @ 0]]
			f18_arg0.highlight:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.highlight ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.NotificationRewardWidget.__onClose = function ( f28_arg0 )
	f28_arg0.ImageScanline:close() --[[ @ 0]]
	f28_arg0.Text:close() --[[ @ 0]]
	f28_arg0.highlight:close() --[[ @ 0]]
	f28_arg0.Header:close() --[[ @ 0]]
end
 --[[ @ 0]]
