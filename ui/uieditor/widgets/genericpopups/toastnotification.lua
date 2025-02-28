-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/genericpopups/toast_container" ) --[[ @ 0]]

CoD.ToastNotification = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ToastNotification.__defaultWidth = 1920 --[[ @ 0]]
CoD.ToastNotification.__defaultHeight = 1080 --[[ @ 0]]
CoD.ToastNotification.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModel( f1_arg1, "FrontendToast.notify", false ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "FrontendToast.state" ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "FrontendToast.kicker" ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "FrontendToast.description" ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "FrontendToast.contentIcon" ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "FrontendToast.functionIcon" ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "FrontendToast.emblemDecal" ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "FrontendToast.backgroundId" ) --[[ @ 0]]
	self:setClass( CoD.ToastNotification ) --[[ @ 0]]
	self.id = "ToastNotification" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ToastContainer = CoD.Toast_Container.new( f1_arg0, f1_arg1, 0.5, 0.5, -197, 143, 1, 1, -145, -65 ) --[[ @ 0]]
	ToastContainer:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( ToastContainer ) --[[ @ 0]]
	self.ToastContainer = ToastContainer --[[ @ 0]]
	
	local Sound = LUI.UIElement.new( 0, 0, -363, -291, 0, 0, 495, 567 ) --[[ @ 0]]
	self:addElement( Sound ) --[[ @ 0]]
	self.Sound = Sound --[[ @ 0]]
	
	ToastContainer.id = "ToastContainer" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local3 = self --[[ @ 0]]
	CoD.NotificationUtility.InitToastContainer( self, f1_arg1, f1_arg0, self.ToastContainer ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ToastNotification.__resetProperties = function ( f2_arg0 )
	f2_arg0.ToastContainer:completeAnimation() --[[ @ 0]]
	f2_arg0.Sound:completeAnimation() --[[ @ 0]]
	f2_arg0.ToastContainer:setLeftRight( 0.5, 0.5, -197, 143 ) --[[ @ 0]]
	f2_arg0.ToastContainer:setTopBottom( 1, 1, -145, -65 ) --[[ @ 0]]
	f2_arg0.ToastContainer:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Sound:setPlaySoundDirect( false ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ToastNotification.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Show = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					local f6_local0 = function ( f7_arg0 )
						local f7_local0 = function ( f8_arg0 )
							local f8_local0 = function ( f9_arg0 )
								f9_arg0:beginAnimation( 229 ) --[[ @ 0]]
								f9_arg0:setTopBottom( 1, 1, 56.5, 143.5 ) --[[ @ 0]]
								f9_arg0:setAlpha( 0 ) --[[ @ 0]]
								f9_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f8_arg0:beginAnimation( 40 ) --[[ @ 0]]
							f8_arg0:setTopBottom( 1, 1, -158.5, -71.5 ) --[[ @ 0]]
							f8_arg0:setAlpha( 0.85 ) --[[ @ 0]]
							f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f7_arg0:beginAnimation( 2830 ) --[[ @ 0]]
						f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f6_arg0:beginAnimation( 40 ) --[[ @ 0]]
					f6_arg0:setTopBottom( 1, 1, -148.5, -61.5 ) --[[ @ 0]]
					f6_arg0:setAlpha( 1 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.ToastContainer:beginAnimation( 230, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f4_arg0.ToastContainer:setTopBottom( 1, 1, -158.5, -71.5 ) --[[ @ 0]]
				f4_arg0.ToastContainer:setAlpha( 0.85 ) --[[ @ 0]]
				f4_arg0.ToastContainer:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.ToastContainer:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.ToastContainer:completeAnimation() --[[ @ 0]]
			f4_arg0.ToastContainer:setLeftRight( 0.5, 0.5, -225, 225 ) --[[ @ 0]]
			f4_arg0.ToastContainer:setTopBottom( 1, 1, 56.5, 143.5 ) --[[ @ 0]]
			f4_arg0.ToastContainer:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.ToastContainer ) --[[ @ 0]]
			f4_arg0.Sound:completeAnimation() --[[ @ 0]]
			f4_arg0.Sound:setPlaySoundDirect( true ) --[[ @ 0]]
			f4_arg0.Sound:playSound( "uin_bm_popup", f4_arg1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Sound ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ToastNotification.__onClose = function ( f10_arg0 )
	f10_arg0.ToastContainer:close() --[[ @ 0]]
end
 --[[ @ 0]]
