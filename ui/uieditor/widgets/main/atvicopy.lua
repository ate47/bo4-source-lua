-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.AtviCopy = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AtviCopy.__defaultWidth = 1920 --[[ @ 0]]
CoD.AtviCopy.__defaultHeight = 1080 --[[ @ 0]]
CoD.AtviCopy.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AtviCopy ) --[[ @ 0]]
	self.id = "AtviCopy" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	
	local ActivisionIncDurango = LUI.UIImage.new( 1, 1, -291, -15, 0, 0, 45, 87 ) --[[ @ 0]]
	ActivisionIncDurango:setRGB( 0.31, 0.34, 0.37 ) --[[ @ 0]]
	ActivisionIncDurango:setAlpha( 0.9 ) --[[ @ 0]]
	ActivisionIncDurango:setImage( RegisterImage( @"hash_4F52811A5826066C" ) ) --[[ @ 0]]
	self:addElement( ActivisionIncDurango ) --[[ @ 0]]
	self.ActivisionIncDurango = ActivisionIncDurango --[[ @ 0]]
	
	local BuildInfo2 = LUI.UIText.new( 1, 1, -215, -15, 0, 0, 76, 90 ) --[[ @ 0]]
	BuildInfo2:setRGB( 0.31, 0.34, 0.37 ) --[[ @ 0]]
	BuildInfo2:setAlpha( 0.7 ) --[[ @ 0]]
	BuildInfo2:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	BuildInfo2:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	BuildInfo2:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	BuildInfo2:linkToElementModel( self, "buildInfo", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			BuildInfo2:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BuildInfo2 ) --[[ @ 0]]
	self.BuildInfo2 = BuildInfo2 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local3 = self --[[ @ 0]]
	SetModelToGlobalDataSource( f1_arg1, self, "GlobalModel" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.AtviCopy.__onClose = function ( f3_arg0 )
	f3_arg0.BuildInfo2:close() --[[ @ 0]]
end
 --[[ @ 0]]
