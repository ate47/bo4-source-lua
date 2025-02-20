-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/lobby/common/fe_memberblurpanel" ) --[[ @ 0]]

CoD.FE_MemberBlurPanelContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FE_MemberBlurPanelContainer.__defaultWidth = 522 --[[ @ 0]]
CoD.FE_MemberBlurPanelContainer.__defaultHeight = 42 --[[ @ 0]]
CoD.FE_MemberBlurPanelContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.FE_MemberBlurPanelContainer ) --[[ @ 0]]
	self.id = "FE_MemberBlurPanelContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FEMemberBlurPanel0 = CoD.FE_MemberBlurPanel.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( FEMemberBlurPanel0 ) --[[ @ 0]]
	self.FEMemberBlurPanel0 = FEMemberBlurPanel0 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Transparent",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hideWorldForStreamer", 1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.hideWorldForStreamer, function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "hideWorldForStreamer"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.FE_MemberBlurPanelContainer.__resetProperties = function ( f4_arg0 )
	f4_arg0.FEMemberBlurPanel0:completeAnimation() --[[ @ 0]]
	f4_arg0.FEMemberBlurPanel0:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FE_MemberBlurPanelContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Transparent = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.FEMemberBlurPanel0:completeAnimation() --[[ @ 0]]
			f6_arg0.FEMemberBlurPanel0:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.FEMemberBlurPanel0 ) --[[ @ 0]]
		end,
		DefaultState = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.FEMemberBlurPanel0:beginAnimation( 300 ) --[[ @ 0]]
				f7_arg0.FEMemberBlurPanel0:setAlpha( 1 ) --[[ @ 0]]
				f7_arg0.FEMemberBlurPanel0:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.FEMemberBlurPanel0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.FEMemberBlurPanel0:completeAnimation() --[[ @ 0]]
			f7_arg0.FEMemberBlurPanel0:setAlpha( 0 ) --[[ @ 0]]
			f7_local0( f7_arg0.FEMemberBlurPanel0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.FE_MemberBlurPanelContainer.__onClose = function ( f9_arg0 )
	f9_arg0.FEMemberBlurPanel0:close() --[[ @ 0]]
end
 --[[ @ 0]]
