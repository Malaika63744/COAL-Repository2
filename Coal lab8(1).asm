
;program to print Capital letters from a to z

.model small 
.stack 100h 
.data 
.code 
main proc 
 
mov cx, 26   ; loop will be executed 26 times 
mov dx, 97   ; ASCII of a 
 
CapLet: ; name of loop 
 
Mov ah, 2 
Int 21h 
 
Inc dx  
 
Loop CapLet   
 
mov ah,4ch 
int 21h 
main endp 
end main 

