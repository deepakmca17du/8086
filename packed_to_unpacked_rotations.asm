
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

; org 100h

; Program to unpack the packed numbers using rotations

data segment
    
    packed db 12h,34h,56h,78h,90h,92h,94h,96h
    unpacked dw 8dup(0)

data ends

code segment
    
    assume ds:data,cs:code
    
    start:        
    
        mov ax,data
        mov ds,ax
        
        mov di,00h
        mov si,00h
        mov cx,08h
    
    next: xor ax,ax
          mov al,byte ptr packed[si]
          rol ax,4
          ror al,4
          mov unpacked[di],ax
          inc si
          inc di  
          inc di
          loop next

    hlt      
           
           
code ends
end start





