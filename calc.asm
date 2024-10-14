
section .text
    global es_bisiesto

es_bisiesto:
    ; Entrada: edi contiene el año
    ; Salida: eax contiene 1 si es bisiesto, 0 si no lo es

    mov eax, edi
    mov ebx, 4
    xor edx, edx
    div ebx
    test edx, edx
    jnz no_bisiesto

    mov eax, edi
    mov ebx, 100
    xor edx, edx
    div ebx
    test edx, edx
    jnz bisiesto

    mov eax, edi
    mov ebx, 400
    xor edx, edx
    div ebx
    test edx, edx
    jz bisiesto

no_bisiesto:
    mov eax, 0
    ret

bisiesto:
    mov eax, 1
    ret