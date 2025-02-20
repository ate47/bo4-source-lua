-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.SurveyUtility = {} --[[ @ 0]]
CoD.SurveyUtility.GetAARSurveyType = function ()
	local f1_local0 = Engine[@"hash_80964E6C43E0C4B"]() --[[ @ 0]]
	if f1_local0 == Enum[@"LobbyMainMode"][@"hash_37E41449995CD57E"] then
		if LuaUtils.IsArenaPublicGame() then
			return Enum[@"hash_2C20EF6D686D1E5F"][@"hash_39C29FF5FD1A1A8C"]
		else
			return Enum[@"hash_2C20EF6D686D1E5F"][@"hash_5643D8CABE3C78B2"]
		end
	elseif f1_local0 == Enum[@"LobbyMainMode"][@"hash_379D01499920B292"] then
		return Enum[@"hash_2C20EF6D686D1E5F"][@"hash_74FC6F1FD23A171E"]
	elseif f1_local0 == Enum[@"LobbyMainMode"][@"hash_378C124999125C42"] then
		return Enum[@"hash_2C20EF6D686D1E5F"][@"hash_4A6900E33A2623FA"]
	else
		return nil
	end
end
 --[[ @ 0]]
CoD.SurveyUtility.GetIntroSurveyType = function ()
	local f2_local0 = Engine[@"hash_80964E6C43E0C4B"]() --[[ @ 0]]
	if f2_local0 == Enum[@"LobbyMainMode"][@"hash_37E41449995CD57E"] then
		if LuaUtils.IsArenaPublicGame() then
			return Enum[@"hash_2C20EF6D686D1E5F"][@"hash_7E44CE1C86C2E982"]
		else
			return Enum[@"hash_2C20EF6D686D1E5F"][@"hash_39B7ED8B31C66B88"]
		end
	elseif f2_local0 == Enum[@"LobbyMainMode"][@"hash_379D01499920B292"] then
		return Enum[@"hash_2C20EF6D686D1E5F"][@"hash_67DEDB07DD9AAFFC"]
	elseif f2_local0 == Enum[@"LobbyMainMode"][@"hash_378C124999125C42"] then
		return Enum[@"hash_2C20EF6D686D1E5F"][@"hash_7D61D949562AB120"]
	else
		return nil
	end
end
 --[[ @ 0]]
CoD.SurveyUtility.OpenSurvey = function ( f3_arg0, f3_arg1, f3_arg2 )
	if Engine[@"SessionMode_IsPublicOnlineGame"]() == false then
		return false
	elseif f3_arg0 and f3_arg0:getParent() == nil then
		return false
	elseif f3_arg2 == nil then
		return false
	end
	local f3_local0 = Engine[@"hash_1C1BC66C1628B74D"]( f3_arg2, math.random() ) --[[ @ 0]]
	if f3_local0 == nil then
		return false
	elseif f3_local0.randomizeButtonOrder == true then
		CoD.AnalyticsUtility.shuffle( f3_local0.responseOptions ) --[[ @ 0]]
	end
	CoD.SurveyUtility.BuildSurveyTable( f3_local0 ) --[[ @ 0]]
	local f3_local1 = DataSources.SurveyQuestion.getModel( f3_arg1 ) --[[ @ 0]]
	f3_local1.answered:set( false ) --[[ @ 0]]
	OpenOverlay( f3_arg0, "Survey", f3_arg1 ) --[[ @ 0]]
	return true
end
 --[[ @ 0]]
CoD.SurveyUtility.GetSurveyTable = function ()
	return CoD.SurveyUtility.SurveyTable
end
 --[[ @ 0]]
CoD.SurveyUtility.BuildSurveyTable = function ( f5_arg0 )
	CoD.SurveyUtility.SurveyTable = f5_arg0 --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SurveyUtility.TestOpenSurvey = function ( f6_arg0, f6_arg1 )
	CoD.SurveyUtility.BuildSurveyTable( {
		title = @"hash_65C8B3FBEB3A367E",
		description = @"hash_234FA766E33F1A64",
		responseOptions = {
			@"hash_1FD0A4EC72EF5F3F",
			@"hash_39374CB5F1C473B8",
			@"hash_51A71767CB661181",
			@"hash_395F0F01B84486F8",
			@"hash_C9EBE411155B7FC"
		}
	} ) --[[ @ 0]]
	local f6_local0 = DataSources.SurveyQuestion.getModel( f6_arg1 ) --[[ @ 0]]
	f6_local0.answered:set( false ) --[[ @ 0]]
	return OpenOverlay( f6_arg0, "Survey", f6_arg1 )
end
 --[[ @ 0]]
