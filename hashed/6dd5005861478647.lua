-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.ZmNotif1Factory = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZmNotif1Factory.__defaultWidth = 800 --[[ @ 0]]
CoD.ZmNotif1Factory.__defaultHeight = 82 --[[ @ 0]]
CoD.ZmNotif1Factory.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZmNotif1Factory ) --[[ @ 0]]
	self.id = "ZmNotif1Factory" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	
	local Label1 = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -21, 24 ) --[[ @ 0]]
	Label1:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Label1:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Label1:setTTF( "skorzhen" ) --[[ @ 0]]
	Label1:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( Label1 ) --[[ @ 0]]
	self.Label1 = Label1 --[[ @ 0]]
	
	local Label2 = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -21, 24 ) --[[ @ 0]]
	Label2:setRGB( 0.96, 0.66, 0 ) --[[ @ 0]]
	Label2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Label2:setTTF( "skorzhen" ) --[[ @ 0]]
	Label2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	Label2:setShaderVector( 0, 0.6, 0, 0, 0 ) --[[ @ 0]]
	Label2:setShaderVector( 1, 0.4, 0, 0, 0 ) --[[ @ 0]]
	Label2:setShaderVector( 2, 0, 0, 0, 1 ) --[[ @ 0]]
	Label2:setLetterSpacing( 0.2 ) --[[ @ 0]]
	Label2:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( Label2 ) --[[ @ 0]]
	self.Label2 = Label2 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
