-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:6c272fc87cab0c0d" ) --[[ @ 0]]

CoD.PC_Achievement = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_Achievement.__defaultWidth = 960 --[[ @ 0]]
CoD.PC_Achievement.__defaultHeight = 120 --[[ @ 0]]
CoD.PC_Achievement.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_Achievement ) --[[ @ 0]]
	self.id = "PC_Achievement" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Achievement = CoD.PC_Achievement_Container.new( f1_arg0, f1_arg1, 1, 1, -870, -20, 0.5, 0.5, -47.5, 47.5 ) --[[ @ 0]]
	Achievement:mergeStateConditions( {
		{
			stateName = "Completed",
			condition = function ( menu, element, event )
				return CoD.PCAchievementsUtility.IsAchievementCompleted( self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	Achievement:linkToElementModel( Achievement, "refreshWidget", true, function ( model )
		f1_arg0:updateElementState( Achievement, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "refreshWidget"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Achievement:appendEventHandler( "<datasourceChange>PCAchievement", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( Achievement, f4_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Achievement ) --[[ @ 0]]
	self.Achievement = Achievement --[[ @ 0]]
	
	self.Achievement:linkToElementModel( self, "progressBarRatio", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			Achievement.ProgressBarFiller:setShaderVector( 0, CoD.GetVectorComponentFromString( f5_local0, 1 ), CoD.GetVectorComponentFromString( f5_local0, 2 ), CoD.GetVectorComponentFromString( f5_local0, 3 ), CoD.GetVectorComponentFromString( f5_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self.Achievement:linkToElementModel( self, "image", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			Achievement.AchievementIcon:setImage( RegisterImage( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self.Achievement:linkToElementModel( self, "name", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			Achievement.Name:setText( LocalizeToUpperString( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self.Achievement:linkToElementModel( self, "score", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			Achievement.ScoreValue:setText( f8_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Achievement.id = "Achievement" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_Achievement.__resetProperties = function ( f9_arg0 )
	f9_arg0.Achievement:completeAnimation() --[[ @ 0]]
	f9_arg0.Achievement:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.Achievement:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_Achievement.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.Achievement:completeAnimation() --[[ @ 0]]
			f11_arg0.Achievement:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Achievement ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.Achievement:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.Achievement:setScale( 1.02, 1.02 ) --[[ @ 0]]
				f12_arg0.Achievement:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.Achievement:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.Achievement:completeAnimation() --[[ @ 0]]
			f12_arg0.Achievement:setScale( 1, 1 ) --[[ @ 0]]
			f12_local0( f12_arg0.Achievement ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				f14_arg0.Achievement:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.Achievement:setScale( 1, 1 ) --[[ @ 0]]
				f14_arg0.Achievement:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.Achievement:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.Achievement:completeAnimation() --[[ @ 0]]
			f14_arg0.Achievement:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f14_local0( f14_arg0.Achievement ) --[[ @ 0]]
		end,
		Active = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.Achievement:completeAnimation() --[[ @ 0]]
			f16_arg0.Achievement:setAlpha( 1 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Achievement ) --[[ @ 0]]
		end,
		ActiveAndChildFocus = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.Achievement:completeAnimation() --[[ @ 0]]
			f17_arg0.Achievement:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Achievement ) --[[ @ 0]]
		end,
		GainActiveAndChildFocus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f18_local0 = function ( f19_arg0 )
				f18_arg0.Achievement:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.Achievement:setScale( 1.02, 1.02 ) --[[ @ 0]]
				f18_arg0.Achievement:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.Achievement:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.Achievement:completeAnimation() --[[ @ 0]]
			f18_arg0.Achievement:setScale( 1, 1 ) --[[ @ 0]]
			f18_local0( f18_arg0.Achievement ) --[[ @ 0]]
		end,
		LoseActiveAndChildFocus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f20_local0 = function ( f21_arg0 )
				f20_arg0.Achievement:beginAnimation( 200 ) --[[ @ 0]]
				f20_arg0.Achievement:setScale( 1, 1 ) --[[ @ 0]]
				f20_arg0.Achievement:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.Achievement:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.Achievement:completeAnimation() --[[ @ 0]]
			f20_arg0.Achievement:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f20_local0( f20_arg0.Achievement ) --[[ @ 0]]
		end,
		ChildFocusToActiveAndChildFocus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f22_arg0.Achievement:completeAnimation() --[[ @ 0]]
			f22_arg0.Achievement:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Achievement ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PC_Achievement.__onClose = function ( f23_arg0 )
	f23_arg0.Achievement:close() --[[ @ 0]]
end
 --[[ @ 0]]
