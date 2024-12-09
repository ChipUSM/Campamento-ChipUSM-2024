v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) 
} -820 -760 0 0 0.4 0.4 {}
N -130 -180 -130 -160 {
lab=GND}
N -230 -270 -230 -240 {
lab=Vs}
N -230 -180 -230 -160 {
lab=GND}
N -20 -180 -20 -160 {
lab=GND}
N 280 -570 330 -570 {
lab=Vg_M1}
N 210 -520 210 -490 {
lab=GND}
N 180 -640 180 -620 {
lab=Vdd}
N 210 -640 210 -620 {
lab=VH}
N 560 -240 590 -240 {
lab=GND}
N 130 -370 170 -370 {
lab=#net1}
N 210 -410 210 -400 {
lab=VHH}
N 210 -370 230 -370 {
lab=VHH}
N 230 -410 230 -370 {
lab=VHH}
N 210 -410 230 -410 {
lab=VHH}
N 480 -240 520 -240 {
lab=#net2}
N 590 -240 590 -200 {
lab=GND}
N 560 -200 590 -200 {
lab=GND}
N 560 -210 560 -200 {
lab=GND}
N 560 -200 560 -180 {
lab=GND}
N 560 -350 560 -340 {
lab=#net3}
N 560 -280 560 -270 {
lab=Vc2}
N 210 -260 210 -250 {
lab=#net4}
N 210 -330 210 -320 {
lab=Vc1}
N 210 -190 210 -180 {
lab=GND}
N 170 -330 210 -330 {
lab=Vc1}
N 210 -340 210 -330 {
lab=Vc1}
N 520 -270 560 -270 {
lab=Vc2}
N 630 -570 680 -570 {
lab=Vg_M2}
N 560 -520 560 -490 {
lab=GND}
N 530 -640 530 -620 {
lab=Vdd}
N 560 -640 560 -620 {
lab=VH}
N 560 -440 560 -410 {
lab=VHH}
N 210 -430 210 -410 {
lab=VHH}
N 540 -440 560 -440 {
lab=VHH}
N 80 -270 80 -240 {
lab=VHH}
N 80 -180 80 -160 {
lab=GND}
N -260 -480 -220 -480 {
lab=Vs}
N -100 -570 -100 -540 {
lab=Vdd}
N 20 -500 40 -500 {
lab=Vs_M1}
N 20 -460 40 -460 {
lab=Vs_M2}
C {GateDriver.sym} 160 -530 0 0 {name=X1}
C {vsource.sym} -130 -210 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} -130 -300 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {gnd.sym} -130 -160 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -230 -270 0 0 {name=p4 sig_type=std_logic lab=Vs}
C {vsource.sym} -230 -210 0 1 {name=Vs value="PULSE(0 \{Vdd\} \{Del\} \{1p\} \{1p\} \{T*D\} \{T\} 0)" savecurrent=false}
C {gnd.sym} -230 -160 0 0 {name=l5 lab=GND}
C {code.sym} -830 -670 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.lib cornerMOShv.lib mos_tt
.lib cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {code.sym} -710 -490 0 1 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 1.2
.param VH = 3.3

*.param T = 1u
*.param TdR = 0.1u
*.param TdF = 0.1u

.param D = 0.5
.param T = 0.1u
.param TdR = 1n
.param TdF = 1n
.param TR = 10n
.param TF = 10n
.param Del = 0.05u

.param R = 3.3

.param temp = 27


"}
C {devices/code.sym} -700 -490 0 0 {name=Transient_simulation only_toplevel=false 

value="
.save all

.option method= gear

.control
reset
set color0 = white
tran 1n 1u

let VsdM1 = v(VH) - v(Vc1)
let VdsM2 = v(Vc2)
let P_GD_Vdd = i(V_Igd_Vdd)*v(Vdd)
let P_GD_VH = i(V_Igd_VH)*v(VH)

plot i(VdM1) i(VdM2)
plot v(Vc1) v(Vc2)
plot v(Vs_M1) v(Vs_M2)
plot v(Vg_M1) v(Vg_M2)
plot VsdM1 VdsM2
*plot v(Vs_M1) v(Vs_M2)
*plot v(x1.VgMD2)
*plot v(x1.VgMD5)
*plot v(x1.VgMD78)

plot i(V_IgM1) i(V_IgM2)
plot i(x1.VIg78)
*plot v(x2.VgMD2)
*plot v(x2.VgMD5)
*plot v(x2.VgMD78)

meas tran P_GD_Vdd_mean AVG P_GD_Vdd from=0.5u to=1u
meas tran P_GD_VH_mean AVG P_GD_VH from=0.5u to=1u

let P_GD = P_GD_Vdd_mean + P_GD_VH_mean

meas TRAN td_off_M1 TRIG v(Vg_M1) VAL=0.33 RISE=1 TARG VsdM1 VAL=0.33 RISE=1
meas TRAN td_on_M1 TRIG v(Vg_M1) VAL=2.97 FALL=1 TARG VsdM1 VAL=2.97 FALL=1
meas TRAN td_on_M2 TRIG v(Vg_M2) VAL=0.33 RISE=1 TARG VdsM2 VAL=2.97 FALL=1
meas TRAN td_off_M2 TRIG v(Vg_M2) VAL=2.97 FALL=1 TARG VdsM2 VAL=0.33 RISE=1

meas TRAN tPdR1 TRIG v(Vs_M1) VAL=0.12 RISE=1 TARG v(Vg_M1) VAL=0.33 RISE=1
meas TRAN tPdF1 TRIG v(Vs_M1) VAL=1.08 FALL=1 TARG v(Vg_M1) VAL=2.97 FALL=1
*meas TRAN tPdR1 TRIG v(Vg_M2) VAL=2.97 FALL=1 TARG VdsM2 VAL=0.33 RISE=1
*meas TRAN tPdR1 TRIG v(Vg_M2) VAL=2.97 FALL=1 TARG VdsM2 VAL=0.33 RISE=1
let TdR = td_off_M1 - td_on_M2 
let TdF = td_on_M1 - td_off_M2
print TdR TdF P_GD


.endc

.end
"}
C {code.sym} -700 -670 0 0 {name=GateDriver_Parameters only_toplevel=false 

value="
.param temp=27

*.param mult_13 = 1
*.param mult_24 = 6
*.param mult_5 = 100
*.param mult_6 = 100
*.param mult_7 = 200
*.param mult_8 = 200
*.param mult_9 = 5
*.param mult_10 = 5

.param mult_13 = 1
.param mult_24 = 6
*.param mult_5 = 25
*.param mult_6 = 25
.param mult_5 = 30
.param mult_6 = 25
.param mult_7 = 250
.param mult_8 = 200
*.param mult_7 = 75
*.param mult_8 = 60
.param mult_9 = 15
.param mult_10 = 15

.param ng_13 = 1
.param ng_24 = 1
.param ng_5 = 1
.param ng_6 = 1
.param ng_7 = 1
.param ng_8 = 1
.param ng_9 = 1
.param ng_10 = 1

.param l_1357 = 0.4u
*.param w_1357 = 0.3u
.param w_1357 = 10u
.param l_2468 = 0.45u
*.param w_2468 = 0.3u
.param w_2468 = 10u
.param l_9 = 0.13u
.param w_9 = 0.15u
.param l_10 = 0.13u
.param w_10 = 0.15u


"}
C {vsource.sym} -20 -210 0 0 {name=Vdd1 value=\{VH\} savecurrent=false}
C {lab_pin.sym} -20 -300 0 0 {name=p1 sig_type=std_logic lab=VH
value=\{VH\}}
C {gnd.sym} -20 -160 0 0 {name=l1 lab=GND
value=\{VH\}}
C {lab_pin.sym} 130 -570 0 0 {name=p2 sig_type=std_logic lab=Vs_M1}
C {lab_pin.sym} 180 -640 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 210 -640 0 1 {name=p6 sig_type=std_logic lab=VH
value=\{VH\}}
C {lab_pin.sym} 330 -570 0 1 {name=p7 sig_type=std_logic lab=Vg_M1}
C {sg13g2_pr/sg13_hv_nmos.sym} 540 -240 2 1 {name=M2
l=\{l_M2\}
w=\{w_M2\}
ng=\{ng_M2\}
m=\{mult_M2\}
model=sg13_hv_nmos
spiceprefix=X
}
C {gnd.sym} 560 -180 0 0 {name=l4 lab=GND}
C {sg13g2_pr/sg13_hv_pmos.sym} 190 -370 0 0 {name=M1
l=\{l_M1\}
w=\{w_M1\}
ng=\{ng_M1\}
m=\{mult_M1\}
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 420 -240 0 0 {name=p8 sig_type=std_logic lab=Vg_M2}
C {lab_pin.sym} 70 -370 0 0 {name=p9 sig_type=std_logic lab=Vg_M1}
C {gnd.sym} 210 -180 0 0 {name=l7 lab=GND}
C {ammeter.sym} 560 -380 0 0 {name=VdM2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 210 -220 0 0 {name=VdM1 savecurrent=true spice_ignore=0}
C {res.sym} 560 -310 0 0 {name=R1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} 210 -290 0 0 {name=R2
value=\{R\}
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 520 -270 0 0 {name=p15 sig_type=std_logic lab=Vc2}
C {lab_pin.sym} 170 -330 0 0 {name=p16 sig_type=std_logic lab=Vc1}
C {code.sym} -830 -320 0 0 {name=POWER_MOS_Parameters only_toplevel=false 

value="
.param temp=27
.param mult_M1 = 12000
.param w_M1 =10u 
.param l_M1 = 0.4u
.param ng_M1 = 1

.param mult_M2 = 4000
.param w_M2 =10u 
.param l_M2 =0.45u
.param ng_M2 =1



"}
C {gnd.sym} 210 -490 0 0 {name=l6 lab=GND}
C {GateDriver.sym} 510 -530 0 0 {name=X2}
C {lab_pin.sym} 480 -570 0 0 {name=p10 sig_type=std_logic lab=Vs_M2}
C {lab_pin.sym} 530 -640 0 0 {name=p13 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 560 -640 0 1 {name=p17 sig_type=std_logic lab=VH
value=\{VH\}}
C {lab_pin.sym} 680 -570 0 1 {name=p18 sig_type=std_logic lab=Vg_M2}
C {gnd.sym} 560 -490 0 0 {name=l3 lab=GND}
C {ammeter.sym} 100 -370 3 0 {name=V_IgM1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 450 -240 3 0 {name=V_IgM2 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 210 -430 0 0 {name=p11 sig_type=std_logic lab=VHH
value=\{VH\}}
C {lab_pin.sym} 540 -440 0 0 {name=p12 sig_type=std_logic lab=VHH
value=\{VH\}}
C {vsource.sym} 80 -210 0 0 {name=Vdd2 value=\{VH\} savecurrent=false}
C {lab_pin.sym} 80 -270 0 0 {name=p19 sig_type=std_logic lab=VHH
value=\{VHH\}}
C {gnd.sym} 80 -160 0 0 {name=l9 lab=GND
value=\{VH\}}
C {ammeter.sym} -130 -270 2 0 {name=V_Igd_Vdd savecurrent=true spice_ignore=0}
C {ammeter.sym} -20 -270 2 0 {name=V_Igd_VH savecurrent=true spice_ignore=0}
C {lab_pin.sym} -260 -480 0 0 {name=p14 sig_type=std_logic lab=Vs}
C {lab_pin.sym} -100 -570 0 0 {name=p20 sig_type=std_logic lab=Vdd}
C {gnd.sym} -100 -420 0 0 {name=l8 lab=GND
value=\{VH\}}
C {lab_pin.sym} 40 -500 0 1 {name=p21 sig_type=std_logic lab=Vs_M1}
C {lab_pin.sym} 40 -460 0 1 {name=p22 sig_type=std_logic lab=Vs_M2}
C {/home/designer/shared/simulations/IHP-sg13g2/Simulaciones/IHP_Tapeout24/NOL_v2p2.sym} -100 -480 0 0 {name=x4}
