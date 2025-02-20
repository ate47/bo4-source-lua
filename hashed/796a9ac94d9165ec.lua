-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
LUI.WheelLayout = InheritFrom( LUI.UIElement ) --[[ @ 0]]
LUI.WheelLayout.__trackedLists = {} --[[ @ 0]]
LUI.WheelLayout.new = function ( f1_arg0, f1_arg1, f1_arg2 )
	local self = LUI.UIElement.new() --[[ @ 0]]
	self:setClass( LUI.WheelLayout ) --[[ @ 0]]
	self.itemStencil = LUI.UIElement.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self.itemStencil.anyChildUsesUpdateState = true --[[ @ 0]]
	self.itemStencil.id = "itemStencil" --[[ @ 0]]
	self:addElement( self.itemStencil ) --[[ @ 0]]
	self.menu = f1_arg0 --[[ @ 0]]
	self.elementStateConditions = {} --[[ @ 0]]
	self.filter = f1_arg2 --[[ @ 0]]
	self.Count = 1 --[[ @ 0]]
	self.controller = f1_arg1 --[[ @ 0]]
	self.itemCount = 0 --[[ @ 0]]
	self.layoutItems = {} --[[ @ 0]]
	self.activeWidget = nil --[[ @ 0]]
	self.lastActiveWidget = nil --[[ @ 0]]
	self.widgetType = nil --[[ @ 0]]
	self.isWheelLayout = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	self.prepared = false --[[ @ 0]]
	self.indexMap = {} --[[ @ 0]]
	self.__updateChildrenOnStateUpdate = true --[[ @ 0]]
	self._on_menuOpened = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3 )
		self:menuOpened( f2_arg1, f2_arg2, f2_arg3 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self._on_menuOpened ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
LUI.WheelLayout.forceMenuOpenedEvent = function ( f3_arg0, f3_arg1, f3_arg2 )
	f3_arg0:menuOpened( f3_arg1, f3_arg2, true ) --[[ @ 0]]
end
 --[[ @ 0]]
LUI.WheelLayout.removeDataSourceLink = function ( f4_arg0, f4_arg1 )
	if f4_arg0.dataSourceName and DataSources[f4_arg0.dataSourceName] and LUI.WheelLayout.__trackedLists[f4_arg0.dataSourceName] then
		LUI.WheelLayout.__trackedLists[f4_arg0.dataSourceName][f4_arg0] = nil --[[ @ 0]]
		if not f4_arg1 and DataSources[f4_arg0.dataSourceName].cleanup and LuaUtils.IsHashTableEmpty( LUI.WheelLayout.__trackedLists[f4_arg0.dataSourceName] ) then
			DataSources[f4_arg0.dataSourceName].cleanup( f4_arg0, f4_arg0.controller ) --[[ @ 0]]
			LUI.WheelLayout.__trackedLists[f4_arg0.dataSourceName] = nil --[[ @ 0]]
		end
	end
end
 --[[ @ 0]]
LUI.WheelLayout.addDataSourceLink = function ( f5_arg0 )
	if f5_arg0.dataSourceName and DataSources[f5_arg0.dataSourceName] then
		if not LUI.WheelLayout.__trackedLists[f5_arg0.dataSourceName] then
			LUI.WheelLayout.__trackedLists[f5_arg0.dataSourceName] = {} --[[ @ 0]]
		end
		LUI.WheelLayout.__trackedLists[f5_arg0.dataSourceName][f5_arg0] = true --[[ @ 0]]
	end
end
 --[[ @ 0]]
LUI.WheelLayout.setDataSource = function ( f6_arg0, f6_arg1 )
	if f6_arg0.dataSourceName ~= f6_arg1 then
		f6_arg0:removeDataSourceLink( true ) --[[ @ 0]]
		local f6_local0 = DataSources[f6_arg1] --[[ @ 0]]
		f6_arg0.dataSourceName = f6_arg1 --[[ @ 0]]
		f6_arg0:addDataSourceLink() --[[ @ 0]]
		if f6_local0 and f6_local0.prepare then
			f6_arg0:updateDataSource( nil, true ) --[[ @ 0]]
		else
			f6_arg0:clearLayout() --[[ @ 0]]
		end
	end
end
 --[[ @ 0]]
LUI.WheelLayout.setCount = function ( f7_arg0, f7_arg1, f7_arg2 )
	f7_arg0.Count = f7_arg1 --[[ @ 0]]
	f7_arg0:updateDataSource( nil, f7_arg2, true ) --[[ @ 0]]
end
 --[[ @ 0]]
LUI.WheelLayout.getElementAtZeroBasedIndex = function ( f8_arg0, f8_arg1 )
	return f8_arg0.layoutItems[f8_arg1 + 1]
end
 --[[ @ 0]]
LUI.WheelLayout.getTotalCount = function ( f9_arg0 )
	local f9_local0 = f9_arg0:getDataSource() --[[ @ 0]]
	if f9_local0 then
		return f9_local0.getCount( f9_arg0 )
	else
		return f9_arg0.Count
	end
end
 --[[ @ 0]]
LUI.WheelLayout.getDataSource = function ( f10_arg0 )
	return DataSources[f10_arg0.dataSourceName]
end
 --[[ @ 0]]
LUI.WheelLayout.setWidgetType = function ( f11_arg0, f11_arg1 )
	f11_arg0.widgetType = f11_arg1 --[[ @ 0]]
	f11_arg0:clearLayout() --[[ @ 0]]
end
 --[[ @ 0]]
LUI.WheelLayout.mergeStateConditions = function ( f12_arg0, f12_arg1 )
	f12_arg0.elementStateConditions = {} --[[ @ 0]]
	LUI.WheelLayout.super.mergeStateConditions( f12_arg0, f12_arg1, f12_arg0.elementStateConditions ) --[[ @ 0]]
	f12_arg0:clearLayout() --[[ @ 0]]
	f12_arg0:updateLayout() --[[ @ 0]]
end
 --[[ @ 0]]
LUI.WheelLayout.clearLayout = function ( f13_arg0, f13_arg1 )
	for f13_local3, f13_local4 in pairs( f13_arg0.layoutItems ) --[[ @ 0]] do
		f13_arg0.layoutItems[f13_local3]:close() --[[ @ 0]]
		f13_arg0.layoutItems[f13_local3] = nil --[[ @ 0]]
	end
	f13_arg0.layoutItems = {} --[[ @ 0]]
	if f13_arg1 then
		f13_arg0:updateLayout() --[[ @ 0]]
	end
end
 --[[ @ 0]]
LUI.WheelLayout.updateLayout = function ( f14_arg0, f14_arg1 )
	if f14_arg0.__closing or not f14_arg0.__receivedMenuOpenedEvent or f14_arg0._layoutTimer then
		return 
	end
	local f14_local0 = f14_arg1 or 0 --[[ @ 0]]
	local f14_local1 = f14_arg0:getDataSource() --[[ @ 0]]
	if not f14_local1 then
		f14_arg0:clearLayout( false ) --[[ @ 0]]
		return 
	elseif f14_local1.prepare and not f14_arg0.prepared then
		f14_arg0:updateDataSource( true, true, false ) --[[ @ 0]]
	end
	local f14_local2 = math.min( f14_arg0.Count, f14_local1.getCount( f14_arg0 ) ) --[[ @ 0]]
	local f14_local3 = 0 --[[ @ 0]]
	local f14_local4 = 360 / f14_local2 --[[ @ 0]]
	for f14_local5 = 1 --[[ @ 0]], f14_local2, 1 do
		local f14_local8 = f14_arg0:getModelForIndex( f14_local5 ) --[[ @ 0]]
		local f14_local9 = f14_local8:create( "zRot" ) --[[ @ 0]]
		f14_local9:set( f14_local3 ) --[[ @ 0]]
		f14_local9 = f14_local8:create( "angleWidth" ) --[[ @ 0]]
		f14_local9:set( f14_local4 ) --[[ @ 0]]
		if not f14_arg0.layoutItems[f14_local5] then
			f14_local9 = f14_arg0:createWidgetForPosition( f14_local5 ) --[[ @ 0]]
			f14_arg0.layoutItems[f14_local5] = f14_local9 --[[ @ 0]]
			f14_arg0.itemStencil:addElement( f14_local9 ) --[[ @ 0]]
		else
			f14_arg0.layoutItems[f14_local5]:setModel( f14_local8, f14_arg0.controller ) --[[ @ 0]]
			if f14_arg0.layoutItems[f14_local5] == f14_arg0.activeWidget then
				f14_arg0:setModel( f14_local8, f14_arg0.controller ) --[[ @ 0]]
			end
			f14_arg0:updateCustomWidgetProperties( f14_local5, f14_arg0.layoutItems[f14_local5] ) --[[ @ 0]]
		end
		f14_arg0.layoutItems[f14_local5]:setZRot( f14_local3 ) --[[ @ 0]]
		f14_local3 = f14_local3 + f14_local4 --[[ @ 0]]
	end
end
 --[[ @ 0]]
LUI.WheelLayout.createWidget = function ( f15_arg0, f15_arg1, f15_arg2 )
	if not f15_arg2 then
		return 
	end
	local f15_local0 = f15_arg2.new( f15_arg0.menu, f15_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	if not f15_local0 then
		return 
	elseif f15_arg2 == f15_arg0.widgetType then
		f15_local0:mergeStateConditions( f15_arg0.elementStateConditions ) --[[ @ 0]]
	end
	f15_arg0.itemStencil[f15_local0.id] = f15_local0 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( f15_local0, "close", function ()
		f15_arg0.itemStencil[f15_local0.id] = nil --[[ @ 0]]
		local f16_local0 = f15_arg0:getDataSource() --[[ @ 0]]
		if f16_local0 and f16_local0.destroyItem and f15_local0.gridInfoTable then
			f16_local0.destroyItem( f15_arg0.controller, f15_arg0, f15_local0.gridInfoTable.zeroBasedIndex ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	return f15_local0
end
 --[[ @ 0]]
LUI.WheelLayout.getModelForIndex = function ( f17_arg0, f17_arg1 )
	local f17_local0 = f17_arg0:getDataSource() --[[ @ 0]]
	if not f17_arg0.prepared or not f17_local0 or not f17_local0.getCount then
		return nil
	elseif f17_arg1 and f17_arg1 <= f17_local0.getCount( f17_arg0 ) then
		return f17_local0.getItem( f17_arg0.controller, f17_arg0, f17_arg1 )
	else
		return nil
	end
end
 --[[ @ 0]]
LUI.WheelLayout.getModelForPosition = function ( f18_arg0, f18_arg1, f18_arg2 )
	return f18_arg0:getModelForIndex( f18_arg0:GetTableIndexForPosition( f18_arg1, f18_arg2 ) )
end
 --[[ @ 0]]
LUI.WheelLayout.getPropertiesForIndex = function ( f19_arg0, f19_arg1 )
	local f19_local0 = f19_arg0:getDataSource() --[[ @ 0]]
	if not f19_local0 or not f19_local0.getCount or not f19_local0.getCustomPropertiesForItem then
		return nil
	elseif f19_arg1 <= f19_local0.getCount( f19_arg0 ) then
		return f19_local0.getCustomPropertiesForItem( f19_arg0, f19_arg1 )
	else
		return nil
	end
end
 --[[ @ 0]]
LUI.WheelLayout.updateCustomWidgetProperties = function ( f20_arg0, f20_arg1, f20_arg2 )
	if not f20_arg2 then
		return 
	end
	local f20_local0 = f20_arg0:getPropertiesForIndex( f20_arg1 ) --[[ @ 0]]
	if f20_local0 then
		for f20_local4, f20_local5 in pairs( f20_local0 ) --[[ @ 0]] do
			if f20_local4 == "id" then
				LUI_WheelLayout_ChangeWidgetId( f20_arg0.itemStencil, f20_arg2, f20_local5 ) --[[ @ 0]]
			else
				f20_arg2[f20_local4] = f20_local5 --[[ @ 0]]
			end
		end
	end
end
 --[[ @ 0]]
LUI.WheelLayout.getWidgetForIndex = function ( f21_arg0, f21_arg1 )
	return LUI.GridLayout.getWidgetForIndex( f21_arg0, f21_arg1 )
end
 --[[ @ 0]]
LUI.WheelLayout.createWidgetForPosition = function ( f22_arg0, f22_arg1 )
	local f22_local0 = f22_arg0:getDataSource() --[[ @ 0]]
	if not f22_arg0.prepared or not f22_local0 or not f22_local0.getCount then
		return nil
	end
	local f22_local1 = f22_local0.getCount( f22_arg0 ) --[[ @ 0]]
	local f22_local2 = f22_arg1 --[[ @ 0]]
	if f22_local2 and f22_local2 <= f22_local1 then
		local f22_local3 = f22_arg0:getModelForIndex( f22_local2 ) --[[ @ 0]]
		local f22_local4 = f22_arg0:getWidgetForIndex( f22_arg1 ) --[[ @ 0]]
		local f22_local5 = f22_arg0:getPropertiesForIndex( f22_local2 ) --[[ @ 0]]
		local f22_local6 = f22_arg0:createWidget( f22_arg0.controller, f22_local4 ) --[[ @ 0]]
		if f22_local6 ~= nil then
			f22_arg0:updateCustomWidgetProperties( f22_arg1, f22_local6 ) --[[ @ 0]]
			if f22_local3 then
				f22_local6:setModel( f22_local3, f22_arg0.controller, true ) --[[ @ 0]]
			end
			if f22_local3 then
				local f22_local7 = Engine[@"GetModel"]( f22_local3, "customId" ) --[[ @ 0]]
				if f22_local7 then
					LUI_WheelLayout_ChangeWidgetId( f22_arg0.itemStencil, f22_local6, Engine[@"GetModelValue"]( f22_local7 ) ) --[[ @ 0]]
				end
			end
			f22_arg0.menu:sendInitializationEvents( f22_arg0.controller, f22_local6 ) --[[ @ 0]]
			return f22_local6
		end
	end
	return nil
end
 --[[ @ 0]]
LUI.WheelLayout.updateDataSource = function ( f23_arg0, f23_arg1, f23_arg2, f23_arg3 )
	f23_arg0.itemCount = 0 --[[ @ 0]]
	if not f23_arg0.__receivedMenuOpenedEvent then
		return 
	end
	local f23_local0 = f23_arg0:getDataSource() --[[ @ 0]]
	if not f23_local0 or not f23_local0.getCount or not f23_local0.getItem then
		return 
	elseif not f23_arg0.widgetType then
		return 
	elseif f23_local0.prepare and (not f23_arg0.prepared or not f23_arg3) then
		f23_arg0.prepared = false --[[ @ 0]]
		f23_local0.prepare( f23_arg0.controller, f23_arg0, f23_arg0.filter ) --[[ @ 0]]
		f23_arg0.prepared = true --[[ @ 0]]
	end
	if f23_arg0.Count > 1 then
		f23_arg0.itemCount = f23_local0.getCount( f23_arg0 ) --[[ @ 0]]
		f23_arg0:updateLayout() --[[ @ 0]]
		f23_arg0:dispatchEventToParent( {
			name = "grid_updated",
			grid = f23_arg0,
			controller = f23_arg0.controller
		} ) --[[ @ 0]]
		return true
	end
end
 --[[ @ 0]]
LUI.WheelLayout.close = function ( f24_arg0 )
	f24_arg0.__closing = true --[[ @ 0]]
	f24_arg0:unsubscribeFromAllModels() --[[ @ 0]]
	f24_arg0:clearLayout( false ) --[[ @ 0]]
	f24_arg0:removeDataSourceLink() --[[ @ 0]]
	f24_arg0.menu:removeMenuOpenedCallback( f24_arg0._on_menuOpened ) --[[ @ 0]]
	LUI.WheelLayout.super.close( f24_arg0 ) --[[ @ 0]]
end
 --[[ @ 0]]
LUI.WheelLayout.updateState = function ( f25_arg0, f25_arg1 )
	if not f25_arg0.__closing then
		LUI.WheelLayout.super.updateState( f25_arg0, f25_arg1 ) --[[ @ 0]]
		f25_arg0:updateLayout( 0 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
LUI.WheelLayout:registerEventHandler( "update_state", LUI.WheelLayout.updateState ) --[[ @ 0]]
LUI.WheelLayout.menuLoaded = function ( f26_arg0, f26_arg1 )
	f26_arg0.__receivedMenuLoadedEvent = true --[[ @ 0]]
	f26_arg0:dispatchEventToChildren( f26_arg1 ) --[[ @ 0]]
end
 --[[ @ 0]]
LUI.WheelLayout:registerEventHandler( "menu_loaded", LUI.WheelLayout.menuLoaded ) --[[ @ 0]]
LUI.WheelLayout.menuOpened = function ( f27_arg0, f27_arg1, f27_arg2, f27_arg3 )
	if not f27_arg0.__receivedMenuOpenedEvent then
		f27_arg0.__receivedMenuOpenedEvent = true --[[ @ 0]]
		f27_arg0:updateDataSource() --[[ @ 0]]
	end
end
 --[[ @ 0]]
LUI.WheelLayout.getStickModel = function ( f28_arg0, f28_arg1 )
	if f28_arg0._useLeftStick then
		return DataSources.LeftStick.getModel( f28_arg1 )
	else
		return DataSources.RightStick.getModel( f28_arg1 )
	end
end
 --[[ @ 0]]
LUI.WheelLayout.setActiveOnUpdate = true --[[ @ 0]]
LUI.WheelLayout.id = "LUIWheelLayout" --[[ @ 0]]
