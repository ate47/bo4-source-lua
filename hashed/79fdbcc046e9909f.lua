-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:899841f5c56728a" ) --[[ @ 0]]

CoD.CommonIdentityWidgetStreamlined = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CommonIdentityWidgetStreamlined.__defaultWidth = 530 --[[ @ 0]]
CoD.CommonIdentityWidgetStreamlined.__defaultHeight = 40 --[[ @ 0]]
CoD.CommonIdentityWidgetStreamlined.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 10, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Right ) --[[ @ 0]]
	self:setClass( CoD.CommonIdentityWidgetStreamlined ) --[[ @ 0]]
	self.id = "CommonIdentityWidgetStreamlined" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local IdentityWidgetStreamlined = CoD.CommonIdentityWidgetStreamlinedInternal.new( f1_arg0, f1_arg1, 0, 0, 0, 530, 0, 0, 0, 40 ) --[[ @ 0]]
	IdentityWidgetStreamlined:linkToElementModel( self, nil, false, function ( model )
		IdentityWidgetStreamlined:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( IdentityWidgetStreamlined ) --[[ @ 0]]
	self.IdentityWidgetStreamlined = IdentityWidgetStreamlined --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "PCIngame",
			condition = function ( menu, element, event )
				return IsPC() and IsInGame()
			end
		},
		{
			stateName = "PCCODPointsPopup",
			condition = function ( menu, element, event )
				return IsPC() and AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local2 = self --[[ @ 0]]
	if InFrontend() then
		CoD.BaseUtility.SelfHidesBuildInfo( self ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.CommonIdentityWidgetStreamlined.__resetProperties = function ( f5_arg0 )
	f5_arg0.IdentityWidgetStreamlined:completeAnimation() --[[ @ 0]]
	f5_arg0.IdentityWidgetStreamlined:setLeftRight( 0, 0, 0, 530 ) --[[ @ 0]]
	f5_arg0.IdentityWidgetStreamlined.membername.TiledwhiteNoiseBacking:setAlpha( 0.02 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CommonIdentityWidgetStreamlined.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PCIngame = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.IdentityWidgetStreamlined:completeAnimation() --[[ @ 0]]
			f7_arg0.IdentityWidgetStreamlined:setLeftRight( 0, 0, -153, 377 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.IdentityWidgetStreamlined ) --[[ @ 0]]
		end
	},
	PCCODPointsPopup = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.IdentityWidgetStreamlined:completeAnimation() --[[ @ 0]]
			f8_arg0.IdentityWidgetStreamlined.membername.TiledwhiteNoiseBacking:completeAnimation() --[[ @ 0]]
			f8_arg0.IdentityWidgetStreamlined.membername.TiledwhiteNoiseBacking:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.IdentityWidgetStreamlined ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CommonIdentityWidgetStreamlined.__onClose = function ( f9_arg0 )
	f9_arg0.IdentityWidgetStreamlined:close() --[[ @ 0]]
end
 --[[ @ 0]]
