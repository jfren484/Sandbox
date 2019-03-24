"C:\Program Files\NASM\nasm.exe" -f win64 %1.asm
cl /Zi %1.obj msvcrt.lib legacy_stdio_definitions.lib