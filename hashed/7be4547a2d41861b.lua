-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:222bf0e10b899d2b" ) --[[ @ 0]]

CoD.StartMenu_Options_Network_StatusOverview_Wrapper = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Options_Network_StatusOverview_Wrapper.__defaultWidth = 700 --[[ @ 0]]
CoD.StartMenu_Options_Network_StatusOverview_Wrapper.__defaultHeight = 112 --[[ @ 0]]
CoD.StartMenu_Options_Network_StatusOverview_Wrapper.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Options_Network_StatusOverview_Wrapper ) --[[ @ 0]]
	self.id = "StartMenu_Options_Network_StatusOverview_Wrapper" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local StartMenuOptionsNetworkStatusOverview = CoD.StartMenu_Options_Network_StatusOverview.new( f1_arg0, f1_arg1, 0, 0, 0, 700, 0, 0, 0, 112 ) --[[ @ 0]]
	self:addElement( StartMenuOptionsNetworkStatusOverview ) --[[ @ 0]]
	self.StartMenuOptionsNetworkStatusOverview = StartMenuOptionsNetworkStatusOverview --[[ @ 0]]
	
	self.StartMenuOptionsNetworkStatusOverview:linkToElementModel( self, nil, false, function ( model )
		StartMenuOptionsNetworkStatusOverview:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StartMenuOptionsNetworkStatusOverview.id = "StartMenuOptionsNetworkStatusOverview" --[[ @ 0]]
	self.__defaultFocus = StartMenuOptionsNetworkStatusOverview --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Options_Network_StatusOverview_Wrapper.__resetProperties = function ( f3_arg0 )
	f3_arg0.StartMenuOptionsNetworkStatusOverview:completeAnimation() --[[ @ 0]]
	f3_arg0.StartMenuOptionsNetworkStatusOverview:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Options_Network_StatusOverview_Wrapper.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.StartMenuOptionsNetworkStatusOverview:completeAnimation() --[[ @ 0]]
			f5_arg0.StartMenuOptionsNetworkStatusOverview:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.StartMenuOptionsNetworkStatusOverview ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.StartMenuOptionsNetworkStatusOverview:beginAnimation( 200 ) --[[ @ 0]]
				f6_arg0.StartMenuOptionsNetworkStatusOverview:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f6_arg0.StartMenuOptionsNetworkStatusOverview:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.StartMenuOptionsNetworkStatusOverview:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.StartMenuOptionsNetworkStatusOverview:completeAnimation() --[[ @ 0]]
			f6_arg0.StartMenuOptionsNetworkStatusOverview:setScale( 1, 1 ) --[[ @ 0]]
			f6_local0( f6_arg0.StartMenuOptionsNetworkStatusOverview ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.StartMenuOptionsNetworkStatusOverview:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.StartMenuOptionsNetworkStatusOverview:setScale( 1, 1 ) --[[ @ 0]]
				f8_arg0.StartMenuOptionsNetworkStatusOverview:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.StartMenuOptionsNetworkStatusOverview:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.StartMenuOptionsNetworkStatusOverview:completeAnimation() --[[ @ 0]]
			f8_arg0.StartMenuOptionsNetworkStatusOverview:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f8_local0( f8_arg0.StartMenuOptionsNetworkStatusOverview ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_Options_Network_StatusOverview_Wrapper.__onClose = function ( f10_arg0 )
	f10_arg0.StartMenuOptionsNetworkStatusOverview:close() --[[ @ 0]]
end
 --[[ @ 0]]
