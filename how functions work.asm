.model small
.stack 100h 
.data
m db 'Antar $'  ; i stored Antar in m
.code
main proc
    
    ; 1 -> single key input
    ; 2 -> single character output 
    ; 9 -> character string output
    
    mov ax, @data
    mov ds, ax     ; ax as 16 bits 
    
    mov ah, 9 
    lea dx,m ; load effective address(lea) . works for address
    int 21h  
    
    mov ah,1
    int 21h
    mov bl, al
    
    mov ah,2
    mov dl,bl
    int 21h
       
    
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
