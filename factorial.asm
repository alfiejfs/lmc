// Factorial Calculator in ASM for LMC
// https://peterhigginson.co.uk/lmc/

INP

// Accounting for 0!
BRZ outputOne

// Calling start if n > 0
BRP start

// Accounting for n! where n < 0: output an error
LDA err
OUT
HLT

//
// Main program logic
//

// Starting the recursive loop
start   STA calculating

        // Storing 2 as the initial multiple and times multiplied
        LDA one
        ADD one
        STA currentMultiple
        STA timesMultiplied

        // Storing 3 as the calcualtor
        ADD one
        STA multipleCounter

        // Starting the multiplication
        BRA multiply

// Incrementing the multiple procedure
incrementMultiple LDA timesMultiplied
        ADD one
        SUB calculating
        BRZ outputValue
        ADD calculating
        STA timesMultiplied
        STA multipleCounter
        LDA total
        STA currentMultiple

// Multiplication procedure
multiply LDA total
        ADD currentMultiple
        STA total
        LDA multipleCounter
        SUB one
        BRZ incrementMultiple
        STA multipleCounter
        BRA multiply

//
// Output Procedures
//

outputOne LDA one
        OUT
        HLT
outputValue LDA total
        OUT
        HLT

//
// Memory allocation
//

calculating     DAT
total           DAT
timesMultiplied DAT
currentMultiple DAT
multipleCounter DAT
one             DAT 1
err             DAT -1
