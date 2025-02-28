-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.MultiItemPickupWaypoint_HeaderInfo = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MultiItemPickupWaypoint_HeaderInfo.__defaultWidth = 158 --[[ @ 0]]
CoD.MultiItemPickupWaypoint_HeaderInfo.__defaultHeight = 20 --[[ @ 0]]
CoD.MultiItemPickupWaypoint_HeaderInfo.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 14, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.MultiItemPickupWaypoint_HeaderInfo ) --[[ @ 0]]
	self.id = "MultiItemPickupWaypoint_HeaderInfo" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local text = LUI.UIText.new( 0, 0, 0, 75, 1, 1, -20, 0 ) --[[ @ 0]]
	text:setRGB( 0.79, 0.76, 0.58 ) --[[ @ 0]]
	text.__Alpha = function ()
		text:setAlpha( CoD.HUDUtility.PickupPromptOpacity( f1_arg1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	text.__Alpha() --[[ @ 0]]
	text.__String_Reference = function ()
		text:setText( Engine[@"hash_4F9F1239CFD921FE"]( CoD.HUDUtility.Get3DWeaponHintPickupHintTextWithPickUpOptions( f1_arg1 ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	text.__String_Reference() --[[ @ 0]]
	text:setTTF( "dinnext_regular" ) --[[ @ 0]]
	text:setLetterSpacing( 0.5 ) --[[ @ 0]]
	text:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( text ) --[[ @ 0]]
	self.text = text --[[ @ 0]]
	
	local Line = LUI.UIImage.new( 0, 0, 178, 179, 0, 0, -5, 25 ) --[[ @ 0]]
	Line:setAlpha( 0.15 ) --[[ @ 0]]
	self:addElement( Line ) --[[ @ 0]]
	self.Line = Line --[[ @ 0]]
	
	local CursorHintText = LUI.UIText.new( 0, 0, 89, 164, 0.5, 0.5, -11, 9 ) --[[ @ 0]]
	CursorHintText:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	CursorHintText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	CursorHintText:setLetterSpacing( 0.5 ) --[[ @ 0]]
	CursorHintText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	CursorHintText:linkToElementModel( self, "name", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			CursorHintText:setText( Engine[@"hash_4F9F1239CFD921FE"]( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CursorHintText ) --[[ @ 0]]
	self.CursorHintText = CursorHintText --[[ @ 0]]
	
	local f1_local4 = text --[[ @ 0]]
	local f1_local5 = text.subscribeToModel --[[ @ 0]]
	local f1_local6 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.weapon3dHintState, text.__Alpha ) --[[ @ 0]]
	f1_local4 = text --[[ @ 0]]
	f1_local5 = text.subscribeToModel --[[ @ 0]]
	f1_local6 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.heroHoldProgress, text.__Alpha ) --[[ @ 0]]
	f1_local4 = text --[[ @ 0]]
	f1_local5 = text.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["hudItems.inventory.filledSlots"], text.__Alpha ) --[[ @ 0]]
	f1_local4 = text --[[ @ 0]]
	f1_local5 = text.subscribeToModel --[[ @ 0]]
	f1_local6 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.weapon3dHintState, text.__String_Reference ) --[[ @ 0]]
	f1_local4 = text --[[ @ 0]]
	f1_local5 = text.subscribeToModel --[[ @ 0]]
	f1_local6 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.heroHoldProgress, text.__String_Reference ) --[[ @ 0]]
	f1_local4 = text --[[ @ 0]]
	f1_local5 = text.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["hudItems.inventory.filledSlots"], text.__String_Reference ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "PromptDisabled",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.Disable3DWeaponHintButton( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.weapon3dHintState, function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "weapon3dHintState"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local5 = self --[[ @ 0]]
	if IsCurrentLanguageReversed() then
		ReverseChildrenOrder( self ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.MultiItemPickupWaypoint_HeaderInfo.__resetProperties = function ( f7_arg0 )
	f7_arg0.text:completeAnimation() --[[ @ 0]]
	f7_arg0.text:setRGB( 0.79, 0.76, 0.58 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MultiItemPickupWaypoint_HeaderInfo.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PromptDisabled = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.text:completeAnimation() --[[ @ 0]]
			f9_arg0.text:setRGB( 0.87, 0.08, 0.08 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.text ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.MultiItemPickupWaypoint_HeaderInfo.__onClose = function ( f10_arg0 )
	f10_arg0.text:close() --[[ @ 0]]
	f10_arg0.CursorHintText:close() --[[ @ 0]]
end
 --[[ @ 0]]
