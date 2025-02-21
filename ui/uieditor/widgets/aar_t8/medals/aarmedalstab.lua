-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/aar_t8/medals/aarmedalstabinternal" ) --[[ @ 0]]

CoD.AARMedalsTab = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARMedalsTab.__defaultWidth = 1920 --[[ @ 0]]
CoD.AARMedalsTab.__defaultHeight = 900 --[[ @ 0]]
CoD.AARMedalsTab.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARMedalsTab ) --[[ @ 0]]
	self.id = "AARMedalsTab" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local GametypeAndMap = CoD.AARMedalsTabInternal.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 0.5, 0.5, -450, 450 ) --[[ @ 0]]
	self:addElement( GametypeAndMap ) --[[ @ 0]]
	self.GametypeAndMap = GametypeAndMap --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "AAR.activeTab", CoD.AARUtility.AARTabs.AAR_MEDALS )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["AAR.activeTab"], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "AAR.activeTab"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	GametypeAndMap.id = "GametypeAndMap" --[[ @ 0]]
	self.__defaultFocus = GametypeAndMap --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARMedalsTab.__resetProperties = function ( f4_arg0 )
	f4_arg0.GametypeAndMap:completeAnimation() --[[ @ 0]]
	f4_arg0.GametypeAndMap:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARMedalsTab.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.GametypeAndMap:completeAnimation() --[[ @ 0]]
			f5_arg0.GametypeAndMap:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.GametypeAndMap ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.GametypeAndMap:beginAnimation( 150, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f6_arg0.GametypeAndMap:setAlpha( 1 ) --[[ @ 0]]
				f6_arg0.GametypeAndMap:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.GametypeAndMap:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.GametypeAndMap:completeAnimation() --[[ @ 0]]
			f6_arg0.GametypeAndMap:setAlpha( 0 ) --[[ @ 0]]
			f6_local0( f6_arg0.GametypeAndMap ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARMedalsTab.__onClose = function ( f8_arg0 )
	f8_arg0.GametypeAndMap:close() --[[ @ 0]]
end
 --[[ @ 0]]
