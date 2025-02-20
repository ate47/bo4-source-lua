-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]

CoD.basicTabWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.basicTabWidget.__defaultWidth = 270 --[[ @ 0]]
CoD.basicTabWidget.__defaultHeight = 60 --[[ @ 0]]
CoD.basicTabWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.basicTabWidget ) --[[ @ 0]]
	self.id = "basicTabWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local text = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 0, 60 ) --[[ @ 0]]
	text:setTTF( "default" ) --[[ @ 0]]
	text:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	text:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	text:linkToElementModel( self, "tabName", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			text:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( text ) --[[ @ 0]]
	self.text = text --[[ @ 0]]
	
	local buttonText = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 16, 44 ) --[[ @ 0]]
	buttonText:setAlpha( 0 ) --[[ @ 0]]
	buttonText:setTTF( "default" ) --[[ @ 0]]
	buttonText:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	buttonText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	buttonText:linkToElementModel( self, "tabIcon", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			buttonText:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( buttonText ) --[[ @ 0]]
	self.buttonText = buttonText --[[ @ 0]]
	
	local Frame = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NavButton",
			condition = function ( menu, element, event )
				return ShouldDisplayButton( element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "tabIcon", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "tabIcon"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.basicTabWidget.__resetProperties = function ( f6_arg0 )
	f6_arg0.text:completeAnimation() --[[ @ 0]]
	f6_arg0.buttonText:completeAnimation() --[[ @ 0]]
	f6_arg0.text:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f6_arg0.text:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.buttonText:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.basicTabWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Active = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.text:completeAnimation() --[[ @ 0]]
			f8_arg0.text:setRGB( 1, 0.41, 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.text ) --[[ @ 0]]
		end
	},
	NavButton = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.text:completeAnimation() --[[ @ 0]]
			f9_arg0.text:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.text ) --[[ @ 0]]
			f9_arg0.buttonText:completeAnimation() --[[ @ 0]]
			f9_arg0.buttonText:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.buttonText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.basicTabWidget.__onClose = function ( f10_arg0 )
	f10_arg0.text:close() --[[ @ 0]]
	f10_arg0.buttonText:close() --[[ @ 0]]
	f10_arg0.Frame:close() --[[ @ 0]]
end
 --[[ @ 0]]
