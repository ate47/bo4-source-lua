-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/cac/restricteditemwarning" ) --[[ @ 0]]

CoD.HubEquipmentItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HubEquipmentItem.__defaultWidth = 200 --[[ @ 0]]
CoD.HubEquipmentItem.__defaultHeight = 346 --[[ @ 0]]
CoD.HubEquipmentItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HubEquipmentItem ) --[[ @ 0]]
	self.id = "HubEquipmentItem" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Icon = LUI.UIImage.new( 0.5, 0.5, -75, 75, 0, 0, 20, 170 ) --[[ @ 0]]
	self:addElement( Icon ) --[[ @ 0]]
	self.Icon = Icon --[[ @ 0]]
	
	local name = LUI.UIText.new( 0.5, 0.5, -100, 100, 0, 0, 209, 230 ) --[[ @ 0]]
	name:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	name:setAlpha( 0.5 ) --[[ @ 0]]
	name:setText( "" ) --[[ @ 0]]
	name:setTTF( "dinnext_regular" ) --[[ @ 0]]
	name:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	name:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( name ) --[[ @ 0]]
	self.name = name --[[ @ 0]]
	
	local categoryHeader = LUI.UIText.new( 0.5, 0.5, -100, 100, 0, 0, 182, 200 ) --[[ @ 0]]
	categoryHeader:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	categoryHeader:setAlpha( 0.15 ) --[[ @ 0]]
	categoryHeader:setText( "" ) --[[ @ 0]]
	categoryHeader:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	categoryHeader:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	categoryHeader:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( categoryHeader ) --[[ @ 0]]
	self.categoryHeader = categoryHeader --[[ @ 0]]
	
	local statHeader = LUI.UIText.new( 0.5, 0.5, -100, 100, 0, 0, 278, 296 ) --[[ @ 0]]
	statHeader:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	statHeader:setAlpha( 0.15 ) --[[ @ 0]]
	statHeader:setText( "" ) --[[ @ 0]]
	statHeader:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	statHeader:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	statHeader:setAlignment( Enum[@"LUIAlignment"][@"hash_670510683C22104B"] ) --[[ @ 0]]
	self:addElement( statHeader ) --[[ @ 0]]
	self.statHeader = statHeader --[[ @ 0]]
	
	local statValue = LUI.UIText.new( 0.5, 0.5, -100, 100, 0, 0, 301, 341 ) --[[ @ 0]]
	statValue:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	statValue:setAlpha( 0.5 ) --[[ @ 0]]
	statValue:setText( "" ) --[[ @ 0]]
	statValue:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	statValue:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	self:addElement( statValue ) --[[ @ 0]]
	self.statValue = statValue --[[ @ 0]]
	
	local RestrictedItemWarning = CoD.RestrictedItemWarning.new( f1_arg0, f1_arg1, 0, 0, 70, 130, 0, 0, 70, 120 ) --[[ @ 0]]
	self:addElement( RestrictedItemWarning ) --[[ @ 0]]
	self.RestrictedItemWarning = RestrictedItemWarning --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoStats",
			condition = function ( menu, element, event )
				return AlwaysFalse()
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
CoD.HubEquipmentItem.__resetProperties = function ( f3_arg0 )
	f3_arg0.statHeader:completeAnimation() --[[ @ 0]]
	f3_arg0.statValue:completeAnimation() --[[ @ 0]]
	f3_arg0.statHeader:setAlpha( 0.15 ) --[[ @ 0]]
	f3_arg0.statValue:setAlpha( 0.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.HubEquipmentItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	NoStats = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f5_arg0.statHeader:completeAnimation() --[[ @ 0]]
			f5_arg0.statHeader:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.statHeader ) --[[ @ 0]]
			f5_arg0.statValue:completeAnimation() --[[ @ 0]]
			f5_arg0.statValue:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.statValue ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.HubEquipmentItem.__onClose = function ( f6_arg0 )
	f6_arg0.RestrictedItemWarning:close() --[[ @ 0]]
end
 --[[ @ 0]]
