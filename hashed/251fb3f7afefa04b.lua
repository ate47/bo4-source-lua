-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:77dacefed967e3df" ) --[[ @ 0]]

CoD.DirectorTierSkipNotificationAvailableInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorTierSkipNotificationAvailableInternal.__defaultWidth = 650 --[[ @ 0]]
CoD.DirectorTierSkipNotificationAvailableInternal.__defaultHeight = 80 --[[ @ 0]]
CoD.DirectorTierSkipNotificationAvailableInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorTierSkipNotificationAvailableInternal ) --[[ @ 0]]
	self.id = "DirectorTierSkipNotificationAvailableInternal" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backing = CoD.CommonBackingWithBrackets.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local Header = LUI.UIText.new( 0, 0, 56, 642, 0, 0, 5, 29 ) --[[ @ 0]]
	Header:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	Header:setText( LocalizeToUpperString( @"hash_77AA3CA056EF6DC5" ) ) --[[ @ 0]]
	Header:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Header:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	Header:setLetterSpacing( 3 ) --[[ @ 0]]
	Header:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Header:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Header ) --[[ @ 0]]
	self.Header = Header --[[ @ 0]]
	
	local Description = LUI.UIText.new( 0, 0, 56, 642, 0, 0, 33.5, 49.5 ) --[[ @ 0]]
	Description:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Description:setText( CoD.WZUtility.TrialSpecificTierSkip( @"hash_61F79A8E72177799" ) ) --[[ @ 0]]
	Description:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Description:setLetterSpacing( 1 ) --[[ @ 0]]
	Description:setLineSpacing( 1 ) --[[ @ 0]]
	Description:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Description:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Description ) --[[ @ 0]]
	self.Description = Description --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Korea15",
			condition = function ( menu, element, event )
				return IsPC() and CoD.PCKoreaUtility.ShowKorea15Plus()
			end
		},
		{
			stateName = "AsianLanguage",
			condition = function ( menu, element, event )
				return CoD.BaseUtility.IsCurrentLanguageAsian()
			end
		},
		{
			stateName = "RussianLanguage",
			condition = function ( menu, element, event )
				return CoD.BaseUtility.IsCurrentLanguageRussian()
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
CoD.DirectorTierSkipNotificationAvailableInternal.__resetProperties = function ( f5_arg0 )
	f5_arg0.Description:completeAnimation() --[[ @ 0]]
	f5_arg0.Header:completeAnimation() --[[ @ 0]]
	f5_arg0.Description:setTopBottom( 0, 0, 33.5, 49.5 ) --[[ @ 0]]
	f5_arg0.Description:setText( CoD.WZUtility.TrialSpecificTierSkip( @"hash_61F79A8E72177799" ) ) --[[ @ 0]]
	f5_arg0.Header:setTopBottom( 0, 0, 5, 29 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorTierSkipNotificationAvailableInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Korea15 = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.Description:completeAnimation() --[[ @ 0]]
			f7_arg0.Description:setText( CoD.WZUtility.TrialSpecificTierSkip( @"hash_6F8EF1BE7608E431" ) ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Description ) --[[ @ 0]]
		end
	},
	AsianLanguage = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.Header:completeAnimation() --[[ @ 0]]
			f8_arg0.Header:setTopBottom( 0, 0, 11, 25 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Header ) --[[ @ 0]]
			f8_arg0.Description:completeAnimation() --[[ @ 0]]
			f8_arg0.Description:setTopBottom( 0, 0, 35.5, 47.5 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Description ) --[[ @ 0]]
		end
	},
	RussianLanguage = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.Header:completeAnimation() --[[ @ 0]]
			f9_arg0.Header:setTopBottom( 0, 0, 11, 30 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Header ) --[[ @ 0]]
			f9_arg0.Description:completeAnimation() --[[ @ 0]]
			f9_arg0.Description:setTopBottom( 0, 0, 35.5, 51.5 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Description ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorTierSkipNotificationAvailableInternal.__onClose = function ( f10_arg0 )
	f10_arg0.Backing:close() --[[ @ 0]]
end
 --[[ @ 0]]
