v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt}
E {}
N 90 -50 110 -50 {lab=A}
N 90 -50 90 70 {lab=A}
N 90 70 110 70 {lab=A}
N 150 -20 150 40 {lab=Y}
N 150 100 150 140 {lab=GND}
N 150 -140 150 -80 {lab=VDD}
N 60 10 90 10 {lab=A}
N 150 10 240 10 {lab=Y}
N 150 70 150 110 {lab=GND}
N 150 -110 150 -50 {lab=VDD}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 130 70 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 130 -50 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} 60 10 0 0 {name=p1 lab=A}
C {ipin.sym} 150 -140 1 0 {name=p2 lab=VDD}
C {ipin.sym} 150 140 3 0 {name=p3 lab=GND}
C {opin.sym} 240 10 0 0 {name=p4 lab=Y}