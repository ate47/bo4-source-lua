-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/store/storecommontextbacking" ) --[[ @ 0]]

CoD.MOTD_BannerImageText = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MOTD_BannerImageText.__defaultWidth = 356 --[[ @ 0]]
CoD.MOTD_BannerImageText.__defaultHeight = 28 --[[ @ 0]]
CoD.MOTD_BannerImageText.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MOTD_BannerImageText ) --[[ @ 0]]
	self.id = "MOTD_BannerImageText" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local StoreCommonTextBacking = CoD.StoreCommonTextBacking.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( StoreCommonTextBacking ) --[[ @ 0]]
	self.StoreCommonTextBacking = StoreCommonTextBacking --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0, 0, 3, 356, 0, 0, 3, 24 ) --[[ @ 0]]
	Title:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	Title:setText( "" ) --[[ @ 0]]
	Title:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Title:setLetterSpacing( 4 ) --[[ @ 0]]
	Title:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) ) --[[ @ 0]]
	Title:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Arabic",
			condition = function ( menu, element, event )
				return IsCurrentLanguageArabic()
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
CoD.MOTD_BannerImageText.__resetProperties = function ( f3_arg0 )
	f3_arg0.Title:completeAnimation() --[[ @ 0]]
	f3_arg0.Title:setLeftRight( 0, 0, 3, 356 ) --[[ @ 0]]
	f3_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MOTD_BannerImageText.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Arabic = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.Title:completeAnimation() --[[ @ 0]]
			f5_arg0.Title:setLeftRight( 0, 0, -37, 316 ) --[[ @ 0]]
			f5_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Title ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.MOTD_BannerImageText.__onClose = function ( f6_arg0 )
	f6_arg0.StoreCommonTextBacking:close() --[[ @ 0]]
end
 --[[ @ 0]]
