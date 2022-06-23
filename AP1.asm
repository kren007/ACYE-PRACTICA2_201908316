CrearRep macro
    mov ah,3ch ;instrucción para crear el archivo.
    mov cx,0
    mov dx,offset reporte ;crea el archivo con el nombre archivo2.txt indicado indicado en la parte .data
    int 21h
    mov bx,ax
    mov ah,3eh ;cierra el archivo
    int 21h

    Mov ah, 3dh 
    mov al, 1h
    mov dx, offset reporte ; Abre el archivo de usarios
    int 21h

    mov bx, ax ; se va a ala ultima linea 
    mov ah, 42h
    mov al, 02
    mov cx, -1
    mov dx, -1  
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset llaI
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset abajo
    int 21h

    mov ah, 40h
    mov cx, 9
    mov dx, offset repp
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset abajo
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset llaI
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset abajo
    int 21h
    
    mov ah, 40h
    mov cx, 8
    mov dx, offset allu
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset puntos
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset abajo
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset llaI
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset abajo
    int 21h

    mov ah, 40h
    mov cx, 8
    mov dx, offset nom
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset puntos
    int 21h

    mov ah, 40h
    mov cx, 15
    mov dx, offset nomr
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset coma
    int 21h
    
    mov ah, 40h
    mov cx, 1
    mov dx, offset abajo
    int 21h

    mov ah, 40h
    mov cx, 8
    mov dx, offset carn
    int 21h

     mov ah, 40h
    mov cx, 1
    mov dx, offset puntos
    int 21h

    mov ah, 40h
    mov cx, 11
    mov dx, offset carnr
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset coma
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset abajo
    int 21h

    mov ah, 40h
    mov cx, 9
    mov dx, offset secc
    int 21h

     mov ah, 40h
    mov cx, 1
    mov dx, offset puntos
    int 21h

    mov ah, 40h
    mov cx, 3
    mov dx, offset seccr
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset coma
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset abajo
    int 21h

    mov ah, 40h
    mov cx, 7
    mov dx, offset cur
    int 21h

     mov ah, 40h
    mov cx, 1
    mov dx, offset puntos
    int 21h

    mov ah, 40h
    mov cx, 8
    mov dx, offset curs
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset abajo
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset llaD
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset coma
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset abajo
    int 21h

    mov ah, 40h
    mov cx, 7
    mov dx, offset fec
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset puntos
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset abajo
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset llaI
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset abajo
    int 21h

    mov ah, 40h
    mov cx, 5
    mov dx, offset Dia
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset puntos
    int 21h

    mov ah, 40h
    mov cx, 2
    mov dx, offset dAc
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset coma
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset abajo
    int 21h

    mov ah, 40h
    mov cx, 5
    mov dx, offset Mes
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset puntos
    int 21h

    mov ah, 40h
    mov cx, 2
    mov dx, offset  dMes
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset coma
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset abajo
    int 21h

    mov ah, 40h
    mov cx, 6
    mov dx, offset year
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset puntos
    int 21h

    mov ah, 40h
    mov cx, 4
    mov dx, offset dAy
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset abajo
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset llaD
    int 21h

    mov ah, 40h
    mov cx, 1
    mov dx, offset coma
    int 21h

    mov ah,3eh ;cierra el archivo
    int 21h

endm

MaMexd macro          
    mov si, contRe
    dec si
    dec si
    mov ax,Resultv[si]
    mov Menor, ax
    mov ax,Resultv[0]
    mov Mayor, ax 
endm

MedianaC macro
    local par, salida
    xor ax, ax
    xor bx, bx
    xor si, si
    mov ax, contRe    
    cwd
    mov bx,2
    div bx     ; cantidad de resultados
    mov contMedia, ax
    and ax, 0000000000000001
    cmp ax, 0
    je par
    Impar:
       dec contMedia
       mov si, contMedia
       mov ax, Resultv[si]
       mov Mediana, ax
       jmp salida1
    par: 
       mov si, contMedia
       mov ax, Resultv[si]
       dec contMedia
       dec contMedia
       mov si, contMedia
       add ax, Resultv[si]
       cwd   
       mov bx, 2
       div bx 
       mov Mediana, ax
    salida1:  
endm

