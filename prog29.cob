       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG29.
   *>  USANDO O FILLER PARA FORMATAR OS DADOS. ADICIONA VALOR ENTRE OS 
   *>  CAMPOS. ELE CONSIDERA A QTDE QUE VC ATRIBUI NO PIC.

      ENVIRONMENT DIVISION.
      DATA DIVISION.
      WORKING-STORAGE SECTION.
   *> COMO CONVENCAO USA SE DE 5 EM 5 OU 10 EM 10
      01 FUNCIONARIO.
           05  CODIGO   PIC 9(2).
           05  FILLER PIC X(3) VALUE "---".
           05  NOME PIC X(10).
           05  FILLER PIC X(4) VALUE "===".
           05  ENDERECO PIC X(30).
           05  SALARIO PIC 9(4)V9(2).

      PROCEDURE DIVISION.
       PROGRAM-BEGIN.

           MOVE 33 TO CODIGO.
           MOVE " JOSE" TO NOME.
           MOVE "Rua das Carmelias n 89" TO ENDERECO.
           MOVE 2690.00 TO SALARIO.

       DISPLAY FUNCIONARIO.

       PROGRAM-DONE.
       STOP RUN.