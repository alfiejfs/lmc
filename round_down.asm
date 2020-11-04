// Round a given x down to the nearest multiple of y > 0

INP
STA x
STA initialCheck
INP
STA y
LDA initialCheck
BRP checkFactorPos
BRA checkFactorNeg

//
// Positive check
//
positiveRound LDA initialCheck
              SUB one
              STA initialCheck
              BRA checkFactorPos

checkFactorPos BRZ output
               SUB y
               BRZ output
               BRP checkFactorPos
               BRA positiveRound


//
// Negative check
//
negativeRound LDA initialCheck
              SUB one
              STA initialCheck
              BRA checkFactorNeg

checkFactorNeg BRZ output
              ADD y
              BRZ output
              BRP negativeRound
              BRA checkFactorNeg

//
// Output procedure
//
output LDA initialCheck
       OUT
       HLT

// Variables
x            DAT
y            DAT
initialCheck DAT
one          DAT 1
