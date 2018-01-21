
; Program to add all the elements of an array

data segment
    
    array db 01h,02h,03h,04h    
    
data ends

code segment
    
    assume ds:data,cs:code   
    
    
    start:
    
        mov ax,data
        mov ds,ax 
         
        xor ax,ax
        mov cx,04h
        mov si,0
        
                
    next:  
    
        adc al,array[si]
        inc si
        loop next  
        
    
    hlt  
    
    
code ends   
end start





