-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:7e48ccd31f36318d" ) --[[ @ 0]]
require( "x64:dfa7abc470d2678" ) --[[ @ 0]]

CoD.ObituaryCalloutContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ObituaryCalloutContainer.__defaultWidth = 280 --[[ @ 0]]
CoD.ObituaryCalloutContainer.__defaultHeight = 30 --[[ @ 0]]
CoD.ObituaryCalloutContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setUseCylinderMapping( false ) --[[ @ 0]]
	self:setClass( CoD.ObituaryCalloutContainer ) --[[ @ 0]]
	self.id = "ObituaryCalloutContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ContribText2 = CoD.ObituaryCalloutContainerPlayerKilled.new( f1_arg0, f1_arg1, 0.5, 0.5, -275, 275, 0, 0, 0, 26 ) --[[ @ 0]]
	ContribText2:linkToElementModel( self, nil, false, function ( model )
		ContribText2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ContribText2 ) --[[ @ 0]]
	self.ContribText2 = ContribText2 --[[ @ 0]]
	
	local ContribText = CoD.ObituaryCalloutContainerDamageDealt.new( f1_arg0, f1_arg1, 0.5, 0.5, -110.5, 110.5, 0.5, 0.5, 15, 41 ) --[[ @ 0]]
	ContribText:linkToElementModel( self, nil, false, function ( model )
		ContribText:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ContribText ) --[[ @ 0]]
	self.ContribText = ContribText --[[ @ 0]]
	
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
CoD.ObituaryCalloutContainer.__resetProperties = function ( f5_arg0 )
	f5_arg0.ContribText:completeAnimation() --[[ @ 0]]
	f5_arg0.ContribText2:completeAnimation() --[[ @ 0]]
	f5_arg0.ContribText:setTopBottom( 0.5, 0.5, 15, 41 ) --[[ @ 0]]
	f5_arg0.ContribText2:setTopBottom( 0, 0, 0, 26 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ObituaryCalloutContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.ContribText2:completeAnimation() --[[ @ 0]]
			f7_arg0.ContribText2:setTopBottom( 0, 0, -21, 5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.ContribText2 ) --[[ @ 0]]
			f7_arg0.ContribText:completeAnimation() --[[ @ 0]]
			f7_arg0.ContribText:setTopBottom( 0.5, 0.5, -6, 20 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.ContribText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ObituaryCalloutContainer.__onClose = function ( f8_arg0 )
	f8_arg0.ContribText2:close() --[[ @ 0]]
	f8_arg0.ContribText:close() --[[ @ 0]]
end
 --[[ @ 0]]
