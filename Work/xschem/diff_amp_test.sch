v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt}
E {}
N -620 300 -620 370 {lab=#net1}
N -620 370 -540 370 {lab=#net1}
N -540 370 -450 370 {lab=#net1}
N -450 300 -450 370 {lab=#net1}
N -620 -60 -620 240 {lab=vm}
N -620 -60 -130 -60 {lab=vm}
N -450 60 -450 240 {lab=vp}
N -450 60 -130 60 {lab=vp}
N -870 390 -870 410 {lab=GND}
N -540 430 -540 460 {lab=GND}
N -20 80 -20 120 {lab=GND}
N -870 250 -870 330 {lab=#net2}
N -870 250 -660 250 {lab=#net2}
N -730 180 -730 250 {lab=#net2}
N -400 180 -400 250 {lab=#net2}
N -410 250 -400 250 {lab=#net2}
N -700 290 -700 380 {lab=GND}
N -700 290 -660 290 {lab=GND}
N -410 290 -410 340 {lab=GND}
N -700 340 -410 340 {lab=GND}
N -130 -240 -30 -240 {lab=ib}
N -30 -240 -30 -80 {lab=ib}
N -30 -240 320 -240 {lab=ib}
N 320 -240 320 160 {lab=ib}
N 60 160 320 160 {lab=ib}
N -130 -180 -130 -160 {lab=GND}
N 170 10 170 60 {lab=vo}
N 170 120 170 200 {lab=GND}
N -730 180 -400 180 {lab=#net2}
N 60 60 60 100 {lab=gn}
C {nmos_diff_amp.sym} -150 250 0 0 {name=x1}
C {vcvs.sym} -620 270 0 0 {name=E1 value=-0.5}
C {vcvs.sym} -450 270 0 1 {name=E2 value=0.5}
C {vsource.sym} -540 400 0 0 {name=Vcm value="0 AC 1" savecurrent=false}
C {vsource.sym} -870 360 0 0 {name=V2 value="0.9 AC 1" savecurrent=false}
C {gnd.sym} -20 120 0 0 {name=l1 lab=GND}
C {gnd.sym} -870 410 0 0 {name=l2 lab=GND}
C {gnd.sym} -540 460 0 0 {name=l3 lab=GND}
C {gnd.sym} -700 380 0 0 {name=l4 lab=GND}
C {vsource.sym} -130 -210 0 0 {name=Vcm1 value=1.8 savecurrent=false}
C {isource.sym} 60 130 2 0 {name=I0 value=5u}
C {gnd.sym} -130 -160 0 0 {name=l5 lab=GND}
C {capa.sym} 170 90 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 170 200 0 0 {name=l6 lab=GND}
C {simulator_commands_shown.sym} 390 -320 0 0 {name=COMMANDS
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
write diff_amp_test.raw

LET gm_mcm=@m.x1.xmcm.msky130_fd_pr__pfet_01v8_lvt[gm]
LET gm_mcp=@m.x1.xmcp.msky130_fd_pr__pfet_01v8_lvt[gm]
LET gm_mim=@m.x1.xmim.msky130_fd_pr__nfet_01v8_lvt[gm]
LET gm_mip=@m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[gm]
LET gm_mtail=@m.x1.xmtail.msky130_fd_pr__nfet_01v8[gm]
LET gm_mtail1=@m.x1.xmtail1.msky130_fd_pr__nfet_01v8[gm]

LET id_mcm=@m.x1.xmcm.msky130_fd_pr__pfet_01v8_lvt[id]
LET id_mcp=@m.x1.xmcp.msky130_fd_pr__pfet_01v8_lvt[id]
LET id_mim=@m.x1.xmim.msky130_fd_pr__nfet_01v8_lvt[id]
LET id_mip=@m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[id]
LET id_mtail=@m.x1.xmtail.msky130_fd_pr__nfet_01v8[id]
LET id_mtail1=@m.x1.xmtail1.msky130_fd_pr__nfet_01v8[id]

LET idgm_mcm=gm_mcm/id_mcm
LET idgm_mcp=gm_mcp/id_mcp
LET idgm_mim=gm_mim/id_mim
LET idgm_mip=gm_mip/id_mip
LET idgm_mtail=gm_mtail/id_mtail
LET idgm_mtail1=gm_mtail1/id_mtail1

print idgm_mcm
print idgm_mcp
print idgm_mim
print idgm_mip
print idgm_mtail
print idgm_mtail1

AC DEC 100 1 1e9
.endc
.end

"}
C {lab_wire.sym} -360 60 0 0 {name=p1 sig_type=std_logic lab=vp}
C {lab_wire.sym} -410 -60 0 0 {name=p2 sig_type=std_logic lab=vm}
C {lab_wire.sym} 170 50 0 0 {name=p3 sig_type=std_logic lab=vo}
C {lab_wire.sym} -30 -120 0 0 {name=p4 sig_type=std_logic lab=ib}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/corner.sym} -240 170 0 0 {name=CORNER only_toplevel=false corner=tt}
C {lab_wire.sym} 60 80 0 0 {name=p6 sig_type=std_logic lab=gn}