---
title: "CPS 230"
date: 2018-08-21T00:00:00-04:00
draft: false
---

# Lab 9
## Overview

Welcome to *bootloading*: the process of programming the PC to pull itself up by its own bootstraps.

In this lab you will finish writing a *bootloader*, the small chunk of code that the BIOS loads from disk sector 1 into
memory at address `0000:7C00` and then jumps into.

Your goal will be to load a chunk of code from disk sector 2 into memory at address `0800:0000` and jump to it
(the "payload" program to be loaded from sector 2 is provided to you already).

## Procedure

You will start with some code; download [both](lab9_mbr.asm)
[files](lab9_payload.asm).  The payload program doesn't need to
change at all (unless you feel the creative urge to spruce up its victory message).
Your focus will be on getting the bootloader (`lab9_mbr.asm`) working.

## Steps

Follow the TODO comments in `lab9_mbr.asm`.  You can look up details about how to do raw sector-by-sector
disk reads [here](http://stanislavs.org/helppc/int_13.html).  Make no assumptions.  All you know at "bootstrap"
time is that

* Your bootloader is sitting in the 512 bytes of memory starting at `0000:7C00`
* CS = `0000`
* IP = `7C00`
* DL = the "drive number" of the "disk" you booted from (useful to know when trying to read the second
  stage from that same disk)

That's it!  It's up to you to initialize DS, SS, and anything else you need.

## Building

You will not produce a normal executable (`.exe` or `.com`) for this lab.  Instead, you will
produce a "floppy disk image," a binary file consisting of a byte-for-byte, sector-by-sector
copy/simulation of a floppy disk.  Sector 1 contains the "master boot record" (MBR); that's where
you need to place your exactly-512-bytes-long bootloader.  Sector 2 will contain the payload
program (less than 512 bytes total).  All subsequent sectors will contain all-zeros.

> **Note**: Recall that floppy disk sectors are always 512 bytes long.  Also note
> that sectors are (rather bafflingly) numbered starting with sector 1, not sector 0.

You will use `NASM` (per usual) to convert your ASM files into flat binary files
(use `-fbin` as usual with DOSBox stuff).  You will then use the provided C program
to pack these 2 files into a floppy disk image file.

## Booting

Once you have your floppy disk image file (e.g., `bootdisk.img`), you can "boot" from it
inside DOSBox with the command `BOOT <filename>` (which assumes that <filename> is visible
in the current DOSBox drive/directory).

## Debugging

Unfortunately, there is no `debug boot ...` command in the DOSBox debugger.

The best approach I have seen to debugging a bootloader is to place the following
instruction at the top of your bootloader's code:

        jmp    $    ; Jump to self (spin forever)

When you `boot <filename>` and your code is loaded/executed, DOSBox will sit and spin on this instruction.
You can then "break" into the debugger with `Alt` + `Pause` and manually set `IP` (see the built-in help
for details) to point to the next instruction, stepping past your poor man's breakpoint.

## Report

Usual lab report.

## Submission

Submit your completed `lab9_mbr.asm` and your report file, which must be named either:

* `report.docx` (Microsoft Word file)
* `report.pdf` (Adobe PDF file)

Case matters. :-)

## Appendix: mkfloppy.c

```c
#include <stdio.h>
#include <stdlib.h>

/* 80 tracks, 18 sectors per track, 512 bytes per sector, 2 sides
 * (https://support.microsoft.com/en-us/kb/121839)
 */
#define FLOPPY_SIZE (80 * 18 * 512 * 2)

/* Open <next_input_file> for reading, concatenate its contents
 * to the stream <output>, and return the number of bytes written.
 */
int add_file(FILE *output, const char *next_input_file) {
    FILE *input = NULL;
    int size = 0, xfer;
    char buffer[512];
    
    if ((input = fopen(next_input_file, "rb")) == NULL) {
        perror("unable to open input file");
        size = -1;
        goto cleanup;
    }
    
    while ((xfer = fread(buffer, 1, sizeof(buffer), input)) > 0) {
        if (fwrite(buffer, 1, xfer, output) != xfer) {
            perror("error writing to output file");
            size = -1;
            goto cleanup;
        }
        size += xfer;
    }
    if (xfer < 0) {
        perror("error reading from input file");
        size = -1;
    }
    
cleanup:
    if (input) { fclose(input); }
    return size;
}

int main(int argc, char **argv) {
    FILE *output = NULL;
    int i, size, total, ret = 1;
    
    if (argc < 2) {
        fputs("usage: mkfloppy OUTPUT_FILE [MBR_FILE [PAYLOAD_FILE1 [...]]]", stderr);
        goto cleanup;
    }
    
    if ((output = fopen(argv[1], "wb")) == NULL) {
        perror("unable to open output file");
        goto cleanup;
    }
    
    total = 0;
    for (i = 2; i < argc; ++i) {
        if ((size = add_file(output, argv[i])) < 0) {
            goto cleanup;
        }
        total += size;
    }
    
    while (total < FLOPPY_SIZE) {
        putc(0, output);
        ++total;
    }
    
cleanup:
    if (output) { fclose(output); }
    return 0;
}
```
