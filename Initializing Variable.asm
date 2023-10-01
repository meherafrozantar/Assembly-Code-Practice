.model small
.stack 100h
.data  ; data segment as we are going to declare variable 
msg db 3 ; we declared a name for variable (msg) -> space allocated to db(define byte)  -> msg=3
msg1 db ?
.code
main proc
    mov ax,@data  ; initialize the .data
    mov ds,ax      
    
    mov ah,2 
    add msg,48    ; as the ascii of 3 is 51
    mov dl,msg
    int 21h    
    
    mov ah,1
    int 21h
    mov msg1,al 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,msg1
    int 21h
    
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
