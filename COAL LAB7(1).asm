
.model small
.stack 100h
.data
    msg1 db 'Enter a single digit number (0-9): $'
    msg2 db 0Dh,0Ah,'Cube is: $'
    num db ?
    cube dw ?
.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 9
    mov dx, offset msg1
    int 21h

    mov ah, 1          ; read one character
    int 21h
    sub al, 30h        ; convert ASCII to number
    mov num, al

    mov al, num
    mov bl, num
    mul bl             ; AL * BL -> AX = n^2
    mov bl, num
    mul bl             ; AX * BL -> DX:AX = n^3
    mov cube, ax

    mov ah, 9
    mov dx, offset msg2
    int 21h

    ; ----- Separate digits -----
    mov ax, cube       ; AX = cube value
    mov bl, 10
    div bl             ; AL=quotient (tens), AH=remainder (ones)

    mov bh, ah         ; Save remainder (ones digit)

    ; ----- Print tens -----
    add al, 30h        ; convert tens to ASCII
    mov dl, al
    mov ah, 2
    int 21h

    ; ----- Print ones -----
    mov al, bh         ; get remainder back
    add al, 30h        ; convert ones to ASCII
    mov dl, al
    mov ah, 2
    int 21h

    ; ----- Exit -----
    mov ah, 4Ch
    int 21h

main endp
end main




