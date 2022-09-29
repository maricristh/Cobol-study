       IDENTIFICATION DIVISION.
       PROGRAM-ID.PROG37.
      *> PROGRAMA PARA INSERIR DADOS EM ARQUIVO INDEXADO III
      *> WRITE COM INVALID KEY E DADOS EM TABS DIFERENTES O/
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *> SELFUNCIONARIO TAB   
           COPY "SELFUNCIONARIO.COB".
           DATA DIVISION.
           FILE SECTION.
      *> FDFUNCIONARIO TAB  
           COPY "FDFUNCIONARIO.COB".

       WORKING-STORAGE SECTION.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           OPEN I-O ARQUIVO-FUNCIONARIO.
           PERFORM LER-E-ESCREVER-REGISTRO.
           
           CLOSE ARQUIVO-FUNCIONARIO.
       PROGRAM-DONE.
        STOP RUN.

       LER-E-ESCREVER-REGISTRO.
           MOVE SPACE TO FUNCIONARIO-REGISTRO.
           MOVE ZEROS TO FUNCIONARIO-CODIGO.
           DISPLAY "INFORME O CODIGO DO FUNCIONARIO (1-999): ".
           ACCEPT FUNCIONARIO-CODIGO.
           DISPLAY "INFORME O NOME DO FUNCIONARIO: ".
           ACCEPT FUNCIONARIO-NOME.
           DISPLAY "INFORME O ENDERECO: ".
           ACCEPT FUNCIONARIO-ENDERECO.
           DISPLAY "INFORME O TELEFONE: ".
           ACCEPT FUNCIONARIO-TELEFONE.
           DISPLAY "INFORME O EMAIL: ".
           ACCEPT FUNCIONARIO-EMAIL.
           DISPLAY "INFORME O HOBBY DO FUNCIONARIO: ".
           ACCEPT FUNCIONARIO-HOBBY.

      
       WRITE FUNCIONARIO-REGISTRO
         INVALID KEY
         DISPLAY "ERROR: " FUNCIONARIO-CODIGO " ALREADY USED".