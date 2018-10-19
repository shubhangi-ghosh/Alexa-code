DATA SEGMENT
    ARR DB 1,2,3,4,5,6,7,8
    NUM DB 6
DATA ENDS

CODE SEGMENT
    START:
          MOV AX,DATA
          MOV DS,AX
          MOV SI,0
          MOV CX,8
    NEXT:
          MOV AL,ARR[SI]
          INC SI
          CMP AL,NUM
          LOOPNZ NEXT
          
CODE ENDS 
END START