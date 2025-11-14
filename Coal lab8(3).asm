
.model small
.stack 100h
.data
.code
main proc
    mov cx,5        ; 5 odd numbers
    mov dl,49       ; ASCII of '1' 

PrintOdd:
    mov ah,2
    int 21h         ; print number

    add dl,2        ; next odd number 
    loop PrintOdd   ;call

    mov ah,4Ch
    int 21h
main endp
end main
