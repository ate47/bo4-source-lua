-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/hud/corner9slice" ) --[[ @ 0]]

CoD.BM_EmptyContractSlotColumn = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BM_EmptyContractSlotColumn.__defaultWidth = 265 --[[ @ 0]]
CoD.BM_EmptyContractSlotColumn.__defaultHeight = 227 --[[ @ 0]]
CoD.BM_EmptyContractSlotColumn.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.BM_EmptyContractSlotColumn ) --[[ @ 0]]
	self.id = "BM_EmptyContractSlotColumn" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Image:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Image:setAlpha( 0.18 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local DotCorner9Slice3 = CoD.Corner9Slice.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	DotCorner9Slice3:setAlpha( 0.9 ) --[[ @ 0]]
	DotCorner9Slice3:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DotCorner9Slice3 ) --[[ @ 0]]
	self.DotCorner9Slice3 = DotCorner9Slice3 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoMedals",
			condition = function ( menu, element, event )
				return not ListElementHasElements( self.MedalsGrid )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "grid_updated", function ( f3_arg0, f3_arg1 )
		f3_arg1.menu = f3_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f3_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.BM_EmptyContractSlotColumn.__onClose = function ( f4_arg0 )
	f4_arg0.DotCorner9Slice3:close() --[[ @ 0]]
end
 --[[ @ 0]]