MediaC macro
    local seguir,termina
    xor ax, ax
    xor bx, bx
    xor si, si
    mov auxOp, 0
    mov ax, contRe 
    mov bl, 0002
    div bl ; cantidad de resultados
    mov contMedia, ax
    seguir1:
        cmp si, contRe
        je termina
        mov bx, Resultv[si]
        add auxOp, bx
        inc si
        inc si
        jmp seguir1
    termina:
        mov ax, auxOp 
        cwd
        mov bx, contMedia 
        div bx
        mov Media, ax
         
endm

Ordenar macro 
    xor si, si
    copiar:
       cmp si, contRe
       je yalist
       mov ax, Resultv[si] 
       mov Resultv2[si], ax
       inc si
       inc si
       jmp copiar
    yalist:
      
    mov ax, contRe
    mov contMedia, ax
    dec contMedia 
    dec contMedia
    mov cx, contMedia; uno menos
    bucle1:  
    mov ck, cx
    mov bx, contMedia
    mov cx, contRe ; numero total de resultados 
    bucle2:
    mov si, cx
    mov di, si
    dec di  
    dec di
    mov ax, Resultv[di]
    mov di, bx
    dec di
    dec di
    cmp ax,Resultv[di]
    jnge seguir ;Si v[8] < v[7] no hacer nada, sino:
    mov di, bx
    dec di
    dec di
    mov dx, Resultv[di] ;Copiar v[7] en dh
    mov di, si
    dec di
    dec di
    mov ax, Resultv[di] ;Copiar v[8] en dl
    mov di, bx
    dec di 
    dec di
    mov Resultv[di], ax ;Copiar dl en v[7]
    mov di, si
    dec di
    dec di
    mov Resultv[di], dx ;Copiar dh en v[8]
    seguir:
    dec cx
    dec bx
    dec bx
    loop bucle2
    mov cx, ck 
    dec cx
    loop bucle1
    
endm

Comanaliza macro
endm

BuscaId macro
    mov contId, 0 
    mov contIdAux, 0 
    mov contRes,0 
    mov si, cont
    mov contIdAux, si
    compara:
        mov di, contIdAux
        mov si, contId
        mov al, Idv[si]
        mov bl, Operav[di]
        cmp al, bl; compara los caracteres
        je casi
        jmp noes
    casi:
        cmp al, 2ch
        je sies
        inc contIdAux
        inc contId
        jmp compara
    noes:
        mov si, contId
        mov al, Idv[si]
        cmp al, 2ch
        je segui
        inc contId
        jmp noes
    segui:
        inc contRes 
        inc contRes
        inc contId ; pasa la coma
        mov si, cont
        mov contIdAux, si 
        jmp compara
    sies:  
        mov dx, cont     
        mov si, contIdAux
        sub si,  dx
        add cont, si
        mov si, contRes
        mov ax, Resultv[si]
endm

Calcular macro
   local Divv, Mull, Subb, Addd, salida1
   xor ax, ax
   mov al, operando
   cmp al , 2
   je Mull
   cmp al , 3
   je Subb
   cmp al , 4
   je Addd
    Divv:
        xor ax, ax
        xor bx, bx
        xor si, si
        mov ax, Op1
        cwd
        mov bx, Op2
        idiv bx  ; ax/div = ax cociente
        mov si, contRe
        mov Resultv[si], ax ; se va almacenando los resultados en el vector
        inc contRe 
        inc contRe
        jmp salida1
    Mull:
        xor ax, ax
        xor bx, bx
        xor si, si
        mov ax, Op1 
        cwd
        mov bx, Op2
        imul bx  ; ax/div = ax cociente
        mov si, contRe
        mov Resultv[si], ax ; se va almacenando los resultados en el vector
        inc contRe 
        inc contRe
        jmp salida1
    Subb:
        xor ax, ax
        xor bx, bx
        xor si, si
        mov ax, Op1
        mov bx, Op2
        sub ax, bx  ; ax/div = ax cociente
        mov si, contRe
        mov Resultv[si], ax ; se va almacenando los resultados en el vector
        inc contRe 
        inc contRe
        jmp salida1
    Addd:
        xor ax, ax
        xor bx, bx
        xor si, si
        mov ax, Op1
        mov bx, Op2
        add ax, bx  ; ax/div = ax cociente
        mov si, contRe
        mov Resultv[si], ax ; se va almacenando los resultados en el vector
        inc contRe  
        inc contRe
        jmp salida1
    salida1:

