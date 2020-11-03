// Takes inputs 'a' and 'b' and raises a to the power of b (a^b)

BRA start

// Input logic
start INP
      STA a
      INP
      STA b

      // Accounting for 0^0, a^0 and a^1
      LDA a
      BRZ outputErr
      LDA b
      BRZ outputOne
      SUB one
      brz outputA

      BRA startPower

//
// Power logic
//

// Setting up the systems for calculating a^b
startPower LDA a
           STA adding
           STA multiplesRemaining
           LDA b
           SUB one
           STA currentMultiple
           BRA power

// Multiple iteration (adding currently adding 'recursively')
power LDA multiplesRemaining
      BRZ decrementCurrent
      SUB one
      STA multiplesRemaining
      LDA total
      ADD adding
      STA total
      BRA power

// Decrementing currentMultiple and outputting if finished
decrementCurrent LDA currentMultiple
                 SUB one
                 BRZ outputTotal
                 STA currentMultiple
                 LDA total
                 STA adding
                 LDA a
                 SUB one
                 STA multiplesRemaining
                 BRA power


outputErr LDA err
          OUT
          BRA start


outputOne LDA one
          OUT
          BRA start

outputTotal LDA total
            OUT
            BRA start

outputA LDA a
        OUT
        BRA start

// Variables
a                  DAT
b                  DAT
adding             DAT
currentMultiple    DAT
multiplesRemaining DAT
total              DAT
err                DAT -1
zero               DAT  0
one                DAT  1
