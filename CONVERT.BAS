OPEN "dailykeno.txt" FOR INPUT AS #1
OPEN "dailykeno midday.dat" FOR OUTPUT AS #2
linecounter = 1
DO UNTIL EOF(1)
    LINE INPUT #1, a$ REM empty
    LINE INPUT #1, b$ REM first part
    LINE INPUT #1, c$ REM empty
    LINE INPUT #1, d$ REM second part
    LINE INPUT #1, e$ REM empty
    PRINT #2, b$ + " " + d$ REM join two parts in a new line of a new file
    b$ = ""
    d$ = ""
    PRINT "Joined line # "; linecounter
    linecounter = linecounter + 1
    FOR I = 1 TO 7000000: NEXT I
LOOP
CLOSE #2
CLOSE #1
END


