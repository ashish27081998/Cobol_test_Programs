        ID DIVISION.
        PROGRAM-ID. EXM2.
      * Resource:https://github.com/DoHITB/COBOL-Examples/blob/main
      */exm2.cbl

        DATA DIVISION.
        WORKING-STORAGE SECTION.
            01 PERSON.
              02 FULL-NAME.
                03 FIRST-NAME               PIC X(10) VALUE 'Ashish'.
                03 L-SURNAME                PIC X(10) VALUE 'Upadhaya'.
              02 DOB.
                03 DIA                      PIC 9(02) VALUE 25.
                03 FILLER                   PIC X(01) VALUE '/'.
                03 MONTH                    PIC 9(02) VALUE 11.
                03 FILLER                   PIC X(01) VALUE '/'.
                03 YEAR                     PIC 9(04) VALUE 1990.
            77 COUNTER-2                      PIC 9(10) VALUE 987654321.

        PROCEDURE DIVISION.
        MAINLINE.       
                DISPLAY 'START OF PROGRAM'     LINE 1 COL 1 BELL.
                DISPLAY 'YOUR NAME IS: '       LINE 5 COL 3.
                DISPLAY 'YOUR SURNAME IS: '    LINE 7 COL 3.
                DISPLAY 'YOU WERE BORN ON: '   LINE 9 COL 3
                        DOB                     LINE 9 COL 30.
                DISPLAY FIRST-NAME             LINE 5 COL 30.
                DISPLAY L-SURNAME              LINE 7 COL 30.
                DISPLAY 'END OF PROGRAM'       LINE 11 BELL.

                STOP RUN.
