.TITLE: RC circuit

.PARAM var=1
C1 vin vout 1k
R1 vout 0 1p


Vp vin 0 PULSE(0 var 0 1p 2p .1n .2n )


.OP
.CONTROL
TRAN 10p 6n
plot v(vin) v(vout)
.ENDC
.END