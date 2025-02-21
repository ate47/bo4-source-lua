-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.ReservesSkipRevealPrompt = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ReservesSkipRevealPrompt.__defaultWidth = 313 --[[ @ 0]]
CoD.ReservesSkipRevealPrompt.__defaultHeight = 26 --[[ @ 0]]
CoD.ReservesSkipRevealPrompt.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ReservesSkipRevealPrompt ) --[[ @ 0]]
	self.id = "ReservesSkipRevealPrompt" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local f1_local1 = nil --[[ @ 0]]
	self.Title = LUI.UIElement.createFake() --[[ @ 0]]
	local TitlePC = nil --[[ @ 0]]
	
	TitlePC = LUI.UIText.new( 0.5, 0.5, -156.5, 156.5, 0.5, 0.5, -13, 13 ) --[[ @ 0]]
	TitlePC:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	TitlePC:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5EC866EC2AFD9F9C" ) ) --[[ @ 0]]
	TitlePC:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TitlePC:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	TitlePC:setLetterSpacing( 6 ) --[[ @ 0]]
	TitlePC:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	TitlePC:setBackingType( 2 ) --[[ @ 0]]
	TitlePC:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	TitlePC:setBackingAlpha( 0 ) --[[ @ 0]]
	TitlePC:setBackingXPadding( 6 ) --[[ @ 0]]
	TitlePC:setBackingYPadding( 2 ) --[[ @ 0]]
	TitlePC:setBackingMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	TitlePC:setBackingShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( TitlePC ) --[[ @ 0]]
	self.TitlePC = TitlePC --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f3_arg0, f3_arg1 )
		f3_arg1.menu = f3_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f3_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.LastInput, function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ReservesSkipRevealPrompt.__resetProperties = function ( f5_arg0 )
	f5_arg0.TitlePC:completeAnimation() --[[ @ 0]]
	f5_arg0.TitlePC:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5EC866EC2AFD9F9C" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ReservesSkipRevealPrompt.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	KBM = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.TitlePC:completeAnimation() --[[ @ 0]]
			f7_arg0.TitlePC:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_E00A39B6FE639E3" ) ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.TitlePC ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
