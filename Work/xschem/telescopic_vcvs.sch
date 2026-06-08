v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 -710 80 -620 {lab=#net1}
N 80 -560 80 -340 {lab=#net2}
N 80 -280 80 -210 {lab=#net3}
N 80 -150 80 -120 {lab=#net4}
N 80 -120 320 -120 {lab=#net4}
N 320 -150 320 -120 {lab=#net4}
N 320 -280 320 -210 {lab=#net5}
N 320 -560 320 -340 {lab=#net6}
N 80 -820 80 -770 {lab=#net7}
N 80 -820 320 -820 {lab=#net7}
N 320 -820 320 -770 {lab=#net7}
N 320 -710 320 -620 {lab=#net8}
N 120 -740 280 -740 {lab=#net2}
N 190 -740 190 -480 {lab=#net2}
N 80 -480 190 -480 {lab=#net2}
N 40 -660 40 -590 {lab=#net9}
N 40 -660 360 -660 {lab=#net9}
N 360 -660 360 -590 {lab=#net9}
N 40 -380 40 -310 {lab=#net10}
N 40 -380 360 -380 {lab=#net10}
N 360 -380 360 -310 {lab=#net10}
N 550 -820 550 -690 {lab=#net7}
N 320 -820 550 -820 {lab=#net7}
N 360 -660 510 -660 {lab=#net9}
N 550 -630 550 -80 {lab=#net11}
N -180 -690 -180 -410 {lab=#net12}
N -180 -820 -180 -750 {lab=#net7}
N -180 -820 80 -820 {lab=#net7}
N -140 -380 40 -380 {lab=#net10}
N -280 -720 -220 -720 {lab=#net13}
N -320 -690 -320 -190 {lab=#net13}
N -320 -130 -320 -80 {lab=#net14}
N 200 -120 200 -80 {lab=#net4}
N -280 -50 160 -50 {lab=#net15}
N 510 -50 510 80 {lab=#net15}
N -80 80 510 80 {lab=#net15}
N -80 -50 -80 80 {lab=#net15}
N -250 -720 -250 -610 {lab=#net13}
N -320 -610 -250 -610 {lab=#net13}
N -720 -80 -720 80 {lab=#net15}
N -720 80 -80 80 {lab=#net15}
N -680 -50 -680 -0 {lab=GND}
N -320 -20 -320 20 {lab=GND}
N 200 -20 200 10 {lab=GND}
N 550 -20 550 30 {lab=GND}
N -180 -350 -180 -320 {lab=GND}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 60 -180 0 0 {name=M1
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 340 -180 0 1 {name=M2
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 60 -310 0 0 {name=M3
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 340 -310 0 1 {name=M4
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 60 -590 0 0 {name=M5
W=1
L=0.35
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 100 -740 0 1 {name=M6
W=1
L=0.35
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 300 -740 0 0 {name=M7
W=1
L=0.35
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 340 -590 0 1 {name=M8
W=1
L=0.35
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 530 -660 0 0 {name=M9
W=1
L=0.35
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 530 -50 0 0 {name=M10
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} -160 -380 0 1 {name=M11
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} -200 -720 0 0 {name=M12
W=1
L=0.35
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} -300 -720 0 1 {name=M13
W=1
L=0.35
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} -300 -160 0 1 {name=M14
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} -300 -50 0 1 {name=M15
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 180 -50 0 0 {name=M16
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} -700 -80 0 0 {name=M17
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {gnd.sym} 200 10 0 0 {name=l1 lab=GND}
C {gnd.sym} -180 -320 0 0 {name=l2 lab=GND}
C {gnd.sym} -320 20 0 0 {name=l3 lab=GND}
C {gnd.sym} -680 0 0 0 {name=l4 lab=GND}
C {gnd.sym} 550 30 0 0 {name=l5 lab=GND}