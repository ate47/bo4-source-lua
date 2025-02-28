-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/common/commoncornerpips01" ) --[[ @ 0]]

CoD.HubGestureButtonBacking = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HubGestureButtonBacking.__defaultWidth = 682 --[[ @ 0]]
CoD.HubGestureButtonBacking.__defaultHeight = 129 --[[ @ 0]]
CoD.HubGestureButtonBacking.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HubGestureButtonBacking ) --[[ @ 0]]
	self.id = "HubGestureButtonBacking" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	
	local Bg04 = LUI.UIImage.new( 0, 0, 415, 543, 0, 0, 0.5, 128.5 ) --[[ @ 0]]
	Bg04:setAlpha( 0.4 ) --[[ @ 0]]
	Bg04:setScale( 0.95, 0.95 ) --[[ @ 0]]
	Bg04:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	Bg04:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	Bg04:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Bg04:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( Bg04 ) --[[ @ 0]]
	self.Bg04 = Bg04 --[[ @ 0]]
	
	local Bg05 = LUI.UIImage.new( 0, 0, 553, 681, 0, 0, 0.5, 128.5 ) --[[ @ 0]]
	Bg05:setAlpha( 0.4 ) --[[ @ 0]]
	Bg05:setScale( 0.95, 0.95 ) --[[ @ 0]]
	Bg05:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	Bg05:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	Bg05:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Bg05:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( Bg05 ) --[[ @ 0]]
	self.Bg05 = Bg05 --[[ @ 0]]
	
	local Bg02 = LUI.UIImage.new( 0, 0, 139, 267, 0, 0, 0.5, 128.5 ) --[[ @ 0]]
	Bg02:setAlpha( 0.4 ) --[[ @ 0]]
	Bg02:setScale( 0.95, 0.95 ) --[[ @ 0]]
	Bg02:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	Bg02:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	Bg02:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Bg02:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( Bg02 ) --[[ @ 0]]
	self.Bg02 = Bg02 --[[ @ 0]]
	
	local Bg03 = LUI.UIImage.new( 0, 0, 277, 405, 0, 0, 0.5, 128.5 ) --[[ @ 0]]
	Bg03:setAlpha( 0.4 ) --[[ @ 0]]
	Bg03:setScale( 0.95, 0.95 ) --[[ @ 0]]
	Bg03:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	Bg03:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	Bg03:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Bg03:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( Bg03 ) --[[ @ 0]]
	self.Bg03 = Bg03 --[[ @ 0]]
	
	local Bg01 = LUI.UIImage.new( 0, 0, 0.5, 128.5, 0, 0, 0.5, 128.5 ) --[[ @ 0]]
	Bg01:setAlpha( 0.4 ) --[[ @ 0]]
	Bg01:setScale( 0.95, 0.95 ) --[[ @ 0]]
	Bg01:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	Bg01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	Bg01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Bg01:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( Bg01 ) --[[ @ 0]]
	self.Bg01 = Bg01 --[[ @ 0]]
	
	local border05 = LUI.UIImage.new( 0, 0, 552.5, 681.5, 0, 0, 0, 129 ) --[[ @ 0]]
	border05:setAlpha( 0.05 ) --[[ @ 0]]
	border05:setScale( 0.95, 0.95 ) --[[ @ 0]]
	border05:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	border05:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	border05:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	border05:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( border05 ) --[[ @ 0]]
	self.border05 = border05 --[[ @ 0]]
	
	local border04 = LUI.UIImage.new( 0, 0, 414.5, 543.5, 0, 0, 0, 129 ) --[[ @ 0]]
	border04:setAlpha( 0.05 ) --[[ @ 0]]
	border04:setScale( 0.95, 0.95 ) --[[ @ 0]]
	border04:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	border04:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	border04:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	border04:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( border04 ) --[[ @ 0]]
	self.border04 = border04 --[[ @ 0]]
	
	local border03 = LUI.UIImage.new( 0, 0, 276.5, 405.5, 0, 0, 0, 129 ) --[[ @ 0]]
	border03:setAlpha( 0.05 ) --[[ @ 0]]
	border03:setScale( 1, 0.95 ) --[[ @ 0]]
	border03:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	border03:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	border03:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	border03:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( border03 ) --[[ @ 0]]
	self.border03 = border03 --[[ @ 0]]
	
	local border02 = LUI.UIImage.new( 0, 0, 138.5, 267.5, 0, 0, 0, 129 ) --[[ @ 0]]
	border02:setAlpha( 0.05 ) --[[ @ 0]]
	border02:setScale( 0.95, 0.95 ) --[[ @ 0]]
	border02:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	border02:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	border02:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	border02:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( border02 ) --[[ @ 0]]
	self.border02 = border02 --[[ @ 0]]
	
	local border01 = LUI.UIImage.new( 0, 0, 0, 129, 0, 0, 0, 129 ) --[[ @ 0]]
	border01:setAlpha( 0.05 ) --[[ @ 0]]
	border01:setScale( 0.95, 0.95 ) --[[ @ 0]]
	border01:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	border01:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	border01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	border01:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( border01 ) --[[ @ 0]]
	self.border01 = border01 --[[ @ 0]]
	
	local CornerPips05 = CoD.CommonCornerPips01.new( f1_arg0, f1_arg1, 0, 0, 0.5, 128.5, 0, 0, 0.5, 128.5 ) --[[ @ 0]]
	CornerPips05:setAlpha( 0.05 ) --[[ @ 0]]
	CornerPips05:setScale( 0.95, 0.95 ) --[[ @ 0]]
	self:addElement( CornerPips05 ) --[[ @ 0]]
	self.CornerPips05 = CornerPips05 --[[ @ 0]]
	
	local CornerPips01 = CoD.CommonCornerPips01.new( f1_arg0, f1_arg1, 0, 0, 553, 681, 0, 0, 0.5, 128.5 ) --[[ @ 0]]
	CornerPips01:setAlpha( 0.05 ) --[[ @ 0]]
	CornerPips01:setScale( 0.95, 0.95 ) --[[ @ 0]]
	self:addElement( CornerPips01 ) --[[ @ 0]]
	self.CornerPips01 = CornerPips01 --[[ @ 0]]
	
	local CornerPips02 = CoD.CommonCornerPips01.new( f1_arg0, f1_arg1, 0, 0, 415, 543, 0, 0, 0.5, 128.5 ) --[[ @ 0]]
	CornerPips02:setAlpha( 0.05 ) --[[ @ 0]]
	CornerPips02:setScale( 0.95, 0.95 ) --[[ @ 0]]
	self:addElement( CornerPips02 ) --[[ @ 0]]
	self.CornerPips02 = CornerPips02 --[[ @ 0]]
	
	local CornerPips03 = CoD.CommonCornerPips01.new( f1_arg0, f1_arg1, 0, 0, 277, 405, 0, 0, 0.5, 128.5 ) --[[ @ 0]]
	CornerPips03:setAlpha( 0.05 ) --[[ @ 0]]
	CornerPips03:setScale( 0.95, 0.95 ) --[[ @ 0]]
	self:addElement( CornerPips03 ) --[[ @ 0]]
	self.CornerPips03 = CornerPips03 --[[ @ 0]]
	
	local CornerPips04 = CoD.CommonCornerPips01.new( f1_arg0, f1_arg1, 0, 0, 139, 267, 0, 0, 0.5, 128.5 ) --[[ @ 0]]
	CornerPips04:setAlpha( 0.05 ) --[[ @ 0]]
	CornerPips04:setScale( 0.95, 0.95 ) --[[ @ 0]]
	self:addElement( CornerPips04 ) --[[ @ 0]]
	self.CornerPips04 = CornerPips04 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.HubGestureButtonBacking.__onClose = function ( f2_arg0 )
	f2_arg0.CornerPips05:close() --[[ @ 0]]
	f2_arg0.CornerPips01:close() --[[ @ 0]]
	f2_arg0.CornerPips02:close() --[[ @ 0]]
	f2_arg0.CornerPips03:close() --[[ @ 0]]
	f2_arg0.CornerPips04:close() --[[ @ 0]]
end
 --[[ @ 0]]
