.model small
.stack 100h 
.data
a db 'Loop Concept $'
.code
main proc
    
    mov ax, @data
    mov ds, ax   
    
    mov ah,9
    lea dx, a
    int 21h  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl, 13
    int 21h   
    
    mov cx,26     ; loop works in cx register
    mov ah,2
    mov dl,'A'
    
    level1: 
    int 21h       ;  execute 1 time -> mov cx,26   mov ah,2     mov dl,'A'
    inc dl        ; increment dl as 'A' was printed
    loop level1   ; loop will continue untill level1 is done
    
    
    
    
    
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
