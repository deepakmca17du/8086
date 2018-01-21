; Program to search an element using procedure.

data segment
    
    array db 01h,02h,03h,04h,05h,06h,07h,08h
    
    count dw 08h
    
    num db 05h
    

data ends 

code segment
    
    assume cs:code,ds:data
    
    linear_search proc near 
    
        mov cx,count
        mov si,-1
        next:
            inc si
            mov al,array[si]
            cmp al,num
            loopne next
            hlt
            ret
            
    linear_search endp 
    
    start:
    
        mov ax,data
        mov ds,ax
        xor ax,ax
        
        call linear_search

code ends
end start    


