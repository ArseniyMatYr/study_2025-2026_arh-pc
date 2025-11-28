SECTION .data
    msg: DB 'Введите строку: ',10
    msgLen: EQU $ - msg

SECTION .bss
    buf1 RESB 80

SECTION .text
    GLOBAL _start
    
_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, msgLen
    int 0x80
    
    mov eax, 3
    mov ebx, 0
    mov ecx, buf1
    mov edx, eax
    int0x80
    
    mov eax, 4
    mov ebx, 1
    mov edx, eax
    int 0x80
    
    mov eax, 1
    xor ebx, ebx
    int 0x80




