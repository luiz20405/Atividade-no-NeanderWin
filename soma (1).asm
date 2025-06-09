;---------------------------------------------------
; Programa:Soma dois n�meros
; Autor:Alexsandro Henrique
; Data:06-02-2017
;---------------------------------------------------
; Programa para somar dois n�meros
INICIO:  LDA NUM1      ; Carrega o valor de NUM1 no acumulador
         ADD NUM2      ; Soma o valor de NUM2 ao acumulador
         STA RESULTADO ; Armazena o resultado em RESULTADO
         HLT           ; Termina a execu��o

NUM1:    DB 5          ; Primeiro n�mero (5)
NUM2:    DB 3          ; Segundo n�mero (3)
RESULTADO: DB 0        ; Local para armazenar o resultado


