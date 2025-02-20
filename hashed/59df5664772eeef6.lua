-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/mphudwidgets/codcaster/codcasterbuttons" ) --[[ @ 0]]

CoD.CodCasterButtonBar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterButtonBar.__defaultWidth = 1800 --[[ @ 0]]
CoD.CodCasterButtonBar.__defaultHeight = 36 --[[ @ 0]]
CoD.CodCasterButtonBar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterButtonBar ) --[[ @ 0]]
	self.id = "CodCasterButtonBar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = CoD.isPC --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local black = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 120 ) --[[ @ 0]]
	black:setRGB( 0, 0, 0 ) --[[ @ 0]]
	black:setAlpha( 0.7 ) --[[ @ 0]]
	self:addElement( black ) --[[ @ 0]]
	self.black = black --[[ @ 0]]
	
	local CodCasterButtons = CoD.CodCasterButtons.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CodCasterButtons:linkToElementModel( self, nil, false, function ( model )
		CodCasterButtons:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CodCasterButtons ) --[[ @ 0]]
	self.CodCasterButtons = CodCasterButtons --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_toolbar", 1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = DataSources.CodCaster.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.profileSettingsUpdated, function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "profileSettingsUpdated"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	if CoD.isPC then
		CodCasterButtons.id = "CodCasterButtons" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CodCasterButtonBar.__resetProperties = function ( f5_arg0 )
	f5_arg0.CodCasterButtons:completeAnimation() --[[ @ 0]]
	f5_arg0.black:completeAnimation() --[[ @ 0]]
	f5_arg0.CodCasterButtons:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.black:setAlpha( 0.7 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCasterButtonBar.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.black:completeAnimation() --[[ @ 0]]
			f6_arg0.black:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.black ) --[[ @ 0]]
			f6_arg0.CodCasterButtons:completeAnimation() --[[ @ 0]]
			f6_arg0.CodCasterButtons:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.CodCasterButtons ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CodCasterButtonBar.__onClose = function ( f8_arg0 )
	f8_arg0.CodCasterButtons:close() --[[ @ 0]]
end
 --[[ @ 0]]
