v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1030 -280 -1030 -240 {lab=Vin}
N -1030 -280 -970 -280 {lab=Vin}
N -910 -280 -850 -280 {lab=#net1}
N -470 -420 -360 -420 {lab=Vg}
N -300 -420 -80 -420 {lab=vo}
N -80 -420 -80 -240 {lab=vo}
N -140 -240 -80 -240 {lab=vo}
N -520 -140 -520 -90 {lab=vcm}
N -1030 -180 -1030 -160 {lab=GND}
N -520 -30 -520 -10 {lab=GND}
N -140 -200 -130 -190 {lab=GND}
N -80 -240 0 -240 {lab=vo}
N -140 -250 -140 -240 {lab=vo}
N -140 -210 -140 -200 {lab=GND}
N -790 -280 -690 -280 {lab=Vg}
N -690 -280 -690 -150 {lab=Vg}
N -690 -150 -440 -150 {lab=Vg}
N -520 -300 -520 -140 {lab=vcm}
N -520 -300 -440 -300 {lab=vcm}
N -590 -420 -470 -420 {lab=Vg}
N -590 -420 -590 -150 {lab=Vg}
N -320 -200 -140 -210 {lab=GND}
N -320 -260 -140 -260 {lab=vo}
N -140 -260 -140 -250 {lab=vo}
N -440 -150 -360 -210 {lab=Vg}
N -440 -300 -360 -250 {lab=vcm}
C {res.sym} -820 -280 3 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {capa.sym} -940 -280 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -520 -60 0 0 {name=V1 value=1.5 savecurrent=false}
C {vsource.sym} -1030 -210 0 0 {name=V2 value="0 AC 1" savecurrent=false}
C {gnd.sym} -130 -190 0 0 {name=l1 lab=GND}
C {gnd.sym} -520 -10 0 0 {name=l2 lab=GND}
C {gnd.sym} -1030 -160 0 0 {name=l3 lab=GND}
C {simulator_commands_shown.sym} 40 -530 0 0 {name=COMMANDS
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
*MEAS AC fmid WHEN vdb(vo)=34.91580
plot vm(vo)
MEAS AC vom MAX vm(vo) FROM=0.1 TO=10e6B

.endc
.end


"}
C {lab_wire.sym} -1030 -280 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_wire.sym} -590 -150 2 0 {name=p3 sig_type=std_logic lab=Vg}
C {res.sym} -330 -420 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -520 -300 0 0 {name=p4 sig_type=std_logic lab=vcm
}
C {lab_wire.sym} 0 -240 0 0 {name=p1 sig_type=std_logic lab=vo}
C {vcvs.sym} -320 -230 0 0 {name=E1 value=1000}