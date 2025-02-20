-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.LeaguePlayLeaderboardEntrySelection = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LeaguePlayLeaderboardEntrySelection.__defaultWidth = 898 --[[ @ 0]]
CoD.LeaguePlayLeaderboardEntrySelection.__defaultHeight = 48 --[[ @ 0]]
CoD.LeaguePlayLeaderboardEntrySelection.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LeaguePlayLeaderboardEntrySelection ) --[[ @ 0]]
	self.id = "LeaguePlayLeaderboardEntrySelection" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local selectionBG = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	selectionBG:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	selectionBG:setAlpha( 0 ) --[[ @ 0]]
	selectionBG:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( selectionBG ) --[[ @ 0]]
	self.selectionBG = selectionBG --[[ @ 0]]
	
	local RankDotBg = LUI.UIImage.new( 0, 0, 0, 88, 0, 1, 1, -1 ) --[[ @ 0]]
	RankDotBg:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	RankDotBg:setAlpha( 0.8 ) --[[ @ 0]]
	RankDotBg:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	RankDotBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	RankDotBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	RankDotBg:setupNineSliceShader( 48, 48 ) --[[ @ 0]]
	self:addElement( RankDotBg ) --[[ @ 0]]
	self.RankDotBg = RankDotBg --[[ @ 0]]
	
	local RankMovementDotBg = LUI.UIImage.new( 0, 0, 96, 144, 0, 1, 1, -1 ) --[[ @ 0]]
	RankMovementDotBg:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	RankMovementDotBg:setAlpha( 0.8 ) --[[ @ 0]]
	RankMovementDotBg:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	RankMovementDotBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	RankMovementDotBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	RankMovementDotBg:setupNineSliceShader( 48, 48 ) --[[ @ 0]]
	self:addElement( RankMovementDotBg ) --[[ @ 0]]
	self.RankMovementDotBg = RankMovementDotBg --[[ @ 0]]
	
	local NameDotBg = LUI.UIImage.new( 0, 0, 152, 570, 0, 1, 1, -1 ) --[[ @ 0]]
	NameDotBg:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	NameDotBg:setAlpha( 0.8 ) --[[ @ 0]]
	NameDotBg:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	NameDotBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	NameDotBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NameDotBg:setupNineSliceShader( 48, 48 ) --[[ @ 0]]
	self:addElement( NameDotBg ) --[[ @ 0]]
	self.NameDotBg = NameDotBg --[[ @ 0]]
	
	local PointsDotBg = LUI.UIImage.new( 0, 0, 578, 710, 0, 1, 1, -1 ) --[[ @ 0]]
	PointsDotBg:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	PointsDotBg:setAlpha( 0.8 ) --[[ @ 0]]
	PointsDotBg:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	PointsDotBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	PointsDotBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PointsDotBg:setupNineSliceShader( 48, 48 ) --[[ @ 0]]
	self:addElement( PointsDotBg ) --[[ @ 0]]
	self.PointsDotBg = PointsDotBg --[[ @ 0]]
	
	local RubiesDotBg = LUI.UIImage.new( 0, 0, 718, 898, 0, 1, 1, -1 ) --[[ @ 0]]
	RubiesDotBg:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	RubiesDotBg:setAlpha( 0.8 ) --[[ @ 0]]
	RubiesDotBg:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	RubiesDotBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	RubiesDotBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	RubiesDotBg:setupNineSliceShader( 48, 48 ) --[[ @ 0]]
	self:addElement( RubiesDotBg ) --[[ @ 0]]
	self.RubiesDotBg = RubiesDotBg --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LeaguePlayLeaderboardEntrySelection.__resetProperties = function ( f2_arg0 )
	f2_arg0.selectionBG:completeAnimation() --[[ @ 0]]
	f2_arg0.RankDotBg:completeAnimation() --[[ @ 0]]
	f2_arg0.RubiesDotBg:completeAnimation() --[[ @ 0]]
	f2_arg0.PointsDotBg:completeAnimation() --[[ @ 0]]
	f2_arg0.NameDotBg:completeAnimation() --[[ @ 0]]
	f2_arg0.RankMovementDotBg:completeAnimation() --[[ @ 0]]
	f2_arg0.selectionBG:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.RankDotBg:setAlpha( 0.8 ) --[[ @ 0]]
	f2_arg0.RubiesDotBg:setAlpha( 0.8 ) --[[ @ 0]]
	f2_arg0.PointsDotBg:setAlpha( 0.8 ) --[[ @ 0]]
	f2_arg0.NameDotBg:setAlpha( 0.8 ) --[[ @ 0]]
	f2_arg0.RankMovementDotBg:setAlpha( 0.8 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LeaguePlayLeaderboardEntrySelection.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f3_arg0.selectionBG:completeAnimation() --[[ @ 0]]
			f3_arg0.selectionBG:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.selectionBG ) --[[ @ 0]]
			f3_arg0.RankDotBg:completeAnimation() --[[ @ 0]]
			f3_arg0.RankDotBg:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.RankDotBg ) --[[ @ 0]]
			f3_arg0.RankMovementDotBg:completeAnimation() --[[ @ 0]]
			f3_arg0.RankMovementDotBg:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.RankMovementDotBg ) --[[ @ 0]]
			f3_arg0.NameDotBg:completeAnimation() --[[ @ 0]]
			f3_arg0.NameDotBg:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.NameDotBg ) --[[ @ 0]]
			f3_arg0.PointsDotBg:completeAnimation() --[[ @ 0]]
			f3_arg0.PointsDotBg:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.PointsDotBg ) --[[ @ 0]]
			f3_arg0.RubiesDotBg:completeAnimation() --[[ @ 0]]
			f3_arg0.RubiesDotBg:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.RubiesDotBg ) --[[ @ 0]]
		end,
		Active = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				f4_arg0.selectionBG:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f4_arg0.selectionBG:setAlpha( 0.03 ) --[[ @ 0]]
				f4_arg0.selectionBG:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.selectionBG:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.selectionBG:completeAnimation() --[[ @ 0]]
			f4_arg0.selectionBG:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.selectionBG ) --[[ @ 0]]
			local f4_local1 = function ( f6_arg0 )
				f4_arg0.RankDotBg:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f4_arg0.RankDotBg:setAlpha( 0.5 ) --[[ @ 0]]
				f4_arg0.RankDotBg:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.RankDotBg:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.RankDotBg:completeAnimation() --[[ @ 0]]
			f4_arg0.RankDotBg:setAlpha( 0 ) --[[ @ 0]]
			f4_local1( f4_arg0.RankDotBg ) --[[ @ 0]]
			local f4_local2 = function ( f7_arg0 )
				f4_arg0.RankMovementDotBg:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f4_arg0.RankMovementDotBg:setAlpha( 0.5 ) --[[ @ 0]]
				f4_arg0.RankMovementDotBg:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.RankMovementDotBg:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.RankMovementDotBg:completeAnimation() --[[ @ 0]]
			f4_arg0.RankMovementDotBg:setAlpha( 0 ) --[[ @ 0]]
			f4_local2( f4_arg0.RankMovementDotBg ) --[[ @ 0]]
			local f4_local3 = function ( f8_arg0 )
				f4_arg0.NameDotBg:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f4_arg0.NameDotBg:setAlpha( 0.5 ) --[[ @ 0]]
				f4_arg0.NameDotBg:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.NameDotBg:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.NameDotBg:completeAnimation() --[[ @ 0]]
			f4_arg0.NameDotBg:setAlpha( 0 ) --[[ @ 0]]
			f4_local3( f4_arg0.NameDotBg ) --[[ @ 0]]
			local f4_local4 = function ( f9_arg0 )
				f4_arg0.PointsDotBg:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f4_arg0.PointsDotBg:setAlpha( 0.5 ) --[[ @ 0]]
				f4_arg0.PointsDotBg:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.PointsDotBg:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.PointsDotBg:completeAnimation() --[[ @ 0]]
			f4_arg0.PointsDotBg:setAlpha( 0 ) --[[ @ 0]]
			f4_local4( f4_arg0.PointsDotBg ) --[[ @ 0]]
			local f4_local5 = function ( f10_arg0 )
				f4_arg0.RubiesDotBg:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f4_arg0.RubiesDotBg:setAlpha( 0.5 ) --[[ @ 0]]
				f4_arg0.RubiesDotBg:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.RubiesDotBg:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.RubiesDotBg:completeAnimation() --[[ @ 0]]
			f4_arg0.RubiesDotBg:setAlpha( 0 ) --[[ @ 0]]
			f4_local5( f4_arg0.RubiesDotBg ) --[[ @ 0]]
		end,
		Focus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.selectionBG:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f11_arg0.selectionBG:setAlpha( 0.03 ) --[[ @ 0]]
				f11_arg0.selectionBG:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.selectionBG:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.selectionBG:completeAnimation() --[[ @ 0]]
			f11_arg0.selectionBG:setAlpha( 0 ) --[[ @ 0]]
			f11_local0( f11_arg0.selectionBG ) --[[ @ 0]]
			local f11_local1 = function ( f13_arg0 )
				f11_arg0.RankDotBg:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f11_arg0.RankDotBg:setAlpha( 0.5 ) --[[ @ 0]]
				f11_arg0.RankDotBg:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.RankDotBg:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.RankDotBg:completeAnimation() --[[ @ 0]]
			f11_arg0.RankDotBg:setAlpha( 0 ) --[[ @ 0]]
			f11_local1( f11_arg0.RankDotBg ) --[[ @ 0]]
			local f11_local2 = function ( f14_arg0 )
				f11_arg0.RankMovementDotBg:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f11_arg0.RankMovementDotBg:setAlpha( 0.5 ) --[[ @ 0]]
				f11_arg0.RankMovementDotBg:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.RankMovementDotBg:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.RankMovementDotBg:completeAnimation() --[[ @ 0]]
			f11_arg0.RankMovementDotBg:setAlpha( 0 ) --[[ @ 0]]
			f11_local2( f11_arg0.RankMovementDotBg ) --[[ @ 0]]
			local f11_local3 = function ( f15_arg0 )
				f11_arg0.NameDotBg:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f11_arg0.NameDotBg:setAlpha( 0.5 ) --[[ @ 0]]
				f11_arg0.NameDotBg:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.NameDotBg:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.NameDotBg:completeAnimation() --[[ @ 0]]
			f11_arg0.NameDotBg:setAlpha( 0 ) --[[ @ 0]]
			f11_local3( f11_arg0.NameDotBg ) --[[ @ 0]]
			local f11_local4 = function ( f16_arg0 )
				f11_arg0.PointsDotBg:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f11_arg0.PointsDotBg:setAlpha( 0.5 ) --[[ @ 0]]
				f11_arg0.PointsDotBg:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.PointsDotBg:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.PointsDotBg:completeAnimation() --[[ @ 0]]
			f11_arg0.PointsDotBg:setAlpha( 0 ) --[[ @ 0]]
			f11_local4( f11_arg0.PointsDotBg ) --[[ @ 0]]
			local f11_local5 = function ( f17_arg0 )
				f11_arg0.RubiesDotBg:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f11_arg0.RubiesDotBg:setAlpha( 0.5 ) --[[ @ 0]]
				f11_arg0.RubiesDotBg:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.RubiesDotBg:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.RubiesDotBg:completeAnimation() --[[ @ 0]]
			f11_arg0.RubiesDotBg:setAlpha( 0 ) --[[ @ 0]]
			f11_local5( f11_arg0.RubiesDotBg ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
