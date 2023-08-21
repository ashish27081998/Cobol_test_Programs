        IDENTIFICATION DIVISION.
        PROGRAM-ID. Y2K-Problem-Solved.
        Author. Ashish.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 YEAR PIC 9(4).

        PROCEDURE DIVISION.
        MAIN-PROCEDURE.
            MOVE 2000 TO YEAR.
            DISPLAY YEAR.
            STOP RUN.

