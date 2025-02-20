-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:78aaacae484841f6" ) --[[ @ 0]]

CoD.PC_AchievementNotification_Container = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_AchievementNotification_Container.__defaultWidth = 430 --[[ @ 0]]
CoD.PC_AchievementNotification_Container.__defaultHeight = 80 --[[ @ 0]]
CoD.PC_AchievementNotification_Container.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_AchievementNotification_Container ) --[[ @ 0]]
	self.id = "PC_AchievementNotification_Container" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local AchievementNotification = CoD.PC_AchievementNotification.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( AchievementNotification ) --[[ @ 0]]
	self.AchievementNotification = AchievementNotification --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "ShowNotification",
			condition = function ( menu, element, event )
				return CoD.PCAchievementsUtility.ShowAchievementNotification( menu, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = DataSources.PCAchievementNotification.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.showNotification, function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "showNotification"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_AchievementNotification_Container.__resetProperties = function ( f4_arg0 )
	f4_arg0.AchievementNotification:completeAnimation() --[[ @ 0]]
	f4_arg0.AchievementNotification:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f4_arg0.AchievementNotification:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_AchievementNotification_Container.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.AchievementNotification:completeAnimation() --[[ @ 0]]
			f5_arg0.AchievementNotification:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.AchievementNotification ) --[[ @ 0]]
		end
	},
	ShowNotification = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					f8_arg0:beginAnimation( 90 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
						element:playClip( "Intro" ) --[[ @ 0]]
						f6_arg0.clipFinished( element, event ) --[[ @ 0]]
					end ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0.AchievementNotification:playClip( "DefaultClip" ) --[[ @ 0]]
				f6_arg0.AchievementNotification:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f6_arg0.AchievementNotification:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
				f6_arg0.AchievementNotification:setAlpha( 1 ) --[[ @ 0]]
				f6_arg0.AchievementNotification:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.AchievementNotification:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.AchievementNotification:completeAnimation() --[[ @ 0]]
			f6_arg0.AchievementNotification:setLeftRight( 0, 1, 50, 50 ) --[[ @ 0]]
			f6_arg0.AchievementNotification:setAlpha( 0 ) --[[ @ 0]]
			f6_local0( f6_arg0.AchievementNotification ) --[[ @ 0]]
		end,
		DefaultState = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				f10_arg0.AchievementNotification:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.AchievementNotification:setLeftRight( 0, 1, 50, 50 ) --[[ @ 0]]
				f10_arg0.AchievementNotification:setAlpha( 0 ) --[[ @ 0]]
				f10_arg0.AchievementNotification:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.AchievementNotification:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.AchievementNotification:completeAnimation() --[[ @ 0]]
			f10_arg0.AchievementNotification:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f10_arg0.AchievementNotification:setAlpha( 1 ) --[[ @ 0]]
			f10_local0( f10_arg0.AchievementNotification ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PC_AchievementNotification_Container.__onClose = function ( f12_arg0 )
	f12_arg0.AchievementNotification:close() --[[ @ 0]]
end
 --[[ @ 0]]
