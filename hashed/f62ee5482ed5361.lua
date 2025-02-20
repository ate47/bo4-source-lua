-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.ct_crash_kill_remaining_enemy = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.ct_crash_kill_remaining_enemy = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "ct_crash_kill_remaining_enemy", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.ct_crash_kill_remaining_enemy ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.ignoreCursor = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TextBox = LUI.UIText.new( 0.5, 0.5, -960, 960, 0.5, 0.5, -507, -462 ) --[[ @ 0]]
	TextBox:setRGB( 0, 1, 0 ) --[[ @ 0]]
	TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7F341B796C609B" ) ) --[[ @ 0]]
	TextBox:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TextBox:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	TextBox:setBackingType( 2 ) --[[ @ 0]]
	TextBox:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( TextBox ) --[[ @ 0]]
	self.TextBox = TextBox --[[ @ 0]]
	
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ct_crash_kill_remaining_enemy.__resetProperties = function ( f2_arg0 )
	f2_arg0.TextBox:completeAnimation() --[[ @ 0]]
	f2_arg0.TextBox:setLeftRight( 0.5, 0.5, -960, 960 ) --[[ @ 0]]
	f2_arg0.TextBox:setRGB( 0, 1, 0 ) --[[ @ 0]]
	f2_arg0.TextBox:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7F341B796C609B" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ct_crash_kill_remaining_enemy.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.TextBox:beginAnimation( 1500, Enum[@"hash_1F50FFF429AB1890"][@"hash_55D2D9CF90AB1735"] ) --[[ @ 0]]
			f3_arg0.TextBox:setLeftRight( 0, 0, -0.5, 1919.5 ) --[[ @ 0]]
			f3_arg0.TextBox:setRGB( 0, 1, 0 ) --[[ @ 0]]
			f3_arg0.TextBox:setScale( 1, 1 ) --[[ @ 0]]
			f3_arg0.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7F341B796C609B" ) ) --[[ @ 0]]
			f3_arg0.TextBox:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.TextBox:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ct_crash_kill_remaining_enemy.__onClose = function ( f4_arg0 )
	
end
 --[[ @ 0]]
