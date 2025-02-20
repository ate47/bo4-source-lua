-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.SoundUtility = {} --[[ @ 0]]
CoD.SoundUtility.PlayVO = function ( f1_arg0, f1_arg1, f1_arg2 )
	if f1_arg0.___voSoundAlias then
		StopSoundAlias( f1_arg0.__voSoundAlias ) --[[ @ 0]]
	end
	PlaySoundAlias( f1_arg1 ) --[[ @ 0]]
	f1_arg0.__voSoundAlias = f1_arg1 --[[ @ 0]]
	if f1_arg2 == true and not f1_arg0.__stopVoOnCloseCallback then
		f1_arg0.__stopVoOnCloseCallback = true --[[ @ 0]]
		LUI.OverrideFunction_CallOriginalFirst( f1_arg0, "close", function ()
			CoD.SoundUtility.StopVO( f1_arg0 ) --[[ @ 0]]
		end ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.SoundUtility.StopVO = function ( f3_arg0 )
	if f3_arg0.__voSoundAlias then
		StopSoundAlias( f3_arg0.__voSoundAlias ) --[[ @ 0]]
		f3_arg0.__voSoundAlias = nil --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.SoundUtility.PlaySoundOnceForController = function ( f4_arg0, f4_arg1 )
	if not CoD.perController[f4_arg0]._playOnceAliases then
		CoD.perController[f4_arg0]._playOnceAliases = {} --[[ @ 0]]
	end
	if CoD.perController[f4_arg0]._playOnceAliases[f4_arg1] then
		return 
	else
		CoD.perController[f4_arg0]._playOnceAliases[f4_arg1] = true --[[ @ 0]]
		Engine[@"playsound"]( f4_arg1 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.SoundUtility.StopPlayOnceSoundForController = function ( f5_arg0, f5_arg1 )
	if CoD.perController[f5_arg0]._playOnceAliases then
		CoD.perController[f5_arg0]._playOnceAliases[f5_arg1] = nil --[[ @ 0]]
	end
	Engine[@"stopsound"]( f5_arg1 ) --[[ @ 0]]
end
 --[[ @ 0]]
