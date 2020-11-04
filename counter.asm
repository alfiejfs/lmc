// Output all even numbers from 0-100 (inclusive)

count LDA counter
      OUT
      ADD two
      STA counter
      SUB oneHundred
      BRZ stop
      BRA count

stop HLT

counter DAT
oneHundred DAT 102
two DAT 2
