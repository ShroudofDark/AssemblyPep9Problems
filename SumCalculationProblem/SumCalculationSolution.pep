BR main
n: .BLOCK 2 ;global variable #2d
m: .BLOCK 2 ;global variable #2d
;
;******** int Sum(int num, int amount)
data: .EQUATE 100 ;constant
sum: .EQUATE 6 ;return value #2d
num: .EQUATE 4 ;formal parameter #2d
amount: .EQUATE 2 ;formal parameter #2d
Sum: LDWA num,s ;num%4
ANDA 0x0003,i ;masks for remainders
STWA num,s
LDWA amount,s ;amount/4
ASRA ;/2
ASRA ;/2
STWA amount,s 
LDWA num,s ;addition parts now
ADDA amount,s
ADDA data,i ;want immediate val
STWA sum,s ;store to sum
RET
;******** main()
main: DECI n,d ;scanf(?%d%d?, &n, &m);
DECI m,d
STRO msg,d ;printf("sum = %d\n",
LDWA n,d ;move n into function
STWA -4,s
LDWA m,d ;move m into function
STWA -6,s
SUBSP 6,i ;push #amount,#num,#sum
CALL Sum ;Sum(n,m)
ADDSP 6,i ;pop #amount,#num,#sum
DECO -2,s ;output sum
LDBA '\n',i ;newline
STBA charOut,d
STOP
msg: .ASCII "sum = \x00"
.END
