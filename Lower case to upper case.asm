.model small
.stack 100h 
.data
a db 'Lower form $'
b db 'Upper form $'
.code
main proc
         mov ax, @data
         mov ds, ax
         
         mov ah,9
         lea dx,a
         int 21h
         
         mov ah,1
         int 21h
         mov bl,al
         
         mov ah,2
         mov dl, 10
         int 21h
         mov dl, 13
         int 21h   
         
         mov ah,9
         lea dx,b
         int 21h
                 
         mov ah,2
         sub bl,32   ; A = 65   a = 97
         mov dl,bl
         int 21h
         
         
         
    
     
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
