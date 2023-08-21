       IDENTIFICATION DIVISION.
       PROGRAM-ID. GOTOSOLUTION.
       AUTHOR. Ashish.
      
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 COUNTER PIC 9 VALUE 1.
      
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM UNTIL COUNTER > 3
               DISPLAY "Counter is: " COUNTER
               ADD 1 TO COUNTER
           END-PERFORM
           DISPLAY "Counter has reached 3."
           STOP RUN.





