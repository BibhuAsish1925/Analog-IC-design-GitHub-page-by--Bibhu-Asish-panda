v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt}
E {}
N -850 -20 -850 20 {lab=vin}
N -630 -20 -610 -20 {lab=n1}
N -320 -390 -170 -390 {lab=vg}
N -110 -390 120 -390 {lab=vout}
N -850 80 -850 110 {lab=GND}
N -360 150 -360 180 {lab=GND}
N -470 -390 -320 -390 {lab=vg}
N -460 -220 -460 -20 {lab=vg}
N -470 -510 -190 -510 {lab=vg}
N -470 -510 -470 -390 {lab=vg}
N -130 -510 120 -510 {lab=vout}
N 120 -510 120 -390 {lab=vout}
N -740 -20 -690 -20 {lab=n2}
N -850 -20 -800 -20 {lab=vin}
N -550 -20 -460 -20 {lab=vg}
N 60 -0 480 0 {lab=vout}
N -140 -210 290 -210 {lab=#net1}
N -140 -210 -140 -90 {lab=#net1}
N -50 140 140 140 {lab=#net1}
N 140 -210 140 140 {lab=#net1}
N -50 50 -50 80 {lab=#net2}
N -470 -390 -460 -220 {lab=vg}
N 120 -390 270 -0 {lab=vout}
N 480 -0 480 60 {lab=vout}
N -130 70 -130 120 {lab=GND}
N 350 -210 350 -170 {lab=GND}
N 480 120 480 140 {lab=GND}
N -460 -70 -240 -70 {lab=vg}
N -360 50 -360 90 {lab=#net3}
N -360 50 -240 50 {lab=#net3}
C {vsource.sym} -850 50 0 0 {name=V1 value="0 AC 1 sin(0 100m 1e3 0 0 0)" savecurrent=false}
C {vsource.sym} -360 120 0 0 {name=V2 value=1.5 savecurrent=false}
C {res.sym} -580 -20 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} -140 -390 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} -660 -20 3 0 {name=C2
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -850 110 0 0 {name=l1 lab=GND}
C {gnd.sym} -360 180 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -840 -20 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} -620 -20 0 0 {name=p2 sig_type=std_logic lab=n1}
C {lab_wire.sym} -490 -20 0 0 {name=p3 sig_type=std_logic lab=vg}
C {simulator_commands_shown.sym} -1340 -610 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.temp 27
.control
save all
save @m.x1.xmcm.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.x1.xmcp.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.x1.xmim.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.x1.xmtail.msky130_fd_pr__nfet_01v8[id]
save @m.x1.xmtail1.msky130_fd_pr__nfet_01v8[id]

save @m.x1.xmcm.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xmcp.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xmim.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xmtail.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xmtail1.msky130_fd_pr__nfet_01v8[gm]
OP
write opamp-diff.raw
AC DEC 100 1 10e10
**** gain measurement
plot vdb(vout)
MEAS AC gainm MAX vdb(vout) FROM=0.1 TO=10e6B
print gainm
LET f3db = gainm-3
print f3db
MEAS AC fpole WHEN vdb(vout)=f3db FALL=1
MEAS AC fzero WHEN vdb(vout)=f3db RISE=1

***** transient measurement
TRAN 1u 6m
  MEAS TRAN voutpp PP v(vout) FROM=1m TO=4m
  MEAS TRAN vinpp PP v(vin) FROM=1m TO=4m
  LET gaintran=voutpp/vinpp
  print gaintran
  FOURIER 1k v(vout)
  plot v(vout) vs v(vin)

.endc

.end
"}
C {capa.sym} -160 -510 3 0 {name=C3
m=1
value=27pF
footprint=1206
device="ceramic capacitor"}
C {res.sym} -770 -20 3 0 {name=R4
value=380
footprint=1206
device=resistor
m=1}
C {vsource.sym} 320 -210 3 0 {name=V3 value=1.8 savecurrent=false}
C {isource.sym} -50 110 2 1 {name=I0 value=5u}
C {capa.sym} 480 90 0 0 {name=C1
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 370 0 0 0 {name=p4 sig_type=std_logic lab=vout}
C {gnd.sym} 480 140 0 0 {name=l3 lab=GND}
C {gnd.sym} 350 -170 0 0 {name=l4 lab=GND}
C {gnd.sym} -130 120 0 0 {name=l5 lab=GND}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/corner.sym} -640 70 0 0 {name=CORNER only_toplevel=false corner=tt}
C {nmos_diff_amp.sym} -260 240 0 0 {name=x1}
C {lab_wire.sym} -700 -20 0 0 {name=p5 sig_type=std_logic lab=n2}