
;***************************   program to multiply two matrices    ***********************************************************

data segment 
    
    
    mat1 db 01h,02h,03h
         db 01h,02h,03h
         db 01h,02h,03h
         
    mat2 db 02h,03h,04h
         db 03h,04h,05h
         db 04h,05h,06h
         
    mat3 db 9 dup(0)
    
    row dw 3
    
    col dw 3      
    
         
data ends 
          
          

code segment  
    
    
    assume ds:data, cs:code 
    
    
    start:
    
    
        mov ax,data
        mov ds,ax
        
        mov bp,0
        mov cx,row
        
        next:
            push cx
            mov bx,0
            mov cx,col
            
            next1:
                push cx
                
                mov si,0
                mov cx,col
                                   
                next2: 
                      
                    mov al,mat1[bp][si]
                    push si
                    push ax
                    
                    mov ax,si
                    mul row
                    mov si,ax
                    pop ax
                    
                    mul mat2[si][bx]   
                    pop si
                    
                    mov di,bp
                    add mat3[di][bx],al
                    inc si                    
                    
                    loop next2 
                    
                   
                add bx,1 
               
                pop cx    
                    
                loop next1
                
            add bp,3   
            
            pop cx
            
            loop next
            
        hlt
            
            
code ends
end start