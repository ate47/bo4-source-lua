-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.Client_LeaderIcon = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Client_LeaderIcon.__defaultWidth = 30 --[[ @ 0]]
CoD.Client_LeaderIcon.__defaultHeight = 30 --[[ @ 0]]
CoD.Client_LeaderIcon.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Client_LeaderIcon ) --[[ @ 0]]
	self.id = "Client_LeaderIcon" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local LeaderIcon = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	LeaderIcon:setImage( RegisterImage( @"uie_ui_menu_director_icon_star" ) ) --[[ @ 0]]
	self:addElement( LeaderIcon ) --[[ @ 0]]
	self.LeaderIcon = LeaderIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return ClientIsLeader( element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Client_LeaderIcon.__resetProperties = function ( f3_arg0 )
	f3_arg0.LeaderIcon:completeAnimation() --[[ @ 0]]
	f3_arg0.LeaderIcon:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Client_LeaderIcon.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.LeaderIcon:completeAnimation() --[[ @ 0]]
			f4_arg0.LeaderIcon:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.LeaderIcon ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.LeaderIcon:completeAnimation() --[[ @ 0]]
			f5_arg0.LeaderIcon:setAlpha( 1 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.LeaderIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