endm

Convertidor macro
    local sal, corrido, finOpe, O1
    push bx
	push si
	push cx
    xor bx, bx 
	xor si, si
	xor cx, cx
	mov bx, 1
	mov auxOp, 0
    corrido:
        mov si, cont
        xor ax, ax
	    mov al, Operav[si] ; numero[...,'-', '51','48'] -> al = '51'
        cmp al , 2ch ; si es coma , ya termino con el operador
        je finOpe
        cmp al, 40h ; es una letra -> id
        ja compId
        cmp al , 2dh ; si es coma , ya termino con el operador
        je negatio
	    sub al, 48  ; al = al - 48  se convierte en decimal
        xor cx, cx
        mov cl, al
        mov ax, auxOp
	    Mul bx ; lo multiplica por unidades, decenas, centenas ...
        mov auxOp, ax
        add auxOp, cx ; Regresa el valor  pero ya convertido
        mov bx, 10 ; se le regresa el valor de al a bx 
        inc cont 
        xor ax, ax
        jmp corrido
    compId: 
        BuscaId
        jmp positivo
    negatio:
        mov negativo, 1
        inc cont
        jmp corrido
    finOpe:
        xor ax, ax
        mov ax, auxOp ; ax tiene el numero 
        
        xor dx, dx
        mov dl, negativo 
        cmp dl, 1 ; verifica si es negativo 
        je res 
        jmp positivo 
    res:
        neg ax
        mov negativo, 0
    positivo: 
        xor bx, bx
        mov bx, contPo
        cmp bx, 1
        je O1
        mov Op2, ax
        jmp sal
    O1: 
        mov Op1, ax
    sal: 
        inc cont ; para pasar la coma
	pop cx
	pop si
	pop bx
endm

Signo macro
  local Divv, Mull, Subb, Addd, salida
   xor ax, ax
   xor si, si
   mov si, cont
   mov  al, Operav [si] 
   cmp al , '*'
   je Mull
   cmp al , '-'
   je Subb
   cmp al , '+'
   je Addd
    Divv:
      mov operando, 1
      jmp salida
    Mull:
      mov operando, 2
      jmp salida
    Subb:
      mov operando, 3
      jmp salida
    Addd:
      mov operando, 4
    salida:
       inc cont
endm

Calculando macro
    local i1, RevOp
    mov cont, 0
    mov contPo, 0 ;numero de comas
    mov operando, 0
    i1:
       xor si, si
       xor ax, ax
       mov si, cont
       mov al, Operav[si]
       cmp al, 24h ; $ ya termino
       je fin
       cmp contPo, 0 ; es el operador
       je RevOp
       cmp contPo, 1 ; es el operador
       je Convertir
       cmp contPo, 2 ; es el operador
       je Convertir
       ; si no es mayor entonces vuelve a empezar
       Calcular 
       mov contPo, 0 
       jmp i1
    RevOp:
       Signo
       inc contPo
       inc cont
       jmp i1
    Convertir:
       Convertidor 
       inc contPo
       jmp i1
    fin:
       Calcular
      
endm

