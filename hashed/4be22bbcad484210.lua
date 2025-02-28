-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:6c98cfa25d10d264" ) --[[ @ 0]]

CoD.PC_IGR_AAR_BonusXP = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_IGR_AAR_BonusXP.__defaultWidth = 350 --[[ @ 0]]
CoD.PC_IGR_AAR_BonusXP.__defaultHeight = 189 --[[ @ 0]]
CoD.PC_IGR_AAR_BonusXP.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_IGR_AAR_BonusXP ) --[[ @ 0]]
	self.id = "PC_IGR_AAR_BonusXP" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local IGRPerkElement2 = CoD.IGRPerkElement.new( f1_arg0, f1_arg1, 0, 0, 0, 350, 0.08, 0.08, 63, 127 ) --[[ @ 0]]
	IGRPerkElement2.PerkLogo:setImage( RegisterImage( @"hash_58FBBCE5058992F3" ) ) --[[ @ 0]]
	IGRPerkElement2.PerkText:setText( CoD.PCKoreaUtility.InjectBonusGunXP( @"hash_6936FCC81C9EE8D0" ) ) --[[ @ 0]]
	self:addElement( IGRPerkElement2 ) --[[ @ 0]]
	self.IGRPerkElement2 = IGRPerkElement2 --[[ @ 0]]
	
	local IGRPerkElement3 = CoD.IGRPerkElement.new( f1_arg0, f1_arg1, 0, 0, 0, 350, 0.08, 0.08, 115, 179 ) --[[ @ 0]]
	IGRPerkElement3.PerkLogo:setImage( RegisterImage( @"hash_6C1460CF69AB482B" ) ) --[[ @ 0]]
	IGRPerkElement3.PerkText:setText( CoD.PCKoreaUtility.InjectBonusCredits( @"hash_1327C56902BCB8A5" ) ) --[[ @ 0]]
	self:addElement( IGRPerkElement3 ) --[[ @ 0]]
	self.IGRPerkElement3 = IGRPerkElement3 --[[ @ 0]]
	
	local IGRPerkElement1 = CoD.IGRPerkElement.new( f1_arg0, f1_arg1, 0, 0, 0, 350, 0, 0, 24, 88 ) --[[ @ 0]]
	IGRPerkElement1.PerkLogo:setImage( RegisterImage( @"hash_5CFD527F0E4A01CE" ) ) --[[ @ 0]]
	IGRPerkElement1.PerkText:setText( CoD.PCKoreaUtility.InjectBonusXP( @"hash_1D38DFFC56710A2B" ) ) --[[ @ 0]]
	self:addElement( IGRPerkElement1 ) --[[ @ 0]]
	self.IGRPerkElement1 = IGRPerkElement1 --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0.03, 0.03, -3, 332, 0, 0, 0, 25 ) --[[ @ 0]]
	Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_44C5A165B66FA0C3" ) ) --[[ @ 0]]
	Title:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Title:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	Title:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	Title:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
	Title:setShaderVector( 2, 1, 0.78, 0, 0.3 ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local SeparationLine = LUI.UIImage.new( 0.02, 0.02, 0, 327, 0, 0, 28, 29 ) --[[ @ 0]]
	SeparationLine:setRGB( 0.51, 0.51, 0.51 ) --[[ @ 0]]
	self:addElement( SeparationLine ) --[[ @ 0]]
	self.SeparationLine = SeparationLine --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not CoD.PCKoreaUtility.IsInIGR()
			end
		},
		{
			stateName = "Warzone",
			condition = function ( menu, element, event )
				return IsWarzone()
			end
		}
	} ) --[[ @ 0]]
	local f1_local6 = self --[[ @ 0]]
	local f1_local7 = self.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["lobbyRoot.lobbyNav"], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_IGR_AAR_BonusXP.__resetProperties = function ( f5_arg0 )
	f5_arg0.SeparationLine:completeAnimation() --[[ @ 0]]
	f5_arg0.Title:completeAnimation() --[[ @ 0]]
	f5_arg0.IGRPerkElement1:completeAnimation() --[[ @ 0]]
	f5_arg0.IGRPerkElement2:completeAnimation() --[[ @ 0]]
	f5_arg0.IGRPerkElement3:completeAnimation() --[[ @ 0]]
	f5_arg0.SeparationLine:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.IGRPerkElement1:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.IGRPerkElement2:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.IGRPerkElement3:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_IGR_AAR_BonusXP.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f7_arg0.IGRPerkElement2:completeAnimation() --[[ @ 0]]
			f7_arg0.IGRPerkElement2:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.IGRPerkElement2 ) --[[ @ 0]]
			f7_arg0.IGRPerkElement3:completeAnimation() --[[ @ 0]]
			f7_arg0.IGRPerkElement3:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.IGRPerkElement3 ) --[[ @ 0]]
			f7_arg0.IGRPerkElement1:completeAnimation() --[[ @ 0]]
			f7_arg0.IGRPerkElement1:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.IGRPerkElement1 ) --[[ @ 0]]
			f7_arg0.Title:completeAnimation() --[[ @ 0]]
			f7_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Title ) --[[ @ 0]]
			f7_arg0.SeparationLine:completeAnimation() --[[ @ 0]]
			f7_arg0.SeparationLine:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.SeparationLine ) --[[ @ 0]]
		end
	},
	Warzone = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f8_arg0.IGRPerkElement2:completeAnimation() --[[ @ 0]]
			f8_arg0.IGRPerkElement2:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.IGRPerkElement2 ) --[[ @ 0]]
			f8_arg0.IGRPerkElement3:completeAnimation() --[[ @ 0]]
			f8_arg0.IGRPerkElement3:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.IGRPerkElement3 ) --[[ @ 0]]
			f8_arg0.IGRPerkElement1:completeAnimation() --[[ @ 0]]
			f8_arg0.IGRPerkElement1:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.IGRPerkElement1 ) --[[ @ 0]]
			f8_arg0.Title:completeAnimation() --[[ @ 0]]
			f8_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Title ) --[[ @ 0]]
			f8_arg0.SeparationLine:completeAnimation() --[[ @ 0]]
			f8_arg0.SeparationLine:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.SeparationLine ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PC_IGR_AAR_BonusXP.__onClose = function ( f9_arg0 )
	f9_arg0.IGRPerkElement2:close() --[[ @ 0]]
	f9_arg0.IGRPerkElement3:close() --[[ @ 0]]
	f9_arg0.IGRPerkElement1:close() --[[ @ 0]]
end
 --[[ @ 0]]
