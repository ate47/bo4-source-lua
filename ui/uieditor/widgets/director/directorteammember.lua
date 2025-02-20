-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/director/directorteammemberempty" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directorteammemberinfo" ) --[[ @ 0]]

CoD.DirectorTeamMember = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorTeamMember.__defaultWidth = 400 --[[ @ 0]]
CoD.DirectorTeamMember.__defaultHeight = 85 --[[ @ 0]]
CoD.DirectorTeamMember.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorTeamMember ) --[[ @ 0]]
	self.id = "DirectorTeamMember" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local EmptyText = CoD.DirectorTeamMemberEmpty.new( f1_arg0, f1_arg1, 0, 0, 0, 400, 0, 0, 0, 85 ) --[[ @ 0]]
	EmptyText:linkToElementModel( self, nil, false, function ( model )
		EmptyText:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( EmptyText ) --[[ @ 0]]
	self.EmptyText = EmptyText --[[ @ 0]]
	
	local TeamMemberInfo = CoD.DirectorTeamMemberInfo.new( f1_arg0, f1_arg1, 0, 0, 0, 400, 0, 0, 0, 85 ) --[[ @ 0]]
	TeamMemberInfo:linkToElementModel( self, nil, false, function ( model )
		TeamMemberInfo:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( TeamMemberInfo ) --[[ @ 0]]
	self.TeamMemberInfo = TeamMemberInfo --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Empty",
			condition = function ( menu, element, event )
				return CoD.DirectorUtility.IsClientEmpty( f1_arg1, element )
			end
		},
		{
			stateName = "Selected",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualToSelfModelValue( element, "lobbyRoot.selectedXuid", "xuid" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "xuid", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "xuid"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["lobbyRoot.selectedXuid"], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "lobbyRoot.selectedXuid"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	EmptyText.id = "EmptyText" --[[ @ 0]]
	TeamMemberInfo.id = "TeamMemberInfo" --[[ @ 0]]
	self.__defaultFocus = TeamMemberInfo --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local4 = self --[[ @ 0]]
	if IsPC() then
		CoD.PCWidgetUtility.SetupRightClickableContextualPlayerMenu( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.DirectorTeamMember.__resetProperties = function ( f8_arg0 )
	f8_arg0.EmptyText:completeAnimation() --[[ @ 0]]
	f8_arg0.TeamMemberInfo:completeAnimation() --[[ @ 0]]
	f8_arg0.EmptyText:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.EmptyText:setScale( 1, 1 ) --[[ @ 0]]
	f8_arg0.TeamMemberInfo:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.TeamMemberInfo:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorTeamMember.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.EmptyText:completeAnimation() --[[ @ 0]]
			f9_arg0.EmptyText:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.EmptyText ) --[[ @ 0]]
		end,
		ChildFocus = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f10_arg0.EmptyText:completeAnimation() --[[ @ 0]]
			f10_arg0.EmptyText:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.EmptyText ) --[[ @ 0]]
			f10_arg0.TeamMemberInfo:completeAnimation() --[[ @ 0]]
			f10_arg0.TeamMemberInfo:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.TeamMemberInfo ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f11_arg0.EmptyText:completeAnimation() --[[ @ 0]]
			f11_arg0.EmptyText:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.EmptyText ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.TeamMemberInfo:beginAnimation( 200 ) --[[ @ 0]]
				f11_arg0.TeamMemberInfo:setScale( 1.02, 1.02 ) --[[ @ 0]]
				f11_arg0.TeamMemberInfo:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.TeamMemberInfo:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.TeamMemberInfo:completeAnimation() --[[ @ 0]]
			f11_arg0.TeamMemberInfo:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f11_local0( f11_arg0.TeamMemberInfo ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f13_arg0.EmptyText:completeAnimation() --[[ @ 0]]
			f13_arg0.EmptyText:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.EmptyText ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				f13_arg0.TeamMemberInfo:beginAnimation( 200 ) --[[ @ 0]]
				f13_arg0.TeamMemberInfo:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f13_arg0.TeamMemberInfo:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.TeamMemberInfo:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.TeamMemberInfo:completeAnimation() --[[ @ 0]]
			f13_arg0.TeamMemberInfo:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f13_local0( f13_arg0.TeamMemberInfo ) --[[ @ 0]]
		end
	},
	Empty = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.TeamMemberInfo:completeAnimation() --[[ @ 0]]
			f15_arg0.TeamMemberInfo:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.TeamMemberInfo ) --[[ @ 0]]
		end,
		ChildFocus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f16_arg0.EmptyText:completeAnimation() --[[ @ 0]]
			f16_arg0.EmptyText:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.EmptyText ) --[[ @ 0]]
			f16_arg0.TeamMemberInfo:completeAnimation() --[[ @ 0]]
			f16_arg0.TeamMemberInfo:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.TeamMemberInfo ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				f17_arg0.EmptyText:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.EmptyText:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f17_arg0.EmptyText:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.EmptyText:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.EmptyText:completeAnimation() --[[ @ 0]]
			f17_arg0.EmptyText:setScale( 1, 1 ) --[[ @ 0]]
			f17_local0( f17_arg0.EmptyText ) --[[ @ 0]]
			f17_arg0.TeamMemberInfo:completeAnimation() --[[ @ 0]]
			f17_arg0.TeamMemberInfo:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.TeamMemberInfo ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				f19_arg0.EmptyText:beginAnimation( 200 ) --[[ @ 0]]
				f19_arg0.EmptyText:setScale( 1, 1 ) --[[ @ 0]]
				f19_arg0.EmptyText:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.EmptyText:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.EmptyText:completeAnimation() --[[ @ 0]]
			f19_arg0.EmptyText:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f19_local0( f19_arg0.EmptyText ) --[[ @ 0]]
			f19_arg0.TeamMemberInfo:completeAnimation() --[[ @ 0]]
			f19_arg0.TeamMemberInfo:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.TeamMemberInfo ) --[[ @ 0]]
		end
	},
	Selected = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f21_arg0.TeamMemberInfo:completeAnimation() --[[ @ 0]]
			f21_arg0.TeamMemberInfo:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.TeamMemberInfo ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorTeamMember.__onClose = function ( f22_arg0 )
	f22_arg0.EmptyText:close() --[[ @ 0]]
	f22_arg0.TeamMemberInfo:close() --[[ @ 0]]
end
 --[[ @ 0]]
