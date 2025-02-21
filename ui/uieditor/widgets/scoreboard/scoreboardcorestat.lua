-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.ScoreboardCoreStat = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreboardCoreStat.__defaultWidth = 76 --[[ @ 0]]
CoD.ScoreboardCoreStat.__defaultHeight = 51 --[[ @ 0]]
CoD.ScoreboardCoreStat.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 5, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Top ) --[[ @ 0]]
	self:setClass( CoD.ScoreboardCoreStat ) --[[ @ 0]]
	self.id = "ScoreboardCoreStat" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local StatName = LUI.UIText.new( -0.8, -0.8, 61, 137, 0, 0, 0, 21 ) --[[ @ 0]]
	StatName:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
	StatName:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_16B234CB46B5ACD4" ) ) --[[ @ 0]]
	StatName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	StatName:setLetterSpacing( 2 ) --[[ @ 0]]
	StatName:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( StatName ) --[[ @ 0]]
	self.StatName = StatName --[[ @ 0]]
	
	local StatValue = LUI.UIText.new( 0, 0, 19, 57, 0.5, 0.5, 0.5, 39.5 ) --[[ @ 0]]
	StatValue:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	StatValue:setAlpha( 0.7 ) --[[ @ 0]]
	StatValue:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	StatValue:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	StatValue:setLetterSpacing( 2 ) --[[ @ 0]]
	StatValue:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	StatValue:setBackingType( 2 ) --[[ @ 0]]
	StatValue:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	StatValue:setBackingAlpha( 0.6 ) --[[ @ 0]]
	StatValue:setBackingXPadding( 16 ) --[[ @ 0]]
	StatValue:setBackingYPadding( 3 ) --[[ @ 0]]
	self:addElement( StatValue ) --[[ @ 0]]
	self.StatValue = StatValue --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ScoreboardCoreStat.__resetProperties = function ( f3_arg0 )
	f3_arg0.StatName:completeAnimation() --[[ @ 0]]
	f3_arg0.StatValue:completeAnimation() --[[ @ 0]]
	f3_arg0.StatName:setLeftRight( -0.8, -0.8, 61, 137 ) --[[ @ 0]]
	f3_arg0.StatValue:setLeftRight( 0, 0, 19, 57 ) --[[ @ 0]]
	f3_arg0.StatValue:setTopBottom( 0.5, 0.5, 0.5, 39.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ScoreboardCoreStat.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f5_arg0.StatName:completeAnimation() --[[ @ 0]]
			f5_arg0.StatName:setLeftRight( 0, 0, 0, 76 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.StatName ) --[[ @ 0]]
			f5_arg0.StatValue:completeAnimation() --[[ @ 0]]
			f5_arg0.StatValue:setLeftRight( 0, 0, 19, 57 ) --[[ @ 0]]
			f5_arg0.StatValue:setTopBottom( 0, 0, 24, 51 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.StatValue ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
