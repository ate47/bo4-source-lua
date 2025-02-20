-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.ScoreboardGameStatusPlayerName = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreboardGameStatusPlayerName.__defaultWidth = 250 --[[ @ 0]]
CoD.ScoreboardGameStatusPlayerName.__defaultHeight = 33 --[[ @ 0]]
CoD.ScoreboardGameStatusPlayerName.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScoreboardGameStatusPlayerName ) --[[ @ 0]]
	self.id = "ScoreboardGameStatusPlayerName" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PlayerName = LUI.UIText.new( 0, 0, 0, 250, 0, 0, 0, 33 ) --[[ @ 0]]
	PlayerName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	PlayerName:setTTF( "notosans_regular" ) --[[ @ 0]]
	PlayerName:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	PlayerName:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	PlayerName:setBackingType( 2 ) --[[ @ 0]]
	PlayerName:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	PlayerName:setBackingAlpha( 0.9 ) --[[ @ 0]]
	PlayerName:setBackingXPadding( 6 ) --[[ @ 0]]
	PlayerName:setBackingYPadding( 3 ) --[[ @ 0]]
	PlayerName:linkToElementModel( self, "scoreboard.playerName", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			PlayerName:setText( CoD.SocialUtility.CleanGamerTag( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PlayerName ) --[[ @ 0]]
	self.PlayerName = PlayerName --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "SelfPlayer",
			condition = function ( menu, element, event )
				return IsSelfClient( f1_arg1, element )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "clientNum", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "clientNum"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ScoreboardGameStatusPlayerName.__resetProperties = function ( f5_arg0 )
	f5_arg0.PlayerName:completeAnimation() --[[ @ 0]]
	f5_arg0.PlayerName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ScoreboardGameStatusPlayerName.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	SelfPlayer = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.PlayerName:completeAnimation() --[[ @ 0]]
			f7_arg0.PlayerName:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.PlayerName ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ScoreboardGameStatusPlayerName.__onClose = function ( f8_arg0 )
	f8_arg0.PlayerName:close() --[[ @ 0]]
end
 --[[ @ 0]]
