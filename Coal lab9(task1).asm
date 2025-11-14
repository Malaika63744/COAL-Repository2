
.model small
.stack 100h
.data
    num1 db ?
    num2 db ?
    msg1 db 13,10, 'Enter first number: $'
    msg2 db 13,10, 'Enter second number: $'
    msg_equal db 13,10, 'Both numbers are EQUAL.$'
    msg_greater db 13,10, 'First number is GREATER.$'
    msg_less db 13,10, 'First number is LESS.$'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 9        ;Input first number
    lea dx, msg1
    int 21h

    mov ah, 1          ; input character
    int 21h
    sub al, 30h        ; convert ASCII to number
    mov num1, al
    
    mov ah, 9          ;Input second number
    lea dx, msg2
    int 21h

    mov ah, 1
    int 21h
    sub al, 30h
    mov num2, al

    mov al, num1    ;Compare both numbers
    cmp al, num2
    je equal
    jg greater
    jl less

equal:
    mov ah, 9
    lea dx, msg_equal
    int 21h
    jmp done

greater:
    mov ah, 9
    lea dx, msg_greater
    int 21h
    jmp done

less:
    mov ah, 9
    lea dx, msg_less
    int 21h

done:
    mov ah, 4Ch
    int 21h

main endp
end main




