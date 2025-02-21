-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:537fad1f640b1c10" ) --[[ @ 0]]

CoD.ScoreboardMapRowHeadings = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreboardMapRowHeadings.__defaultWidth = 40 --[[ @ 0]]
CoD.ScoreboardMapRowHeadings.__defaultHeight = 896 --[[ @ 0]]
CoD.ScoreboardMapRowHeadings.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScoreboardMapRowHeadings ) --[[ @ 0]]
	self.id = "ScoreboardMapRowHeadings" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local MapGridRowHeading = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MapGridRowHeading:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	MapGridRowHeading:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( MapGridRowHeading ) --[[ @ 0]]
	self.MapGridRowHeading = MapGridRowHeading --[[ @ 0]]
	
	local MapGridRowHeadingTint = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MapGridRowHeadingTint:setRGB( 0, 0, 0 ) --[[ @ 0]]
	MapGridRowHeadingTint:setAlpha( 0.9 ) --[[ @ 0]]
	MapGridRowHeadingTint:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	MapGridRowHeadingTint:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( MapGridRowHeadingTint ) --[[ @ 0]]
	self.MapGridRowHeadingTint = MapGridRowHeadingTint --[[ @ 0]]
	
	local Row1 = CoD.ScoreboardMapRowHeadingWZ.new( f1_arg0, f1_arg1, 0.5, 0.5, -20, 20, 0, 0.12, 0, 0 ) --[[ @ 0]]
	self:addElement( Row1 ) --[[ @ 0]]
	self.Row1 = Row1 --[[ @ 0]]
	
	local Row2 = CoD.ScoreboardMapRowHeadingWZ.new( f1_arg0, f1_arg1, 0.5, 0.5, -20, 20, 0.12, 0.25, 0, 0 ) --[[ @ 0]]
	Row2.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_109088B4202CB718" ) ) --[[ @ 0]]
	self:addElement( Row2 ) --[[ @ 0]]
	self.Row2 = Row2 --[[ @ 0]]
	
	local Row3 = CoD.ScoreboardMapRowHeadingWZ.new( f1_arg0, f1_arg1, 0.5, 0.5, -20, 20, 0.25, 0.38, 0, 0 ) --[[ @ 0]]
	Row3.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_109089B4202CB8CB" ) ) --[[ @ 0]]
	self:addElement( Row3 ) --[[ @ 0]]
	self.Row3 = Row3 --[[ @ 0]]
	
	local Row4 = CoD.ScoreboardMapRowHeadingWZ.new( f1_arg0, f1_arg1, 0.5, 0.5, -20, 20, 0.38, 0.5, 0, 0 ) --[[ @ 0]]
	Row4.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_10908EB4202CC14A" ) ) --[[ @ 0]]
	self:addElement( Row4 ) --[[ @ 0]]
	self.Row4 = Row4 --[[ @ 0]]
	
	local Row5 = CoD.ScoreboardMapRowHeadingWZ.new( f1_arg0, f1_arg1, 0.5, 0.5, -20, 20, 0.5, 0.62, 0, 0 ) --[[ @ 0]]
	Row5.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_10908FB4202CC2FD" ) ) --[[ @ 0]]
	self:addElement( Row5 ) --[[ @ 0]]
	self.Row5 = Row5 --[[ @ 0]]
	
	local Row6 = CoD.ScoreboardMapRowHeadingWZ.new( f1_arg0, f1_arg1, 0.5, 0.5, -20, 20, 0.62, 0.75, 0, 0 ) --[[ @ 0]]
	Row6.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_10908CB4202CBDE4" ) ) --[[ @ 0]]
	self:addElement( Row6 ) --[[ @ 0]]
	self.Row6 = Row6 --[[ @ 0]]
	
	local Row7 = CoD.ScoreboardMapRowHeadingWZ.new( f1_arg0, f1_arg1, 0.5, 0.5, -20, 20, 0.75, 0.88, 0, 0 ) --[[ @ 0]]
	Row7.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_10908DB4202CBF97" ) ) --[[ @ 0]]
	self:addElement( Row7 ) --[[ @ 0]]
	self.Row7 = Row7 --[[ @ 0]]
	
	local Row8 = CoD.ScoreboardMapRowHeadingWZ.new( f1_arg0, f1_arg1, 0.5, 0.5, -20, 20, 0.88, 1, 0, 0 ) --[[ @ 0]]
	Row8.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_109082B4202CACE6" ) ) --[[ @ 0]]
	self:addElement( Row8 ) --[[ @ 0]]
	self.Row8 = Row8 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ScoreboardMapRowHeadings.__onClose = function ( f2_arg0 )
	f2_arg0.Row1:close() --[[ @ 0]]
	f2_arg0.Row2:close() --[[ @ 0]]
	f2_arg0.Row3:close() --[[ @ 0]]
	f2_arg0.Row4:close() --[[ @ 0]]
	f2_arg0.Row5:close() --[[ @ 0]]
	f2_arg0.Row6:close() --[[ @ 0]]
	f2_arg0.Row7:close() --[[ @ 0]]
	f2_arg0.Row8:close() --[[ @ 0]]
end
 --[[ @ 0]]
