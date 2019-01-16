.model small
.stack 4096
.data
varc word 1;to check the coin collision
varh word 1;to check the coin collision
spfp word 314;starting point of flag poll
spf word 280;starting point of flag
hurdleposition word 60 ;starting point of hurdle1 horizontal line
h1x word 162
h1y word 44
h2y word 85
h2x word 162
h3x word 142
h3y word 124
h4x word 144
h4y word 165
h5x word 124
h5y word 204
h6x word 124
h6y word 245
lvl1 db "Level   1$"
lvl2 db "Level   2$"
lvl3 db "Level   3$"
lvlr word 1
gvr1 db "!!!!GAME  OVER!!!!$"
tx1 byte 12
ty1 byte 15
bwr   BYTE 0h,0h,0H,0H,0H,0H,0H,1H,1H,01H,01H,01H,0H,0H,0h,0h,0H,0H,0H
BYTE 0h,0h,0H,0H,0H,1H,1H,4H,4H,4H,4H,4H,1H,1H,0h,0h,0H,0H,0H
BYTE 0h,0h,0H,0H,1H,4H,4H,4H,4H,4H,4H,4H,4H,4H,1h,0h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,4H,4H,4H,4H,4H,4H,4H,4H,4H,4h,1h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,4H,4H,4H,4H,4H,4H,4H,4H,4H,4h,1h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,1H,4H,4H,4H,4H,4H,4H,4H,1H,4h,1h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,1H,1H,4H,4H,4H,4H,4H,1H,1H,4h,1h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,1H,0eH,1H,4H,4H,4H,1H,0eH,1H,4h,1h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,1H,0eH,0eH,1H,4H,1H,0eH,0eH,1H,4h,1h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,4H,1H,1H,4H,4H,4H,1H,1H,4H,4h,1h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,4H,4H,4H,4H,0eH,4H,4H,4H,4H,4h,1h,0H,0H,0H
BYTE 0h,0h,0H,0H,1H,4H,4H,4H,4H,0eH,4H,4H,4H,4H,1h,0h,0H,0H,0H
BYTE 0h,0h,0H,0H,0H,1H,4H,4H,0eH,0eH,0eH,4H,4H,1H,0h,0h,0H,0H,0H
BYTE 0h,0h,0H,0H,0H,0H,1H,1H,4H,4H,4H,1H,1H,0H,0h,0h,0H,0H,0H
BYTE 0h,0h,0H,0H,1H,1H,4H,4H,1H,1H,1H,4H,4H,1H,1h,0h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,4H,4H,4H,4H,4H,4H,4H,4H,4H,4h,1h,0H,0H,0H
BYTE 0h,0h,1H,4H,4H,1H,3H,4H,4H,1H,4H,4H,3H,1H,4h,4h,1H,0H,0H
BYTE 0h,0h,1H,4H,4H,3H,1H,3H,4H,4H,4H,3H,1H,3H,4h,4h,1H,0H,0H
BYTE 0h,0h,0H,1H,4H,4H,3H,1H,4H,4H,4H,1H,3H,4H,4h,1h,0H,0H,0H
BYTE 0h,1h,1H,1H,4H,4H,4H,4H,1H,4H,1H,4h,4H,4H,4h,1h,1H,1H,0H
BYTE 1h,3h,3H,3H,1H,4H,4H,4H,1H,0H,1H,4h,4H,4H,1h,3h,3H,3H,1H
BYTE 1h,3h,3H,3H,3H,1H,1H,1H,0H,0H,0H,1h,1H,1H,3h,3h,3H,3H,1H
BYTE 0h,1h,3H,3H,3H,4H,1H,3H,3H,0H,3H,3h,1H,4H,3h,3h,3H,1H,0H
BYTE 0h,0h,1H,3H,4H,4H,4H,1H,1H,0H,1H,1h,4H,4H,4h,3h,1H,0H,0H

BYTE 0h,0h,0H,1H,1H,4H,4H,4H,4H,0H,4H,4h,4H,4H,1h,1h,0H,0H,0H
BYTE 0h,0h,0H,0H,0H,1H,4H,4H,4H,0H,4H,4h,4H,1H,0h,0h,0H,0H,0H
BYTE 0h,0h,0H,0H,0H,0H,1H,4H,4H,0H,4H,4h,1H,0H,0h,0h,0H,0H,0H
BYTE 0h,0h,0H,0H,0H,0H,0H,1H,4H,0H,4H,1h,0H,0H,0h,0h,0H,0H,0H
BYTE 0h,0h,0H,0H,0H,0H,0H,0H,1H,0H,1H,0h,0H,0H,0h,0h,0H,0H,0H

