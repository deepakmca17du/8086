data segment
    
    table    dw 3 dup(0)
    
    array    dw 01h,02h,03h,04h,05h,06h,07h,08h
    
    count    dw 08h
    
    num      dw 05h   
    
    found    dw "Element Found$"
    
    notfound dw "Element Not Found$"
    

data ends 

code segment
    
    assume cs:code,ds:data
       
    
;******************** procedure 'linear_search'************************    
  
    
    linear_search proc near  
        
        
        mov si,[bx]
        mov di,[bx+2]    
        mov cx,[di]
        mov di,[bx+4]
        
        next:
            
            mov al,[si]
            cmp al,[di]
            
            je f
             
            add si,2
            loopne next 
            
            jmp nf
            
          f:mov dx,offset found
            mov ah,9
            int 21h
            jmp last
            
         nf:mov dx,offset notfound
            mov ah,9
            int 21h
            
       last:hlt
            ret
            
    linear_search endp  


;************************************************************************
    
    start:
    
        mov ax,data
        mov ds,ax                          
        
            
;*******************  table of parameters is defined  ******************* 

           
        mov table,offset array
        mov table+2,offset count
        mov table+4,offset num
        mov bx,offset table 

;************************* procedure call *******************************
            
        call linear_search           
        hlt      

   

code ends
end start    


