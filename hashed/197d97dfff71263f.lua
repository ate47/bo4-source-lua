-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:2de9e451ea80d529" ) --[[ @ 0]]
require( "ui/uieditor/widgets/controllerdependent_textbox" ) --[[ @ 0]]

CoD.vhud_dart_button_all = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_dart_button_all.__defaultWidth = 1058 --[[ @ 0]]
CoD.vhud_dart_button_all.__defaultHeight = 287 --[[ @ 0]]
CoD.vhud_dart_button_all.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_dart_button_all ) --[[ @ 0]]
	self.id = "vhud_dart_button_all" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local buttonBacking05 = LUI.UIImage.new( 0, 0, 858, 1056, 0, 0, 186, 228 ) --[[ @ 0]]
	buttonBacking05:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_bg" ) ) --[[ @ 0]]
	self:addElement( buttonBacking05 ) --[[ @ 0]]
	self.buttonBacking05 = buttonBacking05 --[[ @ 0]]
	
	local buttonBacking01 = LUI.UIImage.new( 0, 0, 216, 414, 0, 0, 236.5, 278.5 ) --[[ @ 0]]
	buttonBacking01:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_bg" ) ) --[[ @ 0]]
	self:addElement( buttonBacking01 ) --[[ @ 0]]
	self.buttonBacking01 = buttonBacking01 --[[ @ 0]]
	
	local buttonBacking02 = LUI.UIImage.new( 0, 0, 645, 843, 0, 0, 236.5, 278.5 ) --[[ @ 0]]
	buttonBacking02:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_bg" ) ) --[[ @ 0]]
	self:addElement( buttonBacking02 ) --[[ @ 0]]
	self.buttonBacking02 = buttonBacking02 --[[ @ 0]]
	
	local buttonBacking04 = LUI.UIImage.new( 0, 0, 1, 199, 0, 0, 186, 228 ) --[[ @ 0]]
	buttonBacking04:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_bg" ) ) --[[ @ 0]]
	self:addElement( buttonBacking04 ) --[[ @ 0]]
	self.buttonBacking04 = buttonBacking04 --[[ @ 0]]
	
	local buttonFrame01 = LUI.UIImage.new( 0, 0, 216, 414, 0, 0, 235, 287 ) --[[ @ 0]]
	buttonFrame01:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_container" ) ) --[[ @ 0]]
	buttonFrame01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	buttonFrame01:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( buttonFrame01 ) --[[ @ 0]]
	self.buttonFrame01 = buttonFrame01 --[[ @ 0]]
	
	local buttonFrame02 = LUI.UIImage.new( 0, 0, 645, 843, 0, 0, 235, 287 ) --[[ @ 0]]
	buttonFrame02:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_container" ) ) --[[ @ 0]]
	buttonFrame02:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	buttonFrame02:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( buttonFrame02 ) --[[ @ 0]]
	self.buttonFrame02 = buttonFrame02 --[[ @ 0]]
	
	local buttonEmpty01 = LUI.UIImage.new( 0, 0, 429, 629, 0, 0, 235.5, 279.5 ) --[[ @ 0]]
	buttonEmpty01:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_other" ) ) --[[ @ 0]]
	buttonEmpty01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	buttonEmpty01:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( buttonEmpty01 ) --[[ @ 0]]
	self.buttonEmpty01 = buttonEmpty01 --[[ @ 0]]
	
	local buttonLinks = LUI.UIImage.new( 0, 0, 312, 746, 0, 0, 0, 220 ) --[[ @ 0]]
	buttonLinks:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_link" ) ) --[[ @ 0]]
	buttonLinks:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	buttonLinks:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( buttonLinks ) --[[ @ 0]]
	self.buttonLinks = buttonLinks --[[ @ 0]]
	
	local buttonFrame04 = LUI.UIImage.new( 0, 0, 1, 199, 0, 0, 184.5, 236.5 ) --[[ @ 0]]
	buttonFrame04:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_container" ) ) --[[ @ 0]]
	buttonFrame04:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	buttonFrame04:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( buttonFrame04 ) --[[ @ 0]]
	self.buttonFrame04 = buttonFrame04 --[[ @ 0]]
	
	local buttonFrame05 = LUI.UIImage.new( 0, 0, 858, 1056, 0, 0, 184.5, 236.5 ) --[[ @ 0]]
	buttonFrame05:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_container" ) ) --[[ @ 0]]
	buttonFrame05:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	buttonFrame05:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( buttonFrame05 ) --[[ @ 0]]
	self.buttonFrame05 = buttonFrame05 --[[ @ 0]]
	
	local Left02Btn = CoD.VehicleButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 1, 201, 0, 0, 183, 231 ) --[[ @ 0]]
	Left02Btn:linkToElementModel( self, "bindings.LEFT_0", false, function ( model )
		Left02Btn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Left02Btn ) --[[ @ 0]]
	self.Left02Btn = Left02Btn --[[ @ 0]]
	
	local Right01Btn = CoD.VehicleButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 645, 845, 0, 0, 233.5, 281.5 ) --[[ @ 0]]
	Right01Btn:linkToElementModel( self, "bindings.LEFT_1", false, function ( model )
		Right01Btn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Right01Btn ) --[[ @ 0]]
	self.Right01Btn = Right01Btn --[[ @ 0]]
	
	local Right02Btn = CoD.VehicleButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 858, 1058, 0, 0, 183, 231 ) --[[ @ 0]]
	Right02Btn:linkToElementModel( self, "bindings.LEFT_2", false, function ( model )
		Right02Btn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Right02Btn ) --[[ @ 0]]
	self.Right02Btn = Right02Btn --[[ @ 0]]
	
	local Left01Btn = CoD.VehicleButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 216, 416, 0, 0, 233.5, 281.5 ) --[[ @ 0]]
	Left01Btn:linkToElementModel( self, "bindings.LEFT_3", false, function ( model )
		Left01Btn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Left01Btn ) --[[ @ 0]]
	self.Left01Btn = Left01Btn --[[ @ 0]]
	
	local CenterBtn = CoD.VehicleButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 430, 630, 0, 0, 233.5, 281.5 ) --[[ @ 0]]
	CenterBtn:setAlpha( 0 ) --[[ @ 0]]
	CenterBtn:linkToElementModel( self, "bindings.LEFT_4", false, function ( model )
		CenterBtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CenterBtn ) --[[ @ 0]]
	self.CenterBtn = CenterBtn --[[ @ 0]]
	
	local KBMCycleActionName = nil --[[ @ 0]]
	
	KBMCycleActionName = LUI.UIText.new( 0, 0, 4, 196, 0, 0, 199, 215 ) --[[ @ 0]]
	KBMCycleActionName:setAlpha( 0 ) --[[ @ 0]]
	KBMCycleActionName:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5627DEC5036BC76C" ) ) --[[ @ 0]]
	KBMCycleActionName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	KBMCycleActionName:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2AE166D9BA8C6907" ) ) --[[ @ 0]]
	KBMCycleActionName:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	KBMCycleActionName:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	KBMCycleActionName:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	KBMCycleActionName:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	KBMCycleActionName:setLetterSpacing( 0.5 ) --[[ @ 0]]
	KBMCycleActionName:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	KBMCycleActionName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( KBMCycleActionName ) --[[ @ 0]]
	self.KBMCycleActionName = KBMCycleActionName --[[ @ 0]]
	
	local KBMCyclePrompt = nil --[[ @ 0]]
	
	KBMCyclePrompt = CoD.ControllerDependent_TextBox.new( f1_arg0, f1_arg1, 0.5, 0.5, -472.5, -383.5, 1, 1, -123, -101 ) --[[ @ 0]]
	KBMCyclePrompt:setAlpha( 0 ) --[[ @ 0]]
	KBMCyclePrompt.KBMText:setText( CoD.BaseUtility.AlreadyLocalized( "[{+attack}]" ) ) --[[ @ 0]]
	KBMCyclePrompt.GamepadText:setText( "" ) --[[ @ 0]]
	self:addElement( KBMCyclePrompt ) --[[ @ 0]]
	self.KBMCyclePrompt = KBMCyclePrompt --[[ @ 0]]
	
	local TextBox = nil --[[ @ 0]]
	
	TextBox = LUI.UIText.new( 0, 0, 219, 411, 0, 0, 249.5, 265.5 ) --[[ @ 0]]
	TextBox:setAlpha( 0 ) --[[ @ 0]]
	TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_79D336E3DD657B0A" ) ) --[[ @ 0]]
	TextBox:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TextBox:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2AE166D9BA8C6907" ) ) --[[ @ 0]]
	TextBox:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TextBox:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	TextBox:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	TextBox:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	TextBox:setLetterSpacing( 0.5 ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TextBox ) --[[ @ 0]]
	self.TextBox = TextBox --[[ @ 0]]
	
	local ControllerDependentTextBox = nil --[[ @ 0]]
	
	ControllerDependentTextBox = CoD.ControllerDependent_TextBox.new( f1_arg0, f1_arg1, 0.5, 0.5, -257.5, -168.5, 1, 1, -72.5, -50.5 ) --[[ @ 0]]
	ControllerDependentTextBox:setAlpha( 0 ) --[[ @ 0]]
	ControllerDependentTextBox.KBMText:setText( CoD.BaseUtility.AlreadyLocalized( "[{+vehicleboost}]" ) ) --[[ @ 0]]
	ControllerDependentTextBox.GamepadText:setText( "" ) --[[ @ 0]]
	self:addElement( ControllerDependentTextBox ) --[[ @ 0]]
	self.ControllerDependentTextBox = ControllerDependentTextBox --[[ @ 0]]
	
	local TextBox2 = nil --[[ @ 0]]
	
	TextBox2 = LUI.UIText.new( 0, 0, 649, 841, 0, 0, 249.5, 265.5 ) --[[ @ 0]]
	TextBox2:setAlpha( 0 ) --[[ @ 0]]
	TextBox2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_B1A03F2448A49D9" ) ) --[[ @ 0]]
	TextBox2:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TextBox2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2AE166D9BA8C6907" ) ) --[[ @ 0]]
	TextBox2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TextBox2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	TextBox2:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	TextBox2:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	TextBox2:setLetterSpacing( 0.5 ) --[[ @ 0]]
	TextBox2:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TextBox2:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TextBox2 ) --[[ @ 0]]
	self.TextBox2 = TextBox2 --[[ @ 0]]
	
	local ControllerDependentTextBox2 = nil --[[ @ 0]]
	
	ControllerDependentTextBox2 = CoD.ControllerDependent_TextBox.new( f1_arg0, f1_arg1, 0.5, 0.5, 172.5, 261.5, 1, 1, -72.5, -50.5 ) --[[ @ 0]]
	ControllerDependentTextBox2:setAlpha( 0 ) --[[ @ 0]]
	ControllerDependentTextBox2.KBMText:setText( CoD.BaseUtility.AlreadyLocalized( "[{+speed_throw}]" ) ) --[[ @ 0]]
	ControllerDependentTextBox2.GamepadText:setText( "" ) --[[ @ 0]]
	self:addElement( ControllerDependentTextBox2 ) --[[ @ 0]]
	self.ControllerDependentTextBox2 = ControllerDependentTextBox2 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and not IsGamepad( f1_arg1 )
			end
		},
		{
			stateName = "HiddenCodCaster",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f9_arg0, f9_arg1 )
		f9_arg1.menu = f9_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f9_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local22 = self --[[ @ 0]]
	local f1_local23 = self.subscribeToModel --[[ @ 0]]
	local f1_local24 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24.LastInput, function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_dart_button_all.__resetProperties = function ( f11_arg0 )
	f11_arg0.KBMCycleActionName:completeAnimation() --[[ @ 0]]
	f11_arg0.KBMCyclePrompt:completeAnimation() --[[ @ 0]]
	f11_arg0.Left02Btn:completeAnimation() --[[ @ 0]]
	f11_arg0.Left01Btn:completeAnimation() --[[ @ 0]]
	f11_arg0.buttonEmpty01:completeAnimation() --[[ @ 0]]
	f11_arg0.buttonFrame01:completeAnimation() --[[ @ 0]]
	f11_arg0.buttonBacking01:completeAnimation() --[[ @ 0]]
	f11_arg0.ControllerDependentTextBox:completeAnimation() --[[ @ 0]]
	f11_arg0.TextBox:completeAnimation() --[[ @ 0]]
	f11_arg0.TextBox2:completeAnimation() --[[ @ 0]]
	f11_arg0.ControllerDependentTextBox2:completeAnimation() --[[ @ 0]]
	f11_arg0.Right02Btn:completeAnimation() --[[ @ 0]]
	f11_arg0.Right01Btn:completeAnimation() --[[ @ 0]]
	f11_arg0.buttonFrame02:completeAnimation() --[[ @ 0]]
	f11_arg0.buttonBacking02:completeAnimation() --[[ @ 0]]
	f11_arg0.CenterBtn:completeAnimation() --[[ @ 0]]
	f11_arg0.buttonFrame05:completeAnimation() --[[ @ 0]]
	f11_arg0.buttonFrame04:completeAnimation() --[[ @ 0]]
	f11_arg0.buttonBacking04:completeAnimation() --[[ @ 0]]
	f11_arg0.buttonBacking05:completeAnimation() --[[ @ 0]]
	f11_arg0.KBMCycleActionName:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.KBMCyclePrompt:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.Left02Btn:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.Left01Btn:setLeftRight( 0, 0, 216, 416 ) --[[ @ 0]]
	f11_arg0.Left01Btn:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.buttonEmpty01:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.buttonFrame01:setLeftRight( 0, 0, 216, 414 ) --[[ @ 0]]
	f11_arg0.buttonFrame01:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.buttonBacking01:setLeftRight( 0, 0, 216, 414 ) --[[ @ 0]]
	f11_arg0.buttonBacking01:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.ControllerDependentTextBox:setLeftRight( 0.5, 0.5, -257.5, -168.5 ) --[[ @ 0]]
	f11_arg0.ControllerDependentTextBox:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.TextBox:setLeftRight( 0, 0, 219, 411 ) --[[ @ 0]]
	f11_arg0.TextBox:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.TextBox2:setLeftRight( 0, 0, 649, 841 ) --[[ @ 0]]
	f11_arg0.TextBox2:setTopBottom( 0, 0, 249.5, 265.5 ) --[[ @ 0]]
	f11_arg0.TextBox2:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.ControllerDependentTextBox2:setLeftRight( 0.5, 0.5, 172.5, 261.5 ) --[[ @ 0]]
	f11_arg0.ControllerDependentTextBox2:setTopBottom( 1, 1, -72.5, -50.5 ) --[[ @ 0]]
	f11_arg0.ControllerDependentTextBox2:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.Right02Btn:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.Right01Btn:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.buttonFrame02:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.buttonBacking02:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.CenterBtn:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.buttonFrame05:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.buttonFrame04:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.buttonBacking04:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.buttonBacking05:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vhud_dart_button_all.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	KBM = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 15 ) --[[ @ 0]]
			f13_arg0.buttonBacking01:completeAnimation() --[[ @ 0]]
			f13_arg0.buttonBacking01:setLeftRight( 0, 0, 429, 627 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.buttonBacking01 ) --[[ @ 0]]
			f13_arg0.buttonBacking02:completeAnimation() --[[ @ 0]]
			f13_arg0.buttonBacking02:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.buttonBacking02 ) --[[ @ 0]]
			f13_arg0.buttonFrame01:completeAnimation() --[[ @ 0]]
			f13_arg0.buttonFrame01:setLeftRight( 0, 0, 429, 627 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.buttonFrame01 ) --[[ @ 0]]
			f13_arg0.buttonFrame02:completeAnimation() --[[ @ 0]]
			f13_arg0.buttonFrame02:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.buttonFrame02 ) --[[ @ 0]]
			f13_arg0.buttonEmpty01:completeAnimation() --[[ @ 0]]
			f13_arg0.buttonEmpty01:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.buttonEmpty01 ) --[[ @ 0]]
			f13_arg0.Left02Btn:completeAnimation() --[[ @ 0]]
			f13_arg0.Left02Btn:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Left02Btn ) --[[ @ 0]]
			f13_arg0.Right01Btn:completeAnimation() --[[ @ 0]]
			f13_arg0.Right01Btn:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Right01Btn ) --[[ @ 0]]
			f13_arg0.Right02Btn:completeAnimation() --[[ @ 0]]
			f13_arg0.Right02Btn:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Right02Btn ) --[[ @ 0]]
			f13_arg0.Left01Btn:completeAnimation() --[[ @ 0]]
			f13_arg0.Left01Btn:setLeftRight( 0, 0, 429, 629 ) --[[ @ 0]]
			f13_arg0.Left01Btn:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Left01Btn ) --[[ @ 0]]
			f13_arg0.KBMCycleActionName:completeAnimation() --[[ @ 0]]
			f13_arg0.KBMCycleActionName:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.KBMCycleActionName ) --[[ @ 0]]
			f13_arg0.KBMCyclePrompt:completeAnimation() --[[ @ 0]]
			f13_arg0.KBMCyclePrompt:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.KBMCyclePrompt ) --[[ @ 0]]
			f13_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f13_arg0.TextBox:setLeftRight( 0, 0, 433, 625 ) --[[ @ 0]]
			f13_arg0.TextBox:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.TextBox ) --[[ @ 0]]
			f13_arg0.ControllerDependentTextBox:completeAnimation() --[[ @ 0]]
			f13_arg0.ControllerDependentTextBox:setLeftRight( 0.5, 0.5, -43.5, 45.5 ) --[[ @ 0]]
			f13_arg0.ControllerDependentTextBox:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ControllerDependentTextBox ) --[[ @ 0]]
			f13_arg0.TextBox2:completeAnimation() --[[ @ 0]]
			f13_arg0.TextBox2:setLeftRight( 0, 0, 862, 1054 ) --[[ @ 0]]
			f13_arg0.TextBox2:setTopBottom( 0, 0, 197.5, 213.5 ) --[[ @ 0]]
			f13_arg0.TextBox2:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.TextBox2 ) --[[ @ 0]]
			f13_arg0.ControllerDependentTextBox2:completeAnimation() --[[ @ 0]]
			f13_arg0.ControllerDependentTextBox2:setLeftRight( 0.5, 0.5, 385.5, 474.5 ) --[[ @ 0]]
			f13_arg0.ControllerDependentTextBox2:setTopBottom( 1, 1, -124.5, -102.5 ) --[[ @ 0]]
			f13_arg0.ControllerDependentTextBox2:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ControllerDependentTextBox2 ) --[[ @ 0]]
		end
	},
	HiddenCodCaster = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 20 ) --[[ @ 0]]
			f14_arg0.buttonBacking05:completeAnimation() --[[ @ 0]]
			f14_arg0.buttonBacking05:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.buttonBacking05 ) --[[ @ 0]]
			f14_arg0.buttonBacking01:completeAnimation() --[[ @ 0]]
			f14_arg0.buttonBacking01:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.buttonBacking01 ) --[[ @ 0]]
			f14_arg0.buttonBacking02:completeAnimation() --[[ @ 0]]
			f14_arg0.buttonBacking02:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.buttonBacking02 ) --[[ @ 0]]
			f14_arg0.buttonBacking04:completeAnimation() --[[ @ 0]]
			f14_arg0.buttonBacking04:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.buttonBacking04 ) --[[ @ 0]]
			f14_arg0.buttonFrame01:completeAnimation() --[[ @ 0]]
			f14_arg0.buttonFrame01:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.buttonFrame01 ) --[[ @ 0]]
			f14_arg0.buttonFrame02:completeAnimation() --[[ @ 0]]
			f14_arg0.buttonFrame02:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.buttonFrame02 ) --[[ @ 0]]
			f14_arg0.buttonEmpty01:completeAnimation() --[[ @ 0]]
			f14_arg0.buttonEmpty01:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.buttonEmpty01 ) --[[ @ 0]]
			f14_arg0.buttonFrame04:completeAnimation() --[[ @ 0]]
			f14_arg0.buttonFrame04:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.buttonFrame04 ) --[[ @ 0]]
			f14_arg0.buttonFrame05:completeAnimation() --[[ @ 0]]
			f14_arg0.buttonFrame05:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.buttonFrame05 ) --[[ @ 0]]
			f14_arg0.Left02Btn:completeAnimation() --[[ @ 0]]
			f14_arg0.Left02Btn:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Left02Btn ) --[[ @ 0]]
			f14_arg0.Right01Btn:completeAnimation() --[[ @ 0]]
			f14_arg0.Right01Btn:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Right01Btn ) --[[ @ 0]]
			f14_arg0.Right02Btn:completeAnimation() --[[ @ 0]]
			f14_arg0.Right02Btn:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Right02Btn ) --[[ @ 0]]
			f14_arg0.Left01Btn:completeAnimation() --[[ @ 0]]
			f14_arg0.Left01Btn:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Left01Btn ) --[[ @ 0]]
			f14_arg0.CenterBtn:completeAnimation() --[[ @ 0]]
			f14_arg0.CenterBtn:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.CenterBtn ) --[[ @ 0]]
			f14_arg0.KBMCycleActionName:completeAnimation() --[[ @ 0]]
			f14_arg0.KBMCycleActionName:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.KBMCycleActionName ) --[[ @ 0]]
			f14_arg0.KBMCyclePrompt:completeAnimation() --[[ @ 0]]
			f14_arg0.KBMCyclePrompt:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.KBMCyclePrompt ) --[[ @ 0]]
			f14_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f14_arg0.TextBox:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.TextBox ) --[[ @ 0]]
			f14_arg0.ControllerDependentTextBox:completeAnimation() --[[ @ 0]]
			f14_arg0.ControllerDependentTextBox:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ControllerDependentTextBox ) --[[ @ 0]]
			f14_arg0.TextBox2:completeAnimation() --[[ @ 0]]
			f14_arg0.TextBox2:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.TextBox2 ) --[[ @ 0]]
			f14_arg0.ControllerDependentTextBox2:completeAnimation() --[[ @ 0]]
			f14_arg0.ControllerDependentTextBox2:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ControllerDependentTextBox2 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.vhud_dart_button_all.__onClose = function ( f15_arg0 )
	f15_arg0.Left02Btn:close() --[[ @ 0]]
	f15_arg0.Right01Btn:close() --[[ @ 0]]
	f15_arg0.Right02Btn:close() --[[ @ 0]]
	f15_arg0.Left01Btn:close() --[[ @ 0]]
	f15_arg0.CenterBtn:close() --[[ @ 0]]
	f15_arg0.KBMCyclePrompt:close() --[[ @ 0]]
	f15_arg0.ControllerDependentTextBox:close() --[[ @ 0]]
	f15_arg0.ControllerDependentTextBox2:close() --[[ @ 0]]
end
 --[[ @ 0]]
