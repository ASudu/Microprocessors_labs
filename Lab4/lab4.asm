.model tiny
.data
max db 0eh
act db ?
count equ 0dh
nl db 0dh, 0ah, "$"
.code
.startup
	lea dx, max
	mov ah, 0ah
	int 21h
	mov cx, count
	lea si, max
	add si, cx
	inc si
	mov bl, 24h
	std
	mov di, si 
	inc di
	mov bp, di
X1:        
	lodsb [si]
	mov ah, 00H
	mov [di], al
	inc di
	dec cx
	jnz X1
	mov [di], bl
	lea dx, nl
	mov ah, 09h
	int 21h
	
	
	mov dx, bp
	mov ah, 09h
	int 21h
	
	
.exit
end
	