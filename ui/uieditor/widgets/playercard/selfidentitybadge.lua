-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/callingcards/callingcards_framewidget" ) --[[ @ 0]]
require( "x64:188882bece551bf0" ) --[[ @ 0]]

CoD.SelfIdentityBadge = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SelfIdentityBadge.__defaultWidth = 328 --[[ @ 0]]
CoD.SelfIdentityBadge.__defaultHeight = 65 --[[ @ 0]]
CoD.SelfIdentityBadge.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SelfIdentityBadge ) --[[ @ 0]]
	self.id = "SelfIdentityBadge" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local emblem = LUI.UIImage.new( 0, 0, 4, 69, 0, 0, 0, 65 ) --[[ @ 0]]
	emblem:linkToElementModel( self, "xuid", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			emblem:setupPlayerEmblemByXUID( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( emblem ) --[[ @ 0]]
	self.emblem = emblem --[[ @ 0]]
	
	local CallingCardsFrameWidget = CoD.CallingCards_FrameWidget.new( f1_arg0, f1_arg1, 0, 0, 69, 329, 0, 0, 0, 65 ) --[[ @ 0]]
	CallingCardsFrameWidget:setRGB( 0.9, 0.9, 0.9 ) --[[ @ 0]]
	CallingCardsFrameWidget:linkToElementModel( self, nil, false, function ( model )
		CallingCardsFrameWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CallingCardsFrameWidget ) --[[ @ 0]]
	self.CallingCardsFrameWidget = CallingCardsFrameWidget --[[ @ 0]]
	
	local clantag = LUI.UIText.new( 0, 0, 74, 316, 0, 0, 26.5, 42.5 ) --[[ @ 0]]
	clantag.__Color = function ()
		clantag:setRGB( CoD.DirectorUtility.LobbyPlayerColorByXUIDElseDefaultSelfModel( self:getModel(), "xuid", 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	clantag.__Color() --[[ @ 0]]
	clantag:setTTF( "notosans_regular" ) --[[ @ 0]]
	clantag:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	clantag:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	clantag:setBackingType( 2 ) --[[ @ 0]]
	clantag:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	clantag:setBackingAlpha( 0.9 ) --[[ @ 0]]
	clantag:setBackingXPadding( 2 ) --[[ @ 0]]
	clantag:linkToElementModel( self, "clantag", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			clantag:setText( StringAsClanTag( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( clantag ) --[[ @ 0]]
	self.clantag = clantag --[[ @ 0]]
	
	local membername = CoD.DirectorLobbyMemberName.new( f1_arg0, f1_arg1, 0, 0, 74, 294, 0, 0, 4.5, 25.5 ) --[[ @ 0]]
	membername:linkToElementModel( self, nil, false, function ( model )
		membername:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( membername ) --[[ @ 0]]
	self.membername = membername --[[ @ 0]]
	
	clantag:linkToElementModel( self, "xuid", true, clantag.__Color ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	CallingCardsFrameWidget.id = "CallingCardsFrameWidget" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SelfIdentityBadge.__resetProperties = function ( f8_arg0 )
	f8_arg0.membername:completeAnimation() --[[ @ 0]]
	f8_arg0.clantag:completeAnimation() --[[ @ 0]]
	f8_arg0.CallingCardsFrameWidget:completeAnimation() --[[ @ 0]]
	f8_arg0.emblem:completeAnimation() --[[ @ 0]]
	f8_arg0.membername:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.clantag:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.CallingCardsFrameWidget:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.emblem:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SelfIdentityBadge.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Invisible = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f10_arg0.emblem:completeAnimation() --[[ @ 0]]
			f10_arg0.emblem:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.emblem ) --[[ @ 0]]
			f10_arg0.CallingCardsFrameWidget:completeAnimation() --[[ @ 0]]
			f10_arg0.CallingCardsFrameWidget:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.CallingCardsFrameWidget ) --[[ @ 0]]
			f10_arg0.clantag:completeAnimation() --[[ @ 0]]
			f10_arg0.clantag:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.clantag ) --[[ @ 0]]
			f10_arg0.membername:completeAnimation() --[[ @ 0]]
			f10_arg0.membername:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.membername ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.SelfIdentityBadge.__onClose = function ( f11_arg0 )
	f11_arg0.emblem:close() --[[ @ 0]]
	f11_arg0.CallingCardsFrameWidget:close() --[[ @ 0]]
	f11_arg0.clantag:close() --[[ @ 0]]
	f11_arg0.membername:close() --[[ @ 0]]
end
 --[[ @ 0]]
