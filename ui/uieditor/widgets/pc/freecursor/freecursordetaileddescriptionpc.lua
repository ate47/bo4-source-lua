-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/freecursor/infopanelsubwidgets/freecursornolabelbuttonpromptarea" ) --[[ @ 0]]

CoD.freeCursorDetailedDescriptionPC = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.freeCursorDetailedDescriptionPC.__defaultWidth = 405 --[[ @ 0]]
CoD.freeCursorDetailedDescriptionPC.__defaultHeight = 200 --[[ @ 0]]
CoD.freeCursorDetailedDescriptionPC.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.freeCursorDetailedDescriptionPC ) --[[ @ 0]]
	self.id = "freeCursorDetailedDescriptionPC" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BG = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BG:setImage( RegisterImage( @"hash_431AC999EEEB3C99" ) ) --[[ @ 0]]
	BG:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	BG:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BG:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( BG ) --[[ @ 0]]
	self.BG = BG --[[ @ 0]]
	
	local detailedDescription2 = LUI.UIText.new( 0, 0, 10, 397, 0, 0, 10, 28 ) --[[ @ 0]]
	detailedDescription2:setRGB( 0.75, 0.74, 0.73 ) --[[ @ 0]]
	detailedDescription2:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	detailedDescription2:setLetterSpacing( 2 ) --[[ @ 0]]
	detailedDescription2:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	detailedDescription2:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	detailedDescription2:linkToElementModel( self, "detailedDescription", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			detailedDescription2:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( detailedDescription2, "setText", function ( element, controller )
		if IsTextEmpty( element ) and IsGamepad( f1_arg1 ) then
			CollapseFreeCursorElement( self ) --[[ @ 0]]
		elseif not IsTextEmpty( element ) then
			UpdateWidgetHeightToMultilineText( self, self.detailedDescription2, 10 ) --[[ @ 0]]
			SetContainerHeightToMultilineText( self, self.detailedDescription2, 10 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( detailedDescription2 ) --[[ @ 0]]
	self.detailedDescription2 = detailedDescription2 --[[ @ 0]]
	
	local noLabelButtonPrompts2 = CoD.freeCursorNoLabelButtonPromptArea.new( f1_arg0, f1_arg1, 0, 0, 0, 300, 1, 1, -42, -6 ) --[[ @ 0]]
	noLabelButtonPrompts2:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	noLabelButtonPrompts2:setAlpha( 0 ) --[[ @ 0]]
	noLabelButtonPrompts2:linkToElementModel( self, nil, false, function ( model )
		noLabelButtonPrompts2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( noLabelButtonPrompts2 ) --[[ @ 0]]
	self.noLabelButtonPrompts2 = noLabelButtonPrompts2 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "VisibleKBM",
			condition = function ( menu, element, event )
				local f6_local0 = CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "detailedDescription" ) --[[ @ 0]]
				if f6_local0 then
					f6_local0 = CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "detailedViewPC" ) --[[ @ 0]]
					if f6_local0 then
						f6_local0 = IsMouseOrKeyboard( f1_arg1 ) --[[ @ 0]]
					end
				end
				return f6_local0
			end
		},
		{
			stateName = "VisibleGamepad",
			condition = function ( menu, element, event )
				local f7_local0 = CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "detailedDescription" ) --[[ @ 0]]
				if f7_local0 then
					f7_local0 = CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "detailedView" ) --[[ @ 0]]
					if f7_local0 then
						f7_local0 = IsGamepad( f1_arg1 ) --[[ @ 0]]
					end
				end
				return f7_local0
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "detailedDescription", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "detailedDescription"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "detailedViewPC", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "detailedViewPC"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f10_arg0, f10_arg1 )
		f10_arg1.menu = f10_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f10_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local4 = self --[[ @ 0]]
	local f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.LastInput, function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "detailedView", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "detailedView"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local5 = self --[[ @ 0]]
	CoD.FreeCursorUtility.UseLocalHeight( self ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.freeCursorDetailedDescriptionPC.__resetProperties = function ( f13_arg0 )
	f13_arg0.detailedDescription2:completeAnimation() --[[ @ 0]]
	f13_arg0.BG:completeAnimation() --[[ @ 0]]
	f13_arg0.detailedDescription2:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.BG:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	f13_arg0.BG:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f13_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.freeCursorDetailedDescriptionPC.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f14_arg0.BG:completeAnimation() --[[ @ 0]]
			f14_arg0.BG:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
			f14_arg0.BG:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.BG ) --[[ @ 0]]
			f14_arg0.detailedDescription2:completeAnimation() --[[ @ 0]]
			f14_arg0.detailedDescription2:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.detailedDescription2 ) --[[ @ 0]]
		end
	},
	VisibleKBM = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f15_arg0.BG:completeAnimation() --[[ @ 0]]
			f15_arg0.BG:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
			f15_arg0.BG:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f15_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.BG ) --[[ @ 0]]
			f15_arg0.detailedDescription2:completeAnimation() --[[ @ 0]]
			f15_arg0.detailedDescription2:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.detailedDescription2 ) --[[ @ 0]]
		end
	},
	VisibleGamepad = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f16_arg0.BG:completeAnimation() --[[ @ 0]]
			f16_arg0.BG:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
			f16_arg0.BG:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f16_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.BG ) --[[ @ 0]]
			f16_arg0.detailedDescription2:completeAnimation() --[[ @ 0]]
			f16_arg0.detailedDescription2:setAlpha( 1 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.detailedDescription2 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.freeCursorDetailedDescriptionPC.__onClose = function ( f17_arg0 )
	f17_arg0.detailedDescription2:close() --[[ @ 0]]
	f17_arg0.noLabelButtonPrompts2:close() --[[ @ 0]]
end
 --[[ @ 0]]