bwo  BYTE 0h,0h,0H,0H,0H,0H,0H,1H,1H,01H,01H,01H,0H,0H,0h,0h,0H,0H,0H
BYTE 0h,0h,0H,0H,0H,1H,1H,4H,4H,4H,4H,4H,1H,1H,0h,0h,0H,0H,0H
BYTE 0h,0h,0H,0H,1H,4H,4H,4H,4H,4H,4H,4H,4H,4H,1h,0h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,4H,4H,4H,4H,4H,4H,4H,4H,4H,4h,1h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,4H,4H,4H,4H,4H,4H,4H,4H,4H,4h,1h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,1H,4H,4H,4H,4H,4H,4H,4H,1H,4h,1h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,1H,1H,4H,4H,4H,4H,4H,1H,1H,4h,1h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,1H,0eH,1H,4H,4H,4H,1H,0eH,1H,4h,1h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,1H,0eH,0eH,1H,4H,1H,0eH,0eH,1H,4h,1h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,4H,1H,1H,4H,4H,4H,1H,1H,4H,4h,1h,0H,0H,0H
BYTE 0h,0h,0H,1H,4H,4H,4H,4H,4H,0eH,4H,4H,4H,4H,4h,1h,0H,0H,0H
BYTE 0h,0h,0H,0H,1H,4H,4H,4H,4H,0eH,4H,4H,4H,4H,1h,0h,0H,0H,0H
BYTE 0h,0h,0H,0H,0H,1H,4H,4H,0eH,0eH,0eH,4H,4H,1H,0h,0h,0H,0H,0H
BYTE 0h,0h,0H,0H,0H,0H,1H,1H,4H,4H,4H,1H,1H,0H,0h,0h,0H,0H,0H
bwx word 0
bwy word  0

bhx word 0
bhy word 0

wc db "Welcome TO Mario$"
wc1 db "Developed By$"
wc2 db "Muhammad Mazarib$"
wc3 db "Aqeel Ijaz$"
tx byte 5
ty byte 12
xaxis word 183
yaxis word 0
mio   BYTE 0FFh,0FFh,0FFH,0FFH,0FFH,001H,001H,001H,001H,001H,0FFH,0FFH,0FFH,0FFH,0FFh,0FFh 

BYTE 0FFh,0FFh,0FFH,0FFH,001H,001H,001H,001H,001H,001H,001H,001H,001H,0FFH,0FFh,0FFh
BYTE 0FFh,0FFh,0FFH,0FFH,002H,002H,002H,00EH,00EH,002H,00EH,0FFH,0FFH,0FFH,0FFh,0FFh  

BYTE 0FFh,0FFh,0FFH,002H,00EH,002H,00EH,00EH,00EH,002H,00EH,00EH,00EH,0FFH,0FFh,0FFh 

BYTE 0FFh,0FFh,0FFH,002H,00EH,002H,002H,00EH,00EH,00EH,002H,00EH,00EH,00EH,0FFh,0FFh

BYTE 0FFh,0FFh,0FFH,002H,002H,00EH,00EH,00EH,00EH,002H,002H,002H,002H,0FFH,0FFh,0FFh ;max nose tip

BYTE 0FFh,0FFh,0FFH,0FFH,0FFH,00EH,00EH,00EH,00EH,00EH,00EH,00EH,0FFH,0FFH,0FFh,0FFh 
BYTE 0FFh,0FFh,0FFH,0FFH,002H,002H,001H,002H,002H,0FFH,0FFH,0FFH,0FFH,0FFH,0FFh,0FFh

BYTE 0FFh,0FFh,0FFH,002H,002H,002H,001H,002H,002H,001H,002H,002H,002H,0FFH,0FFh,0FFh ;body start

BYTE 0FFh,0FFh,002H,002H,002H,002H,001H,001H,001H,001H,002H,002H,002H,002H,0FFh,0FFh 

BYTE 0FFh,0FFh,00EH,00EH,002H,001H,00EH,001H,001H,00EH,001H,002H,00EH,00EH,0FFh,0FFh 

BYTE 0FFh,0FFh,00EH,00EH,00EH,001H,001H,001H,001H,001H,001H,00EH,00EH,00EH,0FFh,0FFh
	
BYTE 0FFh,0FFh,00EH,00EH,001H,001H,001H,001H,001H,001H,001H,001H,00EH,00EH,0FFh,0FFh

