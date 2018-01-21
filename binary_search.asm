
; Program to find a number in an array of elements using binary search

data segment
    
    array db 1,5,10,15,20,25,30
    no    db 25
    first dw 0
    last  dw 6
    two   db 2
       
data ends           


code segment
    
    assume ds:data, cs:code
    
    start:
        mov ax,data
        mov ds,ax
        
    next:
        xor ax,ax
        mov ax,first
        add ax,last    
        div two
        mov si,ax
        mov al,array[si]
        cmp al,no 
        
        jz  exit
        jl  uphalf
        
        dec si
        mov last,si
        jmp next1
        
        
        uphalf:
            inc si
            mov first,si
             
             
        next1:
            xor ax,ax
            mov ax,first 
            cmp ax,last
            jle next
            
        exit:
        
        
        hlt
        
code ends

end start