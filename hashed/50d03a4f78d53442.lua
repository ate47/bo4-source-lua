-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.PositionDraft_ViewTeams_Slots = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PositionDraft_ViewTeams_Slots.__defaultWidth = 16 --[[ @ 0]]
CoD.PositionDraft_ViewTeams_Slots.__defaultHeight = 16 --[[ @ 0]]
CoD.PositionDraft_ViewTeams_Slots.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PositionDraft_ViewTeams_Slots ) --[[ @ 0]]
	self.id = "PositionDraft_ViewTeams_Slots" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local backer = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	backer:setRGB( 0, 0, 0 ) --[[ @ 0]]
	backer:setAlpha( 0.7 ) --[[ @ 0]]
	self:addElement( backer ) --[[ @ 0]]
	self.backer = backer --[[ @ 0]]
	
	local fill = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	fill:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( fill ) --[[ @ 0]]
	self.fill = fill --[[ @ 0]]
	
	local box_line = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	box_line:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	box_line:setAlpha( 0.5 ) --[[ @ 0]]
	box_line:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_3E7BDCB879A5176D" ) ) --[[ @ 0]]
	box_line:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	box_line:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	box_line:setupNineSliceShader( 1, 1 ) --[[ @ 0]]
	self:addElement( box_line ) --[[ @ 0]]
	self.box_line = box_line --[[ @ 0]]
	
	local pip01 = LUI.UIImage.new( 0, 0, 0, 1, 0, 0, 0, 1 ) --[[ @ 0]]
	self:addElement( pip01 ) --[[ @ 0]]
	self.pip01 = pip01 --[[ @ 0]]
	
	local pip02 = LUI.UIImage.new( 0, 0, 15, 16, 0, 0, 0, 1 ) --[[ @ 0]]
	self:addElement( pip02 ) --[[ @ 0]]
	self.pip02 = pip02 --[[ @ 0]]
	
	local pip03 = LUI.UIImage.new( 0, 0, 15, 16, 0, 0, 15, 16 ) --[[ @ 0]]
	self:addElement( pip03 ) --[[ @ 0]]
	self.pip03 = pip03 --[[ @ 0]]
	
	local pip04 = LUI.UIImage.new( 0, 0, 0, 1, 0, 0, 15, 16 ) --[[ @ 0]]
	self:addElement( pip04 ) --[[ @ 0]]
	self.pip04 = pip04 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PositionDraft_ViewTeams_Slots.__resetProperties = function ( f2_arg0 )
	f2_arg0.fill:completeAnimation() --[[ @ 0]]
	f2_arg0.pip04:completeAnimation() --[[ @ 0]]
	f2_arg0.pip03:completeAnimation() --[[ @ 0]]
	f2_arg0.pip02:completeAnimation() --[[ @ 0]]
	f2_arg0.pip01:completeAnimation() --[[ @ 0]]
	f2_arg0.box_line:completeAnimation() --[[ @ 0]]
	f2_arg0.backer:completeAnimation() --[[ @ 0]]
	f2_arg0.fill:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.pip04:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.pip03:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.pip02:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.pip01:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.box_line:setAlpha( 0.5 ) --[[ @ 0]]
	f2_arg0.backer:setAlpha( 0.7 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PositionDraft_ViewTeams_Slots.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Filled = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.fill:completeAnimation() --[[ @ 0]]
			f4_arg0.fill:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.fill ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f5_arg0.backer:completeAnimation() --[[ @ 0]]
			f5_arg0.backer:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.backer ) --[[ @ 0]]
			f5_arg0.box_line:completeAnimation() --[[ @ 0]]
			f5_arg0.box_line:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.box_line ) --[[ @ 0]]
			f5_arg0.pip01:completeAnimation() --[[ @ 0]]
			f5_arg0.pip01:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.pip01 ) --[[ @ 0]]
			f5_arg0.pip02:completeAnimation() --[[ @ 0]]
			f5_arg0.pip02:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.pip02 ) --[[ @ 0]]
			f5_arg0.pip03:completeAnimation() --[[ @ 0]]
			f5_arg0.pip03:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.pip03 ) --[[ @ 0]]
			f5_arg0.pip04:completeAnimation() --[[ @ 0]]
			f5_arg0.pip04:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.pip04 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
