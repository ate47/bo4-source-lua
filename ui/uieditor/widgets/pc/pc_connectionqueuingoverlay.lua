-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.PC_ConnectionQueuingOverlay = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_ConnectionQueuingOverlay.__defaultWidth = 1920 --[[ @ 0]]
CoD.PC_ConnectionQueuingOverlay.__defaultHeight = 285 --[[ @ 0]]
CoD.PC_ConnectionQueuingOverlay.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "PCConnectionQueue.ConnectionQueueRemainingtime" ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "PCConnectionQueue.ConnectionQueuePosition" ) --[[ @ 0]]
	SetControllerModelValue( f1_arg1, "PCConnectionQueue.ConnectionQueueRemainingtime", 0 ) --[[ @ 0]]
	SetControllerModelValue( f1_arg1, "PCConnectionQueue.ConnectionQueuePosition", 0 ) --[[ @ 0]]
	self:setClass( CoD.PC_ConnectionQueuingOverlay ) --[[ @ 0]]
	self.id = "PC_ConnectionQueuingOverlay" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0.1, 0.9, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.65 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local backing = LUI.UIImage.new( 0, 1, 0, 0, 0.1, 0.9, 0, 0 ) --[[ @ 0]]
	backing:setRGB( 0.08, 0.08, 0.08 ) --[[ @ 0]]
	backing:setAlpha( 0.7 ) --[[ @ 0]]
	self:addElement( backing ) --[[ @ 0]]
	self.backing = backing --[[ @ 0]]
	
	local BlackBarBGBtm = LUI.UIImage.new( 0, 1, 0, 0, 0.9, 0.9, 0, 20 ) --[[ @ 0]]
	BlackBarBGBtm:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackBarBGBtm:setAlpha( 0.85 ) --[[ @ 0]]
	self:addElement( BlackBarBGBtm ) --[[ @ 0]]
	self.BlackBarBGBtm = BlackBarBGBtm --[[ @ 0]]
	
	local BlackBarBGTop = LUI.UIImage.new( 0, 1, 0, 0, 0.1, 0.1, -20, 0 ) --[[ @ 0]]
	BlackBarBGTop:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackBarBGTop:setAlpha( 0.85 ) --[[ @ 0]]
	self:addElement( BlackBarBGTop ) --[[ @ 0]]
	self.BlackBarBGTop = BlackBarBGTop --[[ @ 0]]
	
	local TopBar = LUI.UIImage.new( 0, 1, 0, 0, 0.05, 0.05, 0, 8 ) --[[ @ 0]]
	TopBar:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	self:addElement( TopBar ) --[[ @ 0]]
	self.TopBar = TopBar --[[ @ 0]]
	
	local BottomBar = LUI.UIImage.new( 0, 1, 0, 0, 0.95, 0.95, -8, 0 ) --[[ @ 0]]
	BottomBar:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	BottomBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll_normal" ) ) --[[ @ 0]]
	BottomBar:setShaderVector( 0, 2, 1, 0, 0 ) --[[ @ 0]]
	BottomBar:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BottomBar ) --[[ @ 0]]
	self.BottomBar = BottomBar --[[ @ 0]]
	
	local Header = LUI.UIText.new( 0.5, 0.5, -324.5, 324.5, 0.2, 0.2, 0, 30 ) --[[ @ 0]]
	Header:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7C51866DCC22F69A" ) ) --[[ @ 0]]
	Header:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Header:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	Header:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Header:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Header ) --[[ @ 0]]
	self.Header = Header --[[ @ 0]]
	
	local QueuingText = LUI.UIText.new( 0.5, 0.5, -325, 325, 0.38, 0.38, 0, 18 ) --[[ @ 0]]
	QueuingText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	QueuingText:setLetterSpacing( 1 ) --[[ @ 0]]
	QueuingText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	QueuingText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	QueuingText.__String_Reference = function ( f2_arg0 )
		local f2_local0 = f2_arg0:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			QueuingText:setText( CoD.PCUtility.LocalizeConnectionQueueMessage( f1_arg1, f2_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	QueuingText:linkToElementModel( self, "ConnectionQueueRemainingtime", true, QueuingText.__String_Reference ) --[[ @ 0]]
	QueuingText.__String_Reference_FullPath = function ()
		local f3_local0 = self:getModel() --[[ @ 0]]
		if f3_local0 then
			f3_local0 = self:getModel() --[[ @ 0]]
			f3_local0 = f3_local0.ConnectionQueueRemainingtime --[[ @ 0]]
		end
		if f3_local0 then
			QueuingText.__String_Reference( f3_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( QueuingText ) --[[ @ 0]]
	self.QueuingText = QueuingText --[[ @ 0]]
	
	local f1_local9 = QueuingText --[[ @ 0]]
	local f1_local10 = QueuingText.subscribeToModel --[[ @ 0]]
	local f1_local11 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11["PCConnectionQueue.ConnectionQueueRemainingtime"], QueuingText.__String_Reference_FullPath ) --[[ @ 0]]
	f1_local9 = QueuingText --[[ @ 0]]
	f1_local10 = QueuingText.subscribeToModel --[[ @ 0]]
	f1_local11 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11["PCConnectionQueue.ConnectionQueuePosition"], QueuingText.__String_Reference_FullPath ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "PC",
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
CoD.PC_ConnectionQueuingOverlay.__resetProperties = function ( f5_arg0 )
	f5_arg0.backing:completeAnimation() --[[ @ 0]]
	f5_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
	f5_arg0.backing:setAlpha( 0.7 ) --[[ @ 0]]
	f5_arg0.NoiseTiledBacking:setAlpha( 0.65 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_ConnectionQueuingOverlay.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					local f8_local0 = function ( f9_arg0 )
						f9_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f9_arg0:setAlpha( 0.7 ) --[[ @ 0]]
						f9_arg0:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f8_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f8_arg0:setAlpha( 0 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0.NoiseTiledBacking:beginAnimation( 30 ) --[[ @ 0]]
				f6_arg0.NoiseTiledBacking:setAlpha( 0.7 ) --[[ @ 0]]
				f6_arg0.NoiseTiledBacking:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.NoiseTiledBacking:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f6_arg0.NoiseTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f6_local0( f6_arg0.NoiseTiledBacking ) --[[ @ 0]]
			local f6_local1 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						local f12_local0 = function ( f13_arg0 )
							f13_arg0:beginAnimation( 39 ) --[[ @ 0]]
							f13_arg0:setAlpha( 0.9 ) --[[ @ 0]]
							f13_arg0:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f12_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f11_arg0:setAlpha( 0 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0.backing:beginAnimation( 30 ) --[[ @ 0]]
				f6_arg0.backing:setAlpha( 0.7 ) --[[ @ 0]]
				f6_arg0.backing:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.backing:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.backing:completeAnimation() --[[ @ 0]]
			f6_arg0.backing:setAlpha( 0 ) --[[ @ 0]]
			f6_local1( f6_arg0.backing ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					local f16_local0 = function ( f17_arg0 )
						f17_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f17_arg0:setAlpha( 0.7 ) --[[ @ 0]]
						f17_arg0:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f16_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f16_arg0:setAlpha( 0 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f14_arg0.NoiseTiledBacking:beginAnimation( 30 ) --[[ @ 0]]
				f14_arg0.NoiseTiledBacking:setAlpha( 0.7 ) --[[ @ 0]]
				f14_arg0.NoiseTiledBacking:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.NoiseTiledBacking:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f14_arg0.NoiseTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f14_local0( f14_arg0.NoiseTiledBacking ) --[[ @ 0]]
			local f14_local1 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					local f19_local0 = function ( f20_arg0 )
						local f20_local0 = function ( f21_arg0 )
							f21_arg0:beginAnimation( 39 ) --[[ @ 0]]
							f21_arg0:setAlpha( 0.5 ) --[[ @ 0]]
							f21_arg0:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f20_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f19_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f19_arg0:setAlpha( 0 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f14_arg0.backing:beginAnimation( 30 ) --[[ @ 0]]
				f14_arg0.backing:setAlpha( 0.15 ) --[[ @ 0]]
				f14_arg0.backing:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.backing:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.backing:completeAnimation() --[[ @ 0]]
			f14_arg0.backing:setAlpha( 0 ) --[[ @ 0]]
			f14_local1( f14_arg0.backing ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PC_ConnectionQueuingOverlay.__onClose = function ( f22_arg0 )
	f22_arg0.QueuingText:close() --[[ @ 0]]
end
 --[[ @ 0]]
