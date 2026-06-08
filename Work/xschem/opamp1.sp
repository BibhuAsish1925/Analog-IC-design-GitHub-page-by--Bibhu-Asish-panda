** sch_path: /home/amitvlsi01/work-2/xschem_eg/untitled.sch
**.subckt untitled
Vmic vth GND 0 AC 1
R1 vth nm2 380 m=1
C1 nm2 net1 4.7u m=1
R2 net1 nvg 4.7k m=1
E1 vo GND net2 nvg 1000
R3 nvg vo 300k m=1
C2 nvg vo 27p m=1
V2 net2 GND 1.5
C3 vo GND 1p m=1
**.ends
.GLOBAL GND
.end