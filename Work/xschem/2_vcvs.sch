v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 50 0 140 0 {lab=#net1}
N 200 -0 350 0 {lab=#net2}
N 350 0 350 10 {lab=#net2}
N 260 0 260 10 {lab=#net2}
N 50 60 50 70 {lab=GND}
N 50 70 50 80 {lab=GND}
N 260 70 260 80 {lab=GND}
N 50 80 260 80 {lab=GND}
N 260 80 350 80 {lab=GND}
N 350 50 350 80 {lab=GND}
N -540 50 -540 90 {lab=vin}
N -320 50 -300 50 {lab=n1}
N 0 -150 150 -150 {lab=vg}
N 390 -0 520 -0 {lab=vo}
N 210 -150 440 -150 {lab=vo}
N 440 -150 440 -0 {lab=vo}
N 390 60 420 60 {lab=GND}
N 420 60 420 90 {lab=GND}
N -540 150 -540 180 {lab=GND}
N 190 80 190 100 {lab=GND}
N -50 220 -50 250 {lab=GND}
N -240 50 10 50 {lab=vg}
N -150 -150 0 -150 {lab=vg}
N -150 -150 -150 50 {lab=vg}
N -50 10 10 10 {lab=#net3}
N -50 10 -50 160 {lab=#net3}
N -150 -270 130 -270 {lab=vg}
N -150 -270 -150 -150 {lab=vg}
N 190 -270 440 -270 {lab=vo}
N 440 -270 440 -150 {lab=vo}
N -430 50 -380 50 {lab=#net4}
N -540 50 -490 50 {lab=vin}
C {vcvs.sym} 50 30 0 0 {name=E1 value=1000}
C {vcvs.sym} 390 30 0 0 {name=E2 value=1}
C {res.sym} 170 0 3 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} 260 40 0 0 {name=C1
m=1
value=1.6pF
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -540 120 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {vsource.sym} -50 190 0 0 {name=V2 value=1.5 savecurrent=false}
C {res.sym} -270 50 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} 180 -150 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} -350 50 3 0 {name=C2
m=1
value=4.7uF
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -540 180 0 0 {name=l1 lab=GND}
C {gnd.sym} -50 250 0 0 {name=l2 lab=GND}
C {gnd.sym} 420 90 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -530 50 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} -310 50 0 0 {name=p2 sig_type=std_logic lab=n1}
C {lab_wire.sym} -160 50 0 0 {name=p3 sig_type=std_logic lab=vg}
C {lab_wire.sym} 520 0 2 0 {name=p4 sig_type=std_logic lab=vo}
C {simulator_commands_shown.sym} -980 -120 0 0 {name=COMMANDS
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
C {gnd.sym} 190 100 0 0 {name=l4 lab=GND}
C {capa.sym} 160 -270 3 0 {name=C3
m=1
value=27pF
footprint=1206
device="ceramic capacitor"}
C {res.sym} -460 50 3 0 {name=R4
value=380
footprint=1206
device=resistor
m=1}