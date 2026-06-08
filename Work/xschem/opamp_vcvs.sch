v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 -70 30 -50 {lab=vth}
N 30 -70 70 -70 {lab=vth}
N 130 -70 170 -70 {lab=nm2}
N 230 -70 270 -70 {lab=nm3}
N 30 10 30 40 {lab=GND}
N 330 -70 360 -70 {lab=nvg}
N 400 -60 400 -50 {lab=GND}
N 410 -300 410 -230 {lab=nvg}
N 340 -230 410 -230 {lab=nvg}
N 340 -230 340 -70 {lab=nvg}
N 400 -120 610 -120 {lab=vo}
N 470 -300 470 -230 {lab=vo}
N 470 -230 470 -120 {lab=vo}
N 350 -110 350 -10 {lab=#net1}
N 350 -110 360 -110 {lab=#net1}
N 350 50 350 80 {lab=GND}
N 630 -120 630 -110 {lab=vo}
N 610 -120 630 -120 {lab=vo}
N 630 -50 630 -30 {lab=GND}
C {vsource.sym} 30 -20 0 0 {name=Vmic value="0 AC 1 SIN(0 1m 1e3 0 0 0)" savecurrent=false}
C {res.sym} 100 -70 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 200 -70 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 30 40 0 0 {name=l1 lab=GND}
C {res.sym} 300 -70 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {vcvs.sym} 400 -90 0 0 {name=E1 value=10000}
C {gnd.sym} 400 -50 0 0 {name=l2 lab=GND}
C {res.sym} 440 -230 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 440 -300 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 350 20 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 350 80 0 0 {name=l3 lab=GND}
C {capa.sym} 630 -80 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 630 -30 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 160 -70 0 0 {name=p1 sig_type=std_logic lab=nm2}
C {lab_wire.sym} 30 -70 0 0 {name=p2 sig_type=std_logic lab=vth}
C {lab_wire.sym} 340 -70 0 0 {name=p3 sig_type=std_logic lab=nvg}
C {lab_wire.sym} 560 -120 0 0 {name=p4 sig_type=std_logic lab=vo}
C {simulator_commands_shown.sym} 690 -310 0 0 {name=COMMANDS
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
MEAS AC fmid WHEN vdb(vo)=34.9

**** phase measurment
plot cph(vo)
LET phase_deg =cph(vo)*180/PI
MEAS AC phase_zero FIND phase_deg AT=fzero
MEAS AC phase_pole FIND phase_deg AT=fpole
MEAS AC phase_mid FIND phase_deg AT=fmid
tran 1u 5m
.end
"}
C {lab_wire.sym} 250 -70 0 0 {name=p5 sig_type=std_logic lab=nm3}