INP
STA lookingFor
BRA trySquareRoot

trySquareRoot LDA odd
              ADD currentSquare
              SUB lookingFor
              BRZ outputActualSquare
              BRP outputSquare
              BRA increment

// Increments the odd value to the next odd value, and the square to the next
// square
increment LDA odd
          ADD one
          ADD one
          STA odd
          LDA currentSquareBase
          ADD one
          STA currentSquareBase
          BRA setSquare

setSquare LDA squareCalcValue
          ADD currentSquareBase
          STA squareCalcValue
          LDA squareCounter
          ADD one
          SUB currentSquareBase
          BRZ finaliseSquare
          ADD currentSquareBase
          STA squareCounter
          BRA setSquare

finaliseSquare LDA squareCalcValue
               STA currentSquare
               LDA zero
               STA squareCalcValue
               STA squareCounter
               BRA trySquareRoot


outputActualSquare LDA currentSquareBase
                   ADD one
                   OUT
                   HLT

outputSquare LDA currentSquareBase
             OUT
             HLT




odd               DAT 1
zero              DAT
one               DAT 1
currentSquare     DAT
currentSquareBase DAT
squareCounter     DAT
squareCalcValue   DAT
lookingFor        DAT
