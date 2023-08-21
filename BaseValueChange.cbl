        ID DIVISION.
        PROGRAM-ID. BaseValueChange.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
            01 VARIABLES.
            02 OPERATION-1.
                03 OP-A.
                    04 BASE                  PIC 9(01).

        PROCEDURE DIVISION.
        MAINLINE.       
                DISPLAY 'START OF PROGRAM'.
                MOVE 1                    TO BASE.
                DISPLAY 'BASE: ' BASE.           
                SET BASE UP BY 2.
                DISPLAY 'BASE: ' BASE.
                SET BASE DOWN BY 1.
                DISPLAY 'BASE: ' BASE.
