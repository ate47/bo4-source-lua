-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.AARMissionReward_CharacterListItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARMissionReward_CharacterListItem.__defaultWidth = 100 --[[ @ 0]]
CoD.AARMissionReward_CharacterListItem.__defaultHeight = 100 --[[ @ 0]]
CoD.AARMissionReward_CharacterListItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARMissionReward_CharacterListItem ) --[[ @ 0]]
	self.id = "AARMissionReward_CharacterListItem" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Backing:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARMissionReward_CharacterListItem.__resetProperties = function ( f2_arg0 )
	f2_arg0.Backing:completeAnimation() --[[ @ 0]]
	f2_arg0.Backing:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARMissionReward_CharacterListItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.Backing:completeAnimation() --[[ @ 0]]
			f4_arg0.Backing:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Backing ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
