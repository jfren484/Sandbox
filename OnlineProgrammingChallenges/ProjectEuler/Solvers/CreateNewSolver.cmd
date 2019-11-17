@ECHO OFF
SETLOCAL

FOR /F "usebackq" %%I IN (`DIR /ON /B Problem???Solver.cs`) DO SET FILE=%%I
SET MAX=%FILE:~7,-9%

:BeginStripLeadingZero
IF NOT %MAX:~0,1%==0 GOTO EndStripLeadingZero
SET MAX=%MAX:~1%
GOTO BeginStripLeadingZero
:EndStripLeadingZero

SET /A NEXT=MAX+1
IF /I %NEXT% LSS 10 (SET NEXT=00%NEXT%) ELSE IF /I %NEXT% LSS 100 (SET NEXT=0%NEXT%)

COPY ProblemXSolver.cs Problem%NEXT%Solver.cs
TextReplace.exe ProblemXSolver Problem%NEXT%Solver Problem%NEXT%Solver.cs

ENDLOCAL
