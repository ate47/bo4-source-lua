-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "x64:588c6f65f2dd32da" ) --[[ @ 0]]

CoD.DirectorMapSelectItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorMapSelectItem.__defaultWidth = 246 --[[ @ 0]]
CoD.DirectorMapSelectItem.__defaultHeight = 104 --[[ @ 0]]
CoD.DirectorMapSelectItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorMapSelectItem ) --[[ @ 0]]
	self.id = "DirectorMapSelectItem" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Button = CoD.DirectorZMMapSelectItemOffline_Internal.new( f1_arg0, f1_arg1, 0, 0, 0, 246, 0, 0, 0, 104 ) --[[ @ 0]]
	Button.FeaturedTag:setText( LocalizeToUpperString( @"hash_57E251454EDF7A26" ) ) --[[ @ 0]]
	Button:linkToElementModel( self, nil, false, function ( model )
		Button:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Button:linkToElementModel( self, "id", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Button.MapImage:setImage( RegisterImage( MapNameToMapImage( f3_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Button:linkToElementModel( self, "id", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			Button.MapName:setText( MapNameToLocalizedMapName( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Button:linkToElementModel( self, "id", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			Button.TeamName:setText( Engine[@"hash_4F9F1239CFD921FE"]( CoD.MapUtility.GetMapTeamNameFromMapID( f5_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Button ) --[[ @ 0]]
	self.Button = Button --[[ @ 0]]
	
	Button.id = "Button" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorMapSelectItem.__resetProperties = function ( f6_arg0 )
	f6_arg0.Button:completeAnimation() --[[ @ 0]]
	f6_arg0.Button:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorMapSelectItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.Button:completeAnimation() --[[ @ 0]]
			f8_arg0.Button:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Button ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.Button:beginAnimation( 200 ) --[[ @ 0]]
				f9_arg0.Button:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f9_arg0.Button:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.Button:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.Button:completeAnimation() --[[ @ 0]]
			f9_arg0.Button:setScale( 1, 1 ) --[[ @ 0]]
			f9_local0( f9_arg0.Button ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.Button:beginAnimation( 200 ) --[[ @ 0]]
				f11_arg0.Button:setScale( 1, 1 ) --[[ @ 0]]
				f11_arg0.Button:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.Button:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.Button:completeAnimation() --[[ @ 0]]
			f11_arg0.Button:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f11_local0( f11_arg0.Button ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorMapSelectItem.__onClose = function ( f13_arg0 )
	f13_arg0.Button:close() --[[ @ 0]]
end
 --[[ @ 0]]
