-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:66ab7d3b958bb572" ) --[[ @ 0]]

CoD.WeaponBribeItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WeaponBribeItem.__defaultWidth = 274 --[[ @ 0]]
CoD.WeaponBribeItem.__defaultHeight = 126 --[[ @ 0]]
CoD.WeaponBribeItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModelIfNotSet( f1_arg1, "weaponSelectItemIndex", 0 ) --[[ @ 0]]
	self:setClass( CoD.WeaponBribeItem ) --[[ @ 0]]
	self.id = "WeaponBribeItem" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local WeaponBribeItemInternal = CoD.WeaponBribeItemInternal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 126 ) --[[ @ 0]]
	WeaponBribeItemInternal:linkToElementModel( self, nil, false, function ( model )
		WeaponBribeItemInternal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( WeaponBribeItemInternal ) --[[ @ 0]]
	self.WeaponBribeItemInternal = WeaponBribeItemInternal --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	WeaponBribeItemInternal.id = "WeaponBribeItemInternal" --[[ @ 0]]
	self.__defaultFocus = WeaponBribeItemInternal --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WeaponBribeItem.__resetProperties = function ( f4_arg0 )
	f4_arg0.WeaponBribeItemInternal:completeAnimation() --[[ @ 0]]
	f4_arg0.WeaponBribeItemInternal:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WeaponBribeItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.WeaponBribeItemInternal:completeAnimation() --[[ @ 0]]
			f6_arg0.WeaponBribeItemInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.WeaponBribeItemInternal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.WeaponBribeItemInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f7_arg0.WeaponBribeItemInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f7_arg0.WeaponBribeItemInternal:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.WeaponBribeItemInternal:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.WeaponBribeItemInternal:completeAnimation() --[[ @ 0]]
			f7_arg0.WeaponBribeItemInternal:setScale( 1, 1 ) --[[ @ 0]]
			f7_local0( f7_arg0.WeaponBribeItemInternal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.WeaponBribeItemInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f9_arg0.WeaponBribeItemInternal:setScale( 1, 1 ) --[[ @ 0]]
				f9_arg0.WeaponBribeItemInternal:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.WeaponBribeItemInternal:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.WeaponBribeItemInternal:completeAnimation() --[[ @ 0]]
			f9_arg0.WeaponBribeItemInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f9_local0( f9_arg0.WeaponBribeItemInternal ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WeaponBribeItem.__onClose = function ( f12_arg0 )
	f12_arg0.WeaponBribeItemInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
