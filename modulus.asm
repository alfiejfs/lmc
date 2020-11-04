// Write a program that calculates a % b (a mod b) for positive inputs a and b

INP
STA a
INP
STA b
LDA a
BRA mod

mod SUB b
    BRP mod
    ADD b
    OUT
    HLT



a       DAT
b       DAT
