       IDENTIFICATION DIVISION.
       PROGRAM-ID. GOTOEXAMPLE.
       AUTHOR. Ashish.
      *Insprired from https://craftofcoding.wordpress.com
      */2020/03/06/coding-cobol-replacing-go-to-with-perform/ 

       DATA DIVISION.
       WORKING-STORAGE SECTION.
            01 A PIC 9 VALUE 5.
            01 B PIC 9 VALUE 2.
            01 RESULT PIC 99.

       PROCEDURE DIVISION.
            IF A < B THEN
                GO TO ALESSB
            ELSE
                COMPUTE RESULT = A - B
                DISPLAY "Result is " RESULT
                STOP RUN
            .

       ALESSB.
            DISPLAY "A is less than B"
            STOP RUN.







