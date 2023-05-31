BR main
;
;****************int minNum(int num1,int num2)
rtVl: .EQUATE 6 ;ret Value #2d
num1: .EQUATE 4 ;formal parameter #2d
num2: .EQUATE 2 ;formal parameter #2d
;Invisible RET amount
minNum: LDWA num1,s ;compare num1 to num2
CPWA num2,s ;comparing
BRGE Big2 ;branch if num2 smaller
STWA rtVl,s ;store num1 to ret
RET
Big2: LDWA num2,s ;store num2 to ret 
STWA rtVl,s 
RET
;****************main()
n: .EQUATE 2 ;local variable #2d
m: .EQUATE 0 ;local variable #2d
main: SUBSP 4,i ;push #n,#m
DECI n,s ;get 2 number inputs
DECI m,s
LDWA n,s ;move n into function
STWA -4,s ;RET takes 2 bytes, account for that
LDWA m,s ;move m into function
STWA -6,s 
SUBSP 6,i ;push #num1,#num2,#rtVl
CALL minNum ;minNum(n,m)
ADDSP 6,i ;pop #num1,#num2,#rtVl
DECO -2,s ;ouput the returned value
STOP
.END
