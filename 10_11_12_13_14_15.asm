// Write a program that keeps asking for an input until a value between
// 10 and 15 is entered (10 <= x <= 15)

BRA getInput

getInput INP
         SUB ten
         BRZ halt
         SUB one
         BRZ halt      
         SUB one
         BRZ halt  
         SUB one
         BRZ halt
         SUB one
         BRZ halt   
         SUB one
         BRZ halt
         BRA getInput    

halt HLT

ten DAT 10
one DAT 1
