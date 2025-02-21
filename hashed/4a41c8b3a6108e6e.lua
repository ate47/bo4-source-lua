-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.GroupFractionLabel = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GroupFractionLabel.__defaultWidth = 180 --[[ @ 0]]
CoD.GroupFractionLabel.__defaultHeight = 42 --[[ @ 0]]
CoD.GroupFractionLabel.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GroupFractionLabel ) --[[ @ 0]]
	self.id = "GroupFractionLabel" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local groupsUsedValue = LUI.UIText.new( 0, 0, 0, 180, 0, 0, 7.5, 32.5 ) --[[ @ 0]]
	groupsUsedValue:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	groupsUsedValue:setTTF( "dinnext_regular" ) --[[ @ 0]]
	groupsUsedValue:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	groupsUsedValue:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( groupsUsedValue ) --[[ @ 0]]
	self.groupsUsedValue = groupsUsedValue --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GroupFractionLabel.__resetProperties = function ( f2_arg0 )
	f2_arg0.groupsUsedValue:completeAnimation() --[[ @ 0]]
	f2_arg0.groupsUsedValue:setRGB( 1, 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.GroupFractionLabel.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	GroupsFull = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.groupsUsedValue:completeAnimation() --[[ @ 0]]
			f4_arg0.groupsUsedValue:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.groupsUsedValue ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
