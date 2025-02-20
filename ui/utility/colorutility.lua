-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.ColorUtility = {} --[[ @ 0]]
CoD.ColorUtility.ConsoleColors = {} --[[ @ 0]]
CoD.ColorUtility.GetColorFromFormattedColorString = function ( f1_arg0 )
	local f1_local0 = CoD.GetNumValuesFromSpaceSeparatedString( f1_arg0 ) --[[ @ 0]]
	if #f1_local0 ~= 3 then
		return 
	end
	local f1_local1 = false --[[ @ 0]]
	for f1_local2 = 1 --[[ @ 0]], #f1_local0, 1 do
		if f1_local0[f1_local2] > 1 then
			f1_local1 = true --[[ @ 0]]
			break
		end
	end
	for f1_local2 = 1 --[[ @ 0]], #f1_local0, 1 do
		if f1_local1 then
			f1_local0[f1_local2] = f1_local0[f1_local2] * 0 --[[ @ 0]]
		else
			f1_local0[f1_local2] = f1_local0[f1_local2] * 1 --[[ @ 0]]
		end
	end
	return {
		r = f1_local0[1],
		g = f1_local0[2],
		b = f1_local0[3]
	}
end
 --[[ @ 0]]
CoD.ColorUtility.ExplodeColor = function ( f2_arg0 )
	if not f2_arg0 then
		f2_arg0 = {} --[[ @ 0]]
	end
	return f2_arg0.r or 0, f2_arg0.g or 0, f2_arg0.b or 0
end
 --[[ @ 0]]
CoD.ColorUtility.UpdateColorSet = function ( f3_arg0, f3_arg1 )
	if not ColorSet[f3_arg0] then
		return 
	else
		local f3_local0 = CoD.ColorUtility.GetColorFromFormattedColorString( f3_arg1 ) --[[ @ 0]]
		ColorSet[f3_arg0] = f3_local0 --[[ @ 0]]
		Engine[@"UpdateColorSet"]( f3_arg0, f3_local0 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.ColorUtility.GetColorBlindSafeColorNameForSetting = function ( f4_arg0, f4_arg1 )
	local f4_local0 = f4_arg0 --[[ @ 0]]
	if f4_arg1 == Enum[@"ColorVisionDeficiencies"][@"hash_1E801E6959D34B21"] then
		f4_local0 = f4_local0 .. "_Deuteranopia" --[[ @ 0]]
	elseif f4_arg1 == Enum[@"ColorVisionDeficiencies"][@"hash_BC3BF25E4E6501D"] then
		f4_local0 = f4_local0 .. "_Protanopia" --[[ @ 0]]
	elseif f4_arg1 == Enum[@"ColorVisionDeficiencies"][@"hash_2C4F3981BEDAE223"] then
		f4_local0 = f4_local0 .. "_Tritanopia" --[[ @ 0]]
	end
	if ColorSet[f4_local0] then
		return f4_local0
	else
		return f4_arg0
	end
end
 --[[ @ 0]]
CoD.ColorUtility.GetColorBlindSafeColorForSetting = function ( f5_arg0, f5_arg1 )
	return ColorSet[CoD.ColorUtility.GetColorBlindSafeColorNameForSetting( f5_arg0, f5_arg1 )]
end
 --[[ @ 0]]
CoD.ColorUtility.GetColorBlindColorNameForPlayer = function ( f6_arg0, f6_arg1 )
	local f6_local0 = Enum[@"ColorVisionDeficiencies"][@"hash_4D44A16999E1790A"] --[[ @ 0]]
	local f6_local1 = Engine[@"GetPlayerCommonGamerProfile"]( f6_arg0 ) --[[ @ 0]]
	if f6_local1 ~= nil and f6_local1[@"hash_1F7EA50ADC77CDD0"] ~= nil then
		f6_local0 = f6_local1[@"hash_1F7EA50ADC77CDD0"]:get() --[[ @ 0]]
	end
	return CoD.ColorUtility.GetColorBlindSafeColorNameForSetting( f6_arg1, f6_local0 )
end
 --[[ @ 0]]
CoD.ColorUtility.GetColorBlindColorForPlayer = function ( f7_arg0, f7_arg1 )
	return ColorSet[CoD.ColorUtility.GetColorBlindColorNameForPlayer( f7_arg0, f7_arg1 )]
end
 --[[ @ 0]]
CoD.ColorUtility.NormalizeColor = function ( f8_arg0 )
	local f8_local0 = {} --[[ @ 0]]
	local f8_local1 = 1 --[[ @ 0]]
	for f8_local5 in string.gmatch( f8_arg0, "[^%s]+" ) --[[ @ 0]] do
		f8_local0[f8_local1] = tonumber( f8_local5 ) / CoD.CraftUtility.EMBLEM_MAX_COLOR_COMPONENT_VALUE --[[ @ 0]]
		f8_local1 = f8_local1 + 1 --[[ @ 0]]
	end
	return f8_local0
end
 --[[ @ 0]]
CoD.ColorUtility.ConvertTableToRGB = function ( f9_arg0 )
	return f9_arg0.r, f9_arg0.g, f9_arg0.b
end
 --[[ @ 0]]
CoD.ColorUtility.ConvertColorFromTable = function ( f10_arg0 )
	return CoD.ColorUtility.ConvertColor( f10_arg0.r, f10_arg0.g, f10_arg0.b )
end
 --[[ @ 0]]
CoD.ColorUtility.ConvertColor = function ( f11_arg0, f11_arg1, f11_arg2 )
	return string.format( "%d %d %d", f11_arg0 * 255, f11_arg1 * 255, f11_arg2 * 255 )
end
 --[[ @ 0]]
CoD.ColorUtility.ClampColor = function ( f12_arg0, f12_arg1, f12_arg2 )
	if f12_arg2 < f12_arg0 then
		f12_arg0 = f12_arg2 --[[ @ 0]]
	elseif f12_arg0 < f12_arg1 then
		f12_arg0 = f12_arg1 --[[ @ 0]]
	end
	return f12_arg0
end
 --[[ @ 0]]
CoD.ColorUtility.LerpColor = function ( f13_arg0, f13_arg1, f13_arg2 )
	f13_arg2 = math.min( math.max( 0, f13_arg2 ), 1 ) --[[ @ 0]]
	return {
		r = f13_arg0.r * (1 - f13_arg2) + f13_arg1.r * f13_arg2,
		g = f13_arg0.g * (1 - f13_arg2) + f13_arg1.g * f13_arg2,
		b = f13_arg0.b * (1 - f13_arg2) + f13_arg1.b * f13_arg2
	}
end
 --[[ @ 0]]
