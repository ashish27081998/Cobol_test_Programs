       IDENTIFICATION DIVISION.
       PROGRAM-ID. GOTOSOLUTION.
       AUTHOR. Ashish.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 A PIC 9 VALUE 5.
       01 B PIC 9 VALUE 2.
       01 RESULT PIC 99.
       
       PROCEDURE DIVISION.
            IF A < B THEN
                DISPLAY "A is less than B"
            ELSE
                COMPUTE RESULT = A - B
                DISPLAY "Result is " RESULT
            END-IF
            STOP RUN.


