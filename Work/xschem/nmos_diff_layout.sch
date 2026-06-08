v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt}
E {}
N 100 -110 100 -30 {lab=#net1}
N 280 -110 280 -30 {lab=OUT}
N 140 -140 240 -140 {lab=#net1}
N 190 -140 190 -80 {lab=#net1}
N 100 -80 190 -80 {lab=#net1}
N 100 30 100 60 {lab=#net2}
N 100 60 280 60 {lab=#net2}
N 280 30 280 60 {lab=#net2}
N 100 -200 100 -170 {lab=VDD}
N 100 -200 280 -200 {lab=VDD}
N 280 -200 280 -170 {lab=VDD}
N 280 -60 350 -60 {lab=OUT}
N 190 60 190 90 {lab=#net2}
N 190 -230 190 -200 {lab=VDD}
N 30 0 60 0 {lab=VIP}
N 320 0 340 0 {lab=VIM}
N 100 0 170 0 {lab=#net2}
N 170 0 170 40 {lab=#net2}
N 100 40 170 40 {lab=#net2}
N 210 0 280 0 {lab=#net2}
N 210 0 210 40 {lab=#net2}
N 210 40 280 40 {lab=#net2}
N 20 -140 100 -140 {lab=VDD}
N 20 -180 20 -140 {lab=VDD}
N 20 -180 100 -180 {lab=VDD}
N 280 -140 360 -140 {lab=VDD}
N 360 -190 360 -140 {lab=VDD}
N 280 -190 360 -190 {lab=VDD}
N 20 230 150 230 {lab=Ib}
N -20 260 -20 280 {lab=GND}
N -20 280 190 280 {lab=GND}
N 190 260 190 280 {lab=GND}
N -90 230 -20 230 {lab=GND}
N -90 230 -90 280 {lab=GND}
N -90 280 -10 280 {lab=GND}
N 190 230 260 230 {lab=GND}
N 260 230 260 280 {lab=GND}
N 190 280 260 280 {lab=GND}
N 190 90 190 200 {lab=#net2}
N -120 110 -20 110 {lab=Ib}
N -20 110 -20 200 {lab=Ib}
N 70 110 70 230 {lab=Ib}
N -30 110 70 110 {lab=Ib}
N 80 280 80 330 {lab=GND}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 80 0 0 0 {name=Mip
W=5
L=2
nf=1
mult=4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 300 0 0 1 {name=Mim
W=5
L=2
nf=1
mult=4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 120 -140 0 1 {name=Mcp
W=5
L=2
nf=1
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 260 -140 0 0 {name=Mcm
W=5
L=2
nf=1
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 230 0 1 {name=Mtail
W=5
L=1
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 170 230 0 0 {name=Mtail1
W=5
L=1
nf=1 
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} 30 0 0 0 {name=p1 lab=VIP}
C {ipin.sym} 190 -230 1 0 {name=p2 lab=VDD}
C {ipin.sym} 340 0 2 0 {name=p3 lab=VIM}
C {ipin.sym} -120 110 0 0 {name=p4 lab=Ib}
C {ipin.sym} 80 330 3 0 {name=p5 lab=GND}
C {opin.sym} 350 -60 0 0 {name=p6 lab=OUT}