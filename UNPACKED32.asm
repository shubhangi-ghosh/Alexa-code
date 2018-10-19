DATA SEGMENT
    UP DD 01020304H
    P DW ?
DATA ENDS

CODE SEGMENT
    START:
          MOV AX,DATA
          MOV DS,AX
          MOV AX,UP
          MOV DX,UP+2
          SHL AL,4
          SHR AX,4
          SHL DL,4
          SHR DX,4
          MOV BYTE PTR P,AL
          MOV BYTE PTR P+1,DL
CODE ENDS
END START
