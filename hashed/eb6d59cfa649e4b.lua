-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/hud/console/consoleentrycontainer" ) --[[ @ 0]]

CoD.Console = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Console.__defaultWidth = 1020 --[[ @ 0]]
CoD.Console.__defaultHeight = 150 --[[ @ 0]]
CoD.Console.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Console ) --[[ @ 0]]
	self.id = "Console" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ConsoleEntry0 = CoD.ConsoleEntryContainer.new( f1_arg0, f1_arg1, 0, 0, 0, 1020, 1, 1, -30, 4 ) --[[ @ 0]]
	ConsoleEntry0:subscribeToGlobalModel( f1_arg1, "HUDItems", "console.line0", function ( model )
		ConsoleEntry0:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ConsoleEntry0 ) --[[ @ 0]]
	self.ConsoleEntry0 = ConsoleEntry0 --[[ @ 0]]
	
	local ConsoleEntry1 = CoD.ConsoleEntryContainer.new( f1_arg0, f1_arg1, 0, 0, 0, 1020, 1, 1, -30, 4 ) --[[ @ 0]]
	ConsoleEntry1:subscribeToGlobalModel( f1_arg1, "HUDItems", "console.line1", function ( model )
		ConsoleEntry1:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ConsoleEntry1 ) --[[ @ 0]]
	self.ConsoleEntry1 = ConsoleEntry1 --[[ @ 0]]
	
	local ConsoleEntry2 = CoD.ConsoleEntryContainer.new( f1_arg0, f1_arg1, 0, 0, 0, 1020, 1, 1, -30, 4 ) --[[ @ 0]]
	ConsoleEntry2:subscribeToGlobalModel( f1_arg1, "HUDItems", "console.line2", function ( model )
		ConsoleEntry2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ConsoleEntry2 ) --[[ @ 0]]
	self.ConsoleEntry2 = ConsoleEntry2 --[[ @ 0]]
	
	local ConsoleEntry3 = CoD.ConsoleEntryContainer.new( f1_arg0, f1_arg1, 0, 0, 0, 1020, 1, 1, -30, 4 ) --[[ @ 0]]
	ConsoleEntry3:subscribeToGlobalModel( f1_arg1, "HUDItems", "console.line3", function ( model )
		ConsoleEntry3:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ConsoleEntry3 ) --[[ @ 0]]
	self.ConsoleEntry3 = ConsoleEntry3 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HideForCodCaster",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local5 = self --[[ @ 0]]
	CoD.ConsoleUtility.Init( self, f1_arg1, "console", 3, 8 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.Console.__resetProperties = function ( f7_arg0 )
	f7_arg0.ConsoleEntry3:completeAnimation() --[[ @ 0]]
	f7_arg0.ConsoleEntry2:completeAnimation() --[[ @ 0]]
	f7_arg0.ConsoleEntry1:completeAnimation() --[[ @ 0]]
	f7_arg0.ConsoleEntry0:completeAnimation() --[[ @ 0]]
	f7_arg0.ConsoleEntry3:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.ConsoleEntry2:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.ConsoleEntry1:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.ConsoleEntry0:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Console.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	HideForCodCaster = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f9_arg0.ConsoleEntry0:completeAnimation() --[[ @ 0]]
			f9_arg0.ConsoleEntry0:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.ConsoleEntry0 ) --[[ @ 0]]
			f9_arg0.ConsoleEntry1:completeAnimation() --[[ @ 0]]
			f9_arg0.ConsoleEntry1:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.ConsoleEntry1 ) --[[ @ 0]]
			f9_arg0.ConsoleEntry2:completeAnimation() --[[ @ 0]]
			f9_arg0.ConsoleEntry2:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.ConsoleEntry2 ) --[[ @ 0]]
			f9_arg0.ConsoleEntry3:completeAnimation() --[[ @ 0]]
			f9_arg0.ConsoleEntry3:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.ConsoleEntry3 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Console.__onClose = function ( f10_arg0 )
	f10_arg0.ConsoleEntry0:close() --[[ @ 0]]
	f10_arg0.ConsoleEntry1:close() --[[ @ 0]]
	f10_arg0.ConsoleEntry2:close() --[[ @ 0]]
	f10_arg0.ConsoleEntry3:close() --[[ @ 0]]
end
 --[[ @ 0]]
