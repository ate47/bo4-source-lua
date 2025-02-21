# Black Ops 4 Lua Source

A simple Black Ops 4 lua decompiled dump using a modified version of [CODLuaDecompiler](https://github.com/ate47/CoDLuaDecompiler/)\*.

\* Version with the same hash format as [hksc](https://github.com/ate47/hksc).

<!-- 
    rm .\bo4-source-lua\**.lua
    cp .\bo4\luafile\* .\bo4-source-lua\ -Recurse
    (ls -File -Recurse .\bo4-source-lua\).FullName | % { if (!$_.EndsWith(".dec.lua")) { $_ } } | % { rm $_ }
    (ls -File -Recurse .\bo4-source-lua\).FullName | % { if ($_.EndsWith(".dec.lua")) { $_ } } | % { mv $_ "$($_.Substring(0, $_.Length - 8)).lua" }
-->