
; Program to unpack 16 digits packed number using masking

data segment
    
    packed db 12h,23h,34h,45h,56h,67h,78h,89h
    unpacked dw 8dup(0)    
    mask1 db 0fh
    mask2 db 0f0h

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
          mov ah,packed[si
          and al,mask1
          and ah,mask2
          shr ah,4  
          mov unpacked[di],ax
          inc si
          inc di 
          inc di
          loop next
hlt      

code ends
end start




