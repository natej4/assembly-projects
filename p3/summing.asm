; Nate Jackson
; 322 10/05/2022
; P3: Summing Arrays
; Sums all the elements of arrays and sums all arrays

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ
bArray:          DB        -1,-2,-3,-4,-5
wArray:          DW        0,1,2,3,4
dArray:          DD        322,322h,322q,1833,1833h
bArraySum:       DB        0
wArraySum:       DW        0
dArraySum:	 DD        0
grandTotal:	 DD        0

SECTION .bss
; define uninitialized data here

SECTION .text
global _main
_main:

; put your code here.
mov AH, [bArray]
add AH, [bArray + 1]
add AH, [bArray + 2]
add AH, [bArray + 3]
add AH, [bArray + 4]
mov [bArraySum], AH
mov AL, [bArraySum]
movsx EAX,AL
add [grandTotal], EAX
b:
mov AX, [wArray]
add AX, [wArray + 2]
add AX, [wArray + 4]
add AX, [wArray + 6]
add AX, [wArray + 8]
mov [wArraySum], AX
movsx EAX, AX
add [grandTotal], EAX
b1:

mov EAX, [dArray]
add EAX, [dArray + 1]
add EAX, [dArray + 2]
add EAX, [dArray + 3]
add EAX, [dArray + 4]
mov [dArraySum], EAX
add [grandTotal], EAX
b2:

lastBreak:
; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
