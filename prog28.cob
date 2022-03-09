       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA28.
   *>  USANDO O RECORD

      ENVIRONMENT DIVISION.
      DATA DIVISION.
      WORKING-STORAGE SECTION.
   *> COMO CONVENCAO USA SE DE 5 EM 5 OU 10 EM 10
      01 FUNCIONARIO.
           05  CODIGO   PIC 9(2).
           05  NOME     PIC X(10).
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