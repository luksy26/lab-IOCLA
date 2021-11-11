%include "../io.mac"

section .text
    global main
    extern printf

main:
    mov eax, 1       ; vrem sa aflam al N-lea numar; N = 7
    xor ebx, ebx
    mov ecx, 7

fib:
    add eax, ebx
    xchg eax, ebx
    loop fib

    ; TODO: calculati al N-lea numar fibonacci (f(0) = 0, f(1) = 1)
     PRINTF32 `%d\n\x0`, eax
    ret
