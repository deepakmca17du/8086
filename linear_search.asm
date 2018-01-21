; Program to search a given number from an array of numbers using linear search

data segment     
    
    array db 1,2,3,4,5,6 
    
data ends

code segment
    
    assume ds:data,cs:code
    
    start:
    mov ax,data
    mov ds,ax
    
    xor ax,ax
    mov si,-1
    mov cx,6    
    mov bl,3
    
    next:inc si
         mov al,array[si]
         cmp al,bl
         loopne next
         hlt
         
code ends
end start
    



