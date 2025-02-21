-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:2d24e4a6046a91b2" ) --[[ @ 0]]

CoD.vhud_hcxd_timebar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_hcxd_timebar.__defaultWidth = 328 --[[ @ 0]]
CoD.vhud_hcxd_timebar.__defaultHeight = 40 --[[ @ 0]]
CoD.vhud_hcxd_timebar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_hcxd_timebar ) --[[ @ 0]]
	self.id = "vhud_hcxd_timebar" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local DurationCornerTL = LUI.UIImage.new( 0, 0, 0, 16, 0, 0, 0, 16 ) --[[ @ 0]]
	DurationCornerTL:setAlpha( 0.2 ) --[[ @ 0]]
	DurationCornerTL:setImage( RegisterImage( @"hash_2CE697C47EC17BA4" ) ) --[[ @ 0]]
	self:addElement( DurationCornerTL ) --[[ @ 0]]
	self.DurationCornerTL = DurationCornerTL --[[ @ 0]]
	
	local DurationCornerBL = LUI.UIImage.new( 0, 0, 0, 16, 0, 0, 25, 41 ) --[[ @ 0]]
	DurationCornerBL:setAlpha( 0.2 ) --[[ @ 0]]
	DurationCornerBL:setXRot( 180 ) --[[ @ 0]]
	DurationCornerBL:setImage( RegisterImage( @"hash_2CE697C47EC17BA4" ) ) --[[ @ 0]]
	self:addElement( DurationCornerBL ) --[[ @ 0]]
	self.DurationCornerBL = DurationCornerBL --[[ @ 0]]
	
	local DurationCornerBR = LUI.UIImage.new( 0, 0, 312, 328, 0, 0, 25, 41 ) --[[ @ 0]]
	DurationCornerBR:setAlpha( 0.2 ) --[[ @ 0]]
	DurationCornerBR:setXRot( 180 ) --[[ @ 0]]
	DurationCornerBR:setYRot( 180 ) --[[ @ 0]]
	DurationCornerBR:setImage( RegisterImage( @"hash_2CE697C47EC17BA4" ) ) --[[ @ 0]]
	self:addElement( DurationCornerBR ) --[[ @ 0]]
	self.DurationCornerBR = DurationCornerBR --[[ @ 0]]
	
	local DurationCornerTR = LUI.UIImage.new( 0, 0, 312, 328, 0, 0, 0, 16 ) --[[ @ 0]]
	DurationCornerTR:setAlpha( 0.2 ) --[[ @ 0]]
	DurationCornerTR:setYRot( 180 ) --[[ @ 0]]
	DurationCornerTR:setImage( RegisterImage( @"hash_2CE697C47EC17BA4" ) ) --[[ @ 0]]
	self:addElement( DurationCornerTR ) --[[ @ 0]]
	self.DurationCornerTR = DurationCornerTR --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 0, 6, 38, 0, 0, 7, 15 ) --[[ @ 0]]
	Image:setImage( RegisterImage( @"hash_1BE3C59102C8FA21" ) ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local Image2 = LUI.UIImage.new( 0, 0, 26, 34, 0, 0, 28, 36 ) --[[ @ 0]]
	Image2:setAlpha( 0.2 ) --[[ @ 0]]
	Image2:setImage( RegisterImage( @"hash_1F6E71B8426B936D" ) ) --[[ @ 0]]
	self:addElement( Image2 ) --[[ @ 0]]
	self.Image2 = Image2 --[[ @ 0]]
	
	local vhudmsTimebar = CoD.vhud_ms_Timebar.new( f1_arg0, f1_arg1, 0, 0, 10, 360, 0, 0, 15, 28 ) --[[ @ 0]]
	vhudmsTimebar:linkToElementModel( self, nil, false, function ( model )
		vhudmsTimebar:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( vhudmsTimebar ) --[[ @ 0]]
	self.vhudmsTimebar = vhudmsTimebar --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_hcxd_timebar.__onClose = function ( f3_arg0 )
	f3_arg0.vhudmsTimebar:close() --[[ @ 0]]
end
 --[[ @ 0]]
