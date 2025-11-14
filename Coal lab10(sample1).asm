
;program to print the array using loop
.model small
.data 

arr db 49,50,51,52,53
.code
main proc
    
    mov ax,@data
    mov ds,ax
    mov si,offset arr
    mov cx ,5
    
    loopx:
    mov dl,[si]
    mov ah,2
    int 21h
    
    inc si ; mov dx,[si+1]
    loop loopx
    
    mov ah,4ch
    int 21h
    main endp
end main



