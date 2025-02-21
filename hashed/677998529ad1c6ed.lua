-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/vehiclehuds/dart/vhud_centercirclehorizon" ) --[[ @ 0]]
require( "x64:34578a00a56ef81b" ) --[[ @ 0]]
require( "x64:35a9b8ffe81f1afd" ) --[[ @ 0]]
require( "x64:8a35864b418ab6" ) --[[ @ 0]]
require( "ui/uieditor/widgets/vehiclehuds/dart/vhud_dart_reticle_roll" ) --[[ @ 0]]
require( "x64:35c14ad695a9a1a8" ) --[[ @ 0]]
require( "ui/uieditor/widgets/vehiclehuds/hellstorm/vhud_hellstorm_altwidget" ) --[[ @ 0]]
require( "ui/uieditor/widgets/vehiclehuds/hellstorm/vhud_hellstorm_speedwidget" ) --[[ @ 0]]
require( "x64:2d24e4a6046a91b2" ) --[[ @ 0]]
require( "x64:33e473513e0d9476" ) --[[ @ 0]]

CoD.vhud_dart_reticle = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_dart_reticle.__defaultWidth = 1920 --[[ @ 0]]
CoD.vhud_dart_reticle.__defaultHeight = 1080 --[[ @ 0]]
CoD.vhud_dart_reticle.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_dart_reticle ) --[[ @ 0]]
	self.id = "vhud_dart_reticle" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local f1_local1 = nil --[[ @ 0]]
	self.CenterGlowRing = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local2 = nil --[[ @ 0]]
	self.vignette02 = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local3 = nil --[[ @ 0]]
	self.TiledShaderImage = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local4 = nil --[[ @ 0]]
	self.vehicleHudFractal02 = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local5 = nil --[[ @ 0]]
	self.vhuddartCenterReticleOuterCircleDots = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local6 = nil --[[ @ 0]]
	self.CenterReticleCircleBlurRGB = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local7 = nil --[[ @ 0]]
	self.vehicleHudFractal = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local8 = nil --[[ @ 0]]
	self.layoutDotlineGrid = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local9 = nil --[[ @ 0]]
	self.vehicleHudCommonLayout = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local10 = nil --[[ @ 0]]
	self.layoutPlusGrid = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local11 = nil --[[ @ 0]]
	self.vignette01 = LUI.UIElement.createFake() --[[ @ 0]]
	
	local ButtonElementAll = CoD.vhud_dart_button_all.new( f1_arg0, f1_arg1, 0.5, 0.5, -529, 529, 1, 1, -328, -41 ) --[[ @ 0]]
	ButtonElementAll:linkToElementModel( self, nil, false, function ( model )
		ButtonElementAll:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ButtonElementAll ) --[[ @ 0]]
	self.ButtonElementAll = ButtonElementAll --[[ @ 0]]
	
	local MessageBox = CoD.vhud_gunship_message.new( f1_arg0, f1_arg1, 0.5, 0.5, -251, 251, 1, 1, -256, 2 ) --[[ @ 0]]
	self:addElement( MessageBox ) --[[ @ 0]]
	self.MessageBox = MessageBox --[[ @ 0]]
	
	local vhudsentinelNotificationSignalBox = CoD.vhud_sentinel_NotificationSignalBox.new( f1_arg0, f1_arg1, 0.5, 0.5, -61, 61, 1, 1, -242.5, -197.5 ) --[[ @ 0]]
	vhudsentinelNotificationSignalBox:linkToElementModel( self, nil, false, function ( model )
		vhudsentinelNotificationSignalBox:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( vhudsentinelNotificationSignalBox ) --[[ @ 0]]
	self.vhudsentinelNotificationSignalBox = vhudsentinelNotificationSignalBox --[[ @ 0]]
	
	local vhudmsTimebar = CoD.vhud_ms_Timebar.new( f1_arg0, f1_arg1, 0.5, 0.5, 610, 960, 1, 1, -74, -61 ) --[[ @ 0]]
	vhudmsTimebar:linkToElementModel( self, nil, false, function ( model )
		vhudmsTimebar:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( vhudmsTimebar ) --[[ @ 0]]
	self.vhudmsTimebar = vhudmsTimebar --[[ @ 0]]
	
	local vhuddartreticleroll0 = CoD.vhud_dart_reticle_roll.new( f1_arg0, f1_arg1, 0.5, 0.5, -343.5, 343.5, 0.5, 0.5, -157.5, 157.5 ) --[[ @ 0]]
	vhuddartreticleroll0:linkToElementModel( self, "roll", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			vhuddartreticleroll0:setZRot( Multiple( 360, f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( vhuddartreticleroll0 ) --[[ @ 0]]
	self.vhuddartreticleroll0 = vhuddartreticleroll0 --[[ @ 0]]
	
	local vhudCenterCircleHorizon = CoD.vhud_CenterCircleHorizon.new( f1_arg0, f1_arg1, 0.5, 0.5, -67, 67, 0.5, 0.5, -67, 67 ) --[[ @ 0]]
	self:addElement( vhudCenterCircleHorizon ) --[[ @ 0]]
	self.vhudCenterCircleHorizon = vhudCenterCircleHorizon --[[ @ 0]]
	
	local vhuddartframeLeft = CoD.vhud_dart_frameLeft.new( f1_arg0, f1_arg1, 0.5, 0.5, -745, -354, 0.5, 0.5, -243, 241 ) --[[ @ 0]]
	self:addElement( vhuddartframeLeft ) --[[ @ 0]]
	self.vhuddartframeLeft = vhuddartframeLeft --[[ @ 0]]
	
	local vhuddartframeRight = CoD.vhud_dart_frameRight.new( f1_arg0, f1_arg1, 0.5, 0.5, 351, 742, 0.5, 0.5, -243, 241 ) --[[ @ 0]]
	self:addElement( vhuddartframeRight ) --[[ @ 0]]
	self.vhuddartframeRight = vhuddartframeRight --[[ @ 0]]
	
	local CenterDot = LUI.UIImage.new( 0.5, 0.5, -17.5, 17.5, 0.5, 0.5, -27, 19 ) --[[ @ 0]]
	CenterDot:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_center_reticle" ) ) --[[ @ 0]]
	CenterDot:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	CenterDot:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( CenterDot ) --[[ @ 0]]
	self.CenterDot = CenterDot --[[ @ 0]]
	
	local Speed = CoD.vhud_hellstorm_SpeedWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, -500, -280, 0.5, 0.5, -15.5, 17.5 ) --[[ @ 0]]
	Speed:linkToElementModel( self, nil, false, function ( model )
		Speed:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Speed ) --[[ @ 0]]
	self.Speed = Speed --[[ @ 0]]
	
	local AltMeterL = CoD.vhud_hellstorm_AltWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, 288, 508, 0.5, 0.5, -15.5, 17.5 ) --[[ @ 0]]
	AltMeterL:linkToElementModel( self, nil, false, function ( model )
		AltMeterL:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( AltMeterL ) --[[ @ 0]]
	self.AltMeterL = AltMeterL --[[ @ 0]]
	
	local VerticalMeterTop = LUI.UIImage.new( 0.5, 0.5, -18, 18, 0, 0, 387, 307 ) --[[ @ 0]]
	VerticalMeterTop:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_meter_bot" ) ) --[[ @ 0]]
	VerticalMeterTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( VerticalMeterTop ) --[[ @ 0]]
	self.VerticalMeterTop = VerticalMeterTop --[[ @ 0]]
	
	local TrackerActive = LUI.UIImage.new( 0.5, 0.5, -36, 36, 0, 0, 237, 277 ) --[[ @ 0]]
	TrackerActive:setAlpha( 0.6 ) --[[ @ 0]]
	TrackerActive:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_active_common_info" ) ) --[[ @ 0]]
	TrackerActive:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( TrackerActive ) --[[ @ 0]]
	self.TrackerActive = TrackerActive --[[ @ 0]]
	
	local BlkCircleBot = LUI.UIImage.new( 0.5, 0.5, -172, 172, 0, 0, 719, 795 ) --[[ @ 0]]
	BlkCircleBot:setAlpha( 0.9 ) --[[ @ 0]]
	BlkCircleBot:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_layout_guide_circle_black" ) ) --[[ @ 0]]
	BlkCircleBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	BlkCircleBot:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BlkCircleBot ) --[[ @ 0]]
	self.BlkCircleBot = BlkCircleBot --[[ @ 0]]
	
	local BlkCircleTop = LUI.UIImage.new( 0.5, 0.5, -172, 172, 0, 0, 364, 288 ) --[[ @ 0]]
	BlkCircleTop:setAlpha( 0.9 ) --[[ @ 0]]
	BlkCircleTop:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_layout_guide_circle_black" ) ) --[[ @ 0]]
	BlkCircleTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	BlkCircleTop:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BlkCircleTop ) --[[ @ 0]]
	self.BlkCircleTop = BlkCircleTop --[[ @ 0]]
	
	local CircleFrameBot = LUI.UIImage.new( 0.5, 0.5, -192, 192, 0, 0, 730, 806 ) --[[ @ 0]]
	CircleFrameBot:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_guide_circle" ) ) --[[ @ 0]]
	CircleFrameBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	CircleFrameBot:setShaderVector( 0, 1.7, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( CircleFrameBot ) --[[ @ 0]]
	self.CircleFrameBot = CircleFrameBot --[[ @ 0]]
	
	local CircleFrameTop = LUI.UIImage.new( 0.5, 0.5, -192, 192, 0, 0, 353, 277 ) --[[ @ 0]]
	CircleFrameTop:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_guide_circle" ) ) --[[ @ 0]]
	CircleFrameTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	CircleFrameTop:setShaderVector( 0, 1.7, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( CircleFrameTop ) --[[ @ 0]]
	self.CircleFrameTop = CircleFrameTop --[[ @ 0]]
	
	local FuiLeft = LUI.UIImage.new( 0, 0, 555, 635, 0, 0, 755, 791 ) --[[ @ 0]]
	FuiLeft:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_layout_detail" ) ) --[[ @ 0]]
	FuiLeft:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( FuiLeft ) --[[ @ 0]]
	self.FuiLeft = FuiLeft --[[ @ 0]]
	
	local FuiRight = LUI.UIImage.new( 0, 0, 1365, 1285, 0, 0, 755, 791 ) --[[ @ 0]]
	FuiRight:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_layout_detail" ) ) --[[ @ 0]]
	FuiRight:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( FuiRight ) --[[ @ 0]]
	self.FuiRight = FuiRight --[[ @ 0]]
	
	local FuiLinkBR = LUI.UIImage.new( 0, 0, 1532, 1412, 0, 0, 723, 1083 ) --[[ @ 0]]
	FuiLinkBR:setAlpha( 0.9 ) --[[ @ 0]]
	FuiLinkBR:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_layout_element" ) ) --[[ @ 0]]
	FuiLinkBR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	FuiLinkBR:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( FuiLinkBR ) --[[ @ 0]]
	self.FuiLinkBR = FuiLinkBR --[[ @ 0]]
	
	local FuiLinkBL = LUI.UIImage.new( 0, 0, 398.5, 518.5, 0, 0, 723, 1083 ) --[[ @ 0]]
	FuiLinkBL:setAlpha( 0.9 ) --[[ @ 0]]
	FuiLinkBL:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_layout_element" ) ) --[[ @ 0]]
	FuiLinkBL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	FuiLinkBL:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( FuiLinkBL ) --[[ @ 0]]
	self.FuiLinkBL = FuiLinkBL --[[ @ 0]]
	
	local FuiLinkTL = LUI.UIImage.new( 0, 0, 398.5, 518.5, 0, 0, 360, 0 ) --[[ @ 0]]
	FuiLinkTL:setAlpha( 0.9 ) --[[ @ 0]]
	FuiLinkTL:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_layout_element" ) ) --[[ @ 0]]
	FuiLinkTL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	FuiLinkTL:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( FuiLinkTL ) --[[ @ 0]]
	self.FuiLinkTL = FuiLinkTL --[[ @ 0]]
	
	local FuiLinkTR = LUI.UIImage.new( 0, 0, 1532, 1412, 0, 0, 360, 0 ) --[[ @ 0]]
	FuiLinkTR:setAlpha( 0.9 ) --[[ @ 0]]
	FuiLinkTR:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_layout_element" ) ) --[[ @ 0]]
	FuiLinkTR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	FuiLinkTR:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( FuiLinkTR ) --[[ @ 0]]
	self.FuiLinkTR = FuiLinkTR --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_dart_reticle.__resetProperties = function ( f8_arg0 )
	f8_arg0.CenterDot:completeAnimation() --[[ @ 0]]
	f8_arg0.TiledShaderImage:completeAnimation() --[[ @ 0]]
	f8_arg0.Speed:completeAnimation() --[[ @ 0]]
	f8_arg0.AltMeterL:completeAnimation() --[[ @ 0]]
	f8_arg0.TrackerActive:completeAnimation() --[[ @ 0]]
	f8_arg0.vehicleHudCommonLayout:completeAnimation() --[[ @ 0]]
	f8_arg0.vehicleHudFractal:completeAnimation() --[[ @ 0]]
	f8_arg0.layoutDotlineGrid:completeAnimation() --[[ @ 0]]
	f8_arg0.CenterReticleCircleBlurRGB:completeAnimation() --[[ @ 0]]
	f8_arg0.vhudsentinelNotificationSignalBox:completeAnimation() --[[ @ 0]]
	f8_arg0.vhudCenterCircleHorizon:completeAnimation() --[[ @ 0]]
	f8_arg0.vhuddartCenterReticleOuterCircleDots:completeAnimation() --[[ @ 0]]
	f8_arg0.vhuddartreticleroll0:completeAnimation() --[[ @ 0]]
	f8_arg0.CenterDot:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.TiledShaderImage:setAlpha( 0.55 ) --[[ @ 0]]
	f8_arg0.Speed:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.Speed:setZoom( 0 ) --[[ @ 0]]
	f8_arg0.AltMeterL:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.AltMeterL:setZoom( 0 ) --[[ @ 0]]
	f8_arg0.TrackerActive:setAlpha( 0.6 ) --[[ @ 0]]
	f8_arg0.vehicleHudCommonLayout:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.vehicleHudFractal:setAlpha( 0.4 ) --[[ @ 0]]
	f8_arg0.layoutDotlineGrid:setAlpha( 0.8 ) --[[ @ 0]]
	f8_arg0.CenterReticleCircleBlurRGB:setAlpha( 0.5 ) --[[ @ 0]]
	f8_arg0.CenterReticleCircleBlurRGB:setZRot( 0 ) --[[ @ 0]]
	f8_arg0.vhudsentinelNotificationSignalBox:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.vhudCenterCircleHorizon:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.vhuddartCenterReticleOuterCircleDots:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.vhuddartreticleroll0:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vhud_dart_reticle.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					f11_arg0:beginAnimation( 19 ) --[[ @ 0]]
					f11_arg0:setAlpha( 0.55 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.TiledShaderImage:beginAnimation( 300 ) --[[ @ 0]]
				f9_arg0.TiledShaderImage:setAlpha( 0.6 ) --[[ @ 0]]
				f9_arg0.TiledShaderImage:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.TiledShaderImage:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.TiledShaderImage:completeAnimation() --[[ @ 0]]
			f9_arg0.TiledShaderImage:setAlpha( 0 ) --[[ @ 0]]
			f9_local0( f9_arg0.TiledShaderImage ) --[[ @ 0]]
			local f9_local1 = function ( f12_arg0 )
				f12_arg0:beginAnimation( 19 ) --[[ @ 0]]
				f12_arg0:setAlpha( 1 ) --[[ @ 0]]
				f12_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.vhuddartCenterReticleOuterCircleDots:beginAnimation( 300 ) --[[ @ 0]]
			f9_arg0.vhuddartCenterReticleOuterCircleDots:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.vhuddartCenterReticleOuterCircleDots:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
			f9_arg0.vhuddartCenterReticleOuterCircleDots:registerEventHandler( "transition_complete_keyframe", f9_local1 ) --[[ @ 0]]
			local f9_local2 = function ( f13_arg0 )
				f13_arg0:beginAnimation( 200 ) --[[ @ 0]]
				f13_arg0:setAlpha( 1 ) --[[ @ 0]]
				f13_arg0:setZRot( 0 ) --[[ @ 0]]
				f13_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.CenterReticleCircleBlurRGB:beginAnimation( 100 ) --[[ @ 0]]
			f9_arg0.CenterReticleCircleBlurRGB:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.CenterReticleCircleBlurRGB:setZRot( 90 ) --[[ @ 0]]
			f9_arg0.CenterReticleCircleBlurRGB:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
			f9_arg0.CenterReticleCircleBlurRGB:registerEventHandler( "transition_complete_keyframe", f9_local2 ) --[[ @ 0]]
			local f9_local3 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					local f15_local0 = function ( f16_arg0 )
						f16_arg0:beginAnimation( 20 ) --[[ @ 0]]
						f16_arg0:setAlpha( 0.4 ) --[[ @ 0]]
						f16_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f15_arg0:beginAnimation( 20 ) --[[ @ 0]]
					f15_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.vehicleHudFractal:beginAnimation( 20 ) --[[ @ 0]]
				f9_arg0.vehicleHudFractal:setAlpha( 0.4 ) --[[ @ 0]]
				f9_arg0.vehicleHudFractal:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.vehicleHudFractal:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.vehicleHudFractal:completeAnimation() --[[ @ 0]]
			f9_arg0.vehicleHudFractal:setAlpha( 0 ) --[[ @ 0]]
			f9_local3( f9_arg0.vehicleHudFractal ) --[[ @ 0]]
			local f9_local4 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					f18_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f18_arg0:setAlpha( 0.8 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.layoutDotlineGrid:beginAnimation( 200 ) --[[ @ 0]]
				f9_arg0.layoutDotlineGrid:setAlpha( 1 ) --[[ @ 0]]
				f9_arg0.layoutDotlineGrid:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.layoutDotlineGrid:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.layoutDotlineGrid:completeAnimation() --[[ @ 0]]
			f9_arg0.layoutDotlineGrid:setAlpha( 0 ) --[[ @ 0]]
			f9_local4( f9_arg0.layoutDotlineGrid ) --[[ @ 0]]
			local f9_local5 = function ( f19_arg0 )
				local f19_local0 = function ( f20_arg0 )
					local f20_local0 = function ( f21_arg0 )
						local f21_local0 = function ( f22_arg0 )
							local f22_local0 = function ( f23_arg0 )
								local f23_local0 = function ( f24_arg0 )
									f24_arg0:beginAnimation( 19 ) --[[ @ 0]]
									f24_arg0:setAlpha( 1 ) --[[ @ 0]]
									f24_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f23_arg0:beginAnimation( 20 ) --[[ @ 0]]
								f23_arg0:setAlpha( 0.2 ) --[[ @ 0]]
								f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f22_arg0:beginAnimation( 19 ) --[[ @ 0]]
							f22_arg0:setAlpha( 0.9 ) --[[ @ 0]]
							f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f21_arg0:beginAnimation( 20 ) --[[ @ 0]]
						f21_arg0:setAlpha( 0.1 ) --[[ @ 0]]
						f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f20_arg0:beginAnimation( 19 ) --[[ @ 0]]
					f20_arg0:setAlpha( 0.9 ) --[[ @ 0]]
					f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.vehicleHudCommonLayout:beginAnimation( 100 ) --[[ @ 0]]
				f9_arg0.vehicleHudCommonLayout:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.vehicleHudCommonLayout:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.vehicleHudCommonLayout:completeAnimation() --[[ @ 0]]
			f9_arg0.vehicleHudCommonLayout:setAlpha( 0 ) --[[ @ 0]]
			f9_local5( f9_arg0.vehicleHudCommonLayout ) --[[ @ 0]]
			local f9_local6 = function ( f25_arg0 )
				f25_arg0:beginAnimation( 89 ) --[[ @ 0]]
				f25_arg0:setAlpha( 1 ) --[[ @ 0]]
				f25_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.vhudsentinelNotificationSignalBox:beginAnimation( 150 ) --[[ @ 0]]
			f9_arg0.vhudsentinelNotificationSignalBox:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.vhudsentinelNotificationSignalBox:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
			f9_arg0.vhudsentinelNotificationSignalBox:registerEventHandler( "transition_complete_keyframe", f9_local6 ) --[[ @ 0]]
			local f9_local7 = function ( f26_arg0 )
				f26_arg0:beginAnimation( 49, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
				f26_arg0:setAlpha( 1 ) --[[ @ 0]]
				f26_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.vhuddartreticleroll0:beginAnimation( 300 ) --[[ @ 0]]
			f9_arg0.vhuddartreticleroll0:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.vhuddartreticleroll0:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
			f9_arg0.vhuddartreticleroll0:registerEventHandler( "transition_complete_keyframe", f9_local7 ) --[[ @ 0]]
			local f9_local8 = function ( f27_arg0 )
				f27_arg0:beginAnimation( 49 ) --[[ @ 0]]
				f27_arg0:setAlpha( 1 ) --[[ @ 0]]
				f27_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.vhudCenterCircleHorizon:beginAnimation( 300 ) --[[ @ 0]]
			f9_arg0.vhudCenterCircleHorizon:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.vhudCenterCircleHorizon:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
			f9_arg0.vhudCenterCircleHorizon:registerEventHandler( "transition_complete_keyframe", f9_local8 ) --[[ @ 0]]
			local f9_local9 = function ( f28_arg0 )
				local f28_local0 = function ( f29_arg0 )
					local f29_local0 = function ( f30_arg0 )
						f30_arg0:beginAnimation( 90 ) --[[ @ 0]]
						f30_arg0:setAlpha( 1 ) --[[ @ 0]]
						f30_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f29_arg0:beginAnimation( 80 ) --[[ @ 0]]
					f29_arg0:setAlpha( 0 ) --[[ @ 0]]
					f29_arg0:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.CenterDot:beginAnimation( 140 ) --[[ @ 0]]
				f9_arg0.CenterDot:setAlpha( 1 ) --[[ @ 0]]
				f9_arg0.CenterDot:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.CenterDot:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.CenterDot:completeAnimation() --[[ @ 0]]
			f9_arg0.CenterDot:setAlpha( 0 ) --[[ @ 0]]
			f9_local9( f9_arg0.CenterDot ) --[[ @ 0]]
			local f9_local10 = function ( f31_arg0 )
				f9_arg0.Speed:beginAnimation( 200 ) --[[ @ 0]]
				f9_arg0.Speed:setZoom( 0 ) --[[ @ 0]]
				f9_arg0.Speed:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.Speed:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.Speed:completeAnimation() --[[ @ 0]]
			f9_arg0.Speed:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.Speed:setZoom( 20 ) --[[ @ 0]]
			f9_local10( f9_arg0.Speed ) --[[ @ 0]]
			local f9_local11 = function ( f32_arg0 )
				f9_arg0.AltMeterL:beginAnimation( 200 ) --[[ @ 0]]
				f9_arg0.AltMeterL:setZoom( 0 ) --[[ @ 0]]
				f9_arg0.AltMeterL:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.AltMeterL:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.AltMeterL:completeAnimation() --[[ @ 0]]
			f9_arg0.AltMeterL:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.AltMeterL:setZoom( 20 ) --[[ @ 0]]
			f9_local11( f9_arg0.AltMeterL ) --[[ @ 0]]
			local f9_local12 = function ( f33_arg0 )
				local f33_local0 = function ( f34_arg0 )
					local f34_local0 = function ( f35_arg0 )
						local f35_local0 = function ( f36_arg0 )
							local f36_local0 = function ( f37_arg0 )
								local f37_local0 = function ( f38_arg0 )
									local f38_local0 = function ( f39_arg0 )
										f39_arg0:beginAnimation( 50 ) --[[ @ 0]]
										f39_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f38_arg0:beginAnimation( 69 ) --[[ @ 0]]
									f38_arg0:setAlpha( 0.6 ) --[[ @ 0]]
									f38_arg0:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f37_arg0:beginAnimation( 20 ) --[[ @ 0]]
								f37_arg0:setAlpha( 0 ) --[[ @ 0]]
								f37_arg0:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f36_arg0:beginAnimation( 19 ) --[[ @ 0]]
							f36_arg0:setAlpha( 0.6 ) --[[ @ 0]]
							f36_arg0:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f35_arg0:beginAnimation( 19 ) --[[ @ 0]]
						f35_arg0:setAlpha( 0 ) --[[ @ 0]]
						f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f34_arg0:beginAnimation( 19 ) --[[ @ 0]]
					f34_arg0:setAlpha( 0.6 ) --[[ @ 0]]
					f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.TrackerActive:beginAnimation( 200 ) --[[ @ 0]]
				f9_arg0.TrackerActive:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.TrackerActive:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.TrackerActive:completeAnimation() --[[ @ 0]]
			f9_arg0.TrackerActive:setAlpha( 0 ) --[[ @ 0]]
			f9_local12( f9_arg0.TrackerActive ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.vhud_dart_reticle.__onClose = function ( f40_arg0 )
	f40_arg0.CenterGlowRing:close() --[[ @ 0]]
	f40_arg0.vhuddartCenterReticleOuterCircleDots:close() --[[ @ 0]]
	f40_arg0.layoutDotlineGrid:close() --[[ @ 0]]
	f40_arg0.vehicleHudCommonLayout:close() --[[ @ 0]]
	f40_arg0.layoutPlusGrid:close() --[[ @ 0]]
	f40_arg0.ButtonElementAll:close() --[[ @ 0]]
	f40_arg0.MessageBox:close() --[[ @ 0]]
	f40_arg0.vhudsentinelNotificationSignalBox:close() --[[ @ 0]]
	f40_arg0.vhudmsTimebar:close() --[[ @ 0]]
	f40_arg0.vhuddartreticleroll0:close() --[[ @ 0]]
	f40_arg0.vhudCenterCircleHorizon:close() --[[ @ 0]]
	f40_arg0.vhuddartframeLeft:close() --[[ @ 0]]
	f40_arg0.vhuddartframeRight:close() --[[ @ 0]]
	f40_arg0.Speed:close() --[[ @ 0]]
	f40_arg0.AltMeterL:close() --[[ @ 0]]
end
 --[[ @ 0]]
