Title: Simple Highpass filter

** RC element
C1	n1 	0 	1p
R1	vin	n1	1k


** Stimuli
Vp vin 0 PULSE(0 5 1n 1p 1p 10n 20n )

.OP

.CONTROL
  save all
  TRAN 10p 40n

MEAS TRAN rise90 TRIG v(n1) VAL=0.5 RISE=1 TARG v(n1) VAL=4.5 RISE=1
MEAS TRAN fall90 TRIG v(n1) VAL=4.5 FALL=1 TARG v(n1) VAL=0.5 FALL=1

MEAS TRAN rise80 TRIG v(n1) VAL=1.0 RISE=1 TARG v(n1) VAL=4.0 RISE=1
MEAS TRAN fall80 TRIG v(n1) VAL=4.0 FALL=1 TARG v(n1) VAL=1.0 FALL=1

MEAS TRAN pdfall TRIG v(vin) VAL=2.5 FALL=1 TARG v(n1) VAL=2.5 FALL=1
MEAS TRAN pdrise TRIG v(vin) VAL=2.5 RISE=1 TARG v(n1) VAL=2.5 RISE=1

MEAS TRAN pw TRIG v(n1) VAL=2.5 RISE=1 TARG v(n1) VAL=2.5 FALL=1
MEAS TRAN tp TRIG v(n1) VAL=2.5 RISE=1 TARG v(n1) VAL=2.5 RISE=2
.ENDC 

.END