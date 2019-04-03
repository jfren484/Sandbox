## Overview

In this lab you will complete a bare-bones implementation of the ubiquitous `printf` function!

Along the way, you will gain experience creating one program written in two languages: C and ASM.

# Procedure

## Starting Code

Use the starter code in this repo.  The files are as follows:

* `uprintf.asm`: the only ASM file in the project; in here you will implement the core "brains" of `uprintf` (i.e., micro-`printf`)
* `uhelpers.c`: a collection of "helper" functions to handle the actual printing of various data types; one function is already written, the others are stubs you need to complete
* `demo_uprintf.c`: a demonstration program you can use to test your `uprintf` implementation (do *not* make any changes to this file)
* `make.bat`: a batch file containing all the commands required to build (assemble, compile, link) the entire project

Open the `make.bat` batch script.  Study it briefly--you should recognize all but one of the commands (the `lib` command, which takes several `.obj` files and bundles them into a single `.lib` file for convenience).

Open a NASM command prompt, navigate to your `lab7` folder, and run the `make.bat` batch file to assemble, compile, and link all the pieces of this program.

> Note: You may need to change the line that calls the vc 64 command if you are using the Enterprise version of visual studio 2017.  Just change the word Community to Enterprise.

Run the resulting `demo_uprintf.exe` program.  What does/does not work so far?

## Background

`printf` is a strange little beast called a "variadic function" (i.e., a function taking a *variable* number of parameters). It's probably the most famous such function in the world of programming.  And it's probably safe to say that many people who use `printf` have only a hazy idea how it can possibly work.  Well, that is not going to be you by the end of this assignment!

The *problem* `printf` has to solve is the question of how many parameters were passed by the caller.  The trick is to use the contents of the first parameter (the "format string") to discover how many additional parameters to expect.

E.g., if `printf` gets the format string `"(%d, %d)\n"`, it will assume it is looking for **two** extra parameters beyond the format string itself (for obvious reasons).  Is this a safe assumption?  Well... *No*, not really.  Modern compilers have "special knowledge" of `printf`, and will usually warn you (or even die with an error) if you mess up your number (or even type!) of parameters, but in *ye good olde* days, there were no such niceties.  If there was a mismatch between  the format string and the parameters actually passed, your program was at best flawed and at worst a ticking time bomb. 

> **Note**: modern compilers have special knowledge of `printf` and `scanf` because, well, they're *special* (part of the standard library).  Even modern compilers cannot help you with variadic functions that they have no special knowledge of--it's just not possible with the syntax and semantics of bare C...

## Approach

The basic rule is that the only standard library function you may use is `putchar` (`extern putchar`).

### The Parameter Walk

The starting code implements a `uprintf` that is really just a `print_string` function; the `fmt` string is printed verbatim, and all other parameters are ignored.  This is *almost* right--after all, `printf` *does* print parts of the format string as-is!

Your first job is to detect format specifiers (`%...`) and handle them differently.  The logic should go like this:

* Read a character
* Is it a `NUL` (i.e., zero)?
    * Then break out of the loop *(already implemented)*
* Is it a `%`?
    * Read the next character
    * Is it also `%`?
        * Then print it as-is and go back to the top of the loop
    * Is it one of the supported format specifiers (`s`, `c`, `d`, `u`, `x`, `b`)?
        * *This is the part where you look up the next parameter value and pass it to the appropriate helper function*
    * If it's anything else, just ignore this character and go back to the top of the loop
* If it's anything else, just print it as-is and go to the top of the loop

The next job is to keep track of the "next" extra parameter so you can print its value when you encounter a format specifier.

* Start by putting the parameters (rcx, rdx, r8 and r9) into the shadow space (in that order!).
* Start by getting the address of the stack slot holding the first parameter *after* the format string (now on the stack after the format string, e.g., `rbp + 24`); call this your "next parameter" pointer
* Work your way through the format string character by character
    * When you encounter a format specifier (e.g., `%d`), process the *value* pointed at by your "next parameter" pointer...
    * ...and advance your "next parameter" pointer to point at the next slot (i.e., the next DWORD)


### The Actual Printing Part

To simplify the task of printing different kinds of data, we will use "helper" functions written in C (still using only `putchar` from the standard library).

For example, if your `uprintf` code encounters a `%d` format specifier, it would pass the "next parameter" off to the `uprintf_putd` helper function.

`uprintf_puts` is fully implemented already.  You need to implement all the others (see the hints embedded in the comments).

## Lab Tips

* Before you do anything else, *thoroughly* read all the provided code and comments

* Before you write any code, draw stack frame diagrams for a few of the test cases in `demo_uprintf.c`; make sure you can explain to your final project partner (or your rubber duck, whichever seems more receptive) where the "extra" parameters are relative to the "format string" parameter (in terms of `rbp`)

* `lea` is your friend when it comes to finding the address of a local variable or parameter

* Start by trying to get `%s` and `%c` working (since you already have `uprintf_putu` and `putchar` available). The basic workflow (get parameter, call helper function) is identical for all the other specifiers, and most of the "new code" you write at that point will be in C (which is theoretically easier).

* Take baby steps!  Add one feature at a time; if the code works, go ahead and submit it!  (Or just `commit` if you are directly using Git.)

## Report

Per usual.

## Submission

Submit your *both* `uprintf.asm` *and* `uhelpers.c` as well as a report file (either `report.docx`, or `report.pdf`, as appropriate).
