-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "lua/shared/luareadonlytables" ) --[[ @ 0]]

DDLUtils = LuaReadOnlyTables.ReadOnlyTable( {
	ipairs = function ( f1_arg0 )
		local f1_local0 = 0 --[[ @ 0]]
		return function ()
			local f2_local0, f2_local1 = nil --[[ @ 0]]
			if f1_local0 < #f1_arg0 then
				f2_local0 = f1_local0 --[[ @ 0]]
				f2_local1 = f1_arg0[f2_local0] --[[ @ 0]]
			end
			f1_local0 = f1_local0 + 1 --[[ @ 0]]
			return f2_local0, f2_local1
		end
		
	end,
	pairs = function ( f3_arg0 )
		local f3_local0 = f3_arg0.__keys --[[ @ 0]]
		local f3_local1 = 1 --[[ @ 0]]
		return function ()
			local f4_local0, f4_local1 = nil --[[ @ 0]]
			if f3_local1 <= #f3_local0 then
				f4_local0 = f3_local0[f3_local1] --[[ @ 0]]
				f4_local1 = f3_arg0[f4_local0] --[[ @ 0]]
			end
			f3_local1 = f3_local1 + 1 --[[ @ 0]]
			return f4_local0, f4_local1
		end
		
	end
} ) --[[ @ 0]]