BYTE 0FFh,0FFh,0FFH,0FFH,001H,001H,001H,0FFH,0FFH,001H,001H,001H,0FFH,0FFH,0FFh,0FFh 

BYTE 0FFh,0FFh,0FFH,002H,002H,002H,0FFH,0FFH,0FFH,0FFH,002H,002H,002H,0FFH,0FFh,0FFh
BYTE 0FFh,0FFh,002H,002H,002H,002H,0FFH,0FFH,0FFH,0FFH,002H,002H,002H,002H,0FFh,0FFh

enx word 183
eny word 90
enx1 word 183
eny1 word 166
enem byte 0h,0h,0h,0h,0h,0h,04h,04h,04h,04h,0h,0h,0h,0h,0h,0h
byte 0h,0h,0h,0h,0h,04h,04h,04h,04h,04h,04h,0h,0h,0h,0h,0h 
byte 0h,0h,0h,0h,04h,04h,04h,04h,04h,04h,04h,04h,0h,0h,0h,0h
byte 0h,0h,0h,04h,04h,04h,04h,04h,004h,04h,4h,04h,04h,0h,0h,0h
byte 0h,0h,04h,0Ah,0Ah,0ah,04h,004h,04h,4h,0Ah,0Ah,0ah,04h,0h,0h
byte 0h,04h,4h,4h,01h,0Ah,04h,04h,4h,4h,0Ah,01h,04h,04h,4h,0h
byte 0h,04h,4h,4h,01h,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,1h,04h,04h,4h,0h
byte 04h,04h,4h,4h,01h,0Ah,01h,04h,04h,01h,0Ah,01h,04h,04h,4h,04h
byte 04h,04h,4h,4h,01h,01h,01h,04h,04h,01h,01h,01h,04h,04h,4h,04h
byte 04h,04h,4h,4h,04h,04h,04h,04h,04h,04h,04h,04h,04h,04h,4h,04h
byte 0h,04h,4h,4h,04h,0eh,0eh,0eh,0eh,0eh,0eh,04h,04h,04h,4h,0h
byte 0h,0h,0h,0h,0eh,0eh,0eh,0eh,0eh,0eh,0eh,0eh,0h,0h,0h,0h
byte 0h,0h,06h,06h,0eh,0eh,0eh,0eh,0eh,0eh,0eh,0eh,06h,06h,0h,0h
byte 0h,06h,06h,06h,06h,06h,0eh,0eh,0eh,0eh,06h,06h,06h,06h,06h,0h
byte 0h,06h,06h,06h,06h,06h,06h,0eh,0eh,06h,06h,06h,06h,06h,06h,0h
byte 0h,06h,06h,06h,06h,06h,06h,0h,0h,06h,06h,06h,06h,06h,06h,0h


chx word 179
chy word 40
coi byte 0h,0h,0h,0h,0h,0h,0h,0h,0h,0ah,0ah,0h,0h,0h,0h,0h,0h,0h,0h,0h
byte 0h,0h,0h,0h,0h,0h,0h,0h,0ah,0ah,0ah,0ah,0h,0h,0h,0h,0h,0h,0h,0h;
byte 0h,0h,0h,0h,0h,0h,0h,0ah,0ah,0ah,0ah,0ah,0ah,0h,0h,0h,0h,0h,0h,0h;
byte 0h,0h,0h,0h,0h,0h,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0h,0h,0h,0h,0h,0h;
byte 0h,0h,0h,0h,0h,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0h,0h,0h,0h,0h;
byte 0h,0h,0h,0h,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0h,0h,0h,0h;
byte 0h,0h,0h,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0h,0h,0h;
byte 0h,0h,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0h,0h;
byte 0h,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0h;
byte 0h,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah;
byte 0h,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah
byte 0h,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0h;
byte 0h,0h,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0h,0h;
byte 0h,0h,0h,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0h,0h,0h;
byte 0h,0h,0h,0h,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0h,0h,0h,0h;
byte 0h,0h,0h,0h,0h,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0h,0h,0h,0h,0h;
byte 0h,0h,0h,0h,0h,0h,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0ah,0h,0h,0h,0h,0h,0h;
byte 0h,0h,0h,0h,0h,0h,0h,0ah,0ah,0ah,0ah,0ah,0ah,0h,0h,0h,0h,0h,0h,0h;
byte 0h,0h,0h,0h,0h,0h,0h,0h,0ah,0ah,0ah,0ah,0h,0h,0h,0h,0h,0h,0h,0h;
byte 0h,0h,0h,0h,0h,0h,0h,0h,0h,0ah,0ah,0h,0h,0h,0h,0h,0h,0h,0h,0h


