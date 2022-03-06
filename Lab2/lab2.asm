.model tiny
.386

.data
id db 2H, 0H, 1H, 9H, 'B', 4H, 'A', 7H, 0H, 7H, 4H, 4H, 'P'
count equ 0CH
.code
.startup
	lea si, id
	mov dl, [si]
	mov dh, 00H
	mov bl, 0AH
	mov bh, 00H
	mov cx, count
X1:	inc si
	cmp [si], bl 
	jg X2
	add dl, [si]
	dec cx
	jnz X1
X2:	dec cx
	jnz X1
	mov ax, 2019H
	mov bx, 0744H
	mov ds,ax
	mov [bx], dx

.exit
end