Title pr0j370
;Integrantes: 
;Tiago Gontijo Merighi 22001043
;Felipe Yabiko Nogueira 22002265

.model small
.data
    msg db "Calculadora$"
    msg2 db "/*------$"
    msg3 db "Insira o digito da operacao que sera realizada:", 10, '$'
    msg4 db "/*------1 para adicao------*\", 10,'$'
    msg5 db "/*-----2 para subtracao-----*\",10, '$'
    msg6 db "/*---3 para multiplicacao---*\",10, '$'
    msg7 db "/*------4 para divisao------*\",10 ,'$'
    msg8 db "Insira o primeiro numero:$"
    msg9 db "Insira o segundo numero:$"
    msg10 db "Resultado:$"
    msg11 db "------$"
    msg12 db "------*\", 10,'$'
    msg13 db "Insira o primeiro fator:$" 
    msg14 db "Insira o segundo fator:$"
    msg15 db "Produto da multiplicacao:$"
    msg16 db "Insira o dividendo:$"
    msg17 db "Insira o divisor:$"
    msg18 db "Quociente da divisao:$"
    msg19 db "Feito por Felipe Yabiko e Tiago Merighi", 10, '$'
    msg20 db "Operacao invalida", 10, '$'

.code
    main proc 
    
    mov ax,@data 
    mov ds,ax

    Cabecalho:
        mov ah,02 
         mov dl, 10
        int 21H

        mov ah, 09H
        lea dx, msg2
         int 21H

        mov ah,09H
        lea dx, msg
        int 21H

        mov ah,09H
        lea dx, msg12
        int 21H

        mov ah,09H
        lea dx, msg19
        int 21H

        mov ah,09H
        lea dx, msg2
        int 21H

        mov ah,09H
        lea dx, msg11
        int 21H

        mov ah,09H
        lea dx, msg11
        int 21H

        mov ah,09H
        lea dx, msg12
        int 21H

    Operando:
        mov ah,09H
        lea dx, msg3
        int 21H

        mov ah,09H
        lea dx, msg4
        int 21H

        mov ah,09H
        lea dx, msg5
        int 21H

        mov ah,09H
        lea dx, msg6
        int 21H

        mov ah,09H
        lea dx, msg7
        int 21H

        mov ah,02h
        mov dl,10
        int 21H

        mov ah,08
        int 21H
        mov bh,al

        cmp bh,'1'
            jb FimImpo
        cmp bh,'4'
            ja FimImpo
        cmp bh,'1'
            je adicao
        cmp bh,'2'
            je subtracao1
        cmp bh,'3'
            je multiplicacao3
        cmp bh,'4'
            ;je divisao1

        FimImpo:
        mov ah,02
        mov dl,10
        int 21h

        mov ah,09H
        lea dx, msg20
        int 21h
        jmp FIM1
        
         FIM1:
           mov ah,02
           mov dl,10
           int 21H
           mov ah,02
           mov dl,10
           int 21H
           
           jmp FIM

           multiplicacao3:
           jmp multiplicacao2
           subtracao1:
           jmp subtracao2

    Conta:
        adicao: 
            
            jmp FIM

            
           subtracao2:
           jmp subtracao 
          multiplicacao2:
           jmp multiplicacao1
          divisao1:
           jmp divisao
         
        subtracao:
            
            jmp FIM
        multiplicacao1:
            jmp multiplicacao

        multiplicacao:
        
            
        jmp FIM

        divisao:
        jmp FIM

        



FIM:
 mov ah,4ch
 int 21h
 main endp
end main