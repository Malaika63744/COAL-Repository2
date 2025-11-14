
;program to calculate sum of first ten natural numbers without using counter 

org 100h 
include emu8086.inc 
 
.model small 
.stack 100h 
.data 
.code 
main proc 
     mov bx, 0 
     mov ax, 0  
     
label1: add ax, bx 

     inc bx
     
      ;cmp bx, 11
      ;jne label1 
 
; you can also replace above two instructions with following two instructions 

cmp bx, 10 
Jle label1
 
main endp 
call print_num   ;AX ki value ko screen pe print karta hai.
DEFINE_PRINT_NUM ; signed numbers (positive/negative) print 
DEFINE_PRINT_NUM_UNS ; unsigned numbers (sirf positive) print 
ret 



