-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.CodCasterPlayerListRowWidgetTextInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterPlayerListRowWidgetTextInternal.__defaultWidth = 165 --[[ @ 0]]
CoD.CodCasterPlayerListRowWidgetTextInternal.__defaultHeight = 15 --[[ @ 0]]
CoD.CodCasterPlayerListRowWidgetTextInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterPlayerListRowWidgetTextInternal ) --[[ @ 0]]
	self.id = "CodCasterPlayerListRowWidgetTextInternal" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Gamertag = LUI.UIText.new( 0, 0, 0, 165, 0.5, 0.5, -7.5, 7.5 ) --[[ @ 0]]
	Gamertag:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4A67CAA5982ED86C" ) ) --[[ @ 0]]
	Gamertag:setTTF( "notosans_regular" ) --[[ @ 0]]
	Gamertag:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( Gamertag ) --[[ @ 0]]
	self.Gamertag = Gamertag --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "AsianLanguage",
			condition = function ( menu, element, event )
				return CoD.BaseUtility.IsCurrentLanguageAsian()
			end
		}
	} ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CodCasterPlayerListRowWidgetTextInternal.__resetProperties = function ( f3_arg0 )
	f3_arg0.Gamertag:completeAnimation() --[[ @ 0]]
	f3_arg0.Gamertag:setTopBottom( 0.5, 0.5, -7.5, 7.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCasterPlayerListRowWidgetTextInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	AsianLanguage = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.Gamertag:completeAnimation() --[[ @ 0]]
			f5_arg0.Gamertag:setTopBottom( 0.5, 0.5, -2.5, 7.5 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Gamertag ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
