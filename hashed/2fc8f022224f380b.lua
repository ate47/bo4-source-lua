-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:19213f1ab565236b" ) --[[ @ 0]]
require( "x64:19ba52b1be9e1c54" ) --[[ @ 0]]

CoD.PC_Korea_Bootsequence_Rating = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.PC_Korea_Bootsequence_Rating = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "PC_Korea_Bootsequence_Rating", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.PC_Korea_Bootsequence_Rating ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.ignoreCursor = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local BackBGScreen = nil --[[ @ 0]]
	
	BackBGScreen = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackBGScreen:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BackBGScreen ) --[[ @ 0]]
	self.BackBGScreen = BackBGScreen --[[ @ 0]]
	
	local KoreaAdditionnalText18 = nil --[[ @ 0]]
	
	KoreaAdditionnalText18 = LUI.UIText.new( 0.5, 0.5, -654.5, 654.5, 0.5, 0.5, -151, -22 ) --[[ @ 0]]
	KoreaAdditionnalText18:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_40029439C03BA7C" ) ) --[[ @ 0]]
	KoreaAdditionnalText18:setTTF( "notosans_regular" ) --[[ @ 0]]
	KoreaAdditionnalText18:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	KoreaAdditionnalText18:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( KoreaAdditionnalText18 ) --[[ @ 0]]
	self.KoreaAdditionnalText18 = KoreaAdditionnalText18 --[[ @ 0]]
	
	local KoreaAdditionnalText15 = nil --[[ @ 0]]
	
	KoreaAdditionnalText15 = LUI.UIText.new( 0.5, 0.5, -783, 783, 0.5, 0.5, -177, -87 ) --[[ @ 0]]
	KoreaAdditionnalText15:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4002E439C03C2FB" ) ) --[[ @ 0]]
	KoreaAdditionnalText15:setTTF( "notosans_regular" ) --[[ @ 0]]
	KoreaAdditionnalText15:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	KoreaAdditionnalText15:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( KoreaAdditionnalText15 ) --[[ @ 0]]
	self.KoreaAdditionnalText15 = KoreaAdditionnalText15 --[[ @ 0]]
	
	local PCKoreaBoot15ContentDescriptorsIcons = nil --[[ @ 0]]
	
	PCKoreaBoot15ContentDescriptorsIcons = CoD.PC_Korea_Boot_15ContentDescriptors_Icons.new( f1_local1, f1_arg0, 0.5, 0.5, -329.5, 329.5, 0, 0, 175, 340 ) --[[ @ 0]]
	self:addElement( PCKoreaBoot15ContentDescriptorsIcons ) --[[ @ 0]]
	self.PCKoreaBoot15ContentDescriptorsIcons = PCKoreaBoot15ContentDescriptorsIcons --[[ @ 0]]
	
	local KoreaRatingDescriptorIcons18 = nil --[[ @ 0]]
	
	KoreaRatingDescriptorIcons18 = CoD.PC_Korea_Boot_18ContentDescriptors_Icons.new( f1_local1, f1_arg0, 0.5, 0.5, -160, 160, 0, 0, 200, 382 ) --[[ @ 0]]
	self:addElement( KoreaRatingDescriptorIcons18 ) --[[ @ 0]]
	self.KoreaRatingDescriptorIcons18 = KoreaRatingDescriptorIcons18 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Rating15",
			condition = function ( menu, element, event )
				return CoD.PCKoreaUtility.ShowKorea15Plus()
			end
		}
	} ) --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local7 = self --[[ @ 0]]
	CoD.PCKoreaUtility.WaitOutKoreanBootWarning( self, f1_arg0, "4000" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.PC_Korea_Bootsequence_Rating.__resetProperties = function ( f3_arg0 )
	f3_arg0.KoreaAdditionnalText15:completeAnimation() --[[ @ 0]]
	f3_arg0.PCKoreaBoot15ContentDescriptorsIcons:completeAnimation() --[[ @ 0]]
	f3_arg0.KoreaRatingDescriptorIcons18:completeAnimation() --[[ @ 0]]
	f3_arg0.KoreaAdditionnalText18:completeAnimation() --[[ @ 0]]
	f3_arg0.KoreaAdditionnalText15:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.PCKoreaBoot15ContentDescriptorsIcons:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.KoreaRatingDescriptorIcons18:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.KoreaAdditionnalText18:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_Korea_Bootsequence_Rating.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f4_arg0.KoreaAdditionnalText18:completeAnimation() --[[ @ 0]]
			f4_arg0.KoreaAdditionnalText18:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.KoreaAdditionnalText18 ) --[[ @ 0]]
			f4_arg0.KoreaAdditionnalText15:completeAnimation() --[[ @ 0]]
			f4_arg0.KoreaAdditionnalText15:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.KoreaAdditionnalText15 ) --[[ @ 0]]
			f4_arg0.PCKoreaBoot15ContentDescriptorsIcons:completeAnimation() --[[ @ 0]]
			f4_arg0.PCKoreaBoot15ContentDescriptorsIcons:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.PCKoreaBoot15ContentDescriptorsIcons ) --[[ @ 0]]
			f4_arg0.KoreaRatingDescriptorIcons18:completeAnimation() --[[ @ 0]]
			f4_arg0.KoreaRatingDescriptorIcons18:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.KoreaRatingDescriptorIcons18 ) --[[ @ 0]]
		end
	},
	Rating15 = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f5_arg0.KoreaAdditionnalText18:completeAnimation() --[[ @ 0]]
			f5_arg0.KoreaAdditionnalText18:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.KoreaAdditionnalText18 ) --[[ @ 0]]
			f5_arg0.KoreaRatingDescriptorIcons18:completeAnimation() --[[ @ 0]]
			f5_arg0.KoreaRatingDescriptorIcons18:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.KoreaRatingDescriptorIcons18 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PC_Korea_Bootsequence_Rating.__onClose = function ( f6_arg0 )
	f6_arg0.PCKoreaBoot15ContentDescriptorsIcons:close() --[[ @ 0]]
	f6_arg0.KoreaRatingDescriptorIcons18:close() --[[ @ 0]]
end
 --[[ @ 0]]
