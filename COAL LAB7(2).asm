.model small
.data
    msg1 db 'Enter base: $'
    msg2 db 13,10,'Enter height: $'
    msg3 db 13,10,'Area: $'

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Get base
    mov ah, 9
    mov dx, offset msg1
    int 21h 
    
    mov ah, 1
    int 21h
    sub al, 30h
    mov bl, al      ; Store base in BL

    ; Get height
    mov ah, 9
    mov dx, offset msg2
    int 21h
    mov ah, 1
    int 21h
    sub al, 30h
    mov cl, al      ; Store height in CL

    ; Calculate area = (base × height) / 2
    mov al, bl      ; Load base
    mul cl          ; AL = base × height
    mov bl, 2       ; Divide by 2
    div bl          ; AL = result

    ; Display result
    mov bl, al      ; Save result
    mov ah, 9
    mov dx, offset msg3
    int 21h
    
    mov dl, bl
    add dl, 30h     ; Convert to ASCII
    mov ah, 2
    int 21h

    ; Exit
    mov ah, 4ch
    int 21h
main endp
end main



