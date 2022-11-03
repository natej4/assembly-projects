;Nate Jackson
;CSC 322 P6
;Sum the rows, columns, and all values in a matrix

ROWS:	      EQU    3    ; defines a constant ROWS set to 3.
COLS:	      EQU    2    ; defines a constant COLS set to 2.

SECTION .data
MyMatrix:    	dw      1,   2
		dw      4,   -2
       		dw     -10,  8
count:	dw 0
offset: dd 0
SECTION .bss
RowSums:    RESW ROWS
ColSums:    RESW COLS
Sum:        RESW 1

SECTION .text
global _main
_main:
mov CX, ROWS
mov AX, 0
mov EDX, 0
mov EBX, 0
toprows:

cmp WORD [count], COLS
je row
add ax, [MyMatrix+ebx] 
add ebx, 2
inc WORD [count]
jmp toprows
row:
add [RowSums+edx], ax
add edx, 2
mov ax, 0
mov WORD [count], 0


loop toprows


mov CX, COLS
xor EDX,EDX
mov EBX, 0
mov WORD [count], 0
xor EAX,EAX

topcols:

mov [offset], EBX
t2:
cmp WORD [count], ROWS
je col
add ax, [MyMatrix+ebx]
add ebx, COLS*2
inc WORD [count]
jmp t2
col:
add [ColSums+edx],ax
add edx, 2
mov EBX, [offset]
add EBX, 2
mov WORD [count], 0
mov AX, 0
loop topcols

lastBreak:

mov eax, 1
mov ebx, 0
int 80h

