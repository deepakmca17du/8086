data segment
    
    num      dw 05h     #initiaizing number
    
    count    dw 05h  
    
    result   dw dup(0)
    

data ends  



code segment   
    
    
    assume cs:code,ds:data
       
    
;******************** procedure 'factorial' *****************************    
  
;*************** calculates the factorial of a number *******************

   
    factorial proc near  
        
        
        mov cx,count            
        dec cx
                
        mov al,byte ptr num
        mov dl,byte ptr num
        next:

            dec dl                     
            mul dl 
            
            inc si
            inc si 
    
            loop next 
            
        mov result,ax
                 
        hlt
        ret
            
    factorial endp  


;************************************************************************
    
    start:
    
        mov ax,data
        mov ds,ax                          
        
            
;************************* procedure call *******************************
            
        call factorial           
        hlt      

   

code ends
end start    


