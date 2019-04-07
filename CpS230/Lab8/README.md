## Overview

Welcome to assembly programming *for DOS*!  As we turn downwards toward the "bare metal" of the hardware, we will study the architecture of the classic PC (IBM Model 5150 and compatibles).  Our first step on the road to "zero-operating-system" programming is to write programs that work under DOS on a vintage IBM PC (or rather, a simulated DOS on a simulated IBM PC, as provided by DOSBox-X).

In this lab, you will extend a provided 16-bit assembly program for DOS.

## Procedure

Before starting, make sure you have the required tools:

* NASM 2.x
* [DOSBox-X](https://ethantmcgee.com/bju/cps230/downloads/dosbox-x.zip)

## Orientation
 
Look over the starter code provided in this repo.  Go ahead and change the comments at the top to reflect your identity.

Compare this starting code to the starting code from [Lab 4](https://classroom.github.com/a/_xkLSgvt).  Besides the fact that the programs do different things (one reads a number, the other doesn't read anything *yet*), what significant syntactic differences do you notice?  

* Summarize in your report...*

## Assembling

In addition to support for generating Win32 PE/COFF files, NASM can generate "flat" binary files (no sections, no symbol tables, no nothing--just code/data bytes). We will use this capability to generate classic "COM" files, the simplest and most primitive kind of DOS executable file.

* Open a NASM command prompt (search for `nasm-shell` in the Start menu)

* Navigate to the folder where you saved `lab8.asm`

* Run the following command (again, don't type the `C> ` part):

        C> nasm -g -fbin -olab8.com lab8.asm
        
        C>

* The line you just typed breaks down into several components:

    * `nasm`: we're running NASM, of course
    * `-g`: allows us to use the debugger later
    * `-fbin`: option/flag telling NASM to generate a flat binary file (no metadata of any kind--in this case, NASM is acting like its own linker, too)
    * `-olab8.com`: name our output file `lab8.com`
    * `lab8.asm`: the file to assemble

## DOSBox-X

You cannot run your `.com` file in your Windows console (unless you are running a 32-bit version of Windows, which you almost certainly are not).

You will use a wonderful open source program called DOSBox-X to run this and all other 16-bit programs you write.  DOSBox-X simulates:

* An x86 CPU (including support for 32-bit processors like the 386 and 486)
* Classic PC graphics and sound hardware (like VGA, Soundblaster, and Adlib)
* Enough of the original IBM BIOS firmware and MS-DOS APIs to run most old DOS software

DOSBox-X's primary purpose is to run vintage DOS games, but it has proven surprisingly useful at keeping ancient business software alive, too.

We will use a version of DOSBox-X that has an integrated debugger window.  With it you can freeze the entire simulated computer, inspect/edit memory,
step through code instruction by instruction, and basically control everything (even tricky things like interrupts).

## Running

In your Windows console, type the following command (if you installed DOSBox-X somewhere else, change this accordingly):

        C> \cps230\bin\dosbox-x.exe

        C>

This should open a new window that looks like a console window (with a command prompt).

Let's get the folder containing your `lab8.asm` into DosBox-X.

        C>mount D "C:\Path\To\Your\lab8.asm"

        C>D:

        D>lab8.com

The program should run, print a prompt message, and immediately terminate.

Notice that we can bring any folder from windows into DoxBox by using the mount command, but we have to pick a free drive letter!  To switch to the mounted folder, its the drive letter you choose followed by a colon.

## Debugging

Now let's turn to debugging.  Type the following into your DOSBox-X console window:

        C:\>debugbox lab8.com

Everything should freeze.  That's because the debugger is waiting for your input!  Select the *other* DOSBox-X window.  It should look like this:

Type `help` and press Enter.  You can see the output in the lower window pane; you can scroll it up and down (to read it all) with the `Home` and `End` keys.

Type help and press Enter. You can see the output in the lower window pane; you can scroll it up and down (to read it all) with the Home and End keys.

A few other pointers to get you started:

- Up Arrow / Down Arrow should change the line of assembly that you are on.
- F9 will set a breakpoint
- F10 will step over the current instruction
- F11 will follow a call statement to the function your are jumping to
- F5 will continue execution until termination or the next breakpoint
- Page Up / Page Down will scroll through memory (but memory addresses work differently in DOS)

Experiment! In particular, figure out how to jump to a specific memory address (in the hex-dump pane near the top of the debugger window).

Find the information about how to single step/etc.  Experiment!  In particular, figure out how to display the contents of memory at a given
address (in the hex-dump pane near the top of the debugger window).

## Personalizing

**Add the necessary code/data to print your name/etc.** *before* the prompt asking for your name is printed.  The output should now look like this (prior to any user input):

        CpS 230 Lab 8: Alice B. College-Student (acoll555)

        What is your favorite letter? 

With, of course, the appropriate modifications to the name/login. :-)

## Completing

**Find the TODO comments** and complete the listed tasks.  You will want to linked "HelpPC" resources most useful here.

## Report

Document your completion of the lab, including

* Assembling and running the program
* Modifying the program to print your name/information
* Finishing the program (completing the TODOs)
* Stepping through the program with the DOSBox-X debugger


## Submission

Submit your completed `lab8.asm` and your report file.

## Grading

* 5 points for a well-formed submission (including report)
* 5 points for a working/personalized `lab8.asm` 

