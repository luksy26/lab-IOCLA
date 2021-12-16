section .data
    before_format db "before %s", 13, 10, 0
    after_format db "after %s", 13, 10, 0
    mystring db "abCdefghi!", 0

section .text

extern printf
global main

toupper:
    push ebp
    mov ebp, esp

    ; TODO

    mov eax, mystring
    loop:
    mov bl, byte[eax]
    test bl, bl
    je out
    cmp bl, 0x60
    jg litera 
    inc eax
    jmp loop

    jmp out


litera:
    cmp bl, 0x7A
    jle label
    inc eax
    jmp loop


label:
    sub bl, 0x20
    mov byte[eax], bl
    inc eax
    jmp loop


out:
    leave
    ret

main:
    push ebp
    mov ebp, esp

    push mystring
    push before_format
    call printf
    add esp, 8

    push mystring
    call toupper
    add esp, 4

    push mystring
    push after_format
    call printf
    add esp, 8

    leave
    ret
