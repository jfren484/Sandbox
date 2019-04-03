@echo off

call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"

nasm -g -f win64 -g uprintf.asm || goto :eof

cl /c /Zi uhelpers.c || goto :eof

lib /out:uprintf.lib uprintf.obj uhelpers.obj || goto :eof

cl /Zi demo_uprintf.c uprintf.lib || goto :eof

echo OK
