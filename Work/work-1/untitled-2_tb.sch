v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt}
E {}
T {.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt} -280 -180 0 0 0.4 0.4 {}
N 180 -120 250 -120 {lab=Y}
C {untitled-1.sym} 30 -100 0 0 {name=x1}
C {vsource.sym} -310 0 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -240 0 0 0 {name=V2 value="PULSE(0 1.2 0 1n 1n 1u 2u)" savecurrent=false}
C {gnd.sym} -310 30 0 0 {name=l1 lab=GND}
C {gnd.sym} -240 30 0 0 {name=l2 lab=GND}
C {gnd.sym} -120 -80 1 0 {name=l3 lab=GND}
C {lab_pin.sym} -310 -30 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -240 -30 0 0 {name=p2 sig_type=std_logic lab=A}
C {lab_pin.sym} -120 -100 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_pin.sym} -120 -120 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 250 -120 2 0 {name=p5 sig_type=std_logic lab=Y}
C {code_shown.sym} -10 0 0 0 {name=s1 only_toplevel=false value="
.control
tran 10n 5u
plot A 
.endc
"}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/corner.sym} 290 -120 0 0 {name=CORNER only_toplevel=false corner=tt}