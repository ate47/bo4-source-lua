-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.success_screen = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.success_screen = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "success_screen", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.success_screen ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.ignoreCursor = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local text = LUI.UIText.new( 0, 0, 339.5, 1560.5, 0, 0, 311.5, 448.5 ) --[[ @ 0]]
	text:setRGB( 0.13, 1, 0.08 ) --[[ @ 0]]
	text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_38E98CF0D697D92C" ) ) --[[ @ 0]]
	text:setTTF( "default" ) --[[ @ 0]]
	text:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2AE166D9BA8C6907" ) ) --[[ @ 0]]
	text:setShaderVector( 0, 0.14, 0, 0, 0 ) --[[ @ 0]]
	text:setShaderVector( 1, 0.43, 0, 0, 0 ) --[[ @ 0]]
	text:setShaderVector( 2, 0.71, 0, 0, 0 ) --[[ @ 0]]
	text:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( text ) --[[ @ 0]]
	self.text = text --[[ @ 0]]
	
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
CoD.success_screen.__resetProperties = function ( f2_arg0 )
	f2_arg0.text:completeAnimation() --[[ @ 0]]
	f2_arg0.text:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.success_screen.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				f3_arg0.text:beginAnimation( 1500, Enum[@"luitween"][@"luitween_bounce"] | Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f3_arg0.text:setScale( 1, 1 ) --[[ @ 0]]
				f3_arg0.text:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.text:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.text:completeAnimation() --[[ @ 0]]
			f3_arg0.text:setScale( 0.01, 0.01 ) --[[ @ 0]]
			f3_local0( f3_arg0.text ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.success_screen.__onClose = function ( f5_arg0 )
	
end
 --[[ @ 0]]
