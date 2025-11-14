
.model small
.stack 100h
.data
    myname db "MALAIKA$"
.code
main proc
    mov ax, @data
    mov ds, ax

    ; Ask user for input 
    mov ah, 1
    int 21h
    sub al, 48      
    mov cl, al       
    mov ch, 0       

PrintLoop:
    mov ah, 9
    mov dx, offset myname
    int 21h

    ;for new line after each print
    mov ah, 2
    mov dl, 10      
    int 21h
    mov dl, 13      
    int 21h
   

    loop PrintLoop   

    mov ah, 4Ch
    int 21h
main endp
end main