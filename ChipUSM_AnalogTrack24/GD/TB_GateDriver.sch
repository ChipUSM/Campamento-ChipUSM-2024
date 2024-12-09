v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) 
} -820 -760 0 0 0.4 0.4 {}
N -550 -480 -550 -450 {
lab=Vdd}
N -550 -390 -550 -370 {
lab=GND}
N -550 -330 -550 -300 {
lab=Vs}
N -550 -240 -550 -220 {
lab=GND}
N -440 -480 -440 -450 {
lab=VH}
N -440 -390 -440 -370 {
lab=GND}
N -160 -490 -110 -490 {
lab=Vg}
N -230 -420 -230 -410 {
lab=GND}
N -110 -430 -110 -420 {
lab=GND}
N -230 -420 -110 -420 {
lab=GND}
N -230 -440 -230 -420 {
lab=GND}
N -260 -560 -260 -540 {
lab=Vdd}
N -230 -560 -230 -540 {
lab=VH}
C {GateDriver.sym} -280 -450 0 0 {name=X1}
C {vsource.sym} -550 -420 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} -550 -480 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {gnd.sym} -550 -370 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -550 -330 0 0 {name=p4 sig_type=std_logic lab=Vs}
C {vsource.sym} -550 -270 0 1 {name=Vs value="PULSE(0 \{Vdd\} \{Del\} \{1n\} \{1n\} \{T*D\} \{T\} 0)" savecurrent=false}
C {gnd.sym} -550 -220 0 0 {name=l5 lab=GND}
C {code.sym} -830 -670 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.lib cornerMOSlv.lib mos_tt
"}
C {code.sym} -500 -670 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 1.2
.param VH = 3.3

.param D = 0.5
*.param T = 1u
.param T = 0.1u
.param TR = 10n
.param TF = 10n
*.param TdR = 0.1u
.param TdR = 1n
*.param TdF = 0.1u
.param TdF = 1n
.param Del = 0.05u
.param temp = 27


"}
C {devices/code.sym} -830 -480 0 0 {name=Transient_simulation only_toplevel=false 

value="
.save all
.control
reset
set color0 = white
tran 1n 1u
plot v(Vs) 
plot v(Vg)
plot v(x1.VgMD2)
plot v(x1.VgMD5)
plot v(x1.VgMD78)
*meas TRAN td_off_M1 TRIG v(Vg_M1) VAL=0.33 RISE=1 TARG VsdM1 VAL=0.33 RISE=1
*meas TRAN td_on_M1 TRIG v(Vg_M1) VAL=2.97 FALL=1 TARG VsdM1 VAL=2.97 FALL=1
*meas TRAN td_on_M2 TRIG v(Vg_M2) VAL=0.33 RISE=1 TARG VdsM2 VAL=2.97 FALL=1
*meas TRAN td_off_M2 TRIG v(Vg_M2) VAL=2.97 FALL=1 TARG VdsM2 VAL=0.33 RISE=1
*let TdR = td_off_M1 - td_on_M2 
*let TdF = td_on_M1 - td_off_M2
*print TdR TdF
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
.param mult_24 = 10
.param mult_5 = 20
.param mult_6 = 20
.param mult_7 = 40
.param mult_8 = 40
.param mult_9 = 10
.param mult_10 = 10

.param ng_13 = 1
.param ng_24 = 1
.param ng_5 = 1
.param ng_6 = 1
.param ng_7 = 1
.param ng_8 = 1
.param ng_9 = 1
.param ng_10 = 1

.param l_1357 = 0.45u
.param w_1357 = 0.3u
.param l_2468 = 0.4u
.param w_2468 = 0.3u
.param l_9 = 0.13u
.param w_9 = 0.15u
.param l_10 = 0.13u
.param w_10 = 0.15u


"}
C {vsource.sym} -440 -420 0 0 {name=Vdd1 value=\{VH\} savecurrent=false}
C {lab_pin.sym} -440 -480 0 0 {name=p1 sig_type=std_logic lab=VH
value=\{VH\}}
C {gnd.sym} -440 -370 0 0 {name=l1 lab=GND
value=\{VH\}}
C {capa.sym} -110 -460 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -310 -490 0 0 {name=p2 sig_type=std_logic lab=Vs}
C {gnd.sym} -230 -410 0 0 {name=l3 lab=GND
value=\{VH\}}
C {lab_pin.sym} -260 -560 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -230 -560 0 1 {name=p6 sig_type=std_logic lab=VH
value=\{VH\}}
C {lab_pin.sym} -110 -490 0 1 {name=p7 sig_type=std_logic lab=Vg}
