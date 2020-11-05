// Take an input, x, and output 0 if it is prime and 1 if it is not.

INP
STA x
BRA checkPrime

// Starts checking the next divisor
startCheckPrime LDA x
                BRA checkPrime


// Check process for the current divisor. Will be called until the value
// in the accumulator is <= 0, and will then output the number to be prime or
// try the next divisor if necessary
checkPrime SUB currentDivisor
           BRZ notPrime
           BRP checkPrime
           LDA currentDivisor
           ADD one
           SUB x
           BRZ isPrime
           ADD x
           STA currentDivisor
           BRA startCheckPrime

notPrime LDA one
         OUT
         HLT

isPrime LDA zero
        OUT
        HLT


x              DAT
currentDivisor DAT 2
zero           DAT
one            DAT 1
