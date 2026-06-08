v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt}
E {}
N 60 -80 60 -30 {lab=#net1}
N 60 -80 250 -80 {lab=#net1}
N 250 -80 250 -30 {lab=#net1}
N 60 30 60 60 {lab=#net2}
N 100 0 210 -0 {lab=#net2}
N 140 -0 140 50 {lab=#net2}
N 60 50 140 50 {lab=#net2}
N 60 120 60 140 {lab=GND}
N 250 30 250 50 {lab=#net3}
N 250 50 370 50 {lab=#net3}
N 400 30 400 50 {lab=#net3}
N 370 -50 370 -30 {lab=GND}
N 130 -100 130 -80 {lab=#net1}
N 130 -160 370 -160 {lab=GND}
N 370 -160 370 -50 {lab=GND}
N 310 -180 310 -160 {lab=GND}
N 250 0 330 -0 {lab=#net1}
N 330 -50 330 0 {lab=#net1}
N 250 -50 330 -50 {lab=#net1}
N -10 0 60 -0 {lab=#net1}
N -20 -0 -10 0 {lab=#net1}
N -20 -50 -20 -0 {lab=#net1}
N -20 -50 60 -50 {lab=#net1}
N 370 50 400 50 {lab=#net3}
N 370 -30 400 -30 {lab=GND}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 230 0 0 0 {name=M1
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
model=pfet_01v8_lvt
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 80 0 0 1 {name=M2
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
model=pfet_01v8_lvt
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/corner.sym} -140 -30 0 0 {name=CORNER only_toplevel=false corner=tt}
C {isource.sym} 60 90 0 0 {name=I0 value=50u}
C {gnd.sym} 60 140 0 0 {name=l1 lab=GND}
C {vsource.sym} 400 0 2 0 {name=Vds value="1 AC 1" savecurrent=false}
C {vsource.sym} 130 -130 2 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} 310 -180 2 0 {name=l2 lab=GND}
C {simulator_commands_shown.sym} 420 -120 0 0 {name=COMMANDS
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