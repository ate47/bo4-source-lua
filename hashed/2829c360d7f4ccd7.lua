-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.PlayerStatsHeader = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PlayerStatsHeader.__defaultWidth = 200 --[[ @ 0]]
CoD.PlayerStatsHeader.__defaultHeight = 21 --[[ @ 0]]
CoD.PlayerStatsHeader.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PlayerStatsHeader ) --[[ @ 0]]
	self.id = "PlayerStatsHeader" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	Image:setAlpha( 0.18 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local HeaderText = LUI.UIText.new( 0, 0, 6, 204, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	HeaderText:setRGB( 0.14, 0.14, 0.14 ) --[[ @ 0]]
	HeaderText:setText( LocalizeToUpperString( @"hash_608CA99F2C517036" ) ) --[[ @ 0]]
	HeaderText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	HeaderText:setLetterSpacing( 1 ) --[[ @ 0]]
	HeaderText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( HeaderText ) --[[ @ 0]]
	self.HeaderText = HeaderText --[[ @ 0]]
	
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
CoD.PlayerStatsHeader.__resetProperties = function ( f3_arg0 )
	f3_arg0.HeaderText:completeAnimation() --[[ @ 0]]
	f3_arg0.HeaderText:setTopBottom( 0.5, 0.5, -9, 9 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PlayerStatsHeader.__clipsPerState = {
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
			f5_arg0.HeaderText:completeAnimation() --[[ @ 0]]
			f5_arg0.HeaderText:setTopBottom( 0.5, 0.5, -3.5, 9.5 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.HeaderText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
