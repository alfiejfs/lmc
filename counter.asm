// Output all even numbers from 0-100 (inclusive)

count OUT
      ADD two
      SUB oneHundred
      BRZ stop
      ADD oneHundred
      BRA count

stop HLT

oneHundred DAT 102
two        DAT 2
