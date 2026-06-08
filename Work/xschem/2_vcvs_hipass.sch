v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 290 -10 380 -10 {lab=#net1}
N 440 -10 590 -10 {lab=#net2}
N 590 -10 590 0 {lab=#net2}
N 500 -10 500 0 {lab=#net2}
N 290 50 290 60 {lab=GND}
N 290 60 290 70 {lab=GND}
N 500 60 500 70 {lab=GND}
N 290 70 500 70 {lab=GND}
N 500 70 590 70 {lab=GND}
N 590 40 590 70 {lab=GND}
N -300 40 -300 80 {lab=vin}
N -80 40 -60 40 {lab=n1}
N 240 -160 390 -160 {lab=vg}
N 630 -10 760 -10 {lab=vo}
N 450 -160 680 -160 {lab=vo}
N 680 -160 680 -10 {lab=vo}
N 630 50 660 50 {lab=GND}
N 660 50 660 80 {lab=GND}
N -300 140 -300 170 {lab=GND}
N 430 70 430 90 {lab=GND}
N 190 210 190 240 {lab=GND}
N 0 40 250 40 {lab=vg}
N 90 -160 240 -160 {lab=vg}
N 90 -160 90 40 {lab=vg}
N 190 0 250 0 {lab=#net3}
N 190 0 190 150 {lab=#net3}
N -190 40 -140 40 {lab=#net4}
N -300 40 -250 40 {lab=vin}
C {vcvs.sym} 290 20 0 0 {name=E1 value=1000}
C {vcvs.sym} 630 20 0 0 {name=E2 value=1}
C {res.sym} 410 -10 3 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} 500 30 0 0 {name=C1
m=1
value=1.6pF
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -300 110 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {vsource.sym} 190 180 0 0 {name=V2 value=1.5 savecurrent=false}
C {res.sym} -30 40 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} 420 -160 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} -110 40 3 0 {name=C2
m=1
value=4.7uF
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -300 170 0 0 {name=l1 lab=GND}
C {gnd.sym} 190 240 0 0 {name=l2 lab=GND}
C {gnd.sym} 660 80 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -290 40 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} -70 40 0 0 {name=p2 sig_type=std_logic lab=n1}
C {lab_wire.sym} 80 40 0 0 {name=p3 sig_type=std_logic lab=vg}
C {lab_wire.sym} 760 -10 2 0 {name=p4 sig_type=std_logic lab=vo}
C {simulator_commands_shown.sym} -740 -130 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.op
.control
save all
AC DEC 100 1 10e10
**** gain measurement
plot vdb(vo)
MEAS AC gainm MAX vdb(vo) FROM=0.1 TO=10e6B
print gainm
LET f3db = gainm-3
print f3db
MEAS AC fpole WHEN vdb(vo)=f3db FALL=1
MEAS AC fzero WHEN vdb(vo)=f3db RISE=1
MEAS AC f60 WHEN vdb(vo)=-60

MEAS AC vom MAX vm(vo) FROM=0.1 TO=10e6B

.end
"}
C {gnd.sym} 430 90 0 0 {name=l4 lab=GND}
C {res.sym} -220 40 3 0 {name=R4
value=380
footprint=1206
device=resistor
m=1}