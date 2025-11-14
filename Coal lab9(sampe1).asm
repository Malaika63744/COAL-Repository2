
;program to compare two digits 

.model small 
.stack 100h 
.data 
Msg1 DB 'numbers are equal$' 
Msg2 DB 'numbers are not equal$' 
.code 
main proc 
  mov ax, @data 
  mov ds, ax 
  mov dl, '3' 
  mov ah, 1 
  int 21h 
  cmp al, dl
   
je label1 
 
 mov dx, offset msg2 
 mov ah,9 
 int 21h 
 mov ah,4ch 
 int 21h 

label1: mov dx, offset msg1 

  mov ah,9 
 int 21h 
 mov ah,4ch 
 int 21h 
main endp 
end main




