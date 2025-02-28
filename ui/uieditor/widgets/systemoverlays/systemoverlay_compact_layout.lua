-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/footer/fe_leftcontainer_notlobby" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/systemoverlay_alertstatusbar" ) --[[ @ 0]]
require( "x64:346be910b5a0082a" ) --[[ @ 0]]

CoD.systemOverlay_Compact_Layout = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.systemOverlay_Compact_Layout.__defaultWidth = 1920 --[[ @ 0]]
CoD.systemOverlay_Compact_Layout.__defaultHeight = 1080 --[[ @ 0]]
CoD.systemOverlay_Compact_Layout.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.systemOverlay_Compact_Layout ) --[[ @ 0]]
	self.id = "systemOverlay_Compact_Layout" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local background = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	background:setRGB( 0, 0, 0 ) --[[ @ 0]]
	background:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( background ) --[[ @ 0]]
	self.background = background --[[ @ 0]]
	
	local blur = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 273, 575 ) --[[ @ 0]]
	blur:setAlpha( 0 ) --[[ @ 0]]
	blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	blur:setShaderVector( 0, 0.2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( blur ) --[[ @ 0]]
	self.blur = blur --[[ @ 0]]
	
	local backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 270, 575 ) --[[ @ 0]]
	backing:setRGB( 0.19, 0.19, 0.19 ) --[[ @ 0]]
	backing:setAlpha( 0.94 ) --[[ @ 0]]
	self:addElement( backing ) --[[ @ 0]]
	self.backing = backing --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0.09, 0.09, 183, 480 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.65 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local buttonBacking = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, 91, 145 ) --[[ @ 0]]
	buttonBacking:setRGB( 0.13, 0.11, 0.12 ) --[[ @ 0]]
	buttonBacking:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( buttonBacking ) --[[ @ 0]]
	self.buttonBacking = buttonBacking --[[ @ 0]]
	
	local frameWidget = LUI.UIFrame.new( f1_arg0, f1_arg1, 0, 0, false ) --[[ @ 0]]
	frameWidget:setLeftRight( 0.5, 0.5, -960, 960 ) --[[ @ 0]]
	frameWidget:setTopBottom( 0, 0, 276, 552 ) --[[ @ 0]]
	frameWidget:linkToElementModel( self, nil, false, function ( model )
		frameWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	frameWidget:linkToElementModel( self, "frameWidget", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			frameWidget:changeFrameWidget( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( frameWidget ) --[[ @ 0]]
	self.frameWidget = frameWidget --[[ @ 0]]
	
	local BlackBarBGTop = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 270, 286 ) --[[ @ 0]]
	BlackBarBGTop:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackBarBGTop:setAlpha( 0.85 ) --[[ @ 0]]
	self:addElement( BlackBarBGTop ) --[[ @ 0]]
	self.BlackBarBGTop = BlackBarBGTop --[[ @ 0]]
	
	local BlackBarBGBtm = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 562, 578 ) --[[ @ 0]]
	BlackBarBGBtm:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackBarBGBtm:setAlpha( 0.85 ) --[[ @ 0]]
	self:addElement( BlackBarBGBtm ) --[[ @ 0]]
	self.BlackBarBGBtm = BlackBarBGBtm --[[ @ 0]]
	
	local alertStatusBar2 = CoD.systemOverlay_alertStatusBar.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 572, 578 ) --[[ @ 0]]
	alertStatusBar2:linkToElementModel( self, nil, false, function ( model )
		alertStatusBar2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( alertStatusBar2 ) --[[ @ 0]]
	self.alertStatusBar2 = alertStatusBar2 --[[ @ 0]]
	
	local alertStatusBar = CoD.systemOverlay_alertStatusBar.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 270, 276 ) --[[ @ 0]]
	alertStatusBar:linkToElementModel( self, nil, false, function ( model )
		alertStatusBar:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( alertStatusBar ) --[[ @ 0]]
	self.alertStatusBar = alertStatusBar --[[ @ 0]]
	
	local buttons = CoD.fe_LeftContainer_NOTLobby.new( f1_arg0, f1_arg1, 0.5, 0.5, -358, 290, 0, 0, 517, 565 ) --[[ @ 0]]
	self:addElement( buttons ) --[[ @ 0]]
	self.buttons = buttons --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	frameWidget.id = "frameWidget" --[[ @ 0]]
	if CoD.isPC then
		buttons.id = "buttons" --[[ @ 0]]
	end
	self.__defaultFocus = frameWidget --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.systemOverlay_Compact_Layout.__resetProperties = function ( f7_arg0 )
	f7_arg0.alertStatusBar:completeAnimation() --[[ @ 0]]
	f7_arg0.buttons:completeAnimation() --[[ @ 0]]
	f7_arg0.frameWidget:completeAnimation() --[[ @ 0]]
	f7_arg0.buttonBacking:completeAnimation() --[[ @ 0]]
	f7_arg0.alertStatusBar2:completeAnimation() --[[ @ 0]]
	f7_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
	f7_arg0.blur:completeAnimation() --[[ @ 0]]
	f7_arg0.backing:completeAnimation() --[[ @ 0]]
	f7_arg0.alertStatusBar:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f7_arg0.alertStatusBar:setTopBottom( 0, 0, 270, 276 ) --[[ @ 0]]
	f7_arg0.alertStatusBar:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.buttons:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.frameWidget:setLeftRight( 0.5, 0.5, -960, 960 ) --[[ @ 0]]
	f7_arg0.frameWidget:setTopBottom( 0, 0, 276, 552 ) --[[ @ 0]]
	f7_arg0.frameWidget:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.buttonBacking:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.alertStatusBar2:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.NoiseTiledBacking:setAlpha( 0.65 ) --[[ @ 0]]
	f7_arg0.blur:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.backing:setAlpha( 0.94 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.systemOverlay_Compact_Layout.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					local f10_local0 = function ( f11_arg0 )
						f11_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f11_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f10_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.blur:beginAnimation( 30 ) --[[ @ 0]]
				f8_arg0.blur:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.blur:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.blur:completeAnimation() --[[ @ 0]]
			f8_arg0.blur:setAlpha( 0 ) --[[ @ 0]]
			f8_local0( f8_arg0.blur ) --[[ @ 0]]
			local f8_local1 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					local f13_local0 = function ( f14_arg0 )
						f14_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f14_arg0:setAlpha( 0.7 ) --[[ @ 0]]
						f14_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f13_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f13_arg0:setAlpha( 0 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.NoiseTiledBacking:beginAnimation( 30 ) --[[ @ 0]]
				f8_arg0.NoiseTiledBacking:setAlpha( 0.7 ) --[[ @ 0]]
				f8_arg0.NoiseTiledBacking:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.NoiseTiledBacking:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f8_arg0.NoiseTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f8_local1( f8_arg0.NoiseTiledBacking ) --[[ @ 0]]
			local f8_local2 = function ( f15_arg0 )
				f8_arg0.buttonBacking:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f8_arg0.buttonBacking:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.buttonBacking:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.buttonBacking:completeAnimation() --[[ @ 0]]
			f8_arg0.buttonBacking:setAlpha( 0 ) --[[ @ 0]]
			f8_local2( f8_arg0.buttonBacking ) --[[ @ 0]]
			local f8_local3 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					f17_arg0:beginAnimation( 39, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f17_arg0:setAlpha( 1 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.frameWidget:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f8_arg0.frameWidget:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.frameWidget:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.frameWidget:completeAnimation() --[[ @ 0]]
			f8_arg0.frameWidget:setLeftRight( 0.5, 0.5, -960, 960 ) --[[ @ 0]]
			f8_arg0.frameWidget:setTopBottom( 0, 0, 276, 552 ) --[[ @ 0]]
			f8_arg0.frameWidget:setAlpha( 0 ) --[[ @ 0]]
			f8_local3( f8_arg0.frameWidget ) --[[ @ 0]]
			local f8_local4 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					local f19_local0 = function ( f20_arg0 )
						f20_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f20_arg0:setAlpha( 1 ) --[[ @ 0]]
						f20_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f19_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f19_arg0:setAlpha( 0 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.alertStatusBar2:beginAnimation( 30 ) --[[ @ 0]]
				f8_arg0.alertStatusBar2:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.alertStatusBar2:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.alertStatusBar2:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.alertStatusBar2:completeAnimation() --[[ @ 0]]
			f8_arg0.alertStatusBar2:setAlpha( 0 ) --[[ @ 0]]
			f8_local4( f8_arg0.alertStatusBar2 ) --[[ @ 0]]
			local f8_local5 = function ( f21_arg0 )
				local f21_local0 = function ( f22_arg0 )
					local f22_local0 = function ( f23_arg0 )
						f23_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f23_arg0:setTopBottom( 0, 0, 270, 276 ) --[[ @ 0]]
						f23_arg0:setAlpha( 1 ) --[[ @ 0]]
						f23_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f22_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f22_arg0:setTopBottom( 0, 0, 265.88, 271.88 ) --[[ @ 0]]
					f22_arg0:setAlpha( 0 ) --[[ @ 0]]
					f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.alertStatusBar:beginAnimation( 30, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f8_arg0.alertStatusBar:setTopBottom( 0, 0, 263, 269 ) --[[ @ 0]]
				f8_arg0.alertStatusBar:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.alertStatusBar:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.alertStatusBar:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.alertStatusBar:completeAnimation() --[[ @ 0]]
			f8_arg0.alertStatusBar:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f8_arg0.alertStatusBar:setTopBottom( 0, 0, -105, -99 ) --[[ @ 0]]
			f8_arg0.alertStatusBar:setAlpha( 0 ) --[[ @ 0]]
			f8_local5( f8_arg0.alertStatusBar ) --[[ @ 0]]
			local f8_local6 = function ( f24_arg0 )
				local f24_local0 = function ( f25_arg0 )
					f25_arg0:beginAnimation( 39, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f25_arg0:setAlpha( 1 ) --[[ @ 0]]
					f25_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.buttons:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f8_arg0.buttons:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.buttons:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.buttons:completeAnimation() --[[ @ 0]]
			f8_arg0.buttons:setAlpha( 0 ) --[[ @ 0]]
			f8_local6( f8_arg0.buttons ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f26_arg0.blur:completeAnimation() --[[ @ 0]]
			f26_arg0.blur:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.blur ) --[[ @ 0]]
			local f26_local0 = function ( f27_arg0 )
				local f27_local0 = function ( f28_arg0 )
					local f28_local0 = function ( f29_arg0 )
						local f29_local0 = function ( f30_arg0 )
							f30_arg0:beginAnimation( 39 ) --[[ @ 0]]
							f30_arg0:setAlpha( 0.15 ) --[[ @ 0]]
							f30_arg0:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f29_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f29_arg0:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f28_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f28_arg0:setAlpha( 0 ) --[[ @ 0]]
					f28_arg0:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f26_arg0.backing:beginAnimation( 30 ) --[[ @ 0]]
				f26_arg0.backing:setAlpha( 0.15 ) --[[ @ 0]]
				f26_arg0.backing:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.backing:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.backing:completeAnimation() --[[ @ 0]]
			f26_arg0.backing:setAlpha( 0 ) --[[ @ 0]]
			f26_local0( f26_arg0.backing ) --[[ @ 0]]
			local f26_local1 = function ( f31_arg0 )
				local f31_local0 = function ( f32_arg0 )
					local f32_local0 = function ( f33_arg0 )
						f33_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f33_arg0:setAlpha( 0.7 ) --[[ @ 0]]
						f33_arg0:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f32_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f32_arg0:setAlpha( 0 ) --[[ @ 0]]
					f32_arg0:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f26_arg0.NoiseTiledBacking:beginAnimation( 30 ) --[[ @ 0]]
				f26_arg0.NoiseTiledBacking:setAlpha( 0.7 ) --[[ @ 0]]
				f26_arg0.NoiseTiledBacking:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.NoiseTiledBacking:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f26_arg0.NoiseTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f26_local1( f26_arg0.NoiseTiledBacking ) --[[ @ 0]]
			local f26_local2 = function ( f34_arg0 )
				f26_arg0.buttonBacking:beginAnimation( 200 ) --[[ @ 0]]
				f26_arg0.buttonBacking:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.buttonBacking:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.buttonBacking:completeAnimation() --[[ @ 0]]
			f26_arg0.buttonBacking:setAlpha( 0 ) --[[ @ 0]]
			f26_local2( f26_arg0.buttonBacking ) --[[ @ 0]]
			local f26_local3 = function ( f35_arg0 )
				local f35_local0 = function ( f36_arg0 )
					f36_arg0:beginAnimation( 39 ) --[[ @ 0]]
					f36_arg0:setTopBottom( 0, 0, 276, 552 ) --[[ @ 0]]
					f36_arg0:setAlpha( 1 ) --[[ @ 0]]
					f36_arg0:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f26_arg0.frameWidget:beginAnimation( 200 ) --[[ @ 0]]
				f26_arg0.frameWidget:setTopBottom( 0, 0, 275.83, 551.83 ) --[[ @ 0]]
				f26_arg0.frameWidget:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.frameWidget:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.frameWidget:completeAnimation() --[[ @ 0]]
			f26_arg0.frameWidget:setLeftRight( 0.5, 0.5, -960, 960 ) --[[ @ 0]]
			f26_arg0.frameWidget:setTopBottom( 0, 0, 275, 551 ) --[[ @ 0]]
			f26_arg0.frameWidget:setAlpha( 0 ) --[[ @ 0]]
			f26_local3( f26_arg0.frameWidget ) --[[ @ 0]]
			local f26_local4 = function ( f37_arg0 )
				local f37_local0 = function ( f38_arg0 )
					local f38_local0 = function ( f39_arg0 )
						f39_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f39_arg0:setAlpha( 1 ) --[[ @ 0]]
						f39_arg0:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f38_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f38_arg0:setAlpha( 0 ) --[[ @ 0]]
					f38_arg0:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f26_arg0.alertStatusBar2:beginAnimation( 30 ) --[[ @ 0]]
				f26_arg0.alertStatusBar2:setAlpha( 1 ) --[[ @ 0]]
				f26_arg0.alertStatusBar2:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.alertStatusBar2:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.alertStatusBar2:completeAnimation() --[[ @ 0]]
			f26_arg0.alertStatusBar2:setAlpha( 0 ) --[[ @ 0]]
			f26_local4( f26_arg0.alertStatusBar2 ) --[[ @ 0]]
			local f26_local5 = function ( f40_arg0 )
				local f40_local0 = function ( f41_arg0 )
					local f41_local0 = function ( f42_arg0 )
						f42_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f42_arg0:setAlpha( 1 ) --[[ @ 0]]
						f42_arg0:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f41_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f41_arg0:setAlpha( 0 ) --[[ @ 0]]
					f41_arg0:registerEventHandler( "transition_complete_keyframe", f41_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f26_arg0.alertStatusBar:beginAnimation( 30 ) --[[ @ 0]]
				f26_arg0.alertStatusBar:setAlpha( 1 ) --[[ @ 0]]
				f26_arg0.alertStatusBar:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.alertStatusBar:registerEventHandler( "transition_complete_keyframe", f40_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.alertStatusBar:completeAnimation() --[[ @ 0]]
			f26_arg0.alertStatusBar:setAlpha( 0 ) --[[ @ 0]]
			f26_local5( f26_arg0.alertStatusBar ) --[[ @ 0]]
			local f26_local6 = function ( f43_arg0 )
				local f43_local0 = function ( f44_arg0 )
					f44_arg0:beginAnimation( 39 ) --[[ @ 0]]
					f44_arg0:setAlpha( 1 ) --[[ @ 0]]
					f44_arg0:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f26_arg0.buttons:beginAnimation( 200 ) --[[ @ 0]]
				f26_arg0.buttons:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.buttons:registerEventHandler( "transition_complete_keyframe", f43_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.buttons:completeAnimation() --[[ @ 0]]
			f26_arg0.buttons:setAlpha( 0 ) --[[ @ 0]]
			f26_local6( f26_arg0.buttons ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.systemOverlay_Compact_Layout.__onClose = function ( f45_arg0 )
	f45_arg0.frameWidget:close() --[[ @ 0]]
	f45_arg0.alertStatusBar2:close() --[[ @ 0]]
	f45_arg0.alertStatusBar:close() --[[ @ 0]]
	f45_arg0.buttons:close() --[[ @ 0]]
end
 --[[ @ 0]]
