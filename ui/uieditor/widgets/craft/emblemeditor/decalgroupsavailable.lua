-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.DecalGroupsAvailable = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DecalGroupsAvailable.__defaultWidth = 1016 --[[ @ 0]]
CoD.DecalGroupsAvailable.__defaultHeight = 20 --[[ @ 0]]
CoD.DecalGroupsAvailable.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DecalGroupsAvailable ) --[[ @ 0]]
	self.id = "DecalGroupsAvailable" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local groupsAvailableText = LUI.UIText.new( 0, 0, 0, 567, 0, 0, 0.5, 20.5 ) --[[ @ 0]]
	groupsAvailableText:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	groupsAvailableText:setText( LocalizeStringWithDatasource( "Emblem.EmblemProperties.groupsAvailable", f1_arg1, @"hash_A79924F6E867D6C" ) ) --[[ @ 0]]
	groupsAvailableText:setTTF( "dinnext_regular" ) --[[ @ 0]]
	groupsAvailableText:setLetterSpacing( 1 ) --[[ @ 0]]
	groupsAvailableText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	groupsAvailableText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( groupsAvailableText ) --[[ @ 0]]
	self.groupsAvailableText = groupsAvailableText --[[ @ 0]]
	
	local noMoreGroupsText = LUI.UIText.new( 0, 0, 380, 947, 0, 0, 0.5, 20.5 ) --[[ @ 0]]
	noMoreGroupsText:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	noMoreGroupsText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_40F922F82F145E9B" ) ) --[[ @ 0]]
	noMoreGroupsText:setTTF( "dinnext_regular" ) --[[ @ 0]]
	noMoreGroupsText:setLetterSpacing( 1 ) --[[ @ 0]]
	noMoreGroupsText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	noMoreGroupsText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( noMoreGroupsText ) --[[ @ 0]]
	self.noMoreGroupsText = noMoreGroupsText --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DecalGroupsAvailable.__resetProperties = function ( f2_arg0 )
	f2_arg0.noMoreGroupsText:completeAnimation() --[[ @ 0]]
	f2_arg0.groupsAvailableText:completeAnimation() --[[ @ 0]]
	f2_arg0.noMoreGroupsText:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	f2_arg0.noMoreGroupsText:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.groupsAvailableText:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DecalGroupsAvailable.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.noMoreGroupsText:completeAnimation() --[[ @ 0]]
			f3_arg0.noMoreGroupsText:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.noMoreGroupsText ) --[[ @ 0]]
		end
	},
	GroupsFilled = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f4_arg0.groupsAvailableText:completeAnimation() --[[ @ 0]]
			f4_arg0.groupsAvailableText:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.groupsAvailableText ) --[[ @ 0]]
			f4_arg0.noMoreGroupsText:completeAnimation() --[[ @ 0]]
			f4_arg0.noMoreGroupsText:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f4_arg0.noMoreGroupsText:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.noMoreGroupsText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
