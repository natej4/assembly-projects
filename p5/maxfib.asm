; Nate Jackson
; CSC322
; P5
; 10/19/22
;

SECTION .data

SECTION .bss
MaxFib: RESD 1
FibCount: RESW 1

SECTION .text
global _main
_main:
	; FibCount counts 0 and 1 as the first two fibs
	mov DWORD [FibCount],2
	mov DWORD [MaxFib], 0
	mov eax, 0
	mov ebx, 1
topFib:
	mov [MaxFib], ebx	
	inc WORD [FibCount]
	mov ecx, ebx	
	add ebx, eax
	mov eax, ecx
	jnc topFib

	

lastBreak:

mov eax, 1
mov ebx, 0
int 80h
