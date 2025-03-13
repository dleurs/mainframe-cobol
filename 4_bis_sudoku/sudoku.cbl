       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUDOKUFACILE.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SUDOKU-GRID.
          05 SUDOKU-ROW OCCURS 9 TIMES.
             10 SUDOKU-CELL OCCURS 9 TIMES
                             PIC 9    VALUE 0.

       01 ROW-INDEX          PIC 9(2).
       01 COL-INDEX          PIC 9(2).


       PROCEDURE DIVISION.
           PERFORM INITIALIZE-SUDOKU
           PERFORM DISPLAY-SUDOKU
           STOP RUN.

       INITIALIZE-SUDOKU.
           MOVE 5 TO SUDOKU-CELL(1, 1)
           MOVE 3 TO SUDOKU-CELL(1, 2)
           MOVE 4 TO SUDOKU-CELL(1, 5)
           MOVE 6 TO SUDOKU-CELL(2, 1)
           MOVE 7 TO SUDOKU-CELL(2, 4)
           MOVE 8 TO SUDOKU-CELL(2, 5)
           MOVE 9 TO SUDOKU-CELL(2, 6)
           MOVE 3 TO SUDOKU-CELL(3, 2)
           MOVE 1 TO SUDOKU-CELL(3, 3)
           MOVE 2 TO SUDOKU-CELL(4, 1)
           MOVE 8 TO SUDOKU-CELL(4, 5)
           MOVE 4 TO SUDOKU-CELL(5, 4)
           MOVE 1 TO SUDOKU-CELL(5, 5)
           MOVE 9 TO SUDOKU-CELL(5, 6)
           MOVE 5 TO SUDOKU-CELL(6, 4)
           MOVE 2 TO SUDOKU-CELL(7, 3)
           MOVE 6 TO SUDOKU-CELL(8, 5)
           MOVE 8 TO SUDOKU-CELL(9, 6)
           MOVE 7 TO SUDOKU-CELL(9, 7)
           MOVE 3 TO SUDOKU-CELL(9, 8)
           MOVE 1 TO SUDOKU-CELL(9, 9).

       DISPLAY-SUDOKU.
           PERFORM VARYING ROW-INDEX FROM 1 BY 1 UNTIL ROW-INDEX > 9
                   PERFORM VARYING COL-INDEX FROM 1 BY 1 UNTIL COL-INDEX
                      > 9
                           IF SUDOKU-CELL(ROW-INDEX, COL-INDEX) NOT = 0
                              DISPLAY SUDOKU-CELL(ROW-INDEX, COL-INDEX)
                                      " "
                                 WITH NO ADVANCING
                           ELSE
                              DISPLAY "." " " WITH NO ADVANCING
                           END-IF
                   END-PERFORM
                   DISPLAY " "
           END-PERFORM.
           