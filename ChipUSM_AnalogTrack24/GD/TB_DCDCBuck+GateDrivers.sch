v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
N -394 -140 -380 -140 {
lab=Vg_M1}
N -394 -100 -380 -100 {
lab=Vg_M2}
N -240 -510 -240 -480 {
lab=Vdd}
N -240 -420 -240 -400 {
lab=GND}
N -520 -600 -520 -570 {
lab=Vs_M1}
N -520 -510 -520 -490 {
lab=GND}
N -460 -520 -460 -490 {
lab=Vs_M2}
N -460 -430 -460 -410 {
lab=GND}
N -170 -120 -170 -110 {
lab=Vo}
N -290 -80 -290 -70 {
lab=GND}
N -170 -120 -140 -120 {
lab=Vo}
N -200 -120 -170 -120 {
lab=Vo}
N -290 -240 -290 -220 {
lab=VH}
N -290 -180 -290 -160 {
lab=#net1}
N -510 -250 -460 -250 {
lab=Vg_M1}
N -580 -180 -580 -170 {
lab=GND}
N -610 -320 -610 -300 {
lab=#net2}
N -580 -320 -580 -300 {
lab=#net3}
N -510 0 -460 0 {
lab=Vg_M2}
N -580 70 -580 80 {
lab=GND}
N -610 -70 -610 -50 {
lab=#net4}
N -580 -70 -580 -50 {
lab=#net5}
N -150 -510 -150 -480 {
lab=VH}
N -150 -420 -150 -400 {
lab=GND}
N -610 -180 -580 -180 {
lab=GND}
N -580 -200 -580 -180 {
lab=GND}
N -610 -200 -610 -180 {
lab=GND}
N -610 70 -580 70 {
lab=GND}
N -580 50 -580 70 {
lab=GND}
N -610 50 -610 70 {
lab=GND}
C {lab_pin.sym} -290 -238 0 0 {name=p1 sig_type=std_logic lab=VH}
C {lab_pin.sym} -394 -140 0 0 {name=p2 sig_type=std_logic lab=Vg_M1}
C {lab_pin.sym} -394 -100 0 0 {name=p3 sig_type=std_logic lab=Vg_M2}
C {lab_pin.sym} -146 -120 2 0 {name=p4 sig_type=std_logic lab=Vo}
C {vsource.sym} -240 -450 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} -240 -510 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {gnd.sym} -240 -400 0 0 {name=l2 lab=GND}
C {vsource.sym} -460 -460 0 1 {name=Vg2 value="PULSE(0 \{Vdd\} \{TdR\} \{TR\} \{TF\} \{T*D-TdR-TdF\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -520 -600 0 1 {name=p6 sig_type=std_logic lab=Vs_M1}
C {gnd.sym} -520 -490 0 1 {name=l4 lab=GND}
C {vsource.sym} -520 -540 0 1 {name=Vg1 value="PULSE(0 \{Vdd\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -460 -520 0 1 {name=p7 sig_type=std_logic lab=Vs_M2}
C {gnd.sym} -460 -410 0 1 {name=l5 lab=GND}
C {launcher.sym} -1130 -520 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
*tclcommand="xschem annotate_op"}
C {gnd.sym} -290 -70 0 0 {name=l3 lab=GND}
C {ammeter.sym} -290 -200 0 0 {name=V_Iin savecurrent=true spice_ignore=0}
C {devices/code.sym} -980 30 0 0 {name=Transient_simulation_8.4MHz only_toplevel=false spice_ignore= true

value="
.save all
+ @n.x1.xm1.nsg13_hv_pmos[ids]
+ @n.x1.xm2.nsg13_hv_nmos[ids]
.param SimTime = 5u
.param T1=2.381u
.control
reset
set color0 = white
tran 1n 6u
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

meas tran Vo_mean AVG v(Vo) from=3.5714u to=5.9524u
meas tran Io_mean AVG Io from=3.5714u to=5.9524u
meas tran Po_mean AVG Po from=3.5714u to=5.9524u
meas tran Pin_mean AVG Pin from=3.5714u to=5.9524u
meas tran P_M1_mean AVG P_M1 from=3.5714u to=5.9524u
meas tran P_M2_mean AVG P_M2 from=3.5714u to=5.9524u
meas tran P_GD_Vdd_mean AVG P_GD_Vdd from=3.5714u to=5.9524u
meas tran P_GD_VH_mean AVG P_GD_VH from=3.5714u to=5.9524u

meas TRAN tdR TRIG v(Vg_M1) VAL=0.33 RISE=1 TARG v(Vg_M2) VAL=0.33 RISE=1
meas TRAN tdF TRIG v(Vg_M2) VAL=2.97 FALL=1 TARG v(Vg_M1) VAL=2.97 FALL=1

let P_GD = P_GD_Vdd_mean+P_GD_VH_mean
let Pin_tot_mean = P_GD + Pin_mean
let eff = 100*Po_mean/Pin_tot_mean
let eff_DCDC = 100*Po_mean/Pin_mean
let loss_M1 = 100*P_M1_mean/Pin_tot_mean
let loss_M2 = 100*P_M2_mean/Pin_tot_mean
let loss_GD = 100*P_GD/Pin_tot_mean
let sumaPot = eff+loss_M1+loss_M2+loss_GD
print Pin_tot_mean eff eff_DCDC loss_M1 loss_M2 loss_GD sumaPot

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
C {lab_pin.sym} -660 -250 0 0 {name=p8 sig_type=std_logic lab=Vs_M1}
C {lab_pin.sym} -610 -380 0 0 {name=p9 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -580 -380 0 1 {name=p10 sig_type=std_logic lab=VH
value=\{VH\}}
C {lab_pin.sym} -460 -250 0 1 {name=p11 sig_type=std_logic lab=Vg_M1}
C {gnd.sym} -580 -170 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -660 0 0 0 {name=p12 sig_type=std_logic lab=Vs_M2}
C {lab_pin.sym} -610 -130 0 0 {name=p13 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -580 -130 0 1 {name=p14 sig_type=std_logic lab=VH
value=\{VH\}}
C {lab_pin.sym} -460 0 0 1 {name=p15 sig_type=std_logic lab=Vg_M2}
C {gnd.sym} -580 80 0 0 {name=l1 lab=GND}
C {vsource.sym} -150 -450 0 0 {name=Vdd1 value=\{VH\} savecurrent=false}
C {lab_pin.sym} -150 -510 0 0 {name=p16 sig_type=std_logic lab=VH}
C {gnd.sym} -150 -400 0 0 {name=l7 lab=GND}
C {code.sym} -1530 -460 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.lib cornerMOSlv.lib mos_tt
*.lib cornerMOShv.lib mos_ff
*.lib cornerMOSlv.lib mos_ff
*.lib cornerMOShv.lib mos_ss
*.lib cornerMOSlv.lib mos_ss
*.lib cornerMOShv.lib mos_sf
*.lib cornerMOSlv.lib mos_sf
*.lib cornerMOShv.lib mos_fs
*.lib cornerMOSlv.lib mos_fs
"}
C {ammeter.sym} -580 -350 0 0 {name=V_Igd_VH1 savecurrent=true spice_ignore=0}
C {ammeter.sym} -580 -100 0 0 {name=V_Igd_VH2 savecurrent=true spice_ignore=0}
C {ammeter.sym} -610 -100 0 1 {name=V_Igd_Vdd2 savecurrent=true spice_ignore=0}
C {ammeter.sym} -610 -350 0 1 {name=V_Igd_Vdd1 savecurrent=true spice_ignore=0}
C {code.sym} -1050 -450 0 0 {name=Simulation_Parameters only_toplevel=false spice_ignore=false

value="
.param Vdd = 1.2
.param VH = 3.3
.param Del = 0

.param D = 0.615

* fs = 10MHz
.param T = 0.1u

.param TR = 1n
.param TF = 1n
.param TdR = 1n
.param TdF = 1n

.option temp = 27
*.option temp = 125
*.option temp = -40

"}
C {code.sym} -1281 -449 0 0 {name=RLC_Parameters only_toplevel=false spice_ignore=false
value="
*Parametros
*Filtro

* Io=1A 10MHz
.param L = 275n
.param R = 1.2
.param C = 31.25n

* Io=1A 8.4MHz
*.param L = 327n
*.param R = 1.2
*.param C = 37n

* Io=100mA 8.4MHz
*.param L = 3.27u
*.param R = 12
*.param C = 3.7n

* Io=100mA y 1A @8.4MHz
*.param L = 595n
*.param R = 12
*.param R = 1.2
*.param R = 0.4
*.param R = 0.6
*.param R = 0.3
*.param C = 20.5n

* Io =1A 1MHz
*.param L = 2.75u
*.param R = 1.2
*.param C = 312.5n

* Io =100mA 1MHz
*.param L = 27.5u
*.param R = 12
*.param C = 31.25n

* Io =100mA y 1A @1MHz
*.param L = 5u
*.param R = 12
*.param R = 1.2
*.param C = 171n


"}
C {devices/code.sym} -1530 -160 0 0 {name=Transient_simulation_10MHz only_toplevel=false spice_ignore=false

value="

.option method=gear

.save all
+ @n.x1.xm1.nsg13_hv_pmos[ids]
+ @n.x1.xm2.nsg13_hv_nmos[ids]
.param SimTime = 5u
.param T1=2.381u
.control
reset
set color0 = white
tran 1n 5u
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

meas tran Vo_mean AVG v(Vo) from=2u to=4u
meas tran Io_mean AVG Io from=2u to=4u
meas tran Po_mean AVG Po from=2u to=4u
meas tran Pin_mean AVG Pin from=2u to=4u
meas tran P_M1_mean AVG P_M1 from=2u to=4u
meas tran P_M2_mean AVG P_M2 from=2u to=4u
meas tran P_GD_Vdd_mean AVG P_GD_Vdd from=2u to=4u
meas tran P_GD_VH_mean AVG P_GD_VH from=2u to=4u

meas TRAN tdR TRIG v(Vg_M1) VAL=0.33 RISE=1 TARG v(Vg_M2) VAL=0.33 RISE=1
meas TRAN tdF TRIG v(Vg_M1) VAL=2.97 FALL=1 TARG v(Vg_M2) VAL=2.97 FALL=1

let P_GD = P_GD_Vdd_mean+P_GD_VH_mean
let Pin_tot_mean = P_GD + Pin_mean
let eff = 100*Po_mean/Pin_tot_mean
let eff_DCDC = 100*Po_mean/Pin_mean
let loss_M1 = 100*P_M1_mean/Pin_tot_mean
let loss_M2 = 100*P_M2_mean/Pin_tot_mean
let loss_GD = 100*P_GD/Pin_tot_mean
let sumaPot = eff+loss_M1+loss_M2+loss_GD
print Pin_tot_mean eff eff_DCDC loss_M1 loss_M2 loss_GD sumaPot

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
C {../DCDCBuck/DCDC_Buck.sym} -280 -100 0 0 {name=X1}
C {../GD/GateDriver.sym} -630 40 0 0 {name=X3}
C {../GD/GateDriver.sym} -630 -210 0 0 {name=X2}
C {code.sym} -1280 -300 0 0 {name=POWER_MOS_Parameters only_toplevel=false spice_ignore=false

value="
*M1 hvPMOS
.param temp=27
.param mult_M1 = 1
.param w_M1 =10u 
.param l_M1 = 0.4u
.param ng_M1 = 1

*M2 hvNMOS
.param mult_M2 = 1
.param w_M2 =10u 
.param l_M2 =0.45u
.param ng_M2 =1




"}
C {code.sym} -1680 30 0 0 {name=POWER_MOS_Parameters_sol1 only_toplevel=false spice_ignore=true

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
C {code.sym} -1410 30 0 0 {name=Simulation_Parameters1 only_toplevel=false spice_ignore=true

value="
.param Vdd = 1.2
.param VH = 3.3
.param Del = 0

.param D = 0.615

* fs = 10MHz
.param T = 0.1u
* fs = 8.7MHz
*.param T = 0.115u
* fs = 8.5MHz
*.param T = 0.11765u
* fs = 8.4MHz
*.param T = 0.11905u
* fs = 9MHz
*.param T = 0.1111111u
* fs = 1MHz
*.param T = 1u

.param TR = 1n
.param TF = 1n
*.param TdR = 2n
*.param TdF = 2n
*.param TdR = 0
*.param TdF = 0
.param TdR = 1.5n
.param TdF = 1.5n
*.param TdR = 2.5n
*.param TdF = 2.5n

.option temp = 27
*.option temp = 125
*.option temp = -40

"}
C {code.sym} -1210 30 0 0 {name=GateDriver_Parameters1 only_toplevel=false spice_ignore=true

value="
.param temp=27

.param mult_13 = 1
.param mult_24 = 6
.param mult_5 = 30
.param mult_6 = 25
.param mult_7 = 250
.param mult_8 = 200
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
C {code.sym} -1530 -310 0 0 {name=GateDriver_Parameters only_toplevel=false 

value="
.param temp=27

.param mult_13 = 1
.param mult_24 = 1
.param mult_5 = 1
.param mult_6 = 1
.param mult_7 = 1
.param mult_8 = 1
.param mult_9 = 1
.param mult_10 = 1


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
