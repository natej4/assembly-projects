; Nate Jackson
; P2: Adding Integers
; 9/30/22
; 

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ


SECTION .bss
; define uninitialized data here

SECTION .text
global _main
_main:

; put your code here.
mov AX,0246h
mov BX,0DCABh
add AX,BX

mov AX,0ABCDh
mov BX,0DCBAh
add AX, BX

mov AX,0FFFFh
mov BX,0001h
add AX, BX

mov AX,0F0F0h
mov BX,0F0F0h
add AX, BX

mov AX,2468h
mov BX,2468h
add AX,BX

mov AX,7FFFh
mov BX,0001h
add AX, BX

mov AX,0ABCDh
mov BX,0FEDCh
add AX,BX

mov AX,0B0Bh
mov BX,0A11Eh
add AX, BX

mov AX,7FFFh
mov BX,7FFFh
add AX, BX

mov AX,8000h
mov BX,8000h
add AX, BX



; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
