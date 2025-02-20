-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:214cf3f0705aae36" ) --[[ @ 0]]

CoD.PaintshopColorLayerInfo = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PaintshopColorLayerInfo.__defaultWidth = 695 --[[ @ 0]]
CoD.PaintshopColorLayerInfo.__defaultHeight = 68 --[[ @ 0]]
CoD.PaintshopColorLayerInfo.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PaintshopColorLayerInfo ) --[[ @ 0]]
	self.id = "PaintshopColorLayerInfo" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 0, 0, 695, 0, 0, 0, 68 ) --[[ @ 0]]
	Backing:setAlpha( 0.5 ) --[[ @ 0]]
	Backing:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	Backing:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 0, 0, 695, 0, 0, 0, 68 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local NoiseTiledBackingAdd = LUI.UIImage.new( 0, 0, 0, 695, 0, 0, 0, 36 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setAlpha( 0.2 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBackingAdd ) --[[ @ 0]]
	self.NoiseTiledBackingAdd = NoiseTiledBackingAdd --[[ @ 0]]
	
	local Frame = LUI.UIImage.new( 0, 0, -1, 696, 0, 0, -1, 69 ) --[[ @ 0]]
	Frame:setAlpha( 0.2 ) --[[ @ 0]]
	Frame:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	Frame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	Frame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Frame:setupNineSliceShader( 16, 16 ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	local dividerH = LUI.UIImage.new( 0, 0, 0, 695, 0, 0, 34, 38 ) --[[ @ 0]]
	dividerH:setAlpha( 0.2 ) --[[ @ 0]]
	dividerH:setImage( RegisterImage( @"hash_484B43D5B04D263A" ) ) --[[ @ 0]]
	dividerH:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	dividerH:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	dividerH:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( dividerH ) --[[ @ 0]]
	self.dividerH = dividerH --[[ @ 0]]
	
	local rotationValue = LUI.UIText.new( 0, 0, 511, 641, 0, 0, 41.5, 66.5 ) --[[ @ 0]]
	rotationValue:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	rotationValue:setTTF( "dinnext_regular" ) --[[ @ 0]]
	rotationValue:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	rotationValue:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	rotationValue:subscribeToGlobalModel( f1_arg1, "EmblemSelectedLayerProperties", "gradient_angle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			rotationValue:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( rotationValue ) --[[ @ 0]]
	self.rotationValue = rotationValue --[[ @ 0]]
	
	local rotationText = LUI.UIText.new( 0, 0, 509, 691, 0, 0, 7, 32 ) --[[ @ 0]]
	rotationText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	rotationText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_712A6450C1991C6D" ) ) --[[ @ 0]]
	rotationText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	rotationText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	rotationText:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( rotationText ) --[[ @ 0]]
	self.rotationText = rotationText --[[ @ 0]]
	
	local color1OpacityValue = LUI.UIText.new( 0, 0, 331.5, 461.5, 0, 0, 41.5, 66.5 ) --[[ @ 0]]
	color1OpacityValue:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	color1OpacityValue:setTTF( "dinnext_regular" ) --[[ @ 0]]
	color1OpacityValue:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	color1OpacityValue:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	color1OpacityValue:subscribeToGlobalModel( f1_arg1, "EmblemSelectedLayerProperties", "opacity1", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			color1OpacityValue:setText( AppendString( "%", f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( color1OpacityValue ) --[[ @ 0]]
	self.color1OpacityValue = color1OpacityValue --[[ @ 0]]
	
	local color1OpacityText = LUI.UIText.new( 0, 0, 331, 511, 0, 0, 7, 32 ) --[[ @ 0]]
	color1OpacityText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	color1OpacityText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3BD45B66EE9ACAD2" ) ) --[[ @ 0]]
	color1OpacityText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	color1OpacityText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	color1OpacityText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( color1OpacityText ) --[[ @ 0]]
	self.color1OpacityText = color1OpacityText --[[ @ 0]]
	
	local color0OpacityValue = LUI.UIText.new( 0, 0, 153.5, 284.5, 0, 0, 41.5, 66.5 ) --[[ @ 0]]
	color0OpacityValue:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	color0OpacityValue:setTTF( "dinnext_regular" ) --[[ @ 0]]
	color0OpacityValue:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	color0OpacityValue:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	color0OpacityValue:subscribeToGlobalModel( f1_arg1, "EmblemSelectedLayerProperties", "opacity0", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			color0OpacityValue:setText( AppendString( "%", f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( color0OpacityValue ) --[[ @ 0]]
	self.color0OpacityValue = color0OpacityValue --[[ @ 0]]
	
	local color0OpacityText = LUI.UIText.new( 0, 0, 153.5, 333.5, 0, 0, 7, 32 ) --[[ @ 0]]
	color0OpacityText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	color0OpacityText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_10D919B2D6404B47" ) ) --[[ @ 0]]
	color0OpacityText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	color0OpacityText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	color0OpacityText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( color0OpacityText ) --[[ @ 0]]
	self.color0OpacityText = color0OpacityText --[[ @ 0]]
	
	local layerUsedValue = CoD.GroupFractionLabel.new( f1_arg0, f1_arg1, 0, 0, 6, 136, 0, 0, 34, 69 ) --[[ @ 0]]
	layerUsedValue:mergeStateConditions( {
		{
			stateName = "GroupsFull",
			condition = function ( menu, element, event )
				return not IsEmptyLayerAvailable( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local Divider01 = layerUsedValue --[[ @ 0]]
	local LayerUsedText = layerUsedValue.subscribeToModel --[[ @ 0]]
	local Divider02 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	LayerUsedText( Divider01, Divider02["Emblem.EmblemProperties.layersUsed"], function ( f6_arg0 )
		f1_arg0:updateElementState( layerUsedValue, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "Emblem.EmblemProperties.layersUsed"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	layerUsedValue:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	layerUsedValue:subscribeToGlobalModel( f1_arg1, "EmblemProperties", "layersUsedFraction", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			layerUsedValue.groupsUsedValue:setText( Engine[@"hash_4F9F1239CFD921FE"]( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( layerUsedValue ) --[[ @ 0]]
	self.layerUsedValue = layerUsedValue --[[ @ 0]]
	
	LayerUsedText = LUI.UIText.new( 0, 0, 6, 156, 0, 0, 7, 32 ) --[[ @ 0]]
	LayerUsedText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	LayerUsedText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3357A304FD698FC" ) ) --[[ @ 0]]
	LayerUsedText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	LayerUsedText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	LayerUsedText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( LayerUsedText ) --[[ @ 0]]
	self.LayerUsedText = LayerUsedText --[[ @ 0]]
	
	Divider01 = LUI.UIImage.new( 0.5, 0.5, -202, -198, 0, 0, 0, 68 ) --[[ @ 0]]
	Divider01:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	Divider01:setAlpha( 0.1 ) --[[ @ 0]]
	Divider01:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	Divider01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Divider01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Divider01:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( Divider01 ) --[[ @ 0]]
	self.Divider01 = Divider01 --[[ @ 0]]
	
	Divider02 = LUI.UIImage.new( 0.5, 0.5, -25, -21, 0, 0, 0, 68 ) --[[ @ 0]]
	Divider02:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	Divider02:setAlpha( 0.1 ) --[[ @ 0]]
	Divider02:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	Divider02:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Divider02:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Divider02:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( Divider02 ) --[[ @ 0]]
	self.Divider02 = Divider02 --[[ @ 0]]
	
	local Divider03 = LUI.UIImage.new( 0.5, 0.5, -2, 2, 0, 0, 0, 68 ) --[[ @ 0]]
	Divider03:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	Divider03:setAlpha( 0 ) --[[ @ 0]]
	Divider03:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	Divider03:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Divider03:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Divider03:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( Divider03 ) --[[ @ 0]]
	self.Divider03 = Divider03 --[[ @ 0]]
	
	local Divider04 = LUI.UIImage.new( 0.5, 0.5, 153, 157, 0, 0, 0, 68 ) --[[ @ 0]]
	Divider04:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	Divider04:setAlpha( 0.1 ) --[[ @ 0]]
	Divider04:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	Divider04:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Divider04:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Divider04:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( Divider04 ) --[[ @ 0]]
	self.Divider04 = Divider04 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PaintshopColorLayerInfo.__resetProperties = function ( f8_arg0 )
	f8_arg0.color1OpacityText:completeAnimation() --[[ @ 0]]
	f8_arg0.color1OpacityValue:completeAnimation() --[[ @ 0]]
	f8_arg0.color0OpacityText:completeAnimation() --[[ @ 0]]
	f8_arg0.rotationText:completeAnimation() --[[ @ 0]]
	f8_arg0.rotationValue:completeAnimation() --[[ @ 0]]
	f8_arg0.Frame:completeAnimation() --[[ @ 0]]
	f8_arg0.NoiseTiledBackingAdd:completeAnimation() --[[ @ 0]]
	f8_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
	f8_arg0.Backing:completeAnimation() --[[ @ 0]]
	f8_arg0.color0OpacityValue:completeAnimation() --[[ @ 0]]
	f8_arg0.LayerUsedText:completeAnimation() --[[ @ 0]]
	f8_arg0.layerUsedValue:completeAnimation() --[[ @ 0]]
	f8_arg0.Divider03:completeAnimation() --[[ @ 0]]
	f8_arg0.Divider01:completeAnimation() --[[ @ 0]]
	f8_arg0.Divider04:completeAnimation() --[[ @ 0]]
	f8_arg0.dividerH:completeAnimation() --[[ @ 0]]
	f8_arg0.color1OpacityText:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.color1OpacityValue:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.color0OpacityText:setLeftRight( 0, 0, 153.5, 333.5 ) --[[ @ 0]]
	f8_arg0.color0OpacityText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_10D919B2D6404B47" ) ) --[[ @ 0]]
	f8_arg0.rotationText:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.rotationValue:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.Frame:setLeftRight( 0, 0, -1, 696 ) --[[ @ 0]]
	f8_arg0.NoiseTiledBackingAdd:setLeftRight( 0, 0, 0, 695 ) --[[ @ 0]]
	f8_arg0.NoiseTiledBacking:setLeftRight( 0, 0, 0, 695 ) --[[ @ 0]]
	f8_arg0.Backing:setLeftRight( 0, 0, 0, 695 ) --[[ @ 0]]
	f8_arg0.color0OpacityValue:setLeftRight( 0, 0, 153.5, 284.5 ) --[[ @ 0]]
	f8_arg0.LayerUsedText:setLeftRight( 0, 0, 6, 156 ) --[[ @ 0]]
	f8_arg0.layerUsedValue:setLeftRight( 0, 0, 6, 136 ) --[[ @ 0]]
	f8_arg0.Divider01:setAlpha( 0.1 ) --[[ @ 0]]
	f8_arg0.Divider04:setAlpha( 0.1 ) --[[ @ 0]]
	f8_arg0.dividerH:setLeftRight( 0, 0, 0, 695 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PaintshopColorLayerInfo.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 16 ) --[[ @ 0]]
			f9_arg0.Backing:completeAnimation() --[[ @ 0]]
			f9_arg0.Backing:setLeftRight( 0, 0, 77.5, 617.5 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Backing ) --[[ @ 0]]
			f9_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f9_arg0.NoiseTiledBacking:setLeftRight( 0, 0, 77.5, 617.5 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f9_arg0.NoiseTiledBackingAdd:completeAnimation() --[[ @ 0]]
			f9_arg0.NoiseTiledBackingAdd:setLeftRight( 0, 0, 77.5, 617.5 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.NoiseTiledBackingAdd ) --[[ @ 0]]
			f9_arg0.Frame:completeAnimation() --[[ @ 0]]
			f9_arg0.Frame:setLeftRight( 0, 0, 77.5, 617.5 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Frame ) --[[ @ 0]]
			f9_arg0.dividerH:completeAnimation() --[[ @ 0]]
			f9_arg0.dividerH:setLeftRight( 0, 0, 77.5, 617.5 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.dividerH ) --[[ @ 0]]
			f9_arg0.rotationValue:completeAnimation() --[[ @ 0]]
			f9_arg0.rotationValue:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.rotationValue ) --[[ @ 0]]
			f9_arg0.rotationText:completeAnimation() --[[ @ 0]]
			f9_arg0.rotationText:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.rotationText ) --[[ @ 0]]
			f9_arg0.color1OpacityValue:completeAnimation() --[[ @ 0]]
			f9_arg0.color1OpacityValue:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.color1OpacityValue ) --[[ @ 0]]
			f9_arg0.color1OpacityText:completeAnimation() --[[ @ 0]]
			f9_arg0.color1OpacityText:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.color1OpacityText ) --[[ @ 0]]
			f9_arg0.color0OpacityValue:completeAnimation() --[[ @ 0]]
			f9_arg0.color0OpacityValue:setLeftRight( 0, 0, 333.5, 464.5 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.color0OpacityValue ) --[[ @ 0]]
			f9_arg0.color0OpacityText:completeAnimation() --[[ @ 0]]
			f9_arg0.color0OpacityText:setLeftRight( 0, 0, 333.5, 513.5 ) --[[ @ 0]]
			f9_arg0.color0OpacityText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6611006D6269F87D" ) ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.color0OpacityText ) --[[ @ 0]]
			f9_arg0.layerUsedValue:completeAnimation() --[[ @ 0]]
			f9_arg0.layerUsedValue:setLeftRight( 0, 0, 86, 216 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.layerUsedValue ) --[[ @ 0]]
			f9_arg0.LayerUsedText:completeAnimation() --[[ @ 0]]
			f9_arg0.LayerUsedText:setLeftRight( 0, 0, 86, 236 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.LayerUsedText ) --[[ @ 0]]
			f9_arg0.Divider01:completeAnimation() --[[ @ 0]]
			f9_arg0.Divider01:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Divider01 ) --[[ @ 0]]
			f9_arg0.Divider03:completeAnimation() --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Divider03 ) --[[ @ 0]]
			f9_arg0.Divider04:completeAnimation() --[[ @ 0]]
			f9_arg0.Divider04:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Divider04 ) --[[ @ 0]]
		end
	},
	GradientColorInfo = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PaintshopColorLayerInfo.__onClose = function ( f11_arg0 )
	f11_arg0.rotationValue:close() --[[ @ 0]]
	f11_arg0.color1OpacityValue:close() --[[ @ 0]]
	f11_arg0.color0OpacityValue:close() --[[ @ 0]]
	f11_arg0.layerUsedValue:close() --[[ @ 0]]
end
 --[[ @ 0]]
