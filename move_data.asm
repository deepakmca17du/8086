
; Program to move a block of data from one memory location to another

data segment  
    
    array1 db 1,2,3,4,5,6,7,8
    array2 db 8 dup(?)
    
data ends


code segment
    
    assume data:ds, code:cs  
    
    start:
   
        mov ax,data
        mov ds,ax
        
        xor ax,ax
        mov cx,8
        lea si,array1  
        lea di,array2
        
           
        next:
            
            mov bl,[si]
            mov [di],bl 
            inc si
            inc di
            loop next
       
        
        hlt  
    
code ends
end start



