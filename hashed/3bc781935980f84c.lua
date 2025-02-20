-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:77dacefed967e3df" ) --[[ @ 0]]

CoD.DirectorWarningMessage = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorWarningMessage.__defaultWidth = 382 --[[ @ 0]]
CoD.DirectorWarningMessage.__defaultHeight = 55 --[[ @ 0]]
CoD.DirectorWarningMessage.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BlackMarketUtility.SetupTierSkipModels( f1_arg1, f1_arg0 ) --[[ @ 0]]
	self:setClass( CoD.DirectorWarningMessage ) --[[ @ 0]]
	self.id = "DirectorWarningMessage" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backing = CoD.CommonBackingWithBrackets.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local Description = LUI.UIText.new( 0.05, 0.95, 0, 0, 0.35, 0.35, -8, 8 ) --[[ @ 0]]
	Description:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Description:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_69EFE6AE2751120B" ) ) --[[ @ 0]]
	Description:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Description:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Description:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( Description ) --[[ @ 0]]
	self.Description = Description --[[ @ 0]]
	
	local WarningIcon = LUI.UIImage.new( 0, 0, -41, -9, 0.5, 0.5, -16, 16 ) --[[ @ 0]]
	WarningIcon:setRGB( ColorSet.ResistanceHigh.r, ColorSet.ResistanceHigh.g, ColorSet.ResistanceHigh.b ) --[[ @ 0]]
	WarningIcon:setImage( RegisterImage( @"hash_51F10DEAAEFC50A4" ) ) --[[ @ 0]]
	self:addElement( WarningIcon ) --[[ @ 0]]
	self.WarningIcon = WarningIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible_SR",
			condition = function ( menu, element, event )
				return CoD.WZUtility[@"hash_E6C072866FEDB9F"]()
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = self --[[ @ 0]]
	local f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["lobbyRoot.playlistId"], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "lobbyRoot.playlistId"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorWarningMessage.__resetProperties = function ( f4_arg0 )
	f4_arg0.Backing:completeAnimation() --[[ @ 0]]
	f4_arg0.Description:completeAnimation() --[[ @ 0]]
	f4_arg0.WarningIcon:completeAnimation() --[[ @ 0]]
	f4_arg0.Backing:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.Description:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.Description:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_69EFE6AE2751120B" ) ) --[[ @ 0]]
	f4_arg0.WarningIcon:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorWarningMessage.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f5_arg0.Backing:completeAnimation() --[[ @ 0]]
			f5_arg0.Backing:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Backing ) --[[ @ 0]]
			f5_arg0.Description:completeAnimation() --[[ @ 0]]
			f5_arg0.Description:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Description ) --[[ @ 0]]
			f5_arg0.WarningIcon:completeAnimation() --[[ @ 0]]
			f5_arg0.WarningIcon:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.WarningIcon ) --[[ @ 0]]
		end
	},
	Visible_SR = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f6_arg0.Backing:completeAnimation() --[[ @ 0]]
			f6_arg0.Backing:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Backing ) --[[ @ 0]]
			f6_arg0.Description:completeAnimation() --[[ @ 0]]
			f6_arg0.Description:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.Description:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_69EFE6AE2751120B" ) ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Description ) --[[ @ 0]]
			f6_arg0.WarningIcon:completeAnimation() --[[ @ 0]]
			f6_arg0.WarningIcon:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.WarningIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorWarningMessage.__onClose = function ( f7_arg0 )
	f7_arg0.Backing:close() --[[ @ 0]]
end
 --[[ @ 0]]