hx word 183
hy word 290
hrt byte 0h,0ch,0ch,0h,0h,0ch,0ch,0h
byte 0ch,0ch,0ch,0ch,0ch,0ch,0ch,0ch
byte 0ch,0ch,0ch,0ch,0ch,0ch,0ch,0ch
byte 0h,0ch,0ch,0ch,0ch,0ch,0ch,0h
byte 0h,0h,0ch,0ch,0ch,0ch,0h,0h
byte 0h,0h,0h,0ah,0ch,0h,0h,0h

cchx word 175
cchy word 290
cst byte 0,0,0,0,7,0,0,0,0,0,0,7,0,0,0,0

byte 0,0,0,0,7,0,0,0,0,0,0,7,0,0,0,0

byte 0,0,0,7,4,7,0,0,0,0,0,7,0,0,0,0

byte 0,0,7,4,4,4,7,1,7,1,7,7,7,7,7,0

byte 0,0,7,4,4,4,7,1,7,1,7,1,7,1,7,0

byte 0,0,7,7,7,7,7,1,1,1,1,1,1,1,7,0

byte 0,0,7,1,1,1,7,1,7,1,7,1,7,1,7,0
byte 0,0,7,1,7,1,7,1,1,1,1,1,1,1,7,0
byte 0,7,7,1,1,1,7,4,4,4,4,4,4,4,7,0
byte 0,7,4,7,7,7,7,1,1,0,0,1,1,1,7,0

byte 7,4,4,4,7,1,1,7,7,1,1,7,1,1,7,0
byte 7,4,4,4,7,1,1,1,1,1,1,7,1,1,7,0
byte 7,7,7,7,7,1,7,1,1,7,1,7,1,1,7,0
byte 7,1,1,1,7,1,7,1,1,7,1,7,7,4,7,7
byte 7,1,7,7,7,1,1,1,1,1,1,7,4,4,4,7

byte 7,1,7,1,7,7,7,7,7,7,7,7,7,7,4,7
byte 7,1,7,1,7,7,7,1,1,7,7,7,1,7,4,7
byte 7,1,7,1,1,1,1,1,1,1,1,1,1,7,7,7

byte 7,1,7,1,1,1,1,0,0,1,1,1,1,7,1,7

byte 7,1,7,1,1,1,0,0,0,0,1,1,1,7,1,7
byte 7,1,7,1,1,1,0,0,0,0,1,1,1,7,1,7
byte 7,1,7,1,1,1,0,0,0,0,1,1,1,7,1,7
byte 7h,01h,7h,01h,01h,01h,0h,0h,0h,0h,1,01h,01h,7h,01h,7h
byte 7h,7h,7h,7h,7h,7h,7h,7h,7h,7h,7h,7h,7h,7h,7h,7h


temprow word 0
tempcolumn word 0
hands word 0;for hand fromation of mario
it dw 285 ;for poll
s1 dw 285 ;for star
s2 dw 283;for star
s3 dw 283;for star
s4 dw 287;for star
.code
main proc
mov ax,@data
mov ds,ax
mov ah,0
mov al,13h
int 10h


call frs
MOV CX, 000fh
MOV DX, 4240h; CX:DX Number of microseconds to elapse
MOV AH, 86H
INT 15H
MOV CX, 000fh
MOV DX, 4240h; CX:DX Number of microseconds to elapse
MOV AH, 86H
INT 15H
MOV CX, 000fh
MOV DX, 4240h; CX:DX Number of microseconds to elapse
MOV AH, 86H
INT 15H
MOV CX, 000fh
MOV DX, 4240h; CX:DX Number of microseconds to elapse
MOV AH, 86H
INT 15H
MOV CX, 000fh
MOV DX, 4240h; CX:DX Number of microseconds to elapse
MOV AH, 86H
INT 15H
call lv1
MOV CX, 000fh
MOV DX, 4240h; CX:DX Number of microseconds to elapse
MOV AH, 86H
INT 15H
MOV CX, 000fh
MOV DX, 4240h; CX:DX Number of microseconds to elapse
MOV AH, 86H
INT 15H
lol:

call finl

; cc3:
; mov ax,eny
; mov bx,enx
; cmp bx,xaxis
; ;jbe get
; ;jne get
; jb lol
; cmp ax,yaxis

; jg lol
; mov ah,4ch
; int 21h


presskey:
 ; checking whether a key is pressed or not
  mov ah,11h
   int 16h
   jnz checkey   
   back:
loop lol
checkey:

