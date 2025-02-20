-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.Social_PartyLeaderIconLarge = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Social_PartyLeaderIconLarge.__defaultWidth = 23 --[[ @ 0]]
CoD.Social_PartyLeaderIconLarge.__defaultHeight = 84 --[[ @ 0]]
CoD.Social_PartyLeaderIconLarge.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Social_PartyLeaderIconLarge ) --[[ @ 0]]
	self.id = "Social_PartyLeaderIconLarge" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Leader = LUI.UIImage.new( 0, 0, -1.5, 29.5, 0, 1, -4, 4 ) --[[ @ 0]]
	Leader:setRGB( 0.29, 0.38, 0.68 ) --[[ @ 0]]
	Leader:setAlpha( 0 ) --[[ @ 0]]
	Leader:setImage( RegisterImage( @"uie_t7_menu_frontend_iconpartyleaderlarge" ) ) --[[ @ 0]]
	Leader:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_blend" ) ) --[[ @ 0]]
	self:addElement( Leader ) --[[ @ 0]]
	self.Leader = Leader --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Social_PartyLeaderIconLarge.__resetProperties = function ( f2_arg0 )
	f2_arg0.Leader:completeAnimation() --[[ @ 0]]
	f2_arg0.Leader:setLeftRight( 0, 0, -1.5, 29.5 ) --[[ @ 0]]
	f2_arg0.Leader:setTopBottom( 0, 1, -4, 4 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Social_PartyLeaderIconLarge.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Invisible = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.Leader:completeAnimation() --[[ @ 0]]
			f4_arg0.Leader:setLeftRight( 0, 0, -3, 32 ) --[[ @ 0]]
			f4_arg0.Leader:setTopBottom( -0.5, 0.5, 38, 46 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Leader ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
