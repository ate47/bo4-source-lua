-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.HubCharacterTabItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HubCharacterTabItem.__defaultWidth = 180 --[[ @ 0]]
CoD.HubCharacterTabItem.__defaultHeight = 30 --[[ @ 0]]
CoD.HubCharacterTabItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HubCharacterTabItem ) --[[ @ 0]]
	self.id = "HubCharacterTabItem" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local name = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 9, 30 ) --[[ @ 0]]
	name:setRGB( 0.96, 0.93, 0.84 ) --[[ @ 0]]
	name:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	name:setLetterSpacing( 2 ) --[[ @ 0]]
	name:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	name:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	name:linkToElementModel( self, "name", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			name:setText( LocalizeToUpperString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( name ) --[[ @ 0]]
	self.name = name --[[ @ 0]]
	
	local nameBold = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 9, 30 ) --[[ @ 0]]
	nameBold:setRGB( 0.96, 0.93, 0.84 ) --[[ @ 0]]
	nameBold:setAlpha( 0 ) --[[ @ 0]]
	nameBold:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	nameBold:setLetterSpacing( 3 ) --[[ @ 0]]
	nameBold:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	nameBold:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	nameBold:linkToElementModel( self, "name", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			nameBold:setText( LocalizeToUpperString( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( nameBold ) --[[ @ 0]]
	self.nameBold = nameBold --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.HubCharacterTabItem.__resetProperties = function ( f4_arg0 )
	f4_arg0.name:completeAnimation() --[[ @ 0]]
	f4_arg0.nameBold:completeAnimation() --[[ @ 0]]
	f4_arg0.name:setRGB( 0.96, 0.93, 0.84 ) --[[ @ 0]]
	f4_arg0.name:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.nameBold:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.HubCharacterTabItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.name:completeAnimation() --[[ @ 0]]
			f5_arg0.name:setRGB( 0.96, 0.93, 0.84 ) --[[ @ 0]]
			f5_arg0.name:setAlpha( 0.2 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.name ) --[[ @ 0]]
		end,
		Active = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.name:completeAnimation() --[[ @ 0]]
			f6_arg0.name:setRGB( 0.96, 0.93, 0.84 ) --[[ @ 0]]
			f6_arg0.name:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.name ) --[[ @ 0]]
			f6_arg0.nameBold:completeAnimation() --[[ @ 0]]
			f6_arg0.nameBold:setAlpha( 0.5 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.nameBold ) --[[ @ 0]]
		end,
		Focus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.name:completeAnimation() --[[ @ 0]]
			f7_arg0.name:setRGB( 0.96, 0.93, 0.84 ) --[[ @ 0]]
			f7_arg0.name:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.name ) --[[ @ 0]]
			f7_arg0.nameBold:completeAnimation() --[[ @ 0]]
			f7_arg0.nameBold:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.nameBold ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
if not CoD.isPC then
	CoD.HubCharacterTabItem.__clipsPerState.DefaultState.Focus = nil --[[ @ 0]]
end
CoD.HubCharacterTabItem.__onClose = function ( f8_arg0 )
	f8_arg0.name:close() --[[ @ 0]]
	f8_arg0.nameBold:close() --[[ @ 0]]
end
 --[[ @ 0]]