; taking pressed key out of the buffer
 mov ah,10h
 int 16h

 ;In below all checks I am comparing scan codes of the up,down,left,right 
;checking Right key
cmp ah,4dh
jne n1

mov ax,h1y
mov bx,h1x
cmp ax,yaxis
;jne get
jne zz
cmp bx,xaxis
jbe back
;jmp back


 zz:
mov ax,eny
mov bx,enx
cmp ax,yaxis
jne cc
cmp bx,xaxis
jbe back
mov ah,4ch
int 21h

cc:
mov ax,h3y
mov bx,h3x
cmp ax,yaxis
jne zz2;get
cmp bx,xaxis
jbe back

 zz2:
mov ax,eny1
mov bx,enx1
cmp ax,yaxis
jne cc2
cmp bx,xaxis
jbe back
mov ah,4ch
int 21h


cc2:
mov ax,h5y
mov bx,h5x
cmp ax,yaxis

jne get
cmp bx,xaxis
;jbe back
jae get
jmp back



get:
mov ax,yaxis
add ax,1
mov yaxis,ax
jmp back
 
 ;checking left key
 n1:
 cmp ah,4bh
 jne n2
 mov ax,h2y
 mov bx,h2x
 cmp ax,yaxis
 jne c1
 cmp bx,xaxis
 jbe back
 c1:
 mov ax,h4y
 mov bx,h4x
 cmp ax,yaxis
 jne c2
 cmp bx,xaxis
 jbe back
 c2:
 mov ax,h6y
 mov bx,h6x
 cmp ax,yaxis
 jne get1
 cmp bx,xaxis
 jae get1
 jmp back
 ;c1:
 get1:
 mov ax,yaxis
 sub ax,1
 mov yaxis,ax
 jmp back
 
 ;checking up key
 n2:
 cmp ah,48h
 jne n3
 mov dx,xaxis
 sub dx,1
 mov xaxis,dx
 jmp back
 
 ;checking down key
 n3:
 cmp ah,50h
 jne back
 mov dx,xaxis
 add dx,1
 mov xaxis,dx
 jmp back
 

 


mov ah,4ch
int 21h
main endp



drawflagpoll proc;drfl
;to draw flag poll line
push cx
mov cx,4

	l1:
		push cx
		mov ah,0ch
		mov al,0fh
		mov cx,spfp
		int 10h
		inc spfp
		pop cx
	loop l1
pop cx
ret
drawflagpoll endp

drawfullflagpole proc;drf
; draw whole poll
mov cx,200
mov dx,0
	l2:
		mov ax,315
		mov spfp,ax
		call drawflagpoll
		inc dx
	loop l2
ret
drawfullflagpole endp

drawflagline proc;drff
;to draw flag line
push cx
mov cx,45
	l1:
		push cx
		mov ah,0ch
		mov al,02h
		mov cx,spf
		int 10h
		inc spf
		pop cx
	loop l1
pop cx
ret
drawflagline endp

drawfullflag proc
;to draw whole filled flag
mov cx,40
mov dx,0
	l2:
		mov ax,270
		mov spf,ax
		call drawflagline
		inc dx
	loop l2
ret
drawfullflag endp

moonstar proc
;;;;;;;;;;;;;;;;;
;;;moon;;;;
 mov ah,0ch
 mov al,0fh
 mov cx,10
 mov dx,10;15
	l1:
		push cx
		mov cx,it
		inc it
		inc dx
		int 10h
		pop cx
	loop l1

 mov it,294
 mov cx,10
	l2:
		push cx
		mov cx,it
		dec it
		inc dx
		int 10h
		pop cx
	loop l2
;;;;;;;;;;;;;;;;
;for star printing
;;;;;;;;;;;;;;;;
mov cx,5
mov dx,18;5
	l3:
		push cx
		mov cx,s1
		inc dx
		int 10h
		pop cx
	loop l3

mov dx,21;8
mov cx,5
	l4:
		push cx
		mov cx,s2
		int 10h
		inc s2
		pop cx
	loop l4

mov dx,19;6
mov cx,5

	l5:
		push cx
		mov cx,s3
		int 10h
		add dx,1
		inc s3
		pop cx
	loop l5

mov dx,19;6
mov cx,5
	l6:
		push cx
		mov cx,s4
		int 10h
		dec s4
		inc dx
		pop cx
	loop l6
moonstar endp