Analiz macro
    local e1,Padre, HijosP, Hijos, OperaP, RevOp, Divv, Mull, Subb, Addd, Opera, Dores, rehijo, dato, dcoma, dcomi
   mov ah, 3dh ; peticion para abrir archivo
    mov al, 0h
    mov dx, offset nomArchivo ; usuarios tiene el nombre del archivo
    int 21h
    mov handle, ax 
    mov bx, handle
    mov ah, 42h ;Mueve el apuntador de lectura/escritura al archivo
    mov al, 00h
    mov cx, 0
    mov dx, 0
    int 21h
    e1: ; aqui pasa los caracteres hasta encontrar las comillas del padre
        mov si, 00h    ; pone el puntero en el inicio del archivo
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar 
        mov cx, 1               
        int 21h ; lee caracter por caracter el contenido
        cmp auxcontenidoar[si], 0ah ; caracter de nueeva linea
        je e1
        cmp auxcontenidoar[si], 22h ; si es son comillas es el padre
        je Padre
        jmp e1
    Padre: ; aqui pasa los caracteres guardandolos hasta encontrar la comilla final
        mov si, 00h    ; pone el puntero en el inicio del archivo
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar 
        mov cx, 1               
        int 21h ; lee caracter por caracter el contenido
        cmp auxcontenidoar[si], 22h ;es porque termino
        je HijosP
        xor bx, bx
        mov cl, auxcontenidoar[si] ; guarda el caracter 
        xor si, si
        mov si, contPa
        mov Padrev[si], cl ; para pasarlo al vector
        inc contPa
        jmp Padre
    HijosP: ; aqui pasa los caracteres hasta encontrar las comillas de los hijos operacion
        mov si, 00h    ; pone el puntero en el inicio del archivo
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar 
        mov cx, 1               
        int 21h ; lee caracter por caracter el contenido
        cmp auxcontenidoar[si], 0ah ; caracter de nueeva linea
        je HijosP  
        cmp auxcontenidoar[si], 09h ; caracter salto de linea, 
        je HijosP
        cmp auxcontenidoar[si], 22h ; si es son comillas es el padre
        je Hijos
        cmp auxcontenidoar[si], 5dh ; si es ] ya termino
        je salida
        jmp HijosP
    Hijos: ; aqui pasa los caracteres guardandolos hasta encontrar las comillas de los hijos operacion
        mov si, 00h    ; pone el puntero en el inicio del archivo
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar 
        mov cx, 1               
        int 21h ; lee caracter por caracter el contenido
        cmp auxcontenidoar[si], 22h ;es porque termino
        je OperaP
        xor bx, bx
        mov cl, auxcontenidoar[si] ; guarda el caracter 
        xor si, si
        mov si, contId
        mov Idv[si], cl ; para pasarlo al vector
        inc contId  
        mov si, contId
        mov Idv[si], 2ch ; guarda la coma para separar los id
        jmp Hijos
    OperaP:  ; aqui pasa los caracteres hasta encontrar las comillas de los hijos  de los hijos operacion
        mov si, 00h    ; pone el puntero en el inicio del archivo
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar 
        mov cx, 1               
        int 21h ; lee caracter por caracter el contenido
        cmp auxcontenidoar[si], 0ah ; caracter de nueeva linea
        je OperaP
        cmp auxcontenidoar[si], 09h ; caracter salto de linea, 
        je OperaP
        cmp auxcontenidoar[si], 22h ; si es son comillas es el padre
        je RevOp
        jmp OperaP
    RevOp: ; aqui pasa los caracteres guardandolos hasta encontrar las comillas de los hijos de los hijos operacion
        mov si, 00h    ; pone el puntero en el inicio del archivo
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar 
        mov cx, 1               
        int 21h ; lee caracter por caracter el contenido
        cmp auxcontenidoar[si], 44h ; si es d es division
        je Divv
        cmp auxcontenidoar[si], 64h ; si es D es division
        je Divv
        cmp auxcontenidoar[si], 6dh ; si es m es division
        je Mull
        cmp auxcontenidoar[si], 4dh ; si es M es division
        je Mull
        cmp auxcontenidoar[si], 73h ; si es s es division
        je Subb
        cmp auxcontenidoar[si], 53h ; si es S es division
        je Subb
        cmp auxcontenidoar[si], 61h ; si es a es division
        je Addd
        cmp auxcontenidoar[si], 41h ; si es A es division
        je Addd
        xor bx, bx
        mov cl, auxcontenidoar[si] ; guarda el caracter  
        xor si, si
        mov si, contOp
        mov Operav[si], cl ; para pasarlo al vector
        inc contOp 
        mov si, contOp
        mov Operav[si], 2ch ; para pasarlo al vector
        jmp Opera
    Divv: 
        mov si, contOp
        mov Operav[si], "/" ; para pasarlo al vector
        inc contOp 
        mov si, contOp
        mov Operav[si], 2ch ; para pasarlo al vector
        jmp Opera
    Mull:    
        mov si, contOp
        mov Operav[si], "*" ; para pasarlo al vector
        inc contOp  
        mov si, contOp
        mov Operav[si], 2ch ; para pasarlo al vector
        jmp Opera
    Subb: 
        mov si, contOp
        mov Operav[si], "-" ; para pasarlo al vector
        inc contOp   
        mov si, contOp
        mov Operav[si], 2ch ; para pasarlo al vector
        jmp Opera
    Addd: 
        mov si, contOp
        mov Operav[si], "+" ; para pasarlo al vector
        inc contOp 
        mov si, contOp
        mov Operav[si], 2ch ; para pasarlo al vector
    Opera:
        mov si, 00h    ; pone el puntero en el inicio del archivo
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar 
        mov cx, 1               
        int 21h ; lee caracter por caracter el contenido
        cmp auxcontenidoar[si], 0ah ; caracter de nueeva linea
        je Opera   
        cmp auxcontenidoar[si], 09h ; caracter salto de linea, 
        je Opera
        cmp auxcontenidoar[si], 0dh ; caracter salto de linea, 
        je Opera
        cmp auxcontenidoar[si], 7bh ; si es son {
        je Dores
        jmp Opera
    Dores:
        mov si, 00h    ; pone el puntero en el inicio del archivo
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar 
        mov cx, 1               
        int 21h ; lee caracter por caracter el contenido
        cmp auxcontenidoar[si], 0ah ; caracter de nueeva linea
        je Dores 
        cmp auxcontenidoar[si], 0dh ; caracter salto de linea, 
        je Dores 
        cmp auxcontenidoar[si], 09h ; caracter salto de linea, 
        je Dores
        cmp auxcontenidoar[si], 3ah ;es porque es numero  :
        je dato
        cmp auxcontenidoar[si], 7dh ; caracter de }
        je rehijo
        jmp Dores 
    rehijo:
          inc contId 
          inc contOp
          jmp HijosP
    dato:
        inc contOp
        mov si, 00h    ; pone el puntero en el inicio del archivo
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar 
        mov cx, 1               
        int 21h ; lee caracter por caracter el contenido
        cmp auxcontenidoar[si], 0ah ; caracter de nueeva linea
        je dcoma
        cmp auxcontenidoar[si], 0dh ; caracter salto de linea, 
        je dcoma     
        cmp auxcontenidoar[si], 09h ; caracter salto de linea, 
        je dato
        cmp auxcontenidoar[si], 2ch ; caracter salto de linea, 
        je dcoma   
        cmp auxcontenidoar[si], 22h ; caracter ", 
        je dcomi
        xor bx, bx
        mov cl, auxcontenidoar[si] ; guarda el caracter  
        xor si, si
        mov si, contOp
        mov Operav[si], cl ; para pasarlo al vector
        jmp dato
    dcomi: 
        dec contOp
        jmp dato
    dcoma:  
        mov si, contOp
        mov Operav[si], 2ch ; para pasarlo al vector  
        jmp Dores
    salida:    
