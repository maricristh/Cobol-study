       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG16.
       
       *> PROGRAMA PARA COMPARAR DOIS NUMEROS
       
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  IDADE PIC 9(2).
       01  NOME  PIC x(15).
       
       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
       
       DISPLAY "----- ESSE PROGRAMA VERIFICA QUAL NUMERO EH MAIOR -----".
       
       PERFORM INFORMA-NUMEROS.
       PERFORM TESTE-NUMEROS.
       
       DISPLAY " ----- FINAL DO PROGRAMA ----- ".
             
      PROGRAM-DONE.
      STOP RUN.
      
      INFORMA-NUMEROS.
           DISPLAY "INFORME O NOME".
           ACCEPT NOME.
           DISPLAY "INFORME A IDADE"
           ACCEPT IDADE.
           
      TESTE-NUMEROS.
      IF IDADE >= 18 AND NOME = "AMANDA"
       DISPLAY "PARABENS AMANDA VC PODE BEBER"
       ELSE 
           IF IDADE >= 18 AND NOME <> "AMANDA" 
               DISPLAY "VOCE NAO EH A AMANDA MAS PODE BEBER"
               ELSE  
                   IF IDADE < 18 
                   DISPLAY "VOCE NAO PODE BEBER".