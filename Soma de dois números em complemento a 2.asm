;---------------------------------------------------
; Programa: Soma dois números em complemento a 2
; Autor: Luiz Augusto Bezerra
; Data: 09/06/2025
;---------------------------------------------------

x        EQU  128            ;local da memória onde será guardada a variável
y        EQU  129            ;local da memória onde será guardada a variável
z        EQU  130            ;local da memória onde será guardada a variável
         ORG  0
LOOP1:
         IN   01             ; Espera pelo teclado
         ADD  ESPERA         ; Soma o valor com 0
         JZ   LOOP1          ; loop aguardando um valor de entrada
         IN   00             ; Lê o primeiro valor
         STA  X              ; Armazena o conteúdo na memória
         ADD  1              ; acrescenta 1 transformando o número em complemento a 2
         OUT  00             ; Mostra o valor lido no visor
LOOP2:
         IN   01             ; Espera pelo teclado
         ADD  ESPERA         ; Soma com o valor 0
         JZ   LOOP2          ; loop aguardando um valor de entrada
         IN   00             ; Lê o segundo valor
         NOT                 ; Inverte o valor de entrada para um número negativo
         STA  Y              ; Armazena o conteúdo na memória
         ADD  1              ; acrescenta 1 tranformando o número em complemento a 2
         OUT  00             ; Mostra o valor lido no visor
         ADD  X              ; Soma com o primeiro valor
         ADD  1              ; soma 1 ao resultado
         STA  Z              ; Armazena o resultado na memória


LOOP3: 
         IN   01             ; Espera pelo teclado
         ADD  ESPERA         ; Soma o valor com 0 
         JZ   LOOP3          ; loop aguardando a teclado entra para mostrar o valor
         LDA  Z              ; Lê o resultado na memória
         OUT  00             ; Exibe no visor
         HLT                 ; Pára
         END  LOOP1          ; Termina o código

ESPERA:  DB   0