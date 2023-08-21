       IDENTIFICATION DIVISION.
       PROGRAM-ID. Goto1.
      
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SWITCH PIC X VALUE 'Y'.
       01 COUNTER PIC 9 VALUE 1.
      
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM UNTIL SWITCH = 'N'
               IF COUNTER = 3
               THEN
                   GO TO END-PROCEDURE
               END-IF
               DISPLAY "Counter is: " COUNTER
               ADD 1 TO COUNTER
           END-PERFORM.
           STOP RUN.

       END-PROCEDURE.
           DISPLAY "Counter has reached 3."
           MOVE 'N' TO SWITCH
           GO TO MAIN-PROCEDURE.