CoD.SurveyUtility.SendSurveyDlogResponse = function ( f7_arg0, f7_arg1 )
	local f7_local0 = CoD.SurveyUtility.GetSurveyTable() --[[ @ 0]]
	local f7_local1 = DataSources.SurveyQuestion.getModel( f7_arg1 ) --[[ @ 0]]
	f7_local1.answered:set( true ) --[[ @ 0]]
	f7_local1 = f7_local0.title --[[ @ 0]]
	local f7_local2 = f7_arg0:getModel() --[[ @ 0]]
	f7_local2 = f7_local2.optionText:get() --[[ @ 0]]
	local f7_local3 = Engine[@"hash_6D52E2360F482280"]() --[[ @ 0]]
	local f7_local4 = Engine[@"CurrentSessionMode"]() --[[ @ 0]]
	local f7_local5 = false --[[ @ 0]]
	Engine[@"hash_30DE279ECDDDD966"]( f7_arg1, @"hash_5218DD882E1DEBD5", {
		[@"hash_586E8661F478F5EB"] = f7_local1,
		[@"hash_76D620761488EBE"] = f7_local2,
		[@"hash_4274D6DC485E5069"] = f7_local3,
		[@"hash_4301FC2C39A80AAB"] = f7_local4
	} ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SurveyUtility.CloseSurvey = function ( f8_arg0, f8_arg1 )
	local f8_local0 = DataSources.SurveyQuestion.getModel( f8_arg1 ) --[[ @ 0]]
	if not f8_local0.answered:get() then
		f8_local0 = CoD.SurveyUtility.GetSurveyTable() --[[ @ 0]]
		local f8_local1 = f8_local0.title --[[ @ 0]]
		local f8_local2 = nil --[[ @ 0]]
		local f8_local3 = Engine[@"hash_6D52E2360F482280"]() --[[ @ 0]]
		local f8_local4 = Engine[@"CurrentSessionMode"]() --[[ @ 0]]
		local f8_local5 = true --[[ @ 0]]
		Engine[@"hash_30DE279ECDDDD966"]( f8_arg1, @"hash_5218DD882E1DEBD5", {
			[@"hash_586E8661F478F5EB"] = f8_local1,
			[@"hash_76D620761488EBE"] = f8_local2,
			[@"hash_4274D6DC485E5069"] = f8_local3,
			[@"hash_4301FC2C39A80AAB"] = f8_local4
		} ) --[[ @ 0]]
	end
	GoBack( f8_arg0, f8_arg1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SurveyUtility.SelectRatingOption = function ( f9_arg0, f9_arg1 )
	local f9_local0 = f9_arg0:getModel() --[[ @ 0]]
	local f9_local1 = Engine[@"GetModelForController"]( f9_arg1 ) --[[ @ 0]]
	local f9_local2 = "SurveyResponseOptions." --[[ @ 0]]
	local f9_local3 = f9_local0.responseOptionIndex --[[ @ 0]]
	f9_local1[f9_local2 .. REG5:get()].selectedIndex:set( f9_local0.ratingIndex:get() ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SurveyUtility.SetupSelectedIndexSubscription = function ( f10_arg0, f10_arg1 )
	local f10_local0 = f10_arg0:getModel() --[[ @ 0]]
	if f10_local0 then
		local f10_local1 = Engine[@"GetModelForController"]( f10_arg1 ) --[[ @ 0]]
		local f10_local2 = "SurveyResponseOptions." --[[ @ 0]]
		local f10_local3 = f10_local0.responseOptionIndex --[[ @ 0]]
		local f10_local4 = f10_local1[f10_local2 .. f10_local4:get()].selectedIndex --[[ @ 0]]
		if f10_arg0._selectedIndexSub then
			f10_arg0:removeSubscription( f10_arg0._selectedIndexSub ) --[[ @ 0]]
		end
		f10_arg0._selectedIndexSub = f10_arg0:subscribeToModel( f10_local4, function ( model )
			if model and model:get() then
				if f10_local0.ratingIndex:get() <= model:get() then
					f10_local0.isSelected:set( true ) --[[ @ 0]]
				else
					f10_local0.isSelected:set( false ) --[[ @ 0]]
				end
			end
		end, false ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
DataSources.SurveyQuestion = {
	getModel = function ( f12_arg0 )
		local f12_local0 = Engine[@"GetModelForController"]( f12_arg0 ) --[[ @ 0]]
		local f12_local1 = f12_local0:create( "SurveyQuestion" ) --[[ @ 0]]
		local f12_local2 = CoD.SurveyUtility.GetSurveyTable() --[[ @ 0]]
		local f12_local3 = f12_local1:create( "questionText" ) --[[ @ 0]]
		f12_local3:set( f12_local2.title ) --[[ @ 0]]
		f12_local3 = f12_local1:create( "questionSubText" ) --[[ @ 0]]
		f12_local3:set( f12_local2.description ) --[[ @ 0]]
		f12_local3 = f12_local1:create( "responseWidget" ) --[[ @ 0]]
		f12_local3:set( "CoD.SurveyResponseList" ) --[[ @ 0]]
		f12_local1:create( "answered" ) --[[ @ 0]]
		return f12_local1
	end
} --[[ @ 0]]
DataSources.SurveyResponseOptions = ListHelper_SetupDataSource( "SurveyResponseOptions", function ( f13_arg0, f13_arg1 )
	local f13_local0 = Engine[@"GetModelForController"]( f13_arg0 ) --[[ @ 0]]
	local f13_local1 = CoD.SurveyUtility.GetSurveyTable() --[[ @ 0]]
	local f13_local2 = {} --[[ @ 0]]
	for f13_local6, f13_local7 in ipairs( f13_local1.responseOptions ) --[[ @ 0]] do
		table.insert( f13_local2, {
			models = {
				optionText = f13_local7,
				selectedIndex = -1,
				singleRatingQuestion = false
			}
		} ) --[[ @ 0]]
	end
	return f13_local2
end, true ) --[[ @ 0]]