;drawing first hurdle
drawfirsthurdle proc;drh1
mov cx,7
mov dx,178
;mov ax,hurdleposition
;mov h1y,ax
	l1:
		push cx
		mov cx,25
		mov hurdleposition,60
		l2:
			push cx
			mov ah,0ch
			mov al,03h
			mov cx,hurdleposition
			int 10h
			inc hurdleposition
			pop cx
		loop l2
		inc dx
		pop cx
	loop l1

mov cx,14
mov dx,185
	l3:
		push cx
		mov cx,25
		mov hurdleposition,60
		l4:
			push cx
			mov ah,0ch
			mov al,02h
			mov cx,hurdleposition
			int 10h
			inc hurdleposition
			pop cx
		loop l4
		inc dx
		pop cx
	loop l3
ret 
drawfirsthurdle endp

;drawing second hurdle

drawsecondhurdle proc;drh2
mov cx,7
mov dx,160
	l1:
		push cx
		mov cx,25
		mov hurdleposition,140
		l2:
			push cx
			mov ah,0ch
			mov al,03h
			mov cx,hurdleposition
			int 10h
			inc hurdleposition
			pop cx
		loop l2
		inc dx
		pop cx
	loop l1

mov cx,32
mov dx,167
	l3:
		push cx
		mov cx,25
		mov hurdleposition,140
		l4:
			push cx
			mov ah,0ch
			mov al,02h
			mov cx,hurdleposition
			int 10h
			inc hurdleposition
			pop cx
		loop l4
		inc dx
		pop cx
	loop l3
ret 
drawsecondhurdle endp


;drawing third hurdle
drawthirdhurdle proc;drh3
mov cx,7
mov dx,140
	l1:
		push cx
		mov cx,25
		mov hurdleposition,220
		l2:
			push cx
			mov ah,0ch
			mov al,03h
			mov cx,hurdleposition
			int 10h
			inc hurdleposition
			pop cx
		loop l2
		inc dx
		pop cx
	loop l1

mov cx,52
mov dx,147
	l3:
		push cx
		mov cx,25
		mov hurdleposition,220
		l4:
			push cx
			mov ah,0ch
			mov al,02h
			mov cx,hurdleposition
			int 10h
			inc hurdleposition
			pop cx
		loop l4
		inc dx
		pop cx
	loop l3
ret 
drawthirdhurdle endp


drawpixels proc;pix
mov ah,0ch
int 10h
ret
drawpixels endp


mario proc
mov si,offset mio
    mov cx,16
    ly1:
	 push cx
	 mov cx,16
      	 ly2:
        	push cx
        	mov cx,yaxis
        	mov dx,xaxis
        	mov al,[si]
        	call drawpixels
       		inc yaxis
		inc si
       	 	pop cx
	loop ly2
	pop cx
        sub yaxis,16
	inc xaxis
    loop ly1
sub xaxis,16
ret
mario endp


enemymove proc
;mov cx,50
;push cx
;enemyl1:

;push cx
mov cx,50
enemyl2:
push cx
mov ah,0
mov al,13h
int 10h
push cx
call enemy
pop cx
push cx
mov cx,00h
mov dx,0ffffh
mov ah,86h
int 15h
pop cx
inc eny
pop cx
loop enemyl2
;pop cx
push cx
mov cx,50
enemyl3:
;push cx
mov ah,0
mov al,13h
int 10h
push cx
call enemy
pop cx
push cx
mov cx,00h
mov dx,0ffffh
mov ah,86h
int 15h
pop cx
dec eny
;pop cx
loop enemyl3
;pop cx
;pop cx
;loop enemyl1
ret
enemymove endp


enemy proc


mov si,offset enem
    mov cx,16
    ly1:
	 push cx
	 mov cx,16
      	 ly2:
        	push cx
        	mov cx,eny
        	mov dx,enx
        	mov al,[si]
        	call drawpixels
			; push cx
			; call drawfullflagpole
			; call drawfullflag
			; call drawfirsthurdle
			; call drawsecondhurdle
			; call drawthirdhurdle
			; call mario
			; pop cx
       		inc eny
		inc si
       	 	pop cx
	loop ly2
	pop cx
        sub eny,16
	inc enx
    loop ly1
sub enx,16
    ret
enemy endp 




enemy1 proc


mov si,offset enem
    mov cx,16
    ly1:
	 push cx
	 mov cx,16
      	 ly2:
        	push cx
        	mov cx,eny1
        	mov dx,enx1
        	mov al,[si]
        	call drawpixels
       		inc eny1
		inc si
       	 	pop cx
	loop ly2
	pop cx
        sub eny1,16
	inc enx1
    loop ly1
sub enx1,16
    ret
enemy1 endp 





