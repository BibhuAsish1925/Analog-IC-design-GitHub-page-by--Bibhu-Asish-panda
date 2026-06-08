v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 190 -60 250 -60 {lab=Von}
N 120 -70 150 -70 {lab=Vin}
N 120 -110 150 -110 {lab=Vip}
N 190 -120 250 -120 {lab=Vop}
C {vcvs.sym} 190 -90 0 0 {name=E1 value=1000}
C {iopin.sym} 120 -110 2 0 {name=p1 lab=Vip
}
C {iopin.sym} 120 -70 2 0 {name=p2 lab=Vin}
C {iopin.sym} 250 -120 0 0 {name=p3 lab=Vop}
C {iopin.sym} 250 -60 0 0 {name=p4 lab=Von}