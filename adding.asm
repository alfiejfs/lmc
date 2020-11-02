// Write an LMC program which will count how many numbers a user enters and
// outputs the amount of numbers entered along with total of all the numbers
// when the user enters 0.

getInput INP
         BRZ output
         ADD total
         STA total
         LDA numEntered
         ADD one
         STA numEntered
         BRA getInput

output LDA numEntered
       OUT
       LDA total
       OUT
       HLT

total DAT
numEntered DAT
one DAT 1
