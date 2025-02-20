-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/scoreboard/tabbedscoreboardinfocursor" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scoreboard/tabbedscoreboardinfostripe" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scoreboard/tabbedscoreboardinfoterrain" ) --[[ @ 0]]

CoD.TabbedScoreboardMapInfoboxRight = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TabbedScoreboardMapInfoboxRight.__defaultWidth = 188 --[[ @ 0]]
CoD.TabbedScoreboardMapInfoboxRight.__defaultHeight = 94 --[[ @ 0]]
CoD.TabbedScoreboardMapInfoboxRight.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TabbedScoreboardMapInfoboxRight ) --[[ @ 0]]
	self.id = "TabbedScoreboardMapInfoboxRight" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local InfoRIghtBG = LUI.UIImage.new( 0, 0, 0, 188, 0, 0, 75, 75 ) --[[ @ 0]]
	InfoRIghtBG:setImage( RegisterImage( @"hash_2179F8C7A3100CD7" ) ) --[[ @ 0]]
	self:addElement( InfoRIghtBG ) --[[ @ 0]]
	self.InfoRIghtBG = InfoRIghtBG --[[ @ 0]]
	
	local TerrainAdd = CoD.TabbedScoreboardInfoTerrain.new( f1_arg0, f1_arg1, 0, 0, -1, 189, 0, 0, 7, 77 ) --[[ @ 0]]
	self:addElement( TerrainAdd ) --[[ @ 0]]
	self.TerrainAdd = TerrainAdd --[[ @ 0]]
	
	local InfoRightBotBar = LUI.UIImage.new( 0, 0, 0, 188, 0, 0, 89, 97 ) --[[ @ 0]]
	InfoRightBotBar:setRGB( 0.95, 0.95, 0.95 ) --[[ @ 0]]
	InfoRightBotBar:setImage( RegisterImage( @"hash_1FCFDB982EBF8906" ) ) --[[ @ 0]]
	self:addElement( InfoRightBotBar ) --[[ @ 0]]
	self.InfoRightBotBar = InfoRightBotBar --[[ @ 0]]
	
	local InfoStripe = CoD.TabbedScoreboardInfoStripe.new( f1_arg0, f1_arg1, 0, 0, -4, 184, 0, 0, 71, 95 ) --[[ @ 0]]
	self:addElement( InfoStripe ) --[[ @ 0]]
	self.InfoStripe = InfoStripe --[[ @ 0]]
	
	local InfoRightRedBar = LUI.UIImage.new( 0, 0, 0, 188, 0, 0, 75, 91 ) --[[ @ 0]]
	InfoRightRedBar:setImage( RegisterImage( @"hash_678CAD9EF906ADDA" ) ) --[[ @ 0]]
	self:addElement( InfoRightRedBar ) --[[ @ 0]]
	self.InfoRightRedBar = InfoRightRedBar --[[ @ 0]]
	
	local InfoRightTopBar = LUI.UIImage.new( 0, 0, 0, 188, 0, 0, 69, 77 ) --[[ @ 0]]
	InfoRightTopBar:setRGB( 0.95, 0.95, 0.95 ) --[[ @ 0]]
	InfoRightTopBar:setImage( RegisterImage( @"hash_1FCFDB982EBF8906" ) ) --[[ @ 0]]
	self:addElement( InfoRightTopBar ) --[[ @ 0]]
	self.InfoRightTopBar = InfoRightTopBar --[[ @ 0]]
	
	local Fui = LUI.UIImage.new( 0, 0, 2, 188, 0, 0, -3, 71 ) --[[ @ 0]]
	Fui:setImage( RegisterImage( @"hash_2BFA29122B19C83" ) ) --[[ @ 0]]
	self:addElement( Fui ) --[[ @ 0]]
	self.Fui = Fui --[[ @ 0]]
	
	local CursorFocus = CoD.TabbedScoreboardInfoCursor.new( f1_arg0, f1_arg1, 0, 0, 51.5, 81.5, 0, 0, 23, 53 ) --[[ @ 0]]
	self:addElement( CursorFocus ) --[[ @ 0]]
	self.CursorFocus = CursorFocus --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.TabbedScoreboardMapInfoboxRight.__resetProperties = function ( f2_arg0 )
	f2_arg0.InfoStripe:completeAnimation() --[[ @ 0]]
	f2_arg0.InfoRightRedBar:completeAnimation() --[[ @ 0]]
	f2_arg0.InfoRIghtBG:completeAnimation() --[[ @ 0]]
	f2_arg0.InfoRightTopBar:completeAnimation() --[[ @ 0]]
	f2_arg0.Fui:completeAnimation() --[[ @ 0]]
	f2_arg0.TerrainAdd:completeAnimation() --[[ @ 0]]
	f2_arg0.CursorFocus:completeAnimation() --[[ @ 0]]
	f2_arg0.InfoStripe:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.InfoRightRedBar:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.InfoRIghtBG:setTopBottom( 0, 0, 75, 75 ) --[[ @ 0]]
	f2_arg0.InfoRIghtBG:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.InfoRightTopBar:setTopBottom( 0, 0, 69, 77 ) --[[ @ 0]]
	f2_arg0.InfoRightTopBar:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Fui:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.TerrainAdd:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.CursorFocus:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TabbedScoreboardMapInfoboxRight.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 500, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f5_arg0:setTopBottom( 0, 0, 7, 75 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0:beginAnimation( 199 ) --[[ @ 0]]
				f4_arg0:setTopBottom( 0, 0, 55.57, 75 ) --[[ @ 0]]
				f4_arg0:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.InfoRIghtBG:beginAnimation( 1900 ) --[[ @ 0]]
			f3_arg0.InfoRIghtBG:setTopBottom( 0, 0, 75, 75 ) --[[ @ 0]]
			f3_arg0.InfoRIghtBG:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.InfoRIghtBG:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.InfoRIghtBG:registerEventHandler( "transition_complete_keyframe", f3_local0 ) --[[ @ 0]]
			local f3_local1 = function ( f6_arg0 )
				f6_arg0:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f6_arg0:setAlpha( 1 ) --[[ @ 0]]
				f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.TerrainAdd:beginAnimation( 2600 ) --[[ @ 0]]
			f3_arg0.TerrainAdd:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.TerrainAdd:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.TerrainAdd:registerEventHandler( "transition_complete_keyframe", f3_local1 ) --[[ @ 0]]
			local f3_local2 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					f8_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f8_arg0:setAlpha( 0 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
						element:playClip( "DefaultClip" ) --[[ @ 0]]
						f3_arg0.clipFinished( element, event ) --[[ @ 0]]
					end ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0:playClip( "DefaultClip" ) --[[ @ 0]]
				f7_arg0:beginAnimation( 799 ) --[[ @ 0]]
				f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.InfoStripe:beginAnimation( 1100 ) --[[ @ 0]]
			f3_arg0.InfoStripe:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.InfoStripe:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.InfoStripe:registerEventHandler( "transition_complete_keyframe", f3_local2 ) --[[ @ 0]]
			local f3_local3 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					f11_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f11_arg0:setAlpha( 1 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f10_arg0:beginAnimation( 799 ) --[[ @ 0]]
				f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.InfoRightRedBar:beginAnimation( 1100 ) --[[ @ 0]]
			f3_arg0.InfoRightRedBar:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.InfoRightRedBar:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.InfoRightRedBar:registerEventHandler( "transition_complete_keyframe", f3_local3 ) --[[ @ 0]]
			local f3_local4 = function ( f12_arg0 )
				f12_arg0:beginAnimation( 699, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f12_arg0:setTopBottom( 0, 0, 0, 8 ) --[[ @ 0]]
				f12_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.InfoRightTopBar:beginAnimation( 1900 ) --[[ @ 0]]
			f3_arg0.InfoRightTopBar:setTopBottom( 0, 0, 69, 77 ) --[[ @ 0]]
			f3_arg0.InfoRightTopBar:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.InfoRightTopBar:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.InfoRightTopBar:registerEventHandler( "transition_complete_keyframe", f3_local4 ) --[[ @ 0]]
			local f3_local5 = function ( f13_arg0 )
				f13_arg0:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f13_arg0:setAlpha( 1 ) --[[ @ 0]]
				f13_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Fui:beginAnimation( 2600 ) --[[ @ 0]]
			f3_arg0.Fui:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.Fui:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.Fui:registerEventHandler( "transition_complete_keyframe", f3_local5 ) --[[ @ 0]]
			f3_arg0.CursorFocus:beginAnimation( 2900 ) --[[ @ 0]]
			f3_arg0.CursorFocus:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.CursorFocus:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.CursorFocus:registerEventHandler( "transition_complete_keyframe", function ( element, event )
				element:playClip( "DefaultClip" ) --[[ @ 0]]
				f3_arg0.clipFinished( element, event ) --[[ @ 0]]
			end ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.TabbedScoreboardMapInfoboxRight.__onClose = function ( f15_arg0 )
	f15_arg0.TerrainAdd:close() --[[ @ 0]]
	f15_arg0.InfoStripe:close() --[[ @ 0]]
	f15_arg0.CursorFocus:close() --[[ @ 0]]
end
 --[[ @ 0]]
