.model Tiny
.386
.data
msg1 db 0dh, 0ah, "Enter ID:$"
msg2 db 0dh, 0ah, "Reverse ID is:$"

.code
.startup
	mov di,4000h
	mov dx,offset msg1
	mov ah,09h
	int 21h

	mov cl,00h
X1: 
	mov ah,01h
	int 21h
	mov [di],al
	inc di
 
	inc cl
	cmp al,0dh
	jnz X1
	sub di,02h
	dec cl
	mov dx,0000h
	mov dx, offset msg2
	mov ah,09h
	int 21h
X2: 
	mov dl, [di]
	mov ah,02h
	int 21h
	dec di
	dec cl
	jnz X2
	mov ah,4ch
	int 21h
.exit 
end