
; Program to multiply two single-digit numbers entered by user
.model small
.stack 100h
.data
    msg1 db "Enter two single digit numbers: $"
    msg2 db 0Dh,0Ah,"Product is: $"
.code
main proc
    mov ax, @data
    mov ds, ax

    
    mov dx, offset msg1
    mov ah, 9
    int 21h

    
    mov ah, 1        
    int 21h          
    sub al, 48       
    mov bl, al       

    
    mov ah, 1        
    int 21h          
    sub al, 48       

    
    mul bl            

    mov bx, ax       

    
    mov dx, offset msg2
    mov ah, 9
    int 21h

   
    add bl, 48        ; result
    mov dl, bl
    mov ah, 2
    int 21h
    
    mov ah, 4Ch
    int 21h
main endp
end main



