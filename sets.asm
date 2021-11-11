%include "../io.mac"

section .text
    global main
    extern printf

main:
    ;cele doua multimi se gasesc in eax si ebx
    mov eax, 139
    mov ebx, 169
    PRINTF32 `%u\n\x0`, eax ; afiseaza prima multime
    PRINTF32 `%u\n\x0`, ebx ; afiseaza cea de-a doua multime

    ; TODO1: reuniunea a doua multimi
    mov ecx, eax
    or ecx, ebx
    PRINTF32 `Reuniunea este: \x0`
    PRINTF32 `%u\n\x0`, ecx ;afiseaza reuniunea multimilor

    ; TODO2: adaugarea unui element in multime
    ;adaugam elementul 2 la multimea din eax
    or eax, 0b100
    PRINTF32 `%u\n\x0`, eax

    ; TODO3: intersectia a doua multimi
    mov ecx, eax
    and ecx, ebx
    PRINTF32 `Intersectia este: \x0`
    PRINTF32 `%u\n\x0`, ecx


    ; TODO4: complementul unei multimi
    ;complementul multimii din eax
    mov ecx, eax
    not ecx
    PRINTF32 `Complementul multimii din eax este: \x0`
    PRINTF32 `%u\n\x0`, ecx

    ; TODO5: eliminarea unui element
    ;eliminam elementul 2 din multimea x
    xor eax, 0b100
    PRINTF32 `%u\n\x0`, eax ; se va afisa 139 adica multimea init


    ; TODO6: diferenta de multimi EAX-EBX
    ;ca sa facem diferenta facem EAX & ~EBX
    mov ecx, ebx
    not ecx
    and eax, ecx
    PRINTF32 `Diferenta eax-ebx este: \x0`
    PRINTF32 `%u\n\x0`, ecx

    xor eax, eax
    ret
