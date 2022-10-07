; Nate Jackson
; CSC322
; P4
; 10/12/22
; Finds the first 16 Fibonacci numbers

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ
 

SECTION .bss
; define uninitialized data here
Fibs:	RESW 16

SECTION .text
global _main
_main:

; put your code here.
mov AX,0
mov BX,1
mov [Fibs],AX
mov [Fibs+2],BX
add AX,BX
mov [Fibs+4],AX
add AX,BX
mov [Fibs+6],AX
mov BX, [Fibs+4]
add AX, BX
mov [Fibs+8],AX
mov BX, [Fibs +6]
add AX, BX
mov [Fibs+10],AX
mov BX, [Fibs+8]
add AX, BX
mov [Fibs+12],AX
mov BX, [Fibs+10]
add AX, BX
mov [Fibs+14],AX
mov BX, [Fibs+12]
add AX, BX
mov [Fibs+16],AX
mov BX, [Fibs+14]
add AX,BX
mov [Fibs+18],AX
mov BX, [Fibs+16]
add AX,BX
mov [Fibs+20],AX
mov BX, [Fibs+18]
add AX,BX
mov [Fibs+22],AX
mov BX,[Fibs+20]
add AX,BX
mov [Fibs+24],AX
mov BX,[Fibs+22]
add AX, BX
mov [Fibs+26],AX
mov BX,[Fibs+24]
add AX,BX
mov [Fibs+28],AX
mov BX,[Fibs+26]
add AX,BX
mov [Fibs+30],AX
mov BX,[Fibs+28]
add AX,BX
mov [Fibs+32],AX

lastBreak:

; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
