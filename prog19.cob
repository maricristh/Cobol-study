       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG19.
       
       *> THIS PROGRAM USES GO TO UTILITY ON COBOL
       
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 REPLY PIC X(15).
       
       PROCEDURE DIVISION.
           PROGRAM-BEGIN.
               DISPLAY "----- START OF THE PROGRAM TO USE GO TO ------ ".
               PERFORM CONTINUE-EXECUTION.
             
               IF REPLY = "N"
               GO TO SHOW-MESSAGE.
           
               DISPLAY "THIS IS THE SECOND PART OF THE PROGRAM... ".
               PERFORM LOGIC-PROGRAM.
            
            STOP RUN.
           PROGRAM-DONE.
     
       
       CONTINE-EXECUTION.
       DISPLAY "DESEJA CONTINUAR EXECUCAO? (S/N)".
       ACCEPT REPLY.
       IF REPLY = "n"
           MOVE "N" TO REPLY.
       
       LOGIC-PROGRAM.
           DISPLAY "THIS PROGRAM ONLY SHOWS UP A MSG...".
       
       SHOW-MESSAGE.
           DISPLAY "GOOD MORNING".
           
       SHOW-PROF.
           DISPLAY "PROGRAMMER".
       
       
       