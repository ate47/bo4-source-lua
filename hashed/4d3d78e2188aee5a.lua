-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/director/directorstagebar" ) --[[ @ 0]]

CoD.DirectorStagesPulsing = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorStagesPulsing.__defaultWidth = 602 --[[ @ 0]]
CoD.DirectorStagesPulsing.__defaultHeight = 24 --[[ @ 0]]
CoD.DirectorStagesPulsing.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorStagesPulsing ) --[[ @ 0]]
	self.id = "DirectorStagesPulsing" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Stage6 = CoD.DirectorStageBar.new( f1_arg0, f1_arg1, 0, 0, 394, 602, 0, 0, 0, 24 ) --[[ @ 0]]
	Stage6:mergeStateConditions( {
		{
			stateName = "On",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalModelValueLessThan( "lobbyRoot.publicLobby.stage", 3 )
			end
		}
	} ) --[[ @ 0]]
	local Stage4 = Stage6 --[[ @ 0]]
	local Stage5 = Stage6.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	Stage5( Stage4, f1_local4["lobbyRoot.publicLobby.stage"], function ( f3_arg0 )
		f1_arg0:updateElementState( Stage6, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "lobbyRoot.publicLobby.stage"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( Stage6 ) --[[ @ 0]]
	self.Stage6 = Stage6 --[[ @ 0]]
	
	Stage5 = CoD.DirectorStageBar.new( f1_arg0, f1_arg1, 0, 0, 197, 405, 0, 0, 0, 24 ) --[[ @ 0]]
	Stage5:mergeStateConditions( {
		{
			stateName = "On",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalModelValueLessThan( "lobbyRoot.publicLobby.stage", 2 )
			end
		}
	} ) --[[ @ 0]]
	f1_local4 = Stage5 --[[ @ 0]]
	Stage4 = Stage5.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	Stage4( f1_local4, f1_local5["lobbyRoot.publicLobby.stage"], function ( f5_arg0 )
		f1_arg0:updateElementState( Stage5, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "lobbyRoot.publicLobby.stage"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( Stage5 ) --[[ @ 0]]
	self.Stage5 = Stage5 --[[ @ 0]]
	
	Stage4 = CoD.DirectorStageBar.new( f1_arg0, f1_arg1, 0, 0, 0, 208, 0, 0, 0, 24 ) --[[ @ 0]]
	Stage4:mergeStateConditions( {
		{
			stateName = "On",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalModelValueLessThan( "lobbyRoot.publicLobby.stage", 1 )
			end
		}
	} ) --[[ @ 0]]
	f1_local5 = Stage4 --[[ @ 0]]
	f1_local4 = Stage4.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local5, f1_local6["lobbyRoot.publicLobby.stage"], function ( f7_arg0 )
		f1_arg0:updateElementState( Stage4, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "lobbyRoot.publicLobby.stage"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( Stage4 ) --[[ @ 0]]
	self.Stage4 = Stage4 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueTrue( "lobbyRoot.publicLobby.waitingAnimation" )
			end
		}
	} ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local5, f1_local6["lobbyRoot.publicLobby.waitingAnimation"], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "lobbyRoot.publicLobby.waitingAnimation"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorStagesPulsing.__resetProperties = function ( f10_arg0 )
	f10_arg0.Stage4:completeAnimation() --[[ @ 0]]
	f10_arg0.Stage5:completeAnimation() --[[ @ 0]]
	f10_arg0.Stage6:completeAnimation() --[[ @ 0]]
	f10_arg0.Stage4:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.Stage5:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.Stage6:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorStagesPulsing.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f11_arg0.Stage6:completeAnimation() --[[ @ 0]]
			f11_arg0.Stage6:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Stage6 ) --[[ @ 0]]
			f11_arg0.Stage5:completeAnimation() --[[ @ 0]]
			f11_arg0.Stage5:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Stage5 ) --[[ @ 0]]
			f11_arg0.Stage4:completeAnimation() --[[ @ 0]]
			f11_arg0.Stage4:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Stage4 ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorStagesPulsing.__onClose = function ( f13_arg0 )
	f13_arg0.Stage6:close() --[[ @ 0]]
	f13_arg0.Stage5:close() --[[ @ 0]]
	f13_arg0.Stage4:close() --[[ @ 0]]
end
 --[[ @ 0]]
