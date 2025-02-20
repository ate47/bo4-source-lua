-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:461dbb20c95d491d" ) --[[ @ 0]]

CoD.callingcards_loot2_vikingbattles_characters = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.callingcards_loot2_vikingbattles_characters.__defaultWidth = 748 --[[ @ 0]]
CoD.callingcards_loot2_vikingbattles_characters.__defaultHeight = 450 --[[ @ 0]]
CoD.callingcards_loot2_vikingbattles_characters.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.callingcards_loot2_vikingbattles_characters ) --[[ @ 0]]
	self.id = "callingcards_loot2_vikingbattles_characters" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local helmet = LUI.UIImage.new( 0, 0, 0, 152, 0, 0, 0, 184 ) --[[ @ 0]]
	helmet:setImage( RegisterImage( @"uie_ui_menu_callingcards_vikingbattles_helm" ) ) --[[ @ 0]]
	self:addElement( helmet ) --[[ @ 0]]
	self.helmet = helmet --[[ @ 0]]
	
	local character02lefthand = LUI.UIImage.new( 0, 0, 301.5, 421.5, 0, 0, 59, 139 ) --[[ @ 0]]
	character02lefthand:setImage( RegisterImage( @"uie_ui_menu_callingcards_vikingbattles_char2lefthand" ) ) --[[ @ 0]]
	self:addElement( character02lefthand ) --[[ @ 0]]
	self.character02lefthand = character02lefthand --[[ @ 0]]
	
	local character02 = LUI.UIImage.new( 0, 0, 114, 356, 0, 0, 50, 450 ) --[[ @ 0]]
	character02:setZRot( 51 ) --[[ @ 0]]
	character02:setImage( RegisterImage( @"uie_ui_menu_callingcards_vikingbattles_char2" ) ) --[[ @ 0]]
	self:addElement( character02 ) --[[ @ 0]]
	self.character02 = character02 --[[ @ 0]]
	
	local character01 = LUI.UIImage.new( 0, 0, 163.5, 747.5, 0, 0, 0, 360 ) --[[ @ 0]]
	character01:setImage( RegisterImage( @"uie_ui_menu_callingcards_vikingbattles_char1" ) ) --[[ @ 0]]
	self:addElement( character01 ) --[[ @ 0]]
	self.character01 = character01 --[[ @ 0]]
	
	local character02righthand = CoD.callingcards_loot2_vikingbattles_righthand.new( f1_arg0, f1_arg1, 0, 0, 119, 129, 0, 0, 267, 277 ) --[[ @ 0]]
	self:addElement( character02righthand ) --[[ @ 0]]
	self.character02righthand = character02righthand --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.callingcards_loot2_vikingbattles_characters.__resetProperties = function ( f2_arg0 )
	f2_arg0.helmet:completeAnimation() --[[ @ 0]]
	f2_arg0.character02:completeAnimation() --[[ @ 0]]
	f2_arg0.character02lefthand:completeAnimation() --[[ @ 0]]
	f2_arg0.character02righthand:completeAnimation() --[[ @ 0]]
	f2_arg0.helmet:setLeftRight( 0, 0, 0, 152 ) --[[ @ 0]]
	f2_arg0.helmet:setTopBottom( 0, 0, 0, 184 ) --[[ @ 0]]
	f2_arg0.helmet:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.character02:setLeftRight( 0, 0, 114, 356 ) --[[ @ 0]]
	f2_arg0.character02:setTopBottom( 0, 0, 50, 450 ) --[[ @ 0]]
	f2_arg0.character02lefthand:setLeftRight( 0, 0, 301.5, 421.5 ) --[[ @ 0]]
	f2_arg0.character02lefthand:setTopBottom( 0, 0, 59, 139 ) --[[ @ 0]]
	f2_arg0.character02lefthand:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.character02righthand:setLeftRight( 0, 0, 119, 129 ) --[[ @ 0]]
	f2_arg0.character02righthand:setTopBottom( 0, 0, 267, 277 ) --[[ @ 0]]
	f2_arg0.character02righthand:setZRot( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.callingcards_loot2_vikingbattles_characters.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 1500 ) --[[ @ 0]]
					f5_arg0:setLeftRight( 0, 0, 0, 152 ) --[[ @ 0]]
					f5_arg0:setTopBottom( 0, 0, 0, 184 ) --[[ @ 0]]
					f5_arg0:setZRot( 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.helmet:beginAnimation( 1500 ) --[[ @ 0]]
				f3_arg0.helmet:setLeftRight( 0, 0, -28, 124 ) --[[ @ 0]]
				f3_arg0.helmet:setTopBottom( 0, 0, 9, 193 ) --[[ @ 0]]
				f3_arg0.helmet:setZRot( 15 ) --[[ @ 0]]
				f3_arg0.helmet:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.helmet:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.helmet:completeAnimation() --[[ @ 0]]
			f3_arg0.helmet:setLeftRight( 0, 0, 0, 152 ) --[[ @ 0]]
			f3_arg0.helmet:setTopBottom( 0, 0, 0, 184 ) --[[ @ 0]]
			f3_arg0.helmet:setZRot( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.helmet ) --[[ @ 0]]
			local f3_local1 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 2010 ) --[[ @ 0]]
					f7_arg0:setLeftRight( 0, 0, 301, 421 ) --[[ @ 0]]
					f7_arg0:setTopBottom( 0, 0, 59, 139 ) --[[ @ 0]]
					f7_arg0:setZRot( 0 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.character02lefthand:beginAnimation( 990 ) --[[ @ 0]]
				f3_arg0.character02lefthand:setLeftRight( 0, 0, 267.5, 387.5 ) --[[ @ 0]]
				f3_arg0.character02lefthand:setTopBottom( 0, 0, 27, 107 ) --[[ @ 0]]
				f3_arg0.character02lefthand:setZRot( 20 ) --[[ @ 0]]
				f3_arg0.character02lefthand:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.character02lefthand:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.character02lefthand:completeAnimation() --[[ @ 0]]
			f3_arg0.character02lefthand:setLeftRight( 0, 0, 301, 421 ) --[[ @ 0]]
			f3_arg0.character02lefthand:setTopBottom( 0, 0, 59, 139 ) --[[ @ 0]]
			f3_arg0.character02lefthand:setZRot( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.character02lefthand ) --[[ @ 0]]
			local f3_local2 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 1500 ) --[[ @ 0]]
					f9_arg0:setLeftRight( 0, 0, 112, 354 ) --[[ @ 0]]
					f9_arg0:setTopBottom( 0, 0, 50, 450 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.character02:beginAnimation( 1500 ) --[[ @ 0]]
				f3_arg0.character02:setLeftRight( 0, 0, 130, 372 ) --[[ @ 0]]
				f3_arg0.character02:setTopBottom( 0, 0, 45, 445 ) --[[ @ 0]]
				f3_arg0.character02:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.character02:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.character02:completeAnimation() --[[ @ 0]]
			f3_arg0.character02:setLeftRight( 0, 0, 112, 354 ) --[[ @ 0]]
			f3_arg0.character02:setTopBottom( 0, 0, 50, 450 ) --[[ @ 0]]
			f3_local2( f3_arg0.character02 ) --[[ @ 0]]
			local f3_local3 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					f11_arg0:beginAnimation( 1500 ) --[[ @ 0]]
					f11_arg0:setLeftRight( 0, 0, 119, 129 ) --[[ @ 0]]
					f11_arg0:setTopBottom( 0, 0, 267, 277 ) --[[ @ 0]]
					f11_arg0:setZRot( 0 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.character02righthand:beginAnimation( 1500 ) --[[ @ 0]]
				f3_arg0.character02righthand:setLeftRight( 0, 0, 143, 153 ) --[[ @ 0]]
				f3_arg0.character02righthand:setTopBottom( 0, 0, 257, 267 ) --[[ @ 0]]
				f3_arg0.character02righthand:setZRot( 19 ) --[[ @ 0]]
				f3_arg0.character02righthand:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.character02righthand:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.character02righthand:completeAnimation() --[[ @ 0]]
			f3_arg0.character02righthand:setLeftRight( 0, 0, 119, 129 ) --[[ @ 0]]
			f3_arg0.character02righthand:setTopBottom( 0, 0, 267, 277 ) --[[ @ 0]]
			f3_arg0.character02righthand:setZRot( 0 ) --[[ @ 0]]
			f3_local3( f3_arg0.character02righthand ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.callingcards_loot2_vikingbattles_characters.__onClose = function ( f12_arg0 )
	f12_arg0.character02righthand:close() --[[ @ 0]]
end
 --[[ @ 0]]
