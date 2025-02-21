-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/cac/newbreadcrumbcount" ) --[[ @ 0]]

CoD.CallingCards_BlackMarket_Set_SingleCardsTitle = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_BlackMarket_Set_SingleCardsTitle.__defaultWidth = 350 --[[ @ 0]]
CoD.CallingCards_BlackMarket_Set_SingleCardsTitle.__defaultHeight = 37 --[[ @ 0]]
CoD.CallingCards_BlackMarket_Set_SingleCardsTitle.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, true ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Center ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_BlackMarket_Set_SingleCardsTitle ) --[[ @ 0]]
	self.id = "CallingCards_BlackMarket_Set_SingleCardsTitle" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local newIcon = CoD.NewBreadcrumbCount.new( f1_arg0, f1_arg1, 1, 1, 12, 30, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	newIcon:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "breadcrumbCount", 0 )
			end
		}
	} ) --[[ @ 0]]
	newIcon:linkToElementModel( newIcon, "breadcrumbCount", true, function ( model )
		f1_arg0:updateElementState( newIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "breadcrumbCount"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	newIcon:linkToElementModel( self, "breadcrumb", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			newIcon:setModel( f4_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( newIcon ) --[[ @ 0]]
	self.newIcon = newIcon --[[ @ 0]]
	
	local SingleCardsTitle = LUI.UIText.new( 0, 0, 0, 350, 0, 0, 0, 37 ) --[[ @ 0]]
	SingleCardsTitle:setText( LocalizeToUpperString( @"hash_7DB6CD62FFFD0EEF" ) ) --[[ @ 0]]
	SingleCardsTitle:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	SingleCardsTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	SingleCardsTitle:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( SingleCardsTitle ) --[[ @ 0]]
	self.SingleCardsTitle = SingleCardsTitle --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_BlackMarket_Set_SingleCardsTitle.__onClose = function ( f5_arg0 )
	f5_arg0.newIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
