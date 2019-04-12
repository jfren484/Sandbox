nasm -g -fbin -olab9_payload.obj lab9_payload.asm
nasm -g -fbin -olab9_mbr.obj lab9_mbr.asm
.\x64\Debug\MkFloppy.exe C:\DosBox\bootdisk.img lab9_mbr.obj lab9_payload.obj
