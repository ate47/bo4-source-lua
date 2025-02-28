-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:61fa72a99d0875ff" ) --[[ @ 0]]

CoD.callingcards_snakegods_asset_herosnake = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.callingcards_snakegods_asset_herosnake.__defaultWidth = 472 --[[ @ 0]]
CoD.callingcards_snakegods_asset_herosnake.__defaultHeight = 272 --[[ @ 0]]
CoD.callingcards_snakegods_asset_herosnake.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.callingcards_snakegods_asset_herosnake ) --[[ @ 0]]
	self.id = "callingcards_snakegods_asset_herosnake" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local hero = LUI.UIImage.new( 0, 0, 0, 472, 0, 0, 0, 272 ) --[[ @ 0]]
	hero:setImage( RegisterImage( @"uie_ui_menu_callingcards_snake_gods_hero" ) ) --[[ @ 0]]
	self:addElement( hero ) --[[ @ 0]]
	self.hero = hero --[[ @ 0]]
	
	local snakehead = CoD.callingcards_snakegods_asset_snakehead.new( f1_arg0, f1_arg1, 0, 0, 25, 35, 0, 0, 76.5, 86.5 ) --[[ @ 0]]
	snakehead:setZRot( 15 ) --[[ @ 0]]
	self:addElement( snakehead ) --[[ @ 0]]
	self.snakehead = snakehead --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.callingcards_snakegods_asset_herosnake.__resetProperties = function ( f2_arg0 )
	f2_arg0.snakehead:completeAnimation() --[[ @ 0]]
	f2_arg0.snakehead:setZRot( 15 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.callingcards_snakegods_asset_herosnake.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 1500, Enum[@"luitween"][@"luitween_bounce"] | Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f5_arg0:setZRot( -15 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.snakehead:beginAnimation( 1500, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f3_arg0.snakehead:setZRot( 15 ) --[[ @ 0]]
				f3_arg0.snakehead:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.snakehead:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.snakehead:completeAnimation() --[[ @ 0]]
			f3_arg0.snakehead:setZRot( -15 ) --[[ @ 0]]
			f3_local0( f3_arg0.snakehead ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.callingcards_snakegods_asset_herosnake.__onClose = function ( f6_arg0 )
	f6_arg0.snakehead:close() --[[ @ 0]]
end
 --[[ @ 0]]
