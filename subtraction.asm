.model small
.stack 100h 
.data
a db 'input first digit $'
b db 10,13, 'input second digit $'
c db 10,13,'result $'
.code
main proc
    
    mov ax, @data
    mov ds,ax
    
    mov ah,9
    lea dx, a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
               
    mov ah,9
    lea dx, b
    int 21h   
    
    mov ah,1
    int 21h
    mov bh,al
               
    mov ah,9
    lea dx, c
    int 21h     
    
    sub bl,bh;  bl = bl - bh
    add bl,48          ; initial value bl should be 0 but in ascii 0 = 48
    mov ah,2
    mov dl, bl
    int 21h  
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