coin proc
mov si,offset coi
    mov cx,20
    ly1:
	 push cx
	 mov cx,20
      	 ly2:
        	push cx
        	mov cx,chy
        	mov dx,chx
        	mov al,[si]
        	call drawpixels
       		inc chy
		inc si
       	 	pop cx
	loop ly2
	pop cx
        sub chy,20
	inc chx
    loop ly1
sub chx,20
    ret
coin endp

heart proc
mov si,offset hrt
    mov cx,6
    ly1:
	 push cx
	 mov cx,8
      	 ly2:
        	push cx
        	mov cx,hy
        	mov dx,hx
        	mov al,[si]
        	call drawpixels
       		inc hy
		inc si
       	 	pop cx
	loop ly2
	pop cx
        sub hy,8
	inc hx
    loop ly1
sub hx,6
    ret
heart endp 

tmr proc
MOV CX, 00h
MOV DX, 0ffffh; CX:DX Number of microseconds to elapse
MOV AH, 86H
INT 15H 
ret
tmr endp
bowser proc
push cx
mov si,offset bwr
    mov cx,29
    ly1:
	 push cx
	 mov cx,19
      	 ly2:
        	push cx
        	mov cx,bhy
        	mov dx,bhx
        	mov al,[si]
        	call drawpixels
       		inc bhy
		inc si
       	 	pop cx
	loop ly2
	pop cx
        sub bhy,19
	inc bhx
    loop ly1
sub bhx,29
pop cx
    ret
bowser endp



obj proc
push cx
mov si,offset bwo
    mov cx,14
    ly1:
	 push cx
	 mov cx,19
      	 ly2:
        	push cx
        	mov cx,bwy
        	mov dx,bwx
        	mov al,[si]
        	call drawpixels
       		inc bwy
		inc si
       	 	pop cx
	loop ly2
	pop cx
        sub bwy,19
	inc bwx
    loop ly1
sub bwx,14
pop cx
    ret
obj endp

objs proc
call clrs
call drawfullflagpole
call drawfullflag
call drawfirsthurdle
call drawsecondhurdle
call drawthirdhurdle
call mario
call bowser
call enemy
call enemy1
call castle



;;;collision with coin
mov ax,chy
cmp yaxis,ax
jne ww
mov ax,chx
cmp xaxis,ax
jbe ww
mov varc,0

ww:
 

 
 
;;;collision with coin
 mov ax,hy
 cmp yaxis,ax
 jne ww1
 mov ax,hx
 cmp xaxis,ax
 jbe ww1
 mov varh,0
ww1:

 
 
 
cmp bhy,250
je incc2
inc bhy
jmp inccc2
incc2:
mov bhy,0
inccc2:
cmp eny,124
je incc
inc eny
jmp inccc
incc:
mov eny,90
inccc:
cmp eny1,204
je incc1
inc eny1
jmp inccc1
incc1:
mov eny1,166
inccc1:
cmp varc,1
jne qq
call coin
qq:

call tmr
ret
objs endp


clrs proc
; clear procedures clear the screen
mov ah,0
mov al,13h
int 10h
ret
clrs endp


frs proc
mov ah,0
mov al,13h
int 10h
mov ah,02
mov dh,tx
mov dl,ty
int 10h
mov dx,offset wc
mov ah,09h
int 21h
mov ty,24
mov tx,20
mov ah,02
mov dh,tx
mov dl,ty
int 10h
mov dx,offset wc1
mov ah,09h
int 21h
inc tx
mov ah,02
mov dh,tx
mov dl,ty
int 10h
mov dx,offset wc2
mov ah,09h
int 21h
inc tx
mov ah,02
mov dh,tx
mov dl,ty
int 10h
mov dx,offset wc3
mov ah,09h
int 21h
MOV CX, 00h
MOV DX, 0ffffh; CX:DX Number of microseconds to elapse
MOV AH, 86H
INT 15H 
ret
frs endp
lv1 proc
mov ah,0
mov al,13h
int 10h
mov ah,02
mov dh,tx1
mov dl,ty1
int 10h
mov dx,offset lvl1
mov ah,09h
int 21h
ret
lv1 endp
lv2 proc
mov ah,0
mov al,13h
int 10h
mov ah,02
mov dh,tx1
mov dl,ty1
int 10h
mov dx,offset lvl2
mov ah,09h
int 21h
ret
lv2 endp
lv3 proc
mov ah,0
mov al,13h
int 10h
mov ah,02
mov dh,tx1
mov dl,ty1
int 10h
mov dx,offset lvl3
mov ah,09h
int 21h
ret
lv3 endp

