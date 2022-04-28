[top]
components : particulas

[particulas]
type : cell
dim : (9,9)
delay : transport
defaultDelayTime  : 100
border : wrapped 
neighbors : particulas(-1,-1) particulas(-1,0) particulas(-1,1) 
neighbors : particulas(0,-1)  particulas(0,0)  particulas(0,1)
neighbors : particulas(1,-1)  particulas(1,0)  particulas(1,1)
initialvalue : 0
initialrow : 1     2.76 0.00 0.00 0.00 4.12 0.00 0.00 0.00 1.00
initialrow : 4     1.44 0.00 0.00 0.00 1.22 0.00 0.00 0.00 3.89
initialrow : 6     0.00 0.00 2.99 0.00 0.00 1.21 0.00 0.00 0.00
localtransition : particulas-rule

[particulas-rule]
rule : { 2 + ( fractional((1,0)) + fractional((1,1)) ) / 2 }     100 { trunc((1,0)) = 1 and trunc((1,1)) = 3 }
rule : { 4 + ( fractional((-1,-1)) + fractional((-1,0)) ) / 2 }  100 { trunc((-1,-1)) = 1 and trunc((-1,0)) = 3 }
rule : { 2 + ( fractional((1,-1)) + fractional((1,1)) ) / 2 }    100 { trunc((1,-1)) = 1 and trunc((1,1)) = 3 }
rule : { 4 + ( fractional((-1,-1)) + fractional((-1,1)) ) / 2 }  100 { trunc((-1,-1)) = 1 and trunc((-1,1)) = 3 }
rule : { 1 + ( fractional((-1,-1)) + fractional((0,-1)) ) / 2 }  100 { trunc((0,-1)) = 2 and trunc((-1,-1)) = 4 }
rule : { 3 + ( fractional((1,1)) + fractional((0,1)) ) / 2 }     100 { trunc((0,1)) = 4 and trunc((1,1)) = 2 }
rule : { 1 + ( fractional((-1,-1)) + fractional((1,-1)) ) / 2 }  100 { trunc((-1,-1)) = 4 and trunc((-1,1)) = 2 }
rule : { 3 + ( fractional((-1,1)) + fractional((1,1)) ) / 2 }    100 { trunc((-1,1)) = 4 and trunc((1,1)) = 2 }
rule : { if( fractional((0,1)) > fractional((1,0)), 3, 2) + ( fractional((0,1)) + fractional((1,0)) ) / 2 }     100 { trunc((0,1)) = 3 and trunc((1,0)) = 2 }
rule : { if( fractional((0,1)) > fractional((-1,0)), 3, 4) + ( fractional((0,1)) + fractional((-1,0)) ) / 2 }   100 { trunc((0,1)) = 3 and trunc((-1,0)) = 4 }
rule : { if( fractional((0,-1)) > fractional((1,0)), 1, 2) + ( fractional((0,-1)) + fractional((1,0)) ) / 2 }  100 { trunc((0,-1)) = 1 and trunc((1,0)) = 2 }
rule : { if( fractional((0,-1)) > fractional((-1,0)), 1, 4) + ( fractional((0,-1)) + fractional((-1,0)) ) / 2 } 100 { trunc((0,-1)) = 1 and trunc((-1,0)) = 4 }
rule : 0          100 { trunc((0,0)) = 1 and (0,1) = 0 }
rule : { (0,-1) } 100 { trunc((0,-1)) = 1 and trunc((0,1)) != 3 }
rule : 0          100 { trunc((0,0)) = 3 and (0,-1) = 0 }
rule : { (0,1) }  100 { trunc((0,1)) = 3 and trunc((0,-1)) != 1 }
rule : 0          100 { trunc((0,0)) = 2 and (-1,0) = 0 }
rule : { (1,0) }  100 { trunc((1,0)) = 2 and trunc((-1,0)) != 4 }
rule : 0          100 { trunc((0,0)) = 4 and (1,0) = 0 }
rule : { (-1,0) } 100 { trunc((-1,0)) = 4 and trunc((1,0)) != 2 }
rule : 0          100 { t }