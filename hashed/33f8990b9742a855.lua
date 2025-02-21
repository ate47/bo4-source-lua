-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.WZObituaryTeamIcon = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZObituaryTeamIcon.__defaultWidth = 26 --[[ @ 0]]
CoD.WZObituaryTeamIcon.__defaultHeight = 26 --[[ @ 0]]
CoD.WZObituaryTeamIcon.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WZObituaryTeamIcon ) --[[ @ 0]]
	self.id = "WZObituaryTeamIcon" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Backer = LUI.UIImage.new( 0, 0, 0, 26, 0, 0, 0, 26 ) --[[ @ 0]]
	Backer:setRGB( 0.05, 0.41, 0.37 ) --[[ @ 0]]
	Backer:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_edges" ) ) --[[ @ 0]]
	Backer:setShaderVector( 0, 0.03, 0.03, 0.03, 0.03 ) --[[ @ 0]]
	self:addElement( Backer ) --[[ @ 0]]
	self.Backer = Backer --[[ @ 0]]
	
	local TeamNumber = LUI.UIText.new( 0, 0, 0, 26, 0, 0, 0, 26 ) --[[ @ 0]]
	TeamNumber:setText( 1 ) --[[ @ 0]]
	TeamNumber:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TeamNumber:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TeamNumber:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TeamNumber ) --[[ @ 0]]
	self.TeamNumber = TeamNumber --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
