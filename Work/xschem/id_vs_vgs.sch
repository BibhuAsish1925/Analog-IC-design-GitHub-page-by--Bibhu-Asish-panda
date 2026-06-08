v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S { .lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt}
E {}
N 100 -180 100 -120 {lab=#net1}
N 100 -180 200 -180 {lab=#net1}
N 240 -260 240 -210 {lab=#net1}
N 120 -260 240 -260 {lab=#net1}
N 120 -260 120 -180 {lab=#net1}
N 240 -150 240 -110 {lab=#net2}
N 240 -180 350 -180 {lab=GND}
N 350 -180 350 -40 {lab=GND}
N 100 -40 350 -40 {lab=GND}
N 100 -60 100 -40 {lab=GND}
N 240 -50 240 -40 {lab=GND}
N 200 -40 200 -20 {lab=GND}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 220 -180 0 0 {name=M2
W=4
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} 100 -90 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 240 -80 0 0 {name=Vsb value=0 savecurrent=false}
C {gnd.sym} 200 -20 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} 400 -190 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.CONTROL
 OP
  *DC Vgs 0 1.8 0.05 Vsb 0 0.5 0.1
  DC Vgs 0 1.8 0.05 TEMP -40 120 20
  PLOT sqrt(abs(vgs#branch))
  PLOT sqrt(2*abs(vgs#branch))
  PLOT log(abs(vgs#branch))
.ENDC
"}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/corner.sym} 300 -360 0 0 {name=CORNER only_toplevel=false corner=tt}