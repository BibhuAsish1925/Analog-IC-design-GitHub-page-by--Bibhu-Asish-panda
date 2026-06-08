v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt}
E {}
N 160 -100 310 -100 {lab=#net1}
N 120 -200 120 -130 {lab=#net1}
N 120 -170 190 -170 {lab=#net1}
N 190 -170 190 -100 {lab=#net1}
N 120 -70 120 -20 {lab=GND}
N 120 -20 350 -20 {lab=GND}
N 350 -70 350 -20 {lab=GND}
N 490 -50 490 -20 {lab=GND}
N 350 -20 490 -20 {lab=GND}
N 490 -170 490 -110 {lab=#net2}
N 350 -170 490 -170 {lab=#net2}
N 350 -170 350 -130 {lab=#net2}
N 40 -100 120 -100 {lab=GND}
N 40 -100 40 -70 {lab=GND}
N 40 -70 40 -60 {lab=GND}
N 40 -60 120 -60 {lab=GND}
N 350 -100 420 -100 {lab=GND}
N 420 -100 420 -50 {lab=GND}
N 350 -50 420 -50 {lab=GND}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 330 -100 0 0 {name=M2
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
C {isource.sym} 120 -230 0 0 {name=I0 value=50u}
C {gnd.sym} 210 -20 0 0 {name=l1 lab=GND}
C {gnd.sym} 120 -260 2 0 {name=l2 lab=GND}
C {vsource.sym} 490 -80 0 0 {name=Vds value="1 AC 1" savecurrent=false}
C {simulator_commands_shown.sym} -320 -200 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.CONTROL
 OP
  DC Vds 0 1.8 0.05
plot abs(vds#branch)
  AC DEC 100 100 1000
plot "1/vm(vds#branch)"
.ENDC
"}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/corner.sym} -80 -150 0 0 {name=CORNER only_toplevel=false corner=tt}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 140 -100 0 1 {name=M3
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