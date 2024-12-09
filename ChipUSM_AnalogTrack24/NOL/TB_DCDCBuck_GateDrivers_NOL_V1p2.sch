v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
N 26 -180 40 -180 {
lab=Vg_M1}
N 26 -140 40 -140 {
lab=Vg_M2}
N -590 -480 -590 -450 {
lab=Vdd}
N -590 -390 -590 -370 {
lab=GND}
N -680 -480 -680 -450 {
lab=Vs}
N -680 -390 -680 -370 {
lab=GND}
N 250 -160 250 -150 {
lab=Vo}
N 130 -120 130 -110 {
lab=GND}
N 250 -160 280 -160 {
lab=Vo}
N 220 -160 250 -160 {
lab=Vo}
N 130 -280 130 -260 {
lab=VH}
N 130 -220 130 -200 {
lab=#net1}
N -80 -270 -30 -270 {
lab=Vg_M1}
N -150 -220 -150 -190 {
lab=GND}
N -180 -340 -180 -320 {
lab=#net2}
N -150 -340 -150 -320 {
lab=#net3}
N -80 -20 -30 -20 {
lab=Vg_M2}
N -150 30 -150 60 {
lab=GND}
N -180 -90 -180 -70 {
lab=#net4}
N -150 -90 -150 -70 {
lab=#net5}
N -390 -480 -390 -450 {
lab=VH}
N -390 -390 -390 -370 {
lab=GND}
N -640 -190 -600 -190 {
lab=Vs}
N -480 -280 -480 -250 {
lab=Vdd2}
N -360 -210 -340 -210 {
lab=Vs_M1}
N -360 -170 -340 -170 {
lab=Vs_M2}
N -480 -480 -480 -450 {
lab=Vdd2}
N -480 -390 -480 -370 {
lab=GND}
N -310 -480 -310 -450 {
lab=VH2}
N -310 -390 -310 -370 {
lab=GND}
C {DCDC_Buck.sym} 140 -140 0 0 {name=X1}
C {lab_pin.sym} 130 -278 0 0 {name=p1 sig_type=std_logic lab=VH}
C {lab_pin.sym} 26 -180 0 0 {name=p2 sig_type=std_logic lab=Vg_M1}
C {lab_pin.sym} 26 -140 0 0 {name=p3 sig_type=std_logic lab=Vg_M2}
C {lab_pin.sym} 274 -160 2 0 {name=p4 sig_type=std_logic lab=Vo}
C {code.sym} -1230 -310 0 0 {name=POWER_MOS_Parameters only_toplevel=false 

value="
*M1 hvPMOS
.param temp=27
.param mult_M1 = 12000
.param w_M1 =10u 
.param l_M1 = 0.4u
.param ng_M1 = 1

*M2 hvNMOS
.param mult_M2 = 4000
.param w_M2 =10u 
.param l_M2 =0.45u
.param ng_M2 =1




"}
C {vsource.sym} -590 -420 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} -590 -480 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {gnd.sym} -590 -370 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -680 -480 0 1 {name=p6 sig_type=std_logic lab=Vs}
C {gnd.sym} -680 -370 0 1 {name=l4 lab=GND}
C {vsource.sym} -680 -420 0 1 {name=Vg1 value="PULSE(0 \{Vdd\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {code.sym} -1440 -160 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 1.2
.param VH = 3.3
.param Del = 0

*.param D = 0.42
*.param T = 1u
*.param TR = 7n
*.param TF = 7n
*.param TdR = 0.1u
*.param TdF = 0.1u

*.param D = 0.6364
.param D = 0.615
.param T = 0.1u
.param TR = 1p
.param TF = 1p
.param TdR = 1.5n
.param TdF = 1.5n
*.param TdR = 1n
*.param TdF = 1n


.param temp = 27

"}
C {launcher.sym} -1230 -420 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
*tclcommand="xschem annotate_op"}
C {gnd.sym} 130 -110 0 0 {name=l3 lab=GND}
C {code_shown.sym} -971 -309 0 0 {name=RLC_Parameters only_toplevel=false 
value="
*Parametros
*Filtro
*.param L = 1.37u
*.param R = 0.9
*.param C = 416n

* Io=2A 10MHz
*.param L = 137.5n
*.param R = 0.6
*.param C = 62.5n

* Io=1A 10MHz
.param L = 275n
.param R = 1.2
.param C = 32n

"}
C {ammeter.sym} 130 -240 0 0 {name=V_Iin savecurrent=true spice_ignore=0}
C {devices/code.sym} -1230 -160 0 0 {name=Transient_simulation only_toplevel=false 

value="
.save all
+ @n.x1.xm1.nsg13_hv_pmos[ids]
+ @n.x1.xm2.nsg13_hv_nmos[ids]
.param SimTime = 5u

.option method=gear

.control
reset
set color0 = white
tran 100p 5u
let Io = i(v.x1.V_Io)
let Id_M1 = @n.x1.xm1.nsg13_hv_pmos[ids]
let Id_M2 = @n.x1.xm2.nsg13_hv_nmos[ids]
let Po = Io*v(Vo)
let I_in = i(V_Iin)
let Pin = I_in*v(VH)
let Vsd_M1 = v(VH) - v(x1.Vc)
let Vds_M2 = v(x1.Vc)
let P_M1 = Vsd_M1*Id_M1
let P_M2 = -Vds_M2*Id_M2
let P_GD_Vdd = v(Vdd)*(i(V_Igd_Vdd1)+i(V_Igd_Vdd2))
let P_GD_VH = v(VH)*(i(V_Igd_VH1)+i(V_Igd_VH2))
let DataMeasBegin = SimTime-1u

meas tran Vo_mean AVG v(Vo) from=4u to=5u
meas tran Io_mean AVG Io from=4u to=5u
meas tran Po_mean AVG Po from=4u to=5u
meas tran Pin_mean AVG Pin from=4u to=5u
meas tran P_M1_mean AVG P_M1 from=4u to=5u
meas tran P_M2_mean AVG P_M2 from=4u to=5u
meas tran P_GD_Vdd_mean AVG P_GD_Vdd from=4u to=5u
meas tran P_GD_VH_mean AVG P_GD_VH from=4u to=5u

let P_GD = P_GD_Vdd_mean+P_GD_VH_mean
let Pin_tot_mean = P_GD + Pin_mean
let eff = 100*Po_mean/Pin_tot_mean
let eff_DCDC = 100*Po_mean/Pin_mean
let loss_M1 = 100*P_M1_mean/Pin_tot_mean
let loss_M2 = 100*P_M2_mean/Pin_tot_mean
let loss_GD = 100*P_GD/Pin_tot_mean
let sumaPot = eff+loss_M1+loss_M2+loss_GD
print eff eff_DCDC loss_M1 loss_M2 loss_GD sumaPot

plot Io i(v.x1.V_IL)
plot Id_M1 Id_M2
plot v(Vo)
plot Po Pin
*plot P_M1 P_M2
plot v(x1.Vc)
plot v(Vg_M1) v(Vg_M2)
.endc



.end
"}
C {GateDriver.sym} -200 -230 0 0 {name=X2}
C {lab_pin.sym} -230 -270 0 0 {name=p8 sig_type=std_logic lab=Vs_M1}
C {lab_pin.sym} -180 -400 0 0 {name=p9 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -150 -400 0 1 {name=p10 sig_type=std_logic lab=VH2
value=\{VH\}}
C {lab_pin.sym} -30 -270 0 1 {name=p11 sig_type=std_logic lab=Vg_M1}
C {gnd.sym} -150 -190 0 0 {name=l6 lab=GND}
C {GateDriver.sym} -200 20 0 0 {name=X3}
C {lab_pin.sym} -230 -20 0 0 {name=p12 sig_type=std_logic lab=Vs_M2}
C {lab_pin.sym} -180 -150 0 0 {name=p13 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -150 -150 0 1 {name=p14 sig_type=std_logic lab=VH2
value=\{VH\}}
C {lab_pin.sym} -30 -20 0 1 {name=p15 sig_type=std_logic lab=Vg_M2}
C {gnd.sym} -150 60 0 0 {name=l1 lab=GND}
C {vsource.sym} -390 -420 0 0 {name=Vdd1 value=\{VH\} savecurrent=false}
C {lab_pin.sym} -390 -480 0 0 {name=p16 sig_type=std_logic lab=VH}
C {gnd.sym} -390 -370 0 0 {name=l7 lab=GND}
C {code.sym} -1430 -310 0 0 {name=GateDriver_Parameters only_toplevel=false 

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
C {ammeter.sym} -150 -370 0 0 {name=V_Igd_VH1 savecurrent=true spice_ignore=0}
C {ammeter.sym} -150 -120 0 0 {name=V_Igd_VH2 savecurrent=true spice_ignore=0}
C {ammeter.sym} -180 -120 0 1 {name=V_Igd_Vdd2 savecurrent=true spice_ignore=0}
C {ammeter.sym} -180 -370 0 1 {name=V_Igd_Vdd1 savecurrent=true spice_ignore=0}
C {code.sym} -1430 -470 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.lib cornerMOShv.lib mos_tt
.lib cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {lab_pin.sym} -640 -190 0 0 {name=p17 sig_type=std_logic lab=Vs}
C {lab_pin.sym} -480 -280 0 0 {name=p20 sig_type=std_logic lab=Vdd2}
C {gnd.sym} -480 -130 0 0 {name=l8 lab=GND
value=\{VH\}}
C {lab_pin.sym} -340 -210 0 1 {name=p21 sig_type=std_logic lab=Vs_M1}
C {lab_pin.sym} -340 -170 0 1 {name=p22 sig_type=std_logic lab=Vs_M2}
C {vsource.sym} -480 -420 0 0 {name=Vdd2 value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} -480 -480 0 0 {name=p7 sig_type=std_logic lab=Vdd2}
C {gnd.sym} -480 -370 0 0 {name=l5 lab=GND}
C {vsource.sym} -310 -420 0 0 {name=Vdd3 value=\{VH\} savecurrent=false}
C {lab_pin.sym} -310 -480 0 0 {name=p18 sig_type=std_logic lab=VH2}
C {gnd.sym} -310 -370 0 0 {name=l9 lab=GND}
C {NOL_v2p2.sym} -480 -190 0 0 {name=x4}
