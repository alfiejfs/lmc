// Take a number input and display 0 if even and 1 if odd

INP
STA number
BRZ even
BRP checkPos
BRA checkNeg

checkPos SUB one
         BRZ odd
         SUB one
         BRZ even
         BRA checkPos

checkNeg ADD one
         BRZ odd
         ADD one
         BRZ even
         BRA checkNeg

odd LDA one
    OUT
    HLT

even LDA zero
     OUT
     HLT


number DAT
zero   DAT
one    DAT 1