gvr proc
mov ah,0
mov al,13h
int 10h
mov ah,02
mov dh,tx1
mov dl,ty1
int 10h
mov dx,offset gvr1
mov ah,09h
int 21h
ret
gvr endp

level1 proc
call drawfullflagpole
call drawfullflag
call drawfirsthurdle
call drawsecondhurdle
call drawthirdhurdle
call mario
;;;collision with coin
mov ax,chy
cmp yaxis,ax
jne ww
mov ax,chx
cmp xaxis,ax
jae ww
mov varc,0
ww:
;;;collision with heart
mov ax,hy
cmp yaxis,ax
jne ww1
mov ax,hx
cmp xaxis,ax
jae ww1
mov varh,0
ww1:
cmp bhy,250
je incc2
inc bhy
jmp inccc2
incc2:
mov bhy,0
inccc2:
cmp eny,124
je incc
inc eny
jmp inccc
incc:
mov eny,90
inccc:
cmp eny1,204
je incc1
inc eny1
jmp inccc1
incc1:
mov eny1,166
inccc1:
cmp varc,1
jne qq
call coin
qq:
cmp varh,1
jne qq1
call heart
qq1:
call tmr
ret
level1 endp


level2 proc
call clrs
call drawfullflagpole
call drawfullflag
call drawfirsthurdle
call drawsecondhurdle
call drawthirdhurdle
call mario
call enemy
call enemy1
;;;collision with coin
mov ax,chy
cmp yaxis,ax
jne ww
mov ax,chx
cmp xaxis,ax
jae ww
mov varc,0
ww:
;;;collision with heart
mov ax,hy
cmp yaxis,ax
jne ww1
mov ax,hx
cmp xaxis,ax
jae ww1
mov varh,0
ww1:
cmp bhy,250
je incc2
inc bhy
jmp inccc2
incc2:
mov bhy,0
inccc2:
cmp eny,124
je incc
inc eny
jmp inccc
incc:
mov eny,90
inccc:
cmp eny1,204
je incc1
inc eny1
jmp inccc1
incc1:
mov eny1,166
inccc1:
cmp varc,1
jne qq
call coin
qq:
cmp varh,1
jne qq1
call heart
qq1:
call tmr
ret
level2 endp


finl proc
call clrs
cmp lvlr,1
jne tt
call level1
cmp yaxis,300
jne tt
mov lvlr,2
mov xaxis,183
mov yaxis,0
mov varc,1
mov varh,1

call clrs
call lv2
MOV CX, 000fh
MOV DX, 4240h; CX:DX Number of microseconds to elapse
MOV AH, 86H
INT 15H
MOV CX, 000fh
MOV DX, 4240h; CX:DX Number of microseconds to elapse
MOV AH, 86H
INT 15H
tt:
cmp lvlr,2
jne tt1
call level2
cmp yaxis,300
jne tt1
mov lvlr,3
mov xaxis,183
mov yaxis,0
mov varc,1
mov varh,1
call clrs
call lv3
MOV CX, 000fh
MOV DX, 4240h; CX:DX Number of microseconds to elapse
MOV AH, 86H
INT 15H
MOV CX, 000fh
MOV DX, 4240h; CX:DX Number of microseconds to elapse
MOV AH, 86H
INT 15H
tt1:
cmp lvlr,3
jne tt2
call objs
cmp yaxis,290
jne tt2
call gvr
MOV CX, 000fh
MOV DX, 4240h; CX:DX Number of microseconds to elapse
MOV AH, 86H
INT 15H
MOV CX, 000fh
MOV DX, 4240h; CX:DX Number of microseconds to elapse
MOV AH, 86H
INT 15H
mov ah,4ch
int 21h
tt2:

ret
finl endp

castle proc
mov si,offset cst
    mov cx,24
    ly1:
	 push cx
	 mov cx,16
      	 ly2:
        	push cx
        	mov cx,cchy
        	mov dx,cchx
        	mov al,[si]
        	call drawpixels
       		inc cchy
		inc si
       	 	pop cx
	loop ly2
	pop cx
        sub cchy,16
	inc cchx
    loop ly1
sub cchx,24
    ret
castle endp
gamecomplete proc
mov xaxis,183
mov yaxis,0

mov cx,290
l1:
push cx 
inc yaxis
MOV CX, 000fh
MOV DX, 4240h; CX:DX Number of microseconds to elapse
MOV AH, 86H
INT 15H

call mario
call castle
call gvr


pop cx
loop l1
mov ah,4ch
int 21h
ret
gamecomplete endp
end
