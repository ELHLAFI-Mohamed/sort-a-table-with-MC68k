*-----------------------------------------------------------
* Title      :sort-a-table-with-MC68k
* Written by :ELHLAFI Mohamed
* Date       :08/12/2019
* Description:Look the Readme file !
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
 
           LEA         TAB(PC),A0
LOOP       MOVE        #7,D0
           MOVE        #0,D1            
LOOP1      MOVE.B      $01(A0,D0),D3           
           CMP.B      (A0,D0),D3
           BMI         Permut
           DBMI       D0,LOOP1
           TST          D1
           BEQ          FIN
           BNE          LOOP
Permut     MOVE.B       (A0,D0),D2       
           MOVE.B       $01(A0,D0),(A0,D0)
           MOVE.B        D2,$01(A0,D0)
           MOVE         #1,D1
           DBRA         D0,LOOP1
           TST          D1
           BEQ          FIN
           BNE          LOOP









       
            
FIN          TRAP       #0

TAB Dc.B  5,7,3,2,1,0,10,12,11 


    SIMHALT             ; halt simulator

    END    START        ; last line of source








*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
