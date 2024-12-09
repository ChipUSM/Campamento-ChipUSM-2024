v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
N 236 -150 250 -150 {
lab=Vg_M1}
N 236 -110 250 -110 {
lab=Vg_M2}
N -720 -600 -720 -580 {
lab=GND}
N 460 -130 460 -120 {
lab=Vo}
N 340 -90 340 -80 {
lab=GND}
N 460 -130 490 -130 {
lab=Vo}
N 430 -130 460 -130 {
lab=Vo}
N 340 -250 340 -230 {
lab=VH}
N 340 -190 340 -170 {
lab=#net1}
N 130 -240 180 -240 {
lab=Vg_M1}
N 60 -190 60 -160 {
lab=GND}
N 30 -310 30 -290 {
lab=#net2}
N 60 -310 60 -290 {
lab=#net3}
N 130 10 180 10 {
lab=Vg_M2}
N 60 60 60 90 {
lab=GND}
N 30 -60 30 -40 {
lab=#net4}
N 60 -60 60 -40 {
lab=#net5}
N -630 -600 -630 -580 {
lab=GND}
N -500 -70 -470 -70 {
lab=Vs}
N -230 -90 -210 -90 {
lab=NOL_P}
N -230 -50 -210 -50 {
lab=NOL_N}
N -630 -670 -630 -650 {
lab=#net6}
N -630 -750 -630 -730 {
lab=VH}
N -720 -750 -720 -730 {
lab=Vdd}
N -720 -670 -720 -660 {
lab=#net7}
N -660 0 -660 20 {
lab=GND}
N -500 -70 -500 -50 {
lab=Vs}
N -510 -70 -500 -70 {
lab=Vs}
N -840 -90 -810 -90 {
lab=VIN_S}
N -840 -50 -810 -50 {
lab=VIN_Ref}
N -290 -300 -270 -300 {
lab=Vs_M2}
N -550 -300 -530 -300 {
lab=Vs_M1}
N -650 -360 -630 -360 {
lab=pwm_sel}
N -390 -360 -370 -360 {
lab=pwm_sel}
N -390 -280 -370 -280 {
lab=NOL_N}
N -650 -280 -630 -280 {
lab=NOL_P}
N -940 -740 -940 -710 {
lab=Vs_M1_OL}
N -940 -650 -940 -630 {
lab=GND}
N -880 -660 -880 -630 {
lab=Vs_M2_OL}
N -880 -570 -880 -550 {
lab=GND}
N -390 -320 -370 -320 {
lab=Vs_M2_OL}
N -650 -320 -630 -320 {
lab=Vs_M1_OL}
N -190 -660 -190 -640 {
lab=GND}
N -190 -750 -190 -720 {
lab=pwm_sel}
N 0 -620 0 -600 {
lab=GND}
N 0 -710 0 -680 {
lab=VCC}
N 100 -620 100 -600 {
lab=GND}
N 100 -710 100 -680 {
lab=VSS}
C {lab_pin.sym} 340 -248 0 0 {name=p1 sig_type=std_logic lab=VH}
C {lab_pin.sym} 236 -150 0 0 {name=p2 sig_type=std_logic lab=Vg_M1}
C {lab_pin.sym} 236 -110 0 0 {name=p3 sig_type=std_logic lab=Vg_M2}
C {lab_pin.sym} 484 -130 2 0 {name=p4 sig_type=std_logic lab=Vo}
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
C {vsource.sym} -720 -630 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} -720 -750 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {gnd.sym} -720 -580 0 0 {name=l2 lab=GND}
C {launcher.sym} -1230 -420 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
*tclcommand="xschem annotate_op"}
C {gnd.sym} 340 -80 0 0 {name=l3 lab=GND}
C {ammeter.sym} 340 -210 0 0 {name=V_Iin savecurrent=true spice_ignore=0}
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
*tran 100p 1u
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
C {lab_pin.sym} -20 -240 0 0 {name=p8 sig_type=std_logic lab=Vs_M1}
C {lab_pin.sym} 30 -370 0 0 {name=p9 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 60 -370 0 1 {name=p10 sig_type=std_logic lab=VH
value=\{VH\}}
C {lab_pin.sym} 180 -240 0 1 {name=p11 sig_type=std_logic lab=Vg_M1}
C {gnd.sym} 60 -160 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -20 10 0 0 {name=p12 sig_type=std_logic lab=Vs_M2}
C {lab_pin.sym} 30 -120 0 0 {name=p13 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 60 -120 0 1 {name=p14 sig_type=std_logic lab=VH
value=\{VH\}}
C {lab_pin.sym} 180 10 0 1 {name=p15 sig_type=std_logic lab=Vg_M2}
C {gnd.sym} 60 90 0 0 {name=l1 lab=GND}
C {vsource.sym} -630 -630 0 0 {name=Vdd1 value=\{VH\} savecurrent=false}
C {lab_pin.sym} -630 -750 0 0 {name=p16 sig_type=std_logic lab=VH}
C {gnd.sym} -630 -580 0 0 {name=l7 lab=GND}
C {ammeter.sym} 60 -340 0 0 {name=V_Igd_VH1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 60 -90 0 0 {name=V_Igd_VH2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 30 -90 0 1 {name=V_Igd_Vdd2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 30 -340 0 1 {name=V_Igd_Vdd1 savecurrent=true spice_ignore=0}
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
C {lab_pin.sym} -500 -50 3 0 {name=p17 sig_type=std_logic lab=Vs}
C {lab_pin.sym} -350 -190 0 0 {name=p20 sig_type=std_logic lab=Vdd}
C {gnd.sym} -350 -10 0 0 {name=l8 lab=GND
value=\{VH\}}
C {lab_pin.sym} -210 -90 0 1 {name=p21 sig_type=std_logic lab=NOL_P}
C {lab_pin.sym} -210 -50 0 1 {name=p22 sig_type=std_logic lab=NOL_N}
C {ammeter.sym} -630 -700 2 1 {name=V_Ivh savecurrent=true spice_ignore=0}
C {ammeter.sym} -720 -700 2 1 {name=V_Ivdd savecurrent=true spice_ignore=0}
C {ammeter.sym} -350 -160 0 0 {name=V_Inol savecurrent=true spice_ignore=0}
C {lab_pin.sym} -660 -200 0 0 {name=p7 sig_type=std_logic lab=Vdd}
C {gnd.sym} -660 20 0 0 {name=l5 lab=GND
value=\{VH\}}
C {ammeter.sym} -660 -170 0 0 {name=V_Ipd savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} -310 -750 0 0 {name=p18 sig_type=std_logic lab=VIN_Ref}
C {vsource.sym} -310 -720 0 1 {name=Vg2 value="PULSE(0 \{Vdd\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {devices/lab_pin.sym} -310 -630 0 0 {name=p23 sig_type=std_logic lab=VIN_S}
C {vsource.sym} -310 -600 0 1 {name=Vg3 value="PULSE(0 \{Vdd\} \{Td\} \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {gnd.sym} -310 -690 0 0 {name=l4 lab=GND}
C {gnd.sym} -310 -570 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -840 -90 0 0 {name=p6 sig_type=std_logic lab=VIN_S}
C {devices/lab_pin.sym} -840 -50 0 0 {name=p19 sig_type=std_logic lab=VIN_Ref}
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
.param Vsel = 1.2
*.param Vsel = 0

*.param D = 0.6364
.param D = 0.615
.param TR = 1p
.param TF = 1p
.param Td = D*T
.param TdR = 2n
.param TdF = 2n

*fs = 10MHz
*.param T = 0.1u
*fs = 8.4MHz
.param T = 0.11905u

*.param temp = 27
*.param temp = -40
.param temp = 125

"}
C {/home/designer/shared/simulations/IHP-sg13g2/Simulaciones/IHP_Tapeout24/GD/GD_vto1p1.sym} 10 -200 0 0 {name=X3}
C {/home/designer/shared/simulations/IHP-sg13g2/Simulaciones/IHP_Tapeout24/GD/GD_vto1p1.sym} 10 50 0 0 {name=X2}
C {/home/designer/shared/simulations/IHP-sg13g2/Simulaciones/IHP_Tapeout24/NOL/NOL_vto1p1.sym} -350 -70 0 0 {name=x4}
C {/home/designer/shared/simulations/IHP-sg13g2/Simulaciones/IHP_Tapeout24/PD/PD_vto1p1.sym} -660 -70 0 0 {name=x5}
C {sg13g2_stdcells/sg13g2_mux2_2.sym} -590 -300 2 1 {name=x8 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_mux2_2.sym} -330 -300 2 1 {name=x6 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} -530 -300 0 1 {name=p24 sig_type=std_logic lab=Vs_M1}
C {lab_pin.sym} -270 -300 0 1 {name=p25 sig_type=std_logic lab=Vs_M2}
C {lab_pin.sym} -390 -360 0 0 {name=p26 sig_type=std_logic lab=pwm_sel}
C {lab_pin.sym} -650 -360 0 0 {name=p27 sig_type=std_logic lab=pwm_sel}
C {lab_pin.sym} -650 -280 0 0 {name=p28 sig_type=std_logic lab=NOL_P}
C {lab_pin.sym} -390 -280 0 0 {name=p29 sig_type=std_logic lab=NOL_N}
C {vsource.sym} -880 -600 0 1 {name=Vg1 value="PULSE(0 \{Vdd\} \{TdR\} \{TR\} \{TF\} \{T*D-TdR-TdF\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -940 -740 0 1 {name=p30 sig_type=std_logic lab=Vs_M1_OL}
C {gnd.sym} -940 -630 0 1 {name=l10 lab=GND}
C {vsource.sym} -940 -680 0 1 {name=Vg4 value="PULSE(0 \{Vdd\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -880 -660 0 1 {name=p31 sig_type=std_logic lab=Vs_M2_OL}
C {gnd.sym} -880 -550 0 1 {name=l11 lab=GND}
C {lab_pin.sym} -650 -320 0 0 {name=p32 sig_type=std_logic lab=Vs_M1_OL}
C {lab_pin.sym} -390 -320 0 0 {name=p33 sig_type=std_logic lab=Vs_M2_OL}
C {vsource.sym} -190 -690 0 0 {name=Vdd2 value=\{Vsel\} savecurrent=false}
C {lab_pin.sym} -190 -750 0 0 {name=p34 sig_type=std_logic lab=pwm_sel}
C {gnd.sym} -190 -640 0 0 {name=l12 lab=GND}
C {/home/designer/shared/simulations/IHP-sg13g2/Simulaciones/IHP_Tapeout24/DCDC_Buck_V2.sym} 350 -110 0 0 {name=X1}
C {vsource.sym} 0 -650 0 0 {name=VCC value=1.2 savecurrent=false}
C {lab_pin.sym} 0 -710 0 0 {name=p35 sig_type=std_logic lab=VCC}
C {gnd.sym} 0 -600 0 0 {name=l13 lab=GND}
C {vsource.sym} 100 -650 0 0 {name=VSS value=0 savecurrent=false}
C {lab_pin.sym} 100 -710 0 0 {name=VSS1 sig_type=std_logic lab=VSS
value=0}
C {gnd.sym} 100 -600 0 0 {name=VSS2 lab=GND
value=0}
