
.model small
.stack 100h
.data
.code
main proc
    mov cx, 7       ; total 7 letters
    mov dl, 97     ; start from 'a'

PrintLoop:
    mov ah, 2
    int 21h         ; print current letter


                   ; increase letter by 4
    add dl, 4

    loop PrintLoop

    mov ah, 4Ch
    int 21h
main endp
end main