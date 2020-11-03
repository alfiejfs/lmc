# LMC

---

This is a repository for my solutions to given problems in Little Man Computer's implementation of Assembly.

Problems I have solved with the LMC instruction set:
 - [Factorial](https://github.com/alfiejsmith/LMC/blob/master/factorial.asm)
 - [Exponential](https://github.com/alfiejsmith/LMC/blob/master/exponential.asm)
 - [Summation of inputs](https://github.com/alfiejsmith/LMC/blob/master/summation.asm)

You can use LMC [here](https://peterhigginson.co.uk/lmc/)

## About LMC

Little Man Computer (LMC) is an online tool developed by [Peter Higginson](https://peterhigginson.co.uk/) which implements a simple assembly language with a limited instruction set. This implementation is taught across the UK, and the instruction set is mandatory knowledge in most GCSE and A-Level Computer Science

### What does LMC contain
 - 100 memory locations, numbered 0 to 99
 - An arithmatic unit capable of addition and subtraction
 - An accumulator to store the result of the last operation, that can hold three digits and a sign (-999 to 999)
 - A program counter to store the memory address of the next instruction that can hold two digits (0 to 99)
 - An instruction register to hold the top digit of the instruction read from memory
 - An address register to hold the bottom two digits of the instruction read from memory
 - An input tray to receive input from the user
 - An output tray to output values to the user

### LMC Instruction Set

| Op Code | Mnemonic  | Name | Description |
| :-: | :-: | :-: | :- |
| 0 | HLT | Halt | Stops the program |
| 1 | ADD | Add | Adds the contents of the memory address to the accumulator |
| 2 | SUB | Subtract | Subtracts the contents of the memory address from the accumulator |
| 3 | STA | Store | Stores the value in the accumulator at the given memory address |
| 4 | | | Unused op code |
| 5 | LDA | Load | Load the value of the given memory address into the accumulator |
| 6 | BRA | Branch | Use the given address as the next instruction
| 7 | BRZ | Branch | Use the given address as the next instruction if the value in the accumulator is zero
| 8 | BRP | Branch | Use the given address as the next instruction if the value in the accumulator is zero or larger
| 9 | INP | Input | Take a value from the user and store it in the accumulator (if address register contains 1)
| 9 | OUT | Output | Output the value in the accumulator (if address register contains 2)
| 9 | OCT | Output Character | Output accumulator as a chracter (if address register contains 22)
| | DAT | Data | Used to indicate a location that contains data and reserves a memory address

*Note: Although INP, OUT and OCT all contain the same Op Code, when they are translated from their respective mnemonics, the correct address register is stored alongside the opcode. INP would be stored in memory as 901, OUT as 902 and OCT as 922.*
