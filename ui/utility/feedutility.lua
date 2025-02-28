-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.FeedUtility = {} --[[ @ 0]]
CoD.FeedUtility.FeedAxis = LuaEnum.createEnum( "HORIZONTAL", "VERTICAL" ) --[[ @ 0]]
CoD.FeedUtility.FeedDirections = LuaEnum.createEnum( "NEGATIVE", "POSITIVE" ) --[[ @ 0]]
CoD.FeedUtility.FeedInsertionSide = LuaEnum.createEnum( "BEGINNING", "END" ) --[[ @ 0]]
CoD.FeedUtility.FeedTypes = {} --[[ @ 0]]
CoD.FeedUtility.SetupFeed = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8 )
	local f1_local0 = f1_arg0 --[[ @ 0]]
	local f1_local1 = Engine[@"getmodelforcontroller"]( f1_arg8 ) --[[ @ 0]]
	local f1_local2 = f1_local1:create( "feeds." .. f1_arg2 .. "." .. f1_arg3 ) --[[ @ 0]]
	f1_local2:set( f1_arg2 ) --[[ @ 0]]
	f1_arg1:setModel( f1_local2, f1_arg8 ) --[[ @ 0]]
	f1_arg1.axis = f1_arg4 --[[ @ 0]]
	f1_arg1.direction = f1_arg5 --[[ @ 0]]
	if f1_arg6 == CoD.FeedUtility.FeedInsertionSide.BEGINNING then
		f1_arg1.addFeedItem = CoD.FeedUtility.AddFeedItemToBeginning --[[ @ 0]]
		f1_arg1.freeFeedItem = CoD.FeedUtility.FreeFeedItemFromEnd --[[ @ 0]]
	elseif f1_arg6 == CoD.FeedUtility.FeedInsertionSide.END then
		f1_arg1.addFeedItem = CoD.FeedUtility.AddFeedItemToEnd --[[ @ 0]]
		f1_arg1.freeFeedItem = CoD.FeedUtility.FreeFeedItemFromBeginning --[[ @ 0]]
	else
		error( "Feed of type: " .. f1_arg2 .. " tried to setup with a bad insertion side. You must select an option from CoD.FeedUtility.FeedInsertionSide" ) --[[ @ 0]]
	end
	f1_arg1.feedInstanceType = f1_arg3 --[[ @ 0]]
	f1_arg1.feedTable = CoD.FeedUtility.FeedTypes[f1_arg2] --[[ @ 0]]
	f1_arg1:registerEventHandler( "free_feed_item", f1_arg1.freeFeedItem ) --[[ @ 0]]
	CoD.FeedUtility.InitFeedItems( f1_arg1, f1_arg7, f1_arg8 ) --[[ @ 0]]
	if not f1_local0.managedFeeds then
		f1_local0.managedFeeds = {} --[[ @ 0]]
	end
	f1_local0.managedFeeds[Engine[@"converttoxhash"]( f1_arg3 )] = f1_arg1 --[[ @ 0]]
	SetupDynamicContainer( f1_arg1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FeedUtility.CheckForFeedEvent = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3, f2_arg4 )
	local f2_local0 = f2_arg0 --[[ @ 0]]
	if f2_arg4:get() == Engine[@"converttoxhash"]( f2_arg3 ) and not CoD.SpawnSelectionUtility.IsSpawnSelectActive( f2_arg1 ) then
		CoD.FeedUtility.FeedTypes[f2_arg2].eventReceived( f2_local0, f2_arg3, CoD.GetScriptNotifyData( f2_arg4 ), f2_arg1 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.FeedUtility.InitFeedItems = function ( f3_arg0, f3_arg1, f3_arg2 )
	local f3_local0 = f3_arg0:getModel() --[[ @ 0]]
	if not f3_local0 then
		return 
	end
	f3_arg0.feedSize = f3_arg0.feedTable.sizes[f3_arg0.feedInstanceType] --[[ @ 0]]
	if not f3_arg0.feedSize then
		return 
	end
	f3_arg0.feedItems = {} --[[ @ 0]]
	f3_arg0.currentIndex = 0 --[[ @ 0]]
	for f3_local1 = 0 --[[ @ 0]], f3_arg0.feedSize - 1, 1 do
		assert( f3_arg0.feedTable.createFeedItem ) --[[ @ 0]]
		local f3_local4 = f3_arg0.feedTable.createFeedItem( f3_local0, f3_arg1, f3_arg2, f3_local1 ) --[[ @ 0]]
		f3_local4:setAlpha( 0 ) --[[ @ 0]]
		f3_local4._parentFeed = f3_arg0 --[[ @ 0]]
		CoD.FeedUtility.InitFeedItemFunctions( f3_local4 ) --[[ @ 0]]
		f3_arg0:addElement( f3_local4 ) --[[ @ 0]]
		f3_arg0.feedItems[f3_local1] = {} --[[ @ 0]]
		f3_arg0.feedItems[f3_local1].widget = f3_local4 --[[ @ 0]]
		f3_arg0.feedItems[f3_local1].position = 0 --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.FeedUtility.AddFeedItemToBeginning = function ( f4_arg0, f4_arg1, f4_arg2 )
	local f4_local0 = f4_arg0 --[[ @ 0]]
	if not f4_local0.feedSize then
		return 
	end
	local f4_local1 = 0 --[[ @ 0]]
	for f4_local2 = 0 --[[ @ 0]], f4_local0.feedSize - 1, 1 do
		if f4_local0.feedItems[f4_local2].active then
			f4_local1 = f4_local1 + 1 --[[ @ 0]]
		end
	end
	if f4_local1 == f4_local0.feedSize then
	
	else
		CoD.FeedUtility.MoveFeedItemsForward( f4_local0 ) --[[ @ 0]]
		local f4_local2 = nil --[[ @ 0]]
		if not f4_local0.availableWidgetsOverrideList then
			f4_local2 = f4_local0.currentIndex --[[ @ 0]]
		else
			f4_local2 = table.remove( f4_local0.availableWidgetsOverrideList, 1 ) --[[ @ 0]]
		end
		local f4_local3 = f4_local0.feedItems[f4_local2].widget --[[ @ 0]]
		f4_local3:init( f4_local0.axis, f4_local0.direction, f4_local2, 0, f4_arg2 ) --[[ @ 0]]
		if f4_arg2 > 0 then
			
		else
			
		end
		f4_local3._shouldSustain = true --[[ @ 0]]
		if f4_local0.feedTable.onFeedItemInserted then
			f4_local0.feedTable.onFeedItemInserted( f4_local3, f4_arg1 ) --[[ @ 0]]
		end
		f4_local0.feedItems[f4_local2].active = true --[[ @ 0]]
		f4_local0.feedItems[f4_local2].position = 0 --[[ @ 0]]
		if not f4_local0.availableWidgetsOverrideList then
			f4_local0.currentIndex = (f4_local0.currentIndex + 1) % f4_local0.feedSize --[[ @ 0]]
		elseif #f4_local0.availableWidgetsOverrideList == 0 then
			f4_local0.availableWidgetsOverrideList = nil --[[ @ 0]]
		end
	end
	while f4_local0.feedItems[f4_local0.currentIndex].position ~= f4_local0.feedSize - 1 do
		f4_local0.currentIndex = (f4_local0.currentIndex + 1) % f4_local0.feedSize --[[ @ 0]]
	end
	CoD.FeedUtility.ItemExpired( f4_local0.feedItems[f4_local0.currentIndex].widget, true ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FeedUtility.AddFeedItemToEnd = function ( f5_arg0, f5_arg1, f5_arg2 )
	local f5_local0 = f5_arg0 --[[ @ 0]]
	if not f5_local0.feedSize then
		return 
	end
	local f5_local1 = 0 --[[ @ 0]]
	for f5_local2 = 0 --[[ @ 0]], f5_local0.feedSize - 1, 1 do
		if f5_local0.feedItems[f5_local2].active then
			f5_local1 = f5_local1 + 1 --[[ @ 0]]
		end
	end
	if f5_local1 == f5_local0.feedSize then
		if f5_local0.feedTable.onFeedOverflowAtEnd then
			f5_local0.feedTable:onFeedOverflowAtEnd() --[[ @ 0]]
		else
			CoD.FeedUtility.ItemExpired( f5_local0.feedItems[f5_local0.currentIndex].widget, true ) --[[ @ 0]]
		end
		f5_local1 = f5_local1 - 1 --[[ @ 0]]
	end
	local f5_local2 = nil --[[ @ 0]]
	if not f5_local0.availableWidgetsOverrideList then
		f5_local2 = f5_local0.currentIndex --[[ @ 0]]
	else
		f5_local2 = table.remove( f5_local0.availableWidgetsOverrideList, 1 ) --[[ @ 0]]
	end
	local f5_local3 = f5_local0.feedItems[f5_local2].widget --[[ @ 0]]
	if f5_arg2 > 0 then
		
	else
		
	end
	f5_local3._shouldSustain = true --[[ @ 0]]
	if f5_local0.feedTable.onFeedItemInserted then
		f5_local0.feedTable.onFeedItemInserted( f5_local3, f5_arg1 ) --[[ @ 0]]
	end
	f5_local0.feedItems[f5_local2].active = true --[[ @ 0]]
	f5_local0.feedItems[f5_local2].position = f5_local1 --[[ @ 0]]
	f5_local3:init( f5_local0.axis, f5_local0.direction, f5_local2, f5_local1, f5_arg2 ) --[[ @ 0]]
	if not f5_local0.availableWidgetsOverrideList then
		f5_local0.currentIndex = (f5_local0.currentIndex + 1) % f5_local0.feedSize --[[ @ 0]]
	elseif #f5_local0.availableWidgetsOverrideList == 0 then
		f5_local0.availableWidgetsOverrideList = nil --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.FeedUtility.MoveFeedItemsForward = function ( f6_arg0 )
	local f6_local0 = 0 --[[ @ 0]]
	for f6_local1 = 0 --[[ @ 0]], f6_arg0.feedSize - 1, 1 do
		if f6_arg0.feedItems[f6_local1].active then
			f6_arg0.feedItems[f6_local1].position = f6_arg0.feedItems[f6_local1].position + 1 --[[ @ 0]]
			f6_arg0.feedItems[f6_local1].widget:move( f6_arg0.axis, f6_arg0.direction, f6_arg0.feedItems[f6_local1].position ) --[[ @ 0]]
			f6_local0 = f6_local0 + 1 --[[ @ 0]]
		end
	end
	return f6_local0
end
 --[[ @ 0]]
CoD.FeedUtility.MoveFeedItemsBack = function ( f7_arg0, f7_arg1 )
	f7_arg0.locked = true --[[ @ 0]]
	local f7_local0 = false --[[ @ 0]]
	for f7_local1 = f7_arg0.feedSize - 1 --[[ @ 0]], 0, -1 do
		if f7_arg0.feedItems[f7_local1].active and f7_arg1 < f7_arg0.feedItems[f7_local1].position then
			f7_arg0.feedItems[f7_local1].position = f7_arg0.feedItems[f7_local1].position - 1 --[[ @ 0]]
			f7_arg0.feedItems[f7_local1].widget:move( f7_arg0.axis, f7_arg0.direction, f7_arg0.feedItems[f7_local1].position ) --[[ @ 0]]
		end
	end
	f7_arg0.locked = nil --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FeedUtility.FreeFeedItemFromEnd = function ( f8_arg0, f8_arg1 )
	f8_arg0.feedItems[f8_arg1.id].active = false --[[ @ 0]]
	f8_arg0.feedItems[f8_arg1.id].position = 0 --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FeedUtility.FreeFeedItemFromBeginning = function ( f9_arg0, f9_arg1 )
	local f9_local0 = f9_arg0.feedItems[f9_arg1.id].position --[[ @ 0]]
	if f9_arg1.id ~= f9_arg0.currentIndex then
		if not f9_arg0.availableWidgetsOverrideList then
			f9_arg0.availableWidgetsOverrideList = {} --[[ @ 0]]
		end
		table.insert( f9_arg0.availableWidgetsOverrideList, f9_arg1.id ) --[[ @ 0]]
	end
	f9_arg0.feedItems[f9_arg1.id].active = false --[[ @ 0]]
	f9_arg0.feedItems[f9_arg1.id].position = 0 --[[ @ 0]]
	if not f9_arg0.locked then
		CoD.FeedUtility.MoveFeedItemsBack( f9_arg0, f9_local0 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.FeedUtility.InitFeedItemFunctions = function ( f10_arg0 )
	local f10_local0 = f10_arg0 --[[ @ 0]]
	f10_local0.init = CoD.FeedUtility.ItemInit --[[ @ 0]]
	f10_local0.move = CoD.FeedUtility.ItemMove --[[ @ 0]]
	f10_local0:registerEventHandler( "item_expired", CoD.FeedUtility.ItemExpiredTimerWrapper ) --[[ @ 0]]
	f10_local0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
		CoD.FeedUtility.CheckForContinueMoving( f10_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FeedUtility.CheckForContinueMoving = function ( f12_arg0 )
	local f12_local0 = f12_arg0 --[[ @ 0]]
	f12_local0.moving = nil --[[ @ 0]]
	if f12_local0.movingToPos ~= f12_local0.initialMovingToPos then
		f12_local0:move( f12_local0._parentFeed.axis, f12_local0._parentFeed.direction, f12_local0.movingToPos, (f12_local0.initialMovingToPos - f12_local0.movingToPos) * 200 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.FeedUtility.ItemInit = function ( f13_arg0, f13_arg1, f13_arg2, f13_arg3, f13_arg4, f13_arg5 )
	local f13_local0 = f13_arg0 --[[ @ 0]]
	f13_local0._id = f13_arg3 --[[ @ 0]]
	f13_local0._expired = nil --[[ @ 0]]
	f13_local0._freed = nil --[[ @ 0]]
	f13_local0:move( f13_arg1, f13_arg2, f13_arg4, 0 ) --[[ @ 0]]
	f13_local0:setAlpha( 1 ) --[[ @ 0]]
	f13_local0:playClip( "Intro" ) --[[ @ 0]]
	if f13_arg5 > 0 then
		f13_local0._expireTimer = LUI.UITimer.new( f13_arg5, "item_expired", true, f13_local0 ) --[[ @ 0]]
		f13_local0:addElement( f13_local0._expireTimer ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.FeedUtility.ItemMove = function ( f14_arg0, f14_arg1, f14_arg2, f14_arg3, f14_arg4 )
	local f14_local0 = f14_arg0 --[[ @ 0]]
	local f14_local1 = nil --[[ @ 0]]
	if not f14_arg4 then
		f14_arg4 = 200 --[[ @ 0]]
	end
	if not f14_local0.moving and f14_arg4 > 0 then
		f14_local0:completeAnimation() --[[ @ 0]]
		f14_local0.initialMovingToPos = f14_arg3 --[[ @ 0]]
		f14_local0.moving = true --[[ @ 0]]
		f14_local1 = true --[[ @ 0]]
	elseif f14_arg4 == 0 then
		f14_local1 = true --[[ @ 0]]
	end
	if f14_local1 then
		local f14_local2, f14_local3, f14_local4, f14_local5 = f14_local0:getLocalRect() --[[ @ 0]]
		f14_local0:beginAnimation( f14_arg4 ) --[[ @ 0]]
		if f14_arg1 == CoD.FeedUtility.FeedAxis.HORIZONTAL then
			local f14_local6 = f14_local4 - f14_local2 --[[ @ 0]]
			local f14_local7 = nil --[[ @ 0]]
			if f14_arg2 == CoD.FeedUtility.FeedDirections.NEGATIVE then
				f14_local7 = f14_local6 * (f14_arg3 + 1) --[[ @ 0]]
				f14_local0:setLeftRight( 1, 1, -f14_local7, -f14_local7 + f14_local6 ) --[[ @ 0]]
			elseif f14_arg2 == CoD.FeedUtility.FeedDirections.POSITIVE then
				f14_local7 = f14_local6 * f14_arg3 --[[ @ 0]]
				f14_local0:setLeftRight( 0, 0, f14_local7, f14_local7 + f14_local6 ) --[[ @ 0]]
			end
		elseif f14_arg1 == CoD.FeedUtility.FeedAxis.VERTICAL then
			local f14_local6 = f14_local5 - f14_local3 --[[ @ 0]]
			local f14_local7 = nil --[[ @ 0]]
			if f14_arg2 == CoD.FeedUtility.FeedDirections.POSITIVE then
				f14_local7 = f14_local6 * f14_arg3 --[[ @ 0]]
				f14_local0:setTopBottom( 0, 0, f14_local7, f14_local7 + f14_local6 ) --[[ @ 0]]
			elseif f14_arg2 == CoD.FeedUtility.FeedDirections.NEGATIVE then
				f14_local7 = f14_local6 * (f14_arg3 + 1) --[[ @ 0]]
				f14_local0:setTopBottom( 1, 1, -f14_local7, -f14_local7 + f14_local6 ) --[[ @ 0]]
			end
		end
	end
	if f14_arg4 ~= 0 then
		f14_local0.movingToPos = f14_arg3 --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.FeedUtility.ItemExpiredTimerWrapper = function ( f15_arg0 )
	CoD.FeedUtility.ItemExpired( f15_arg0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FeedUtility.ItemExpired = function ( f16_arg0, f16_arg1 )
	local f16_local0 = f16_arg0 --[[ @ 0]]
	f16_local0._shouldSustain = nil --[[ @ 0]]
	f16_local0._preExpiring = nil --[[ @ 0]]
	f16_local0.moving = nil --[[ @ 0]]
	f16_local0._expired = true --[[ @ 0]]
	f16_local0:playClip( "Expired" ) --[[ @ 0]]
	if f16_arg1 then
		CoD.FeedUtility.ItemFreed( f16_arg0 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.FeedUtility.ItemFreed = function ( f17_arg0 )
	local f17_local0 = f17_arg0 --[[ @ 0]]
	if not f17_local0._freed then
		f17_local0._cashedIn = nil --[[ @ 0]]
		f17_local0._freed = true --[[ @ 0]]
		if f17_local0._parentFeed.feedTable.onFeedItemFreed then
			f17_local0._parentFeed.feedTable:onFeedItemFreed() --[[ @ 0]]
		end
		f17_local0:dispatchEventToParent( {
			name = "free_feed_item",
			id = f17_local0._id
		} ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
