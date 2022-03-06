.model tiny
.386

.data
name1 db 'SUDARSHAN'
count equ 09H

.code
.startup
        mov cx, count
        mov ax, 2019H
        mov es, ax
        mov di, 0744H
        lea si, name1
        add si, cx
        dec si
        std
X1:        
        lodsb [si]
        mov ah, 00H
        mov es:[di], al
        inc di
        dec cx
        jnz X1
.exit
end