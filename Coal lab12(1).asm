
.model small
.stack 100h
.data
.code
main proc
mov bx, 5        ; start from 5 stars
mov cx, 5        ; total 5 lines
L1:
 push cx
 mov cx, bx      ; print 'bx' stars
L2:
 mov dl, '*'
 mov ah, 2
 int 21h
 loop L2

 ; new line
 mov dl, 10
 mov ah, 2
 int 21h
 mov dl, 13
 mov ah, 2
 int 21h

 dec bx          ; decrease stars each line
 pop cx
 loop L1

 mov ah, 4ch
 int 21h
main endp
end main



