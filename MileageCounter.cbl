       IDENTIFICATION DIVISION.
       PROGRAM-ID.  MileageCounter.
       AUTHOR.  Michael Coughlan.
      * Simulates a mileage counter
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 Counters.
            02 Hundredcount          PIC 99 VALUE ZEROS.
            02 TensCount              PIC 99 VALUE ZEROS.
            02 UnitCount             PIC 99 VALUE ZEROS.

        01 DisplayItems.
            02 PrnHunds               PIC 9.
            02 PrnTens                PIC 9.
            02 PrnUnits               PIC 9.

       PROCEDURE DIVISION.
       Begin.
         DISPLAY "Using an out-of-line Perform".
         DISPLAY "About to start mileage counter simulation".
         PERFORM CountMilage
              VARYING Hundredcount FROM 0 BY 1 UNTIL Hundredcount > 9
              AFTER   TensCount FROM 0 BY 1 UNTIL TensCount > 9
              AFTER   UnitCount FROM 0 BY 1 UNTIL UnitCount > 9
         DISPLAY "End of mileage counter simulation."

         DISPLAY "Now using in-line Performs"
         DISPLAY "About to start mileage counter simulation".
         PERFORM VARYING Hundredcount FROM 0 BY 1 UNTIL Hundredcount > 9
            PERFORM VARYING TensCount FROM 0 BY 1 UNTIL TensCount > 9
              PERFORM VARYING UnitCount FROM 0 BY 1 UNTIL UnitCount > 9
                  MOVE Hundredcount TO PrnHunds
                  MOVE TensCount     TO  PrnTens
                  MOVE UnitCount    TO PrnUnits
                  DISPLAY PrnHunds "-" PrnTens "-" PrnUnits
              END-PERFORM
            END-PERFORM
         END-PERFORM.
         DISPLAY "End of mileage counter simulation."
         STOP RUN.



       CountMilage.
         MOVE Hundredcount TO PrnHunds
         MOVE TensCount     TO  PrnTens
         MOVE UnitCount    TO PrnUnits
         DISPLAY PrnHunds "-" PrnTens "-" PrnUnits.

        