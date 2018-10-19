DATA SEGMENT
     P DW 0603H
     UP DD ?
DATA ENDS

CODE SEGMENT
    START:
          MOV AX,DATA
          MOV DS,AX
          MOV AX,0
          MOV DX,0
          MOV AL,BYTE PTR P
          MOV DL,BYTE PTR P+1
          SHL AX,4
          SHR AL,4
          SHL DX,4
          SHR DL,4
          
          MOV UP,AX
          MOV UP+2,DX
          
CODE ENDS
END START