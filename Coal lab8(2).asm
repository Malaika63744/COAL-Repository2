
.model small
.stack 100h
.data
.code
main proc

    mov cx, 4       ; loop 4 times
    mov dl, 0       ; start number
    mov bx, 0       ; sum

AddLoop:
    add bx, dx
    inc dl
    loop AddLoop

    mov ax, bx      ; AX = 6
    add al, 48      ; convert to ASCII
    mov dl, al
    mov ah, 2
    int 21h         ; print '6'

    mov ah, 4Ch
    int 21h

main endp
end main
