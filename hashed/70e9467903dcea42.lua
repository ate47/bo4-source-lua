-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:ffbba8158c738c9" ) --[[ @ 0]]
require( "x64:c3fa19037d61cad" ) --[[ @ 0]]

CoD.SpecialistHeadquartersSpecialist = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SpecialistHeadquartersSpecialist.__defaultWidth = 152 --[[ @ 0]]
CoD.SpecialistHeadquartersSpecialist.__defaultHeight = 173 --[[ @ 0]]
CoD.SpecialistHeadquartersSpecialist.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SpecialistHeadquartersSpecialist ) --[[ @ 0]]
	self.id = "SpecialistHeadquartersSpecialist" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local HubSpecialistcharacter = CoD.HubSpecialist_character.new( f1_arg0, f1_arg1, 0, 0, 0, 152, 0, 0, 0, 173 ) --[[ @ 0]]
	HubSpecialistcharacter:linkToElementModel( self, nil, false, function ( model )
		HubSpecialistcharacter:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( HubSpecialistcharacter ) --[[ @ 0]]
	self.HubSpecialistcharacter = HubSpecialistcharacter --[[ @ 0]]
	
	local Complete = CoD.SpecialistHeadquartersSpecialistComplete.new( f1_arg0, f1_arg1, 0.5, 0.5, -74, 74, 0, 0, 171, 195 ) --[[ @ 0]]
	Complete:setScale( 0.8, 0.8 ) --[[ @ 0]]
	Complete.Backing:setAlpha( 0 ) --[[ @ 0]]
	Complete:linkToElementModel( self, nil, false, function ( model )
		Complete:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Complete ) --[[ @ 0]]
	self.Complete = Complete --[[ @ 0]]
	
	local EquippedMarkerBG = LUI.UIImage.new( 0, 0, 113, 157, 0, 0, 24, 68 ) --[[ @ 0]]
	EquippedMarkerBG:setAlpha( 0 ) --[[ @ 0]]
	EquippedMarkerBG:setZoom( 4 ) --[[ @ 0]]
	EquippedMarkerBG:setImage( RegisterImage( @"uie_ui_menu_cac_equipped_marker_bg" ) ) --[[ @ 0]]
	EquippedMarkerBG:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( EquippedMarkerBG ) --[[ @ 0]]
	self.EquippedMarkerBG = EquippedMarkerBG --[[ @ 0]]
	
	local EquippedMarkerTick = LUI.UIImage.new( 0, 0, 113, 157, 0, 0, 24, 68 ) --[[ @ 0]]
	EquippedMarkerTick:setAlpha( 0 ) --[[ @ 0]]
	EquippedMarkerTick:setZoom( 4 ) --[[ @ 0]]
	EquippedMarkerTick:setImage( RegisterImage( @"uie_ui_menu_cac_equipped_marker_tick" ) ) --[[ @ 0]]
	self:addElement( EquippedMarkerTick ) --[[ @ 0]]
	self.EquippedMarkerTick = EquippedMarkerTick --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Selected",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToSelfModelValue( self, f1_arg1, "SpecialistHeadquarters", "ChosenSpecialistID", "characterIndex" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local5 = self --[[ @ 0]]
	local f1_local6 = self.subscribeToModel --[[ @ 0]]
	local f1_local7 = DataSources.SpecialistHeadquarters.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.ChosenSpecialistID, function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "ChosenSpecialistID"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "characterIndex", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "characterIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	HubSpecialistcharacter.id = "HubSpecialistcharacter" --[[ @ 0]]
	self.__defaultFocus = HubSpecialistcharacter --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SpecialistHeadquartersSpecialist.__resetProperties = function ( f7_arg0 )
	f7_arg0.EquippedMarkerBG:completeAnimation() --[[ @ 0]]
	f7_arg0.EquippedMarkerTick:completeAnimation() --[[ @ 0]]
	f7_arg0.EquippedMarkerBG:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.EquippedMarkerTick:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SpecialistHeadquartersSpecialist.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Selected = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.EquippedMarkerBG:completeAnimation() --[[ @ 0]]
			f9_arg0.EquippedMarkerBG:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.EquippedMarkerBG ) --[[ @ 0]]
			f9_arg0.EquippedMarkerTick:completeAnimation() --[[ @ 0]]
			f9_arg0.EquippedMarkerTick:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.EquippedMarkerTick ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.SpecialistHeadquartersSpecialist.__onClose = function ( f10_arg0 )
	f10_arg0.HubSpecialistcharacter:close() --[[ @ 0]]
	f10_arg0.Complete:close() --[[ @ 0]]
end
 --[[ @ 0]]
