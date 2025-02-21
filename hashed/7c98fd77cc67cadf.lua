-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/craft/emblemeditor/emblemeditorbuttonprompt" ) --[[ @ 0]]
require( "ui/uieditor/widgets/craft/paintshop/paintshopbuttonprompt" ) --[[ @ 0]]
require( "ui/uieditor/widgets/craft/paintshop/paintshopchooseside" ) --[[ @ 0]]

CoD.EmblemEditorColorControls = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.EmblemEditorColorControls.__defaultWidth = 420 --[[ @ 0]]
CoD.EmblemEditorColorControls.__defaultHeight = 202 --[[ @ 0]]
CoD.EmblemEditorColorControls.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.EmblemEditorColorControls ) --[[ @ 0]]
	self.id = "EmblemEditorColorControls" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setAlpha( 0.5 ) --[[ @ 0]]
	Backing:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	Backing:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local NoiseTiledBackingAdd = LUI.UIImage.new( 0, 0, 0, 420, 0, 0, 0, 32 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setAlpha( 0.2 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBackingAdd ) --[[ @ 0]]
	self.NoiseTiledBackingAdd = NoiseTiledBackingAdd --[[ @ 0]]
	
	local Frame = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	Frame:setAlpha( 0.2 ) --[[ @ 0]]
	Frame:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	Frame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	Frame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Frame:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	local rsOpacity = CoD.EmblemEditorButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 40, 76, 0, 0, 84, 120 ) --[[ @ 0]]
	rsOpacity.label:setText( "" ) --[[ @ 0]]
	rsOpacity:subscribeToGlobalModel( f1_arg1, "Controller", "right_shoulder_button_image", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			rsOpacity.buttonPromptImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( rsOpacity ) --[[ @ 0]]
	self.rsOpacity = rsOpacity --[[ @ 0]]
	
	local lsOpacity = CoD.EmblemEditorButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 3, 39, 0, 0, 84, 120 ) --[[ @ 0]]
	lsOpacity.label:setText( "" ) --[[ @ 0]]
	lsOpacity:subscribeToGlobalModel( f1_arg1, "Controller", "left_shoulder_button_image", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			lsOpacity.buttonPromptImage:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( lsOpacity ) --[[ @ 0]]
	self.lsOpacity = lsOpacity --[[ @ 0]]
	
	local opacityText = LUI.UIText.new( 1, 1, -339, -119, 0, 0, 89, 113 ) --[[ @ 0]]
	opacityText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6611006D6269F87D" ) ) --[[ @ 0]]
	opacityText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	opacityText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	opacityText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( opacityText ) --[[ @ 0]]
	self.opacityText = opacityText --[[ @ 0]]
	
	local ChangeColor = CoD.PaintshopButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 20, 420, 0, 0, 45, 91 ) --[[ @ 0]]
	ChangeColor.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5D9555D6F5A195F2" ) ) --[[ @ 0]]
	ChangeColor:subscribeToGlobalModel( f1_arg1, "Controller", "move_left_stick_button_image", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			ChangeColor.buttonPromptImage:setImage( RegisterImage( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ChangeColor ) --[[ @ 0]]
	self.ChangeColor = ChangeColor --[[ @ 0]]
	
	local rotateText = LUI.UIText.new( 1, 1, -339, -119, 0, 0, 166, 191 ) --[[ @ 0]]
	rotateText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_79327C6CD586A2F6" ) ) --[[ @ 0]]
	rotateText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	rotateText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	rotateText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( rotateText ) --[[ @ 0]]
	self.rotateText = rotateText --[[ @ 0]]
	
	local rightTriggerButton = CoD.EmblemEditorButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 41, 75, 0, 0, 162, 208 ) --[[ @ 0]]
	rightTriggerButton.label:setText( "" ) --[[ @ 0]]
	rightTriggerButton:subscribeToGlobalModel( f1_arg1, "Controller", "right_trigger_button_image", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			rightTriggerButton.buttonPromptImage:setImage( RegisterImage( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( rightTriggerButton ) --[[ @ 0]]
	self.rightTriggerButton = rightTriggerButton --[[ @ 0]]
	
	local leftTriggerButton = CoD.EmblemEditorButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 2, 38, 0, 0, 162, 208 ) --[[ @ 0]]
	leftTriggerButton.label:setText( "" ) --[[ @ 0]]
	leftTriggerButton:subscribeToGlobalModel( f1_arg1, "Controller", "left_trigger_button_image", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			leftTriggerButton.buttonPromptImage:setImage( RegisterImage( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( leftTriggerButton ) --[[ @ 0]]
	self.leftTriggerButton = leftTriggerButton --[[ @ 0]]
	
	local ToggleOutline = CoD.PaintshopButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 20, 420, 0, 0, 123, 169 ) --[[ @ 0]]
	ToggleOutline.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_40219D9DA319169B" ) ) --[[ @ 0]]
	ToggleOutline:subscribeToGlobalModel( f1_arg1, "Controller", "alt1_button_image", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			ToggleOutline.buttonPromptImage:setImage( RegisterImage( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ToggleOutline ) --[[ @ 0]]
	self.ToggleOutline = ToggleOutline --[[ @ 0]]
	
	local PaintshopChooseSide = CoD.PaintshopChooseSide.new( f1_arg0, f1_arg1, 0, 0, 6, 426, 0, 0, 3.5, 35.5 ) --[[ @ 0]]
	PaintshopChooseSide:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	PaintshopChooseSide.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7E6011EEF766C653" ) ) --[[ @ 0]]
	self:addElement( PaintshopChooseSide ) --[[ @ 0]]
	self.PaintshopChooseSide = PaintshopChooseSide --[[ @ 0]]
	
	local dividerH = LUI.UIImage.new( 0, 0, 0, 420, 0, 0, 30.5, 34.5 ) --[[ @ 0]]
	dividerH:setAlpha( 0.2 ) --[[ @ 0]]
	dividerH:setImage( RegisterImage( @"hash_484B43D5B04D263A" ) ) --[[ @ 0]]
	dividerH:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	dividerH:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	dividerH:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( dividerH ) --[[ @ 0]]
	self.dividerH = dividerH --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.EmblemEditorColorControls.__resetProperties = function ( f8_arg0 )
	f8_arg0.leftTriggerButton:completeAnimation() --[[ @ 0]]
	f8_arg0.rightTriggerButton:completeAnimation() --[[ @ 0]]
	f8_arg0.rotateText:completeAnimation() --[[ @ 0]]
	f8_arg0.ToggleOutline:completeAnimation() --[[ @ 0]]
	f8_arg0.lsOpacity:completeAnimation() --[[ @ 0]]
	f8_arg0.rsOpacity:completeAnimation() --[[ @ 0]]
	f8_arg0.opacityText:completeAnimation() --[[ @ 0]]
	f8_arg0.leftTriggerButton:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.rightTriggerButton:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.rotateText:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.ToggleOutline.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_40219D9DA319169B" ) ) --[[ @ 0]]
	f8_arg0.lsOpacity:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.rsOpacity:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.opacityText:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.EmblemEditorColorControls.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Gradient = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f10_arg0.rotateText:completeAnimation() --[[ @ 0]]
			f10_arg0.rotateText:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.rotateText ) --[[ @ 0]]
			f10_arg0.rightTriggerButton:completeAnimation() --[[ @ 0]]
			f10_arg0.rightTriggerButton:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.rightTriggerButton ) --[[ @ 0]]
			f10_arg0.leftTriggerButton:completeAnimation() --[[ @ 0]]
			f10_arg0.leftTriggerButton:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.leftTriggerButton ) --[[ @ 0]]
		end
	},
	Solid = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.ToggleOutline:completeAnimation() --[[ @ 0]]
			f11_arg0.ToggleOutline.label:completeAnimation() --[[ @ 0]]
			f11_arg0.ToggleOutline.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4F3962C42FF92592" ) ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.ToggleOutline ) --[[ @ 0]]
		end
	},
	NoColor = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f12_arg0.rsOpacity:completeAnimation() --[[ @ 0]]
			f12_arg0.rsOpacity:setAlpha( 0.2 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.rsOpacity ) --[[ @ 0]]
			f12_arg0.lsOpacity:completeAnimation() --[[ @ 0]]
			f12_arg0.lsOpacity:setAlpha( 0.2 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.lsOpacity ) --[[ @ 0]]
			f12_arg0.opacityText:completeAnimation() --[[ @ 0]]
			f12_arg0.opacityText:setAlpha( 0.2 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.opacityText ) --[[ @ 0]]
			f12_arg0.ToggleOutline:completeAnimation() --[[ @ 0]]
			f12_arg0.ToggleOutline.label:completeAnimation() --[[ @ 0]]
			f12_arg0.ToggleOutline.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4F3962C42FF92592" ) ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.ToggleOutline ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.EmblemEditorColorControls.__onClose = function ( f13_arg0 )
	f13_arg0.rsOpacity:close() --[[ @ 0]]
	f13_arg0.lsOpacity:close() --[[ @ 0]]
	f13_arg0.ChangeColor:close() --[[ @ 0]]
	f13_arg0.rightTriggerButton:close() --[[ @ 0]]
	f13_arg0.leftTriggerButton:close() --[[ @ 0]]
	f13_arg0.ToggleOutline:close() --[[ @ 0]]
	f13_arg0.PaintshopChooseSide:close() --[[ @ 0]]
end
 --[[ @ 0]]
