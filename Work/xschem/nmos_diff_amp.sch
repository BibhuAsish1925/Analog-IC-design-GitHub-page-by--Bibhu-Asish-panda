v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -50 60 30 {lab=vp}
N 240 -50 240 30 {lab=Vout}
N 100 -80 200 -80 {lab=vp}
N 150 -80 150 -20 {lab=vp}
N 60 -20 150 -20 {lab=vp}
N 60 90 60 120 {lab=io}
N 60 120 240 120 {lab=io}
N 240 90 240 120 {lab=io}
N 60 -140 60 -110 {lab=AVdd}
N 60 -140 240 -140 {lab=AVdd}
N 240 -140 240 -110 {lab=AVdd}
N 240 -0 310 -0 {lab=Vout}
N 150 120 150 150 {lab=io}
N 150 -170 150 -140 {lab=AVdd}
N -10 60 20 60 {lab=Vip}
N 280 60 300 60 {lab=Vim}
N 60 60 130 60 {lab=io}
N 130 60 130 100 {lab=io}
N 60 100 130 100 {lab=io}
N 170 60 240 60 {lab=io}
N 170 60 170 100 {lab=io}
N 170 100 240 100 {lab=io}
N -20 -80 60 -80 {lab=AVdd}
N -20 -120 -20 -80 {lab=AVdd}
N -20 -120 60 -120 {lab=AVdd}
N 240 -80 320 -80 {lab=AVdd}
N 320 -130 320 -80 {lab=AVdd}
N 240 -130 320 -130 {lab=AVdd}
N -20 290 110 290 {lab=Ib5u}
N -60 320 -60 340 {lab=AVss}
N -60 340 150 340 {lab=AVss}
N 150 320 150 340 {lab=AVss}
N -130 290 -60 290 {lab=AVss}
N -130 290 -130 340 {lab=AVss}
N -130 340 -50 340 {lab=AVss}
N 150 290 220 290 {lab=AVss}
N 220 290 220 340 {lab=AVss}
N 150 340 220 340 {lab=AVss}
N 150 150 150 260 {lab=io}
N -160 170 -60 170 {lab=Ib5u}
N -60 170 -60 260 {lab=Ib5u}
N 30 170 30 290 {lab=Ib5u}
N -70 170 30 170 {lab=Ib5u}
N 40 340 40 390 {lab=AVss}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 40 60 0 0 {name=Mip
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 260 60 0 1 {name=Mim
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
C {iopin.sym} 150 -170 3 0 {name=p1 lab=AVdd}
C {iopin.sym} 40 390 1 0 {name=p2 lab=AVss}
C {iopin.sym} 300 60 0 0 {name=p3 lab=Vim}
C {iopin.sym} -10 60 0 1 {name=p4 lab=Vip}
C {iopin.sym} 310 0 0 0 {name=p5 lab=Vout}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 80 -80 0 1 {name=Mcp
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 220 -80 0 0 {name=Mcm
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -40 290 0 1 {name=Mtail
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 130 290 0 0 {name=Mtail1
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
C {iopin.sym} -160 170 2 0 {name=p6 lab=Ib5u
}
C {lab_wire.sym} 60 0 0 0 {name=p7 sig_type=std_logic lab=vp}
C {lab_wire.sym} 150 200 0 0 {name=p8 sig_type=std_logic lab=io}