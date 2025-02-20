-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/director/directorplaylistheaderb" ) --[[ @ 0]]

CoD.DirectorFindGameDetailModes = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorFindGameDetailModes.__defaultWidth = 500 --[[ @ 0]]
CoD.DirectorFindGameDetailModes.__defaultHeight = 92 --[[ @ 0]]
CoD.DirectorFindGameDetailModes.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 8, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Top ) --[[ @ 0]]
	self:setClass( CoD.DirectorFindGameDetailModes ) --[[ @ 0]]
	self.id = "DirectorFindGameDetailModes" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local description4 = CoD.DirectorPlaylistHeaderB.new( f1_arg0, f1_arg1, 0, 0, 0, 500, 0, 0, 0, 24 ) --[[ @ 0]]
	description4:linkToElementModel( self, "modesTitleString", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			description4.description4:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( description4 ) --[[ @ 0]]
	self.description4 = description4 --[[ @ 0]]
	
	local description5 = LUI.UIText.new( 0, 0, 0, 500, 0, 0, 25, 42 ) --[[ @ 0]]
	description5:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	description5:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	description5:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) ) --[[ @ 0]]
	description5:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) ) --[[ @ 0]]
	description5:linkToElementModel( self, "modesString", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			description5:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( description5 ) --[[ @ 0]]
	self.description5 = description5 --[[ @ 0]]
	
	local warningText = LUI.UIText.new( 0.5, 0.5, -250, 250, 0, 0, 45, 63 ) --[[ @ 0]]
	warningText:setRGB( ColorSet.T8__RED.r, ColorSet.T8__RED.g, ColorSet.T8__RED.b ) --[[ @ 0]]
	warningText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	warningText:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) ) --[[ @ 0]]
	warningText:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) ) --[[ @ 0]]
	warningText:linkToElementModel( self, "maxPartySize", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			warningText:setText( CoD.DirectorUtility.LobbyMaxPartySizeWarningText( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( warningText ) --[[ @ 0]]
	self.warningText = warningText --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Arabic",
			condition = function ( menu, element, event )
				return IsCurrentLanguageArabic()
			end
		},
		{
			stateName = "AsianLanguages",
			condition = function ( menu, element, event )
				return CoD.BaseUtility.IsCurrentLanguageAsian()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorFindGameDetailModes.__resetProperties = function ( f7_arg0 )
	f7_arg0.description5:completeAnimation() --[[ @ 0]]
	f7_arg0.description5:setTopBottom( 0, 0, 25, 42 ) --[[ @ 0]]
	f7_arg0.description5:setLineSpacing( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorFindGameDetailModes.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Arabic = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.description5:completeAnimation() --[[ @ 0]]
			f9_arg0.description5:setLineSpacing( -16 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.description5 ) --[[ @ 0]]
		end
	},
	AsianLanguages = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.description5:completeAnimation() --[[ @ 0]]
			f10_arg0.description5:setTopBottom( 0, 0, 24, 34 ) --[[ @ 0]]
			f10_arg0.description5:setLineSpacing( -6 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.description5 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorFindGameDetailModes.__onClose = function ( f11_arg0 )
	f11_arg0.description4:close() --[[ @ 0]]
	f11_arg0.description5:close() --[[ @ 0]]
	f11_arg0.warningText:close() --[[ @ 0]]
end
 --[[ @ 0]]
