-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:6156d841adc02c80" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/vodpreviewwidgetvideo" ) --[[ @ 0]]

CoD.MOTD_VoDPreviewWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MOTD_VoDPreviewWidget.__defaultWidth = 1392 --[[ @ 0]]
CoD.MOTD_VoDPreviewWidget.__defaultHeight = 680 --[[ @ 0]]
CoD.MOTD_VoDPreviewWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.ModelUtility.SetGlobalDatasourceModelValue( f1_arg1, "HLSPlayback", "haveStarted", false ) --[[ @ 0]]
	self:setClass( CoD.MOTD_VoDPreviewWidget ) --[[ @ 0]]
	self.id = "MOTD_VoDPreviewWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Frame = LUI.UIFrame.new( f1_arg0, f1_arg1, 0, 0, false ) --[[ @ 0]]
	Frame:setLeftRight( 0, 0, 0, 1212 ) --[[ @ 0]]
	Frame:setTopBottom( 0, 0, 0, 680 ) --[[ @ 0]]
	Frame:subscribeToGlobalModel( f1_arg1, "MOTDVoDPreview", "frame", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Frame:changeFrameWidget( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Frame:linkToElementModel( self, "vod", false, function ( model )
		Frame:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 0, 0, 1212, 0, 0, 0, 680 ) --[[ @ 0]]
	Backing:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Backing:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local SpinnerLoadingAnimation = CoD.SpinnerLoadingAnimation.new( f1_arg0, f1_arg1, 0, 0, 574, 638, 0, 0, 308, 372 ) --[[ @ 0]]
	self:addElement( SpinnerLoadingAnimation ) --[[ @ 0]]
	self.SpinnerLoadingAnimation = SpinnerLoadingAnimation --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Loading",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( f1_arg1, "HLSPlayback", "haveStarted", 0 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = self --[[ @ 0]]
	local f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = DataSources.HLSPlayback.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.haveStarted, function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "haveStarted"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Frame.id = "Frame" --[[ @ 0]]
	self.__defaultFocus = Frame --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MOTD_VoDPreviewWidget.__resetProperties = function ( f6_arg0 )
	f6_arg0.SpinnerLoadingAnimation:completeAnimation() --[[ @ 0]]
	f6_arg0.Backing:completeAnimation() --[[ @ 0]]
	f6_arg0.SpinnerLoadingAnimation:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f6_arg0.SpinnerLoadingAnimation:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.Backing:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MOTD_VoDPreviewWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.SpinnerLoadingAnimation:completeAnimation() --[[ @ 0]]
			f7_arg0.SpinnerLoadingAnimation:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.SpinnerLoadingAnimation ) --[[ @ 0]]
		end
	},
	Loading = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.Backing:completeAnimation() --[[ @ 0]]
			f8_arg0.Backing:setAlpha( 0.6 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Backing ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.SpinnerLoadingAnimation:beginAnimation( 300 ) --[[ @ 0]]
				f8_arg0.SpinnerLoadingAnimation:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.SpinnerLoadingAnimation:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.SpinnerLoadingAnimation:completeAnimation() --[[ @ 0]]
			f8_arg0.SpinnerLoadingAnimation:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f8_arg0.SpinnerLoadingAnimation:setAlpha( 1 ) --[[ @ 0]]
			f8_local0( f8_arg0.SpinnerLoadingAnimation ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.MOTD_VoDPreviewWidget.__onClose = function ( f10_arg0 )
	f10_arg0.Frame:close() --[[ @ 0]]
	f10_arg0.SpinnerLoadingAnimation:close() --[[ @ 0]]
end
 --[[ @ 0]]
