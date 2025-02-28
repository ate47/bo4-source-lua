-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/startmenu/startmenu_identity_subtitle_bg" ) --[[ @ 0]]

CoD.MapVoteLabelLower = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MapVoteLabelLower.__defaultWidth = 225 --[[ @ 0]]
CoD.MapVoteLabelLower.__defaultHeight = 27 --[[ @ 0]]
CoD.MapVoteLabelLower.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MapVoteLabelLower ) --[[ @ 0]]
	self.id = "MapVoteLabelLower" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local StartMenuIdentitySubtitleBG00 = CoD.StartMenu_Identity_Subtitle_BG.new( f1_arg0, f1_arg1, 0, 1, -10, 12, 0, 1, -3, 3 ) --[[ @ 0]]
	StartMenuIdentitySubtitleBG00:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return IsFreeRunLobby()
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = StartMenuIdentitySubtitleBG00 --[[ @ 0]]
	local SubTitle = StartMenuIdentitySubtitleBG00.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	SubTitle( f1_local2, f1_local4["lobbyRoot.lobbyNav"], function ( f3_arg0 )
		f1_arg0:updateElementState( StartMenuIdentitySubtitleBG00, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	StartMenuIdentitySubtitleBG00:setRGB( 0, 0, 0 ) --[[ @ 0]]
	StartMenuIdentitySubtitleBG00:setAlpha( 0.55 ) --[[ @ 0]]
	self:addElement( StartMenuIdentitySubtitleBG00 ) --[[ @ 0]]
	self.StartMenuIdentitySubtitleBG00 = StartMenuIdentitySubtitleBG00 --[[ @ 0]]
	
	SubTitle = LUI.UIText.new( 0, 0, 9, 525, 0, 0, -1, 29 ) --[[ @ 0]]
	SubTitle:setText( "" ) --[[ @ 0]]
	SubTitle:setTTF( "dinnext_regular" ) --[[ @ 0]]
	SubTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( SubTitle, "setText", function ( element, controller )
		ScaleWidgetToLabelLeftJustify( self, element, 2 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( SubTitle ) --[[ @ 0]]
	self.SubTitle = SubTitle --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return IsFreeRunLobby()
			end
		}
	} ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local2 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local2( f1_local4, f1_local5["lobbyRoot.lobbyNav"], function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MapVoteLabelLower.__resetProperties = function ( f7_arg0 )
	f7_arg0.SubTitle:completeAnimation() --[[ @ 0]]
	f7_arg0.SubTitle:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MapVoteLabelLower.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.SubTitle:completeAnimation() --[[ @ 0]]
			f9_arg0.SubTitle:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.SubTitle ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.MapVoteLabelLower.__onClose = function ( f10_arg0 )
	f10_arg0.StartMenuIdentitySubtitleBG00:close() --[[ @ 0]]
end
 --[[ @ 0]]
