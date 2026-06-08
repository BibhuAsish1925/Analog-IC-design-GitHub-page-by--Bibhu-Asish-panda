Title: Simple filter
** Parameter
.PARAM vdd_var=5
** RC element
C1      n1      0       1p
R1      vin     n1      1k


** Stimuli
Vp vin 0 PULSE(0 vdd_var 1n 1p 1p 10n 20n )

MEAS TRAN rise90 TRIG v(n1) VAL='0.1*vdd_var' RISE=1 TARG v(n1) VAL='0.9*vdd_var' RISE=1
MEAS TRAN fall90 TRIG v(n1) VAL='0.9*vdd_var' FALL=1 TARG v(n1) VAL='0.1*vdd_var' FALL=1

MEAS TRAN rise80 TRIG v(n1) VAL='0.2*vdd_var' RISE=1 TARG v(n1) VAL='0.8*vdd_var' RISE=1
MEAS TRAN fall80 TRIG v(n1) VAL='0.8*vdd_var' FALL=1 TARG v(n1) VAL='0.2*vdd_var' FALL=1

MEAS TRAN pdfall TRIG v(vin) VAL='0.5*vdd_var' FALL=1 TARG v(n1) VAL='0.5*vdd_var' FALL=1
MEAS TRAN pdrise TRIG v(vin) VAL='0.5*vdd_var' RISE=1 TARG v(n1) VAL='0.5*vdd_var' RISE=1

MEAS TRAN pw TRIG v(n1) VAL='0.5*vdd_var' RISE=1 TARG v(n1) VAL='0.5*vdd_var' FALL=1
MEAS TRAN tp TRIG v(n1) VAL='0.5*vdd_var' RISE=1 TARG v(n1) VAL='0.5*vdd_var' RISE=2


.CONTROL
  save all
  TRAN 10p 40n

.ENDC

.END