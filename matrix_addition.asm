data segment 
    
    
    mat1 dw 01h,02h,03h
         dw 02h,03h,04h
         dw 03h,04h,05h
         
    mat2 dw 03h,04h,05h
         dw 04h,05h,06h
         dw 05h,06h,07h
         
    mat3 dw 9 dup(0)
    
    row dw 3
    
    col dw 3  
         
         `
data ends 


code segment
    
    assume ds:data, cs:code
    
    start:
    
    
        mov ax,data
        mov ds,ax
        
        mov si,0
        mov cx,row
        
        a:
            push cx
            mov bx,0
            mov cx,col
            
            b:
            
                mov ax,mat1[si][bx]
                add ax,mat2[si][bx]
                mov mat3[si][bx],ax
                add bx,6
                loop b
                
            inc si
            inc si
            
            pop cx
            
            loop a
            
        hlt
            
            
code ends
end start