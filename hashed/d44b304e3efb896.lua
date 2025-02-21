-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:389ff5ea5fff41b0" ) --[[ @ 0]]

CoD.ScoreboardMapColumnHeadings = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreboardMapColumnHeadings.__defaultWidth = 896 --[[ @ 0]]
CoD.ScoreboardMapColumnHeadings.__defaultHeight = 40 --[[ @ 0]]
CoD.ScoreboardMapColumnHeadings.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScoreboardMapColumnHeadings ) --[[ @ 0]]
	self.id = "ScoreboardMapColumnHeadings" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local MapGridColumnHeading = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MapGridColumnHeading:setRGB( 0, 0, 0 ) --[[ @ 0]]
	MapGridColumnHeading:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	MapGridColumnHeading:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( MapGridColumnHeading ) --[[ @ 0]]
	self.MapGridColumnHeading = MapGridColumnHeading --[[ @ 0]]
	
	local MapGridColumnHeadingTint = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MapGridColumnHeadingTint:setRGB( 0, 0, 0 ) --[[ @ 0]]
	MapGridColumnHeadingTint:setAlpha( 0.9 ) --[[ @ 0]]
	MapGridColumnHeadingTint:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	MapGridColumnHeadingTint:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( MapGridColumnHeadingTint ) --[[ @ 0]]
	self.MapGridColumnHeadingTint = MapGridColumnHeadingTint --[[ @ 0]]
	
	local ColA = CoD.ScoreboardMapColumnHeadingWZ.new( f1_arg0, f1_arg1, 0, 0.12, 0, 0, 0, 0, 0, 40 ) --[[ @ 0]]
	ColA.Section:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4F4D63A16D831F6F" ) ) --[[ @ 0]]
	self:addElement( ColA ) --[[ @ 0]]
	self.ColA = ColA --[[ @ 0]]
	
	local ColA2 = CoD.ScoreboardMapColumnHeadingWZ.new( f1_arg0, f1_arg1, 0.12, 0.25, 0, 0, 0, 0, 0, 40 ) --[[ @ 0]]
	ColA2.Section:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4F4D64A16D832122" ) ) --[[ @ 0]]
	self:addElement( ColA2 ) --[[ @ 0]]
	self.ColA2 = ColA2 --[[ @ 0]]
	
	local ColA3 = CoD.ScoreboardMapColumnHeadingWZ.new( f1_arg0, f1_arg1, 0.25, 0.38, 0, 0, 0, 0, 0, 40 ) --[[ @ 0]]
	ColA3.Section:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4F4D65A16D8322D5" ) ) --[[ @ 0]]
	self:addElement( ColA3 ) --[[ @ 0]]
	self.ColA3 = ColA3 --[[ @ 0]]
	
	local ColA4 = CoD.ScoreboardMapColumnHeadingWZ.new( f1_arg0, f1_arg1, 0.38, 0.5, 0, 0, 0, 0, 0, 40 ) --[[ @ 0]]
	ColA4.Section:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4F4D5EA16D8316F0" ) ) --[[ @ 0]]
	self:addElement( ColA4 ) --[[ @ 0]]
	self.ColA4 = ColA4 --[[ @ 0]]
	
	local ColA5 = CoD.ScoreboardMapColumnHeadingWZ.new( f1_arg0, f1_arg1, 0.5, 0.62, 0, 0, 0, 0, 0, 40 ) --[[ @ 0]]
	ColA5.Section:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4F4D5FA16D8318A3" ) ) --[[ @ 0]]
	self:addElement( ColA5 ) --[[ @ 0]]
	self.ColA5 = ColA5 --[[ @ 0]]
	
	local ColA6 = CoD.ScoreboardMapColumnHeadingWZ.new( f1_arg0, f1_arg1, 0.62, 0.75, 0, 0, 0, 0, 0, 40 ) --[[ @ 0]]
	ColA6.Section:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4F4D60A16D831A56" ) ) --[[ @ 0]]
	self:addElement( ColA6 ) --[[ @ 0]]
	self.ColA6 = ColA6 --[[ @ 0]]
	
	local ColA7 = CoD.ScoreboardMapColumnHeadingWZ.new( f1_arg0, f1_arg1, 0.75, 0.88, 0, 0, 0, 0, 0, 40 ) --[[ @ 0]]
	ColA7.Section:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4F4D61A16D831C09" ) ) --[[ @ 0]]
	self:addElement( ColA7 ) --[[ @ 0]]
	self.ColA7 = ColA7 --[[ @ 0]]
	
	local ColA8 = CoD.ScoreboardMapColumnHeadingWZ.new( f1_arg0, f1_arg1, 0.88, 1, 0, 0, 0, 0, 0, 40 ) --[[ @ 0]]
	ColA8.Section:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4F4D6AA16D832B54" ) ) --[[ @ 0]]
	self:addElement( ColA8 ) --[[ @ 0]]
	self.ColA8 = ColA8 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ScoreboardMapColumnHeadings.__onClose = function ( f2_arg0 )
	f2_arg0.ColA:close() --[[ @ 0]]
	f2_arg0.ColA2:close() --[[ @ 0]]
	f2_arg0.ColA3:close() --[[ @ 0]]
	f2_arg0.ColA4:close() --[[ @ 0]]
	f2_arg0.ColA5:close() --[[ @ 0]]
	f2_arg0.ColA6:close() --[[ @ 0]]
	f2_arg0.ColA7:close() --[[ @ 0]]
	f2_arg0.ColA8:close() --[[ @ 0]]
end
 --[[ @ 0]]
