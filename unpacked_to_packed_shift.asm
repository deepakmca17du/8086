; Program to pack the unpacked items using shift command

data1 segment
   
    unpacked dw 0102h,0203h,0304h,0405h,0506h,0607h,0708h,0809h
    packed db 8dup(0)

data1 ends

code1 segment 
    
    
    assume ds:data1,cs:code1
    
    
    start:   
    
        mov ax,data1
        mov ds,ax
        
        mov di,00h
        mov si,00h
        mov cx,08h
        
    next:
    
        mov ax,unpacked[si]
        shl al,4
        shr ax,4
        mov packed[di],al
        inc si
        inc si
        inc di
        loop next   
        
        
    hlt       
    
    
code1 ends 
end start




