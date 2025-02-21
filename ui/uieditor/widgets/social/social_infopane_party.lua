-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/social/social_partylist" ) --[[ @ 0]]

CoD.Social_InfoPane_Party = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Social_InfoPane_Party.__defaultWidth = 290 --[[ @ 0]]
CoD.Social_InfoPane_Party.__defaultHeight = 169 --[[ @ 0]]
CoD.Social_InfoPane_Party.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Social_InfoPane_Party ) --[[ @ 0]]
	self.id = "Social_InfoPane_Party" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local partyHeader = LUI.UIText.new( 0, 0, 0, 290, 0, 0, 0, 18 ) --[[ @ 0]]
	partyHeader:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	partyHeader:setZoom( 5 ) --[[ @ 0]]
	partyHeader:setText( LocalizeToUpperString( @"hash_1CF48FF8759D4662" ) ) --[[ @ 0]]
	partyHeader:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	partyHeader:setLetterSpacing( 3 ) --[[ @ 0]]
	partyHeader:setLineSpacing( 1 ) --[[ @ 0]]
	partyHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( partyHeader ) --[[ @ 0]]
	self.partyHeader = partyHeader --[[ @ 0]]
	
	local PlayerList = LUI.UIList.new( f1_arg0, f1_arg1, 2, 0, nil, false, false, false, false ) --[[ @ 0]]
	PlayerList:setLeftRight( 0, 0, 20, 458 ) --[[ @ 0]]
	PlayerList:setTopBottom( 0, 0, 23, 151 ) --[[ @ 0]]
	PlayerList:setWidgetType( CoD.Social_PartyList ) --[[ @ 0]]
	PlayerList:setVerticalCount( 5 ) --[[ @ 0]]
	PlayerList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	PlayerList:setDataSource( "SocialPlayerPartyList" ) --[[ @ 0]]
	self:addElement( PlayerList ) --[[ @ 0]]
	self.PlayerList = PlayerList --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hide",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "socialRoot.tab", "party" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["socialRoot.tab"], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "socialRoot.tab"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PlayerList.id = "PlayerList" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Social_InfoPane_Party.__resetProperties = function ( f4_arg0 )
	f4_arg0.partyHeader:completeAnimation() --[[ @ 0]]
	f4_arg0.PlayerList:completeAnimation() --[[ @ 0]]
	f4_arg0.partyHeader:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.PlayerList:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Social_InfoPane_Party.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hide = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.partyHeader:completeAnimation() --[[ @ 0]]
			f6_arg0.partyHeader:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.partyHeader ) --[[ @ 0]]
			f6_arg0.PlayerList:completeAnimation() --[[ @ 0]]
			f6_arg0.PlayerList:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.PlayerList ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Social_InfoPane_Party.__onClose = function ( f7_arg0 )
	f7_arg0.PlayerList:close() --[[ @ 0]]
end
 --[[ @ 0]]