endm

LeerArchivo macro
    local e1, e2
    e1:
        xor ax, ax
        mov ah, 01h
        int 21h
        cmp al, 0dh
        je e2
        cmp al, 1bh
        je e2 ; aqui estaba Iniciar
        mov nomArchivo[si], al
        inc si 
        jmp e1
    e2:
endm

LeerComan macro
    local e1, e2
    mov contCom, 0
    e1:
        xor ax, ax
        mov ah, 01h
        int 21h
        cmp al, 0dh
        je e2
        cmp al, 1bh
        je e2 ; aqui estaba Iniciar
        mov Comando[si], al
        inc si 
        inc contCom
        jmp e1
    e2:
endm

print macro buffer ;imprime cadena
	mov ah,09h ;Numero de funcion para imprimir buffer en pantalla
	mov dx,offset buffer ;equivalente a que lea dx,buffer, inicializa en dx la posicion donde comienza la cadena
	int 21h
endm

close macro ;cierra el programa
	mov ah, 4ch ;Numero de funcion que finaliza el programa
	xor al,al
	int 21h
endm

getChar macro  ;obtiene el caracter
	mov ah,01h ; se guarda en al en codigo hexadecimal
	int 21h
endm


.model small
;----------------SEGMENTO DE PILA---------------------
.stack 500h
;----------------SEGMENTO DE DATO---------------------
.data
    ; menus y encabezados
    enc                db 0ah, 0dh, 'UNIVERSIDAD DE SAN CARLOS DE GUATEMALA',0ah, 0dh,'FACULTAD DE INGENIERIA',0ah, 0dh,'ESCUELA DE CIENCIAS Y SISTEMAS' , 0ah, 0dh, 'ARQUITECTURA DE COMPUTADORES Y ENSAMBLADORES 1 ', 0ah, 0dh, 'KAREN LISBETH MORALES MARROQUIN 201908316' , 0ah, 0dh, '$'
    opcion             db 0ah, 0dh,'=== MENU ===', 0ah, 0dh, '1. CARGAR ARCHIVO', 0ah, 0dh, '2. CONSOLA', 0ah, 0dh, '3. SALIR', 0ah, 0dh, '$'  
    msgCarga           db 0ah, 0dh,' ==== CARGAR ARCHIVO ====', 0ah, 0dh, '$' 
    msgConsola         db 0ah, 0dh,' ===== CONSOLA =====', 0ah, 0dh, '$'   
    msgRes             db 0ah, 0dh,' ARCHIVO LEIDO CON EXITO', 0ah, 0dh, '$'
    msgComan           db 0ah, 0dh, '>', '$'
    
    auxcontenidoar     db   1 dup('$') ; Guarda el caracter de archivos
    nomArchivo         db  20 dup(0)   ; Vector de usuario ingresado
    Comando            db  20 dup('$')   ; Vector de usuario ingresado
    Padrev             db  20 dup('$') ; Vector de padre 
    Idv                db  100 dup('$'); Vector de id 
    Operav             db  500 dup('$'); Vector de operacion
    Resultv            dw  20 dup(0) ; Vector de padre  
    Resultv2           dw  20 dup(0) ; Vector de padre

    contPa             dw 0 ; contadora del padre
    contId             dw 0 ; contadora de los id
    contIdAux          dw 0 ; contadora de los id
    contRes            dw 0
    contOp             dw 0 ; contadora de los operaciones
    contRe             dw 0 ; contadora de los operaciones
    contPo             dw 0 ; contadora de los operaciones
    cont               dw 0 
    contCom            dw 0 
    contMedia          dw 0
    Op1                dw 0 ; operador 1
    Op2                dw 0 ; operador 2
    auxOp              dw 0 
    Media              dw 0
    Mediana            dw 0
    Menor              dw 0
    Mayor              dw 0
    ck                 dw 0
    operando           db 0
    negativo           db 0
    repp               db '"Reporte"','$'  
    allu               db '"Alumno"','$' 
    nom                db '"Nombre"','$' 
    nomr               db '"Karen Morales"','$' 
    carn               db '"Carnet"','$'
    carnr              db '"201908316"','$'
    secc               db '"Seccion"','$' 
    seccr              db '"A"','$'  
    cur                db '"Curso"','$'
    curs               db '"ARQUI1"','$' 
    fec                db '"Fecha"','$' 
    Dia                db '"Dia"','$' 
    dAc                db '23','$' 
    Mes                db '"Mes"','$' 
    dMes               db '06','$'
    year               db '"Year"','$'
    dAy                db '2022','$' 
    abajo              db 0dh ,'$'
    puntos             db ':','$'
    coma               db ',','$'
    llaI               db '{' ,'$'
    llaD               db '}' ,'$'
    corI               db '[' ,'$'
    corD               db ']' ,'$'  

    reporte            db 'hola.jso',0
 
    salto    db 0ah,0dh, '$' ,'$' 
    handle          dw  ?
   
.code

main proc
    mov ax, @data
	mov ds,ax
	Enca:	
        print salto
        print enc  ; IMPRIME EL ENCABEZADO		
        print opcion  ; IMPRIME EL MENU	
        getChar ; lee un caracter del teclado y lo guarda en al
	    cmp al, 49 ; if (al == 49){va a brincar a la etiqueta Cargar}else{va a continuar en el encabezado}
        je Cargar ; salta al menu
        cmp al, 50 ; if (al == 50){va a brincar a la etiqueta Consola }else{va a continuar en el encabezado}
        je Consola ; salta al menu
        cmp al, 51 ; if (al == 51){va a brincar a la etiqueta Salir }else{va a continuar en el encabezado}
        je Salir ; salta al menu
        jmp Enca ; sino sigue en el encabezado
    Cargar:
        print msgCarga
        LeerArchivo
        Analiz
        Calculando    
        Ordenar 
        MedianaC
        MediaC
        MaMexd
        CrearRep
        Print salto 
        print msgRes
        print salto
        jmp Enca
    Consola:
        print msgConsola
        print msgComan
        LeerComan
        Comanaliza 
        
    Salir:
       close
main endp
end main
