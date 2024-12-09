v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
N 356 -180 370 -180 {
lab=Vg_M1}
N 356 -140 370 -140 {
lab=Vg_M2}
N -590 -390 -590 -370 {
lab=GND}
N 580 -160 580 -150 {
lab=Vo}
N 460 -120 460 -110 {
lab=GND}
N 580 -160 610 -160 {
lab=Vo}
N 550 -160 580 -160 {
lab=Vo}
N 460 -280 460 -260 {
lab=VH}
N 460 -220 460 -200 {
lab=#net1}
N 250 -270 300 -270 {
lab=Vg_M1}
N 180 -220 180 -190 {
lab=GND}
N 150 -340 150 -320 {
lab=#net2}
N 180 -340 180 -320 {
lab=#net3}
N 250 -20 300 -20 {
lab=Vg_M2}
N 180 30 180 60 {
lab=GND}
N 150 -90 150 -70 {
lab=#net4}
N 180 -90 180 -70 {
lab=#net5}
N -500 -390 -500 -370 {
lab=GND}
N -250 -200 -220 -200 {
lab=Vs}
N 20 -220 40 -220 {
lab=Vs_M1}
N 20 -180 40 -180 {
lab=Vs_M2}
N -500 -460 -500 -440 {
lab=#net6}
N -500 -540 -500 -520 {
lab=VH}
N -590 -540 -590 -520 {
lab=Vdd}
N -590 -460 -590 -450 {
lab=#net7}
N -410 -130 -410 -110 {
lab=GND}
N -250 -200 -250 -180 {
lab=Vs}
N -260 -200 -250 -200 {
lab=Vs}
N -590 -220 -560 -220 {
lab=VIN_S}
N -590 -180 -560 -180 {
lab=VIN_Ref}
C {lab_pin.sym} 460 -278 0 0 {name=p1 sig_type=std_logic lab=VH}
C {lab_pin.sym} 356 -180 0 0 {name=p2 sig_type=std_logic lab=Vg_M1}
C {lab_pin.sym} 356 -140 0 0 {name=p3 sig_type=std_logic lab=Vg_M2}
C {lab_pin.sym} 604 -160 2 0 {name=p4 sig_type=std_logic lab=Vo}
C {code.sym} -1210 -320 0 0 {name=POWER_MOS_Parameters only_toplevel=false 

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
C {lab_pin.sym} -590 -540 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {gnd.sym} -590 -370 0 0 {name=l2 lab=GND}
C {launcher.sym} -1230 -420 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
*tclcommand="xschem annotate_op"}
C {gnd.sym} 460 -110 0 0 {name=l3 lab=GND}
C {ammeter.sym} 460 -240 0 0 {name=V_Iin savecurrent=true spice_ignore=0}
C {devices/code.sym} -1210 -160 0 0 {name=Transient_simulation only_toplevel=false 

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
let I_in = i(V_Iin)

let Vsd_M1 = v(VH) - v(x1.Vc)
let Vds_M2 = v(x1.Vc)

let Pin_DCDC = I_in*v(VH)
let P_M1 = Vsd_M1*Id_M1
let P_M2 = -Vds_M2*Id_M2
let P_GD_Vdd = v(Vdd)*(i(V_Igd_Vdd1)+i(V_Igd_Vdd2))
let P_GD_VH = v(VH)*(i(V_Igd_VH1)+i(V_Igd_VH2))
let P_NOL = v(Vdd)*i(V_Inol)
let P_PD = v(Vdd)*i(V_Ipd)

let Pin_Vdd = v(Vdd)*i(V_Ivdd)
let Pin_VH = v(VH)*i(V_Ivh)
let Po = Io*v(Vo)

let DataMeasBegin = SimTime-1u

meas tran Vo_mean AVG v(Vo) from=2.381u to=4.7619u
meas tran Io_mean AVG Io from=2.381u to=4.7619u
meas tran Po_mean AVG Po from=2.381u to=4.7619u

meas tran Pin_Vdd_mean AVG Pin_Vdd from=2.381u to=4.7619u
meas tran Pin_VH_mean AVG Pin_VH from=2.381u to=4.7619u
let Pin_tot_mean = Pin_Vdd_mean + Pin_VH_mean
print Pin_tot_mean

meas tran Pin_DCDC_mean AVG Pin_DCDC from=2.381u to=4.7619u
meas tran P_M1_mean AVG P_M1 from=2.381u to=4.7619u
meas tran P_M2_mean AVG P_M2 from=2.381u to=4.7619u
meas tran P_GD_Vdd_mean AVG P_GD_Vdd from=2.381u to=4.7619u
meas tran P_GD_VH_mean AVG P_GD_VH from=2.381u to=4.7619u
meas tran P_NOL_mean AVG P_NOL from=2.381u to=4.7619u
meas tran P_PD_mean AVG P_PD from=2.381u to=4.7619u

meas TRAN tdR TRIG v(Vg_M1) VAL=0.33 RISE=1 TARG v(Vg_M2) VAL=0.33 RISE=1
meas TRAN tdF TRIG v(Vg_M1) VAL=2.97 FALL=1 TARG v(Vg_M2) VAL=2.97 FALL=1

let P_GD = P_GD_Vdd_mean+P_GD_VH_mean
let eff = 100*Po_mean/Pin_tot_mean
let eff_DCDC = 100*Po_mean/Pin_DCDC_mean
let loss_M1 = 100*P_M1_mean/Pin_tot_mean
let loss_M2 = 100*P_M2_mean/Pin_tot_mean
let loss_GD = 100*P_GD/Pin_tot_mean
let loss_NOL = 100*P_NOL_mean/Pin_tot_mean
let loss_PD = 100*P_PD_mean/Pin_tot_mean
let sumaPot = eff+loss_M1+loss_M2+loss_GD+loss_NOL+loss_PD
print eff eff_DCDC loss_M1 loss_M2 loss_GD loss_NOL loss_PD sumaPot

plot Io i(v.x1.V_IL)
plot Id_M1 Id_M2
plot v(Vo)
plot Po 
*plot P_M1 P_M2
plot v(x1.Vc)
plot v(Vg_M1) v(Vg_M2)
plot v(Vs_M1) v(Vs_M2)

.endc



.end
"}
C {lab_pin.sym} 100 -270 0 0 {name=p8 sig_type=std_logic lab=Vs_M1}
C {lab_pin.sym} 150 -400 0 0 {name=p9 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 180 -400 0 1 {name=p10 sig_type=std_logic lab=VH
value=\{VH\}}
C {lab_pin.sym} 300 -270 0 1 {name=p11 sig_type=std_logic lab=Vg_M1}
C {gnd.sym} 180 -190 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 100 -20 0 0 {name=p12 sig_type=std_logic lab=Vs_M2}
C {lab_pin.sym} 150 -150 0 0 {name=p13 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 180 -150 0 1 {name=p14 sig_type=std_logic lab=VH
value=\{VH\}}
C {lab_pin.sym} 300 -20 0 1 {name=p15 sig_type=std_logic lab=Vg_M2}
C {gnd.sym} 180 60 0 0 {name=l1 lab=GND}
C {vsource.sym} -500 -420 0 0 {name=Vdd1 value=\{VH\} savecurrent=false}
C {lab_pin.sym} -500 -540 0 0 {name=p16 sig_type=std_logic lab=VH}
C {gnd.sym} -500 -370 0 0 {name=l7 lab=GND}
C {ammeter.sym} 180 -370 0 0 {name=V_Igd_VH1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 180 -120 0 0 {name=V_Igd_VH2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 150 -120 0 1 {name=V_Igd_Vdd2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 150 -370 0 1 {name=V_Igd_Vdd1 savecurrent=true spice_ignore=0}
C {code.sym} -1430 -470 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="

*.lib cornerMOShv.lib mos_tt
*.lib cornerMOSlv.lib mos_tt
*.lib cornerMOShv.lib mos_ff
*.lib cornerMOSlv.lib mos_ff
.lib cornerMOShv.lib mos_ss
.lib cornerMOSlv.lib mos_ss
*.lib cornerMOShv.lib mos_sf
*.lib cornerMOSlv.lib mos_sf
*.lib cornerMOShv.lib mos_fs
*.lib cornerMOSlv.lib mos_fs

.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ

"}
C {lab_pin.sym} -250 -180 3 0 {name=p17 sig_type=std_logic lab=Vs}
C {lab_pin.sym} -100 -320 0 0 {name=p20 sig_type=std_logic lab=Vdd}
C {gnd.sym} -100 -140 0 0 {name=l8 lab=GND
value=\{VH\}}
C {lab_pin.sym} 40 -220 0 1 {name=p21 sig_type=std_logic lab=Vs_M1}
C {lab_pin.sym} 40 -180 0 1 {name=p22 sig_type=std_logic lab=Vs_M2}
C {ammeter.sym} -500 -490 2 1 {name=V_Ivh savecurrent=true spice_ignore=0}
C {ammeter.sym} -590 -490 2 1 {name=V_Ivdd savecurrent=true spice_ignore=0}
C {ammeter.sym} -100 -290 0 0 {name=V_Inol savecurrent=true spice_ignore=0}
C {lab_pin.sym} -410 -330 0 0 {name=p7 sig_type=std_logic lab=Vdd}
C {gnd.sym} -410 -110 0 0 {name=l5 lab=GND
value=\{VH\}}
C {ammeter.sym} -410 -300 0 0 {name=V_Ipd savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} -150 -650 0 0 {name=p18 sig_type=std_logic lab=VIN_Ref}
C {vsource.sym} -150 -620 0 1 {name=Vg2 value="PULSE(0 \{Vdd\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {devices/lab_pin.sym} -150 -530 0 0 {name=p23 sig_type=std_logic lab=VIN_S}
C {vsource.sym} -150 -500 0 1 {name=Vg3 value="PULSE(0 \{Vdd\} \{Td\} \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {gnd.sym} -150 -590 0 0 {name=l4 lab=GND}
C {gnd.sym} -150 -470 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -590 -220 0 0 {name=p6 sig_type=std_logic lab=VIN_S}
C {devices/lab_pin.sym} -590 -180 0 0 {name=p19 sig_type=std_logic lab=VIN_Ref}
C {code.sym} -1430 -320 0 0 {name=GateDriver_Parameters only_toplevel=false 

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
C {code.sym} -951 -309 0 0 {name=RLC_Parameters only_toplevel=false 
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
*.param L = 275n
*.param R = 1.2
*.param C = 31.25n

* Io=1A 8.4MHz
.param L = 327n
.param R = 1.2
.param C = 37n

"}
C {code.sym} -1430 -160 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 1.2
.param VH = 3.3
.param Del = 0

*.param D = 0.6364
.param D = 0.615
.param TR = 1p
.param TF = 1p
.param Td = D*T

*fs = 10MHz
*.param T = 0.1u
*fs = 8.4MHz
.param T = 0.11905u

*.param temp = 27
*.param temp = -40
.param temp = 125

"}
C {/home/designer/shared/simulations/IHP-sg13g2/Simulaciones/IHP_Tapeout24/GD/GD_vto1p1.sym} 130 -230 0 0 {name=X3}
C {/home/designer/shared/simulations/IHP-sg13g2/Simulaciones/IHP_Tapeout24/GD/GD_vto1p1.sym} 130 20 0 0 {name=X2}
C {/home/designer/shared/simulations/IHP-sg13g2/Simulaciones/IHP_Tapeout24/NOL/NOL_vto1p1.sym} -100 -200 0 0 {name=x4}
C {../PD/PD_vto1p1.sym} -410 -200 0 0 {name=x5}
C {DCDC_Buck_V2.sym} 470 -140 0 0 {name=X1}
