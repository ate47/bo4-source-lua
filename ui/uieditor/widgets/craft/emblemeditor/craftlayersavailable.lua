-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.CraftLayersAvailable = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CraftLayersAvailable.__defaultWidth = 1016 --[[ @ 0]]
CoD.CraftLayersAvailable.__defaultHeight = 20 --[[ @ 0]]
CoD.CraftLayersAvailable.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CraftLayersAvailable ) --[[ @ 0]]
	self.id = "CraftLayersAvailable" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local temporary = LUI.UIText.new( 0, 0, 0, 567, 0, 0, 1.5, 21.5 ) --[[ @ 0]]
	temporary:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	temporary:setText( LocalizeStringWithDatasource( "Emblem.EmblemProperties.layersAvailable", f1_arg1, @"hash_63C805518F0500BA" ) ) --[[ @ 0]]
	temporary:setTTF( "dinnext_regular" ) --[[ @ 0]]
	temporary:setLetterSpacing( 1 ) --[[ @ 0]]
	temporary:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	temporary:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( temporary ) --[[ @ 0]]
	self.temporary = temporary --[[ @ 0]]
	
	local notEnoughLayersText = LUI.UIText.new( 0, 0, 405, 972, 0, 0, 1.5, 21.5 ) --[[ @ 0]]
	notEnoughLayersText:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	notEnoughLayersText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2A5A029CEE54E27D" ) ) --[[ @ 0]]
	notEnoughLayersText:setTTF( "dinnext_regular" ) --[[ @ 0]]
	notEnoughLayersText:setLetterSpacing( 1 ) --[[ @ 0]]
	notEnoughLayersText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	notEnoughLayersText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( notEnoughLayersText ) --[[ @ 0]]
	self.notEnoughLayersText = notEnoughLayersText --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NotEnoughLayers",
			condition = function ( menu, element, event )
				return not CoD.CraftUtility.EmblemChooseIcon_CanFitSelectedDecalGroup( self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["Emblem.EmblemProperties.layersAvailable"], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "Emblem.EmblemProperties.layersAvailable"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CraftLayersAvailable.__resetProperties = function ( f4_arg0 )
	f4_arg0.notEnoughLayersText:completeAnimation() --[[ @ 0]]
	f4_arg0.temporary:completeAnimation() --[[ @ 0]]
	f4_arg0.notEnoughLayersText:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	f4_arg0.notEnoughLayersText:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.temporary:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CraftLayersAvailable.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.notEnoughLayersText:completeAnimation() --[[ @ 0]]
			f5_arg0.notEnoughLayersText:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.notEnoughLayersText ) --[[ @ 0]]
		end
	},
	NotEnoughLayers = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.temporary:completeAnimation() --[[ @ 0]]
			f6_arg0.temporary:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.temporary ) --[[ @ 0]]
			f6_arg0.notEnoughLayersText:completeAnimation() --[[ @ 0]]
			f6_arg0.notEnoughLayersText:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f6_arg0.notEnoughLayersText:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.notEnoughLayersText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
