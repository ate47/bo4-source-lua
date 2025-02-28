-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.ZMStoryUtility = {} --[[ @ 0]]
CoD.ZMStoryUtility.StoryIndex = LuaEnum.createEnum( "STORY_1", "STORY_2", "STORY_INDEX_COUNT" ) --[[ @ 0]]
CoD.ZMStoryUtility.StoryNames = {
	[CoD.ZMStoryUtility.StoryIndex.STORY_1] = @"hash_66D26560889B0C05",
	[CoD.ZMStoryUtility.StoryIndex.STORY_2] = @"hash_3AAA6B748B1B361A"
} --[[ @ 0]]
CoD.ZMStoryUtility.CharacterIndexToStory = {} --[[ @ 0]]
DataSources.ZMStoryLoadouts = ListHelper_SetupDataSource( "ZMStoryLoadouts", function ( f1_arg0, f1_arg1 )
	local f1_local0 = {} --[[ @ 0]]
	local f1_local1 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local1 = f1_local1.selectedZMStory --[[ @ 0]]
	local f1_local2 = f1_local1 and f1_local1:get() --[[ @ 0]]
	for f1_local3 = CoD.ZMStoryUtility.StoryIndex.STORY_1 --[[ @ 0]], CoD.ZMStoryUtility.StoryIndex.STORY_INDEX_COUNT - 1, 1 do
		table.insert( f1_local0, {
			models = {
				storyIndex = f1_local3,
				storyName = CoD.ZMStoryUtility.StoryNames[f1_local3]
			},
			properties = {
				selectIndex = f1_local3 == f1_local2
			}
		} ) --[[ @ 0]]
	end
	return f1_local0
end ) --[[ @ 0]]
CoD.ZMStoryUtility.GetCurrentMapStory = function ()
	local f2_local0 = function ( f3_arg0 )
		if f3_arg0 and CoD.mapsTable[f3_arg0] then
			return CoD.mapsTable[f3_arg0][@"hash_3A3627D705B66CDE"] or 0
		else
			
		end
	end
	 --[[ @ 0]]
	local f2_local1 = nil --[[ @ 0]]
	if InFrontend() then
		local f2_local2 = Engine[@"getglobalmodel"]() --[[ @ 0]]
		f2_local2 = f2_local2:create( "MapVote.mapVoteMapNext" ) --[[ @ 0]]
		f2_local1 = f2_local2:get() --[[ @ 0]]
		if not f2_local1 or f2_local1 == @"hash_0" then
			local f2_local3 = Engine[@"getglobalmodel"]() --[[ @ 0]]
			f2_local3 = f2_local3:create( "lobbyRoot.selectedMapId" ) --[[ @ 0]]
			f2_local1 = f2_local3:get() --[[ @ 0]]
			if not f2_local1 or f2_local1 == @"hash_0" then
				f2_local1 = Engine[@"converttoxhash"]( Engine[@"lobbygetmap"]() ) --[[ @ 0]]
			end
		end
	else
		f2_local1 = Engine[@"converttoxhash"]( Engine[@"lobbygetmap"]() ) --[[ @ 0]]
	end
	local f2_local2 = f2_local0( f2_local1 ) --[[ @ 0]]
	if f2_local2 then
		return f2_local2
	else
		return 0
	end
end
 --[[ @ 0]]
CoD.ZMStoryUtility.IsUnlockableItemAvailableInSelectedStory = function ( f4_arg0, f4_arg1 )
	local f4_local0 = Engine[@"getmodelforcontroller"]( f4_arg0 ) --[[ @ 0]]
	f4_local0 = f4_local0.selectedZMStory --[[ @ 0]]
	local f4_local1 = f4_local0 and f4_local0:get() --[[ @ 0]]
	if f4_local1 == CoD.ZMStoryUtility.StoryIndex.STORY_1 and f4_arg1[@"hash_72DDE61F5350E2C"] == 1 then
		return true
	elseif f4_local1 == CoD.ZMStoryUtility.StoryIndex.STORY_2 and f4_arg1[@"hash_72DE161F5351345"] == 1 then
		return true
	else
		return false
	end
end
 --[[ @ 0]]
CoD.ZMStoryUtility.SetSelectedStoryOnLoad = function ()
	local f5_local0 = CoD.BaseUtility.GetMapValue( Engine[@"getcurrentmap"](), @"hash_3A3627D705B66CDE" ) --[[ @ 0]]
	if f5_local0 then
		Engine[@"hash_337129162C820FB"]( f5_local0 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.ZMStoryUtility.SetSelectedStoryToCurrentMapStory = function ( f6_arg0 )
	local f6_local0 = CoD.ZMStoryUtility.GetCurrentMapStory() --[[ @ 0]]
	Engine[@"hash_337129162C820FB"]( f6_local0 ) --[[ @ 0]]
	local f6_local1 = Engine[@"getmodelforcontroller"]( f6_arg0 ) --[[ @ 0]]
	f6_local1 = f6_local1:create( "selectedZMStory" ) --[[ @ 0]]
	f6_local1:set( f6_local0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMStoryUtility.UpdateSelectedStory = function ( f7_arg0, f7_arg1 )
	local f7_local0 = f7_arg0:getModel() --[[ @ 0]]
	f7_local0 = f7_local0.storyIndex:get() --[[ @ 0]]
	Engine[@"hash_337129162C820FB"]( f7_local0 ) --[[ @ 0]]
	local f7_local1 = Engine[@"getmodelforcontroller"]( f7_arg1 ) --[[ @ 0]]
	f7_local1 = f7_local1:create( "selectedZMStory" ) --[[ @ 0]]
	f7_local1:set( f7_local0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMStoryUtility.UpdateSelectedCharacterStory = function ( f8_arg0, f8_arg1 )
	local f8_local0 = CoD.SafeGetModelValue( f8_arg0:getModel(), "characterIndex" ) --[[ @ 0]]
	if not f8_local0 then
		return 
	elseif not CoD.ZMStoryUtility.CharacterIndexToStory[f8_local0] then
		CoD.ZMStoryUtility.GenerateCharacterToStoryTable() --[[ @ 0]]
	end
	local f8_local1 = CoD.ZMStoryUtility.CharacterIndexToStory[f8_local0] --[[ @ 0]]
	if f8_local1 then
		Engine[@"hash_337129162C820FB"]( f8_local1 ) --[[ @ 0]]
		local f8_local2 = Engine[@"getmodelforcontroller"]( f8_arg1 ) --[[ @ 0]]
		f8_local2 = f8_local2:create( "selectedZMStory" ) --[[ @ 0]]
		f8_local2:set( f8_local1 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.ZMStoryUtility.GenerateCharacterToStoryTable = function ()
	if not CoD.MapUtility.MapsTable then
		return 
	end
	for f9_local8, f9_local9 in pairs( CoD.MapUtility.MapsTable ) --[[ @ 0]] do
		if f9_local9.session_mode == Enum[@"emodes"][@"mode_zombies"] and f9_local9[@"hash_3A3627D705B66CDE"] and f9_local9.zmCharacters then
			for f9_local6, f9_local7 in ipairs( f9_local9.zmCharacters ) --[[ @ 0]] do
				if f9_local7.characterIndex then
					CoD.ZMStoryUtility.CharacterIndexToStory[f9_local7.characterIndex] = f9_local9[@"hash_3A3627D705B66CDE"] --[[ @ 0]]
				end
			end
		end
	end
end
 --[[ @ 0]]
