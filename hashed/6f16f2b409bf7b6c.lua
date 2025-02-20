-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "ui/uieditor/widgets/border" ) --[[ @ 0]]
require( "ui/uieditor/widgets/social/joinbuttonprompt" ) --[[ @ 0]]

CoD.HubShowcaseCheckbox = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HubShowcaseCheckbox.__defaultWidth = 38 --[[ @ 0]]
CoD.HubShowcaseCheckbox.__defaultHeight = 39 --[[ @ 0]]
CoD.HubShowcaseCheckbox.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HubShowcaseCheckbox ) --[[ @ 0]]
	self.id = "HubShowcaseCheckbox" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Border = CoD.Border.new( f1_arg0, f1_arg1, 0, 0, 0, 36, 0, 0, 0, 36 ) --[[ @ 0]]
	self:addElement( Border ) --[[ @ 0]]
	self.Border = Border --[[ @ 0]]
	
	local BorderAdd = CoD.Border.new( f1_arg0, f1_arg1, 0, 0, 0, 36, 0, 0, 0, 36 ) --[[ @ 0]]
	self:addElement( BorderAdd ) --[[ @ 0]]
	self.BorderAdd = BorderAdd --[[ @ 0]]
	
	local label = LUI.UIText.new( 0, 0, 98, 245, 0, 0, 5.5, 31.5 ) --[[ @ 0]]
	label:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	label:setAlpha( 0.5 ) --[[ @ 0]]
	label:setText( "" ) --[[ @ 0]]
	label:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	label:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( label ) --[[ @ 0]]
	self.label = label --[[ @ 0]]
	
	local Empty = LUI.UIImage.new( 0, 0, -5, 43, 0, 0, -6, 42 ) --[[ @ 0]]
	Empty:setScale( 0.67, 0.67 ) --[[ @ 0]]
	Empty:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_selectbox_empty" ) ) --[[ @ 0]]
	Empty:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Empty ) --[[ @ 0]]
	self.Empty = Empty --[[ @ 0]]
	
	local dashBacking = LUI.UIImage.new( 0, 0, 3, 35, 0, 0, 2.5, 34.5 ) --[[ @ 0]]
	dashBacking:setScale( 1.5, 1.5 ) --[[ @ 0]]
	dashBacking:setImage( RegisterImage( @"uie_ui_menu_cac_allocation_pip_empty" ) ) --[[ @ 0]]
	self:addElement( dashBacking ) --[[ @ 0]]
	self.dashBacking = dashBacking --[[ @ 0]]
	
	local dash = LUI.UIImage.new( 0, 0, 3, 35, 0, 0, 2.5, 34.5 ) --[[ @ 0]]
	dash:setScale( 1.5, 1.5 ) --[[ @ 0]]
	dash:setImage( RegisterImage( @"uie_ui_menu_cac_allocation_pip_full" ) ) --[[ @ 0]]
	self:addElement( dash ) --[[ @ 0]]
	self.dash = dash --[[ @ 0]]
	
	local Glow = LUI.UIImage.new( 0, 0, -1.5, 40.5, 0, 0, -17.5, 55.5 ) --[[ @ 0]]
	Glow:setRGB( 0.88, 0.8, 0.45 ) --[[ @ 0]]
	Glow:setAlpha( 0 ) --[[ @ 0]]
	Glow:setImage( RegisterImage( @"uie_t7_menu_cac_glow" ) ) --[[ @ 0]]
	Glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Glow ) --[[ @ 0]]
	self.Glow = Glow --[[ @ 0]]
	
	local CornerDots = LUI.UIImage.new( 0, 0, 3, 35, 0, 0, 2.5, 34.5 ) --[[ @ 0]]
	CornerDots:setScale( 1.5, 1.5 ) --[[ @ 0]]
	CornerDots:setImage( RegisterImage( @"uie_ui_menu_cac_allocation_pip_dots" ) ) --[[ @ 0]]
	self:addElement( CornerDots ) --[[ @ 0]]
	self.CornerDots = CornerDots --[[ @ 0]]
	
	local CursorOver = LUI.UIImage.new( 0, 0, -3, 41, 0, 0, -3.5, 40.5 ) --[[ @ 0]]
	CursorOver:setAlpha( 0 ) --[[ @ 0]]
	CursorOver:setImage( RegisterImage( @"uie_ui_menu_cac_allocation_pip_over" ) ) --[[ @ 0]]
	self:addElement( CursorOver ) --[[ @ 0]]
	self.CursorOver = CursorOver --[[ @ 0]]
	
	local squarePrompt = CoD.JoinButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 47, 86, 0, 0, 0, 39 ) --[[ @ 0]]
	squarePrompt.KMprompt:setText( CoD.BaseUtility.AlreadyLocalized( "C" ) ) --[[ @ 0]]
	squarePrompt:subscribeToGlobalModel( f1_arg1, "Controller", "alt1_button_image", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			squarePrompt.GpadButtonImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( squarePrompt ) --[[ @ 0]]
	self.squarePrompt = squarePrompt --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return true
			end
		},
		{
			stateName = "PCHidden",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "Checked",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f6_arg0, f6_arg1 )
		f6_arg1.menu = f6_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f6_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local11 = self --[[ @ 0]]
	local f1_local12 = self.subscribeToModel --[[ @ 0]]
	local f1_local13 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local12( f1_local11, f1_local13.LastInput, function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
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
CoD.HubShowcaseCheckbox.__resetProperties = function ( f8_arg0 )
	f8_arg0.CornerDots:completeAnimation() --[[ @ 0]]
	f8_arg0.dash:completeAnimation() --[[ @ 0]]
	f8_arg0.dashBacking:completeAnimation() --[[ @ 0]]
	f8_arg0.Glow:completeAnimation() --[[ @ 0]]
	f8_arg0.BorderAdd:completeAnimation() --[[ @ 0]]
	f8_arg0.Border:completeAnimation() --[[ @ 0]]
	f8_arg0.label:completeAnimation() --[[ @ 0]]
	f8_arg0.Empty:completeAnimation() --[[ @ 0]]
	f8_arg0.CursorOver:completeAnimation() --[[ @ 0]]
	f8_arg0.squarePrompt:completeAnimation() --[[ @ 0]]
	f8_arg0.CornerDots:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.dash:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.dashBacking:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
	f8_arg0.BorderAdd:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.Border:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.label:setAlpha( 0.5 ) --[[ @ 0]]
	f8_arg0.Empty:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.CursorOver:setAlpha( 0 ) --[[ @ 0]]
	f8_arg0.squarePrompt:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.HubShowcaseCheckbox.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f9_arg0.dashBacking:completeAnimation() --[[ @ 0]]
			f9_arg0.dashBacking:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.dashBacking ) --[[ @ 0]]
			f9_arg0.dash:completeAnimation() --[[ @ 0]]
			f9_arg0.dash:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.dash ) --[[ @ 0]]
			f9_arg0.Glow:completeAnimation() --[[ @ 0]]
			f9_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Glow ) --[[ @ 0]]
			f9_arg0.CornerDots:completeAnimation() --[[ @ 0]]
			f9_arg0.CornerDots:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.CornerDots ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 10 ) --[[ @ 0]]
			f10_arg0.Border:completeAnimation() --[[ @ 0]]
			f10_arg0.Border:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Border ) --[[ @ 0]]
			f10_arg0.BorderAdd:completeAnimation() --[[ @ 0]]
			f10_arg0.BorderAdd:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.BorderAdd ) --[[ @ 0]]
			f10_arg0.label:completeAnimation() --[[ @ 0]]
			f10_arg0.label:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.label ) --[[ @ 0]]
			f10_arg0.Empty:completeAnimation() --[[ @ 0]]
			f10_arg0.Empty:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Empty ) --[[ @ 0]]
			f10_arg0.dashBacking:completeAnimation() --[[ @ 0]]
			f10_arg0.dashBacking:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.dashBacking ) --[[ @ 0]]
			f10_arg0.dash:completeAnimation() --[[ @ 0]]
			f10_arg0.dash:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.dash ) --[[ @ 0]]
			f10_arg0.Glow:completeAnimation() --[[ @ 0]]
			f10_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Glow ) --[[ @ 0]]
			f10_arg0.CornerDots:completeAnimation() --[[ @ 0]]
			f10_arg0.CornerDots:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.CornerDots ) --[[ @ 0]]
			f10_arg0.CursorOver:completeAnimation() --[[ @ 0]]
			f10_arg0.CursorOver:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.CursorOver ) --[[ @ 0]]
			f10_arg0.squarePrompt:completeAnimation() --[[ @ 0]]
			f10_arg0.squarePrompt:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.squarePrompt ) --[[ @ 0]]
		end
	},
	PCHidden = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 10 ) --[[ @ 0]]
			f11_arg0.Border:completeAnimation() --[[ @ 0]]
			f11_arg0.Border:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Border ) --[[ @ 0]]
			f11_arg0.BorderAdd:completeAnimation() --[[ @ 0]]
			f11_arg0.BorderAdd:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.BorderAdd ) --[[ @ 0]]
			f11_arg0.label:completeAnimation() --[[ @ 0]]
			f11_arg0.label:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.label ) --[[ @ 0]]
			f11_arg0.Empty:completeAnimation() --[[ @ 0]]
			f11_arg0.Empty:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Empty ) --[[ @ 0]]
			f11_arg0.dashBacking:completeAnimation() --[[ @ 0]]
			f11_arg0.dashBacking:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.dashBacking ) --[[ @ 0]]
			f11_arg0.dash:completeAnimation() --[[ @ 0]]
			f11_arg0.dash:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.dash ) --[[ @ 0]]
			f11_arg0.Glow:completeAnimation() --[[ @ 0]]
			f11_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Glow ) --[[ @ 0]]
			f11_arg0.CornerDots:completeAnimation() --[[ @ 0]]
			f11_arg0.CornerDots:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.CornerDots ) --[[ @ 0]]
			f11_arg0.CursorOver:completeAnimation() --[[ @ 0]]
			f11_arg0.CursorOver:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.CursorOver ) --[[ @ 0]]
			f11_arg0.squarePrompt:completeAnimation() --[[ @ 0]]
			f11_arg0.squarePrompt:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.squarePrompt ) --[[ @ 0]]
		end
	},
	Checked = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f12_arg0.BorderAdd:completeAnimation() --[[ @ 0]]
			f12_arg0.BorderAdd:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.BorderAdd ) --[[ @ 0]]
			f12_arg0.Empty:completeAnimation() --[[ @ 0]]
			f12_arg0.Empty:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Empty ) --[[ @ 0]]
			f12_arg0.dashBacking:completeAnimation() --[[ @ 0]]
			f12_arg0.dashBacking:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.dashBacking ) --[[ @ 0]]
			f12_arg0.dash:completeAnimation() --[[ @ 0]]
			f12_arg0.dash:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.dash ) --[[ @ 0]]
			f12_arg0.Glow:completeAnimation() --[[ @ 0]]
			f12_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Glow ) --[[ @ 0]]
			f12_arg0.CornerDots:completeAnimation() --[[ @ 0]]
			f12_arg0.CornerDots:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.CornerDots ) --[[ @ 0]]
			f12_arg0.CursorOver:completeAnimation() --[[ @ 0]]
			f12_arg0.CursorOver:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.CursorOver ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.HubShowcaseCheckbox.__onClose = function ( f13_arg0 )
	f13_arg0.Border:close() --[[ @ 0]]
	f13_arg0.BorderAdd:close() --[[ @ 0]]
	f13_arg0.squarePrompt:close() --[[ @ 0]]
end
 --[[ @ 0]]
