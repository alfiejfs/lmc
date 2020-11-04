// Round a given x down to the nearest multiple of 10

INP
STA x
STA initialCheck
BRP checkTenPos
BRA checkTenNeg

//
// Positive check
//
positiveRound LDA initialCheck
              SUB one
              STA initialCheck
              BRA checkTenPos

checkTenPos BRZ output
            SUB ten
            BRZ output
            BRP checkTenPos
            BRA positiveRound


//
// Negative check
//
negativeRound LDA initialCheck
              SUB one
              STA initialCheck
              BRA checkTenNeg

checkTenNeg BRZ output
            ADD ten
            BRZ output
            BRP negativeRound
            BRA checkTenNeg

//
// Output procedure
//
output LDA initialCheck
       OUT
       HLT

// Variables
x            DAT
initialCheck DAT
one          DAT 1
ten          DAT 10
