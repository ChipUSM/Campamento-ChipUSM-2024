v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 -320 -60 -300 {
lab=GND}
N 30 -320 30 -300 {
lab=GND}
N 30 -390 30 -370 {
lab=#net1}
N 30 -470 30 -450 {
lab=23}
N -60 -470 -60 -450 {
lab=19}
N -60 -390 -60 -380 {
lab=#net2}
N 140 -320 140 -300 {
lab=GND}
N 140 -390 140 -370 {
lab=#net3}
N 140 -470 140 -450 {
lab=28}
N 530 -110 540 -110 {
lab=#net4}
N 620 -110 660 -110 {
lab=Vo}
N 620 -40 620 20 {
lab=GND}
N 620 -110 620 -100 {
lab=Vo}
N 600 -110 620 -110 {
lab=Vo}
N 530 -110 530 -90 {
lab=#net4}
N 490 -110 530 -110 {
lab=#net4}
N 330 -110 350 -110 {
lab=27}
N 530 20 620 20 {
lab=GND}
N 530 -30 530 20 {
lab=GND}
N 410 -110 430 -110 {
lab=#net5}
N -50 -250 -50 -200 {
lab=27}
N -70 -230 -70 -200 {
lab=28}
N 30 -240 30 -200 {
lab=23}
N 90 -120 120 -120 {
lab=19}
N -20 -200 -10 -200 {
lab=GND}
N -20 -250 -20 -200 {
lab=GND}
N -30 -200 -20 -200 {
lab=GND}
N 90 -140 130 -140 {
lab=GND}
N 90 -40 130 -40 {
lab=GND}
N -150 -100 -110 -100 {
lab=GND}
N 50 -0 50 30 {
lab=14}
N 30 -0 30 50 {
lab=13}
N 50 -240 50 -200 {
lab=22}
N 90 -180 90 -160 {
lab=21}
N 90 -100 140 -100 {
lab=18}
N 90 -80 160 -80 {
lab=17}
N 90 -60 190 -60 {
lab=16}
N 10 0 10 70 {
lab=12}
N -10 -0 -10 90 {
lab=11}
N -30 0 -30 110 {
lab=10}
N -50 0 -50 130 {
lab=9}
N -70 0 -70 150 {
lab=8}
C {/home/designer/shared/simulations/IHP-sg13g2/Simulaciones/IHP_Tapeout24/top/top.sym} -10 -100 0 0 {name=x1}
C {code.sym} -570 -230 0 0 {name=MODEL only_toplevel=true
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

.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
*.lib $::SG13G2_MODELS/diodes.lib
"}
C {code.sym} -570 -80 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 1.2
.param VH = 3.3

*fs = 10MHz
*.param T = 0.1u
*fs = 8.48MHz a Vo=1.2V
.param T = 0.11792u 
.param D = 0.615
*fs = 8.44MHz a Vo=1.8V
*.param T = 0.11848u 
*.param D = 0.4545

.param TR = 1p
.param TF = 1p
.param Td = D*T

.param temp = 27

"}
C {code.sym} -451 -229 0 0 {name=RLC_Parameters only_toplevel=false 
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
C {devices/code.sym} -600 70 0 0 {name=Transient_simulation_8.48MHz only_toplevel=false spice_ignore =false

value="
.save all
+ @n.x1.x1.xm1.nsg13_hv_pmos[ids]
+ @n.x1.x1.xm2.nsg13_hv_nmos[ids]
.param SimTime = 5u

.option method=gear

.control
reset
set color0 = white
tran 100p 5u
let Io = i(V_Io)
let IL = i(V_IL)
let Id_M1 = @n.x1.x1.xm1.nsg13_hv_pmos[ids]
let Id_M2 = @n.x1.x1.xm2.nsg13_hv_nmos[ids]
let I_DCDC = i(V_Idcdc)

let Vsd_M1 = v(28) - v(27)
let Vds_M2 = v(27)
let Vg_M1 = v(22)
let Vg_M2 = v(21)
let Vs_M1 = v(18)
let Vs_M2 = v(17)

let Pin_DCDC = I_DCDC*v(28)
let P_GD_VH = v(23)*i(V_Igd)
let P_DB = v(19)*i(V_Idig)
let P_M1 = Vsd_M1*Id_M1
let P_M2 = -Vds_M2*Id_M2


let Po = Io*v(Vo)

let DataMeasBegin = SimTime-1u

meas tran P_DB_mean AVG P_DB from=2.358u to=4.717u 
meas tran P_GD_mean AVG P_GD_VH from=2.358u to=4.717u
meas tran Pin_DCDC_mean AVG Pin_DCDC from=2.358u to=4.717u

let Pin_tot_mean = P_DB_mean + P_GD_mean + Pin_DCDC_mean
print Pin_tot_mean

meas tran Vo_mean AVG v(Vo) from=2.358u to=4.717u
meas tran Io_mean AVG Io from=2.358u to=4.717u
meas tran Po_mean AVG Po from=2.358u to=4.717u

meas tran P_M1_mean AVG P_M1 from=2.358u to=4.717u
meas tran P_M2_mean AVG P_M2 from=2.358u to=4.717u

meas TRAN tdR TRIG Vg_M1 VAL=0.33 RISE=1 TARG Vg_M2 VAL=0.33 RISE=1
meas TRAN tdF TRIG Vg_M1 VAL=2.97 FALL=1 TARG Vg_M2 VAL=2.97 FALL=1

let eff = 100*Po_mean/Pin_tot_mean
let eff_DCDC = 100*Po_mean/Pin_DCDC_mean
let loss_M1 = 100*P_M1_mean/Pin_tot_mean
let loss_M2 = 100*P_M2_mean/Pin_tot_mean
let loss_GD = 100*P_GD_mean/Pin_tot_mean
let loss_DB = 100*P_DB_mean/Pin_tot_mean
let sumaPot = eff+loss_M1+loss_M2+loss_GD+loss_DB
print eff eff_DCDC loss_M1 loss_M2 loss_GD loss_DB sumaPot

plot Io IL
plot Id_M1 Id_M2
plot v(Vo)
plot Po 
*plot P_M1 P_M2
plot Vds_M2
plot Vg_M1 Vg_M2
plot Vs_M1 Vs_M2

.endc



.end
"}
C {vsource.sym} -60 -350 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} -60 -470 0 0 {name=p5 sig_type=std_logic lab=19}
C {gnd.sym} -60 -300 0 0 {name=l2 lab=GND}
C {vsource.sym} 30 -350 0 0 {name=Vdd1 value=\{VH\} savecurrent=false}
C {lab_pin.sym} 30 -470 0 0 {name=p16 sig_type=std_logic lab=23}
C {gnd.sym} 30 -300 0 0 {name=l7 lab=GND}
C {ammeter.sym} 30 -420 2 1 {name=V_Igd savecurrent=true spice_ignore=0}
C {ammeter.sym} -60 -420 2 1 {name=V_Idig savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 250 -460 0 1 {name=p18 sig_type=std_logic lab=14
}
C {vsource.sym} 250 -430 0 0 {name=Vg2 value="PULSE(0 \{Vdd\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {devices/lab_pin.sym} 250 -340 0 1 {name=p23 sig_type=std_logic lab=13}
C {vsource.sym} 250 -310 0 0 {name=Vg3 value="PULSE(0 \{Vdd\} \{Td\} \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {gnd.sym} 250 -400 0 1 {name=l4 lab=GND}
C {gnd.sym} 250 -280 0 1 {name=l9 lab=GND}
C {vsource.sym} 140 -350 0 0 {name=Vdd2 value=\{VH\} savecurrent=false}
C {lab_pin.sym} 140 -470 0 0 {name=p1 sig_type=std_logic lab=28}
C {gnd.sym} 140 -300 0 0 {name=l1 lab=GND}
C {ammeter.sym} 140 -420 2 1 {name=V_Idcdc savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 330 -110 0 0 {name=p8 sig_type=std_logic lab=27
}
C {ind.sym} 380 -110 3 1 {name=L5
m=1
value= \{L\}
footprint=1206
device=inductor}
C {capa.sym} 530 -60 0 0 {name=C1
m=1
value= \{C\}
footprint=1206
device="ceramic capacitor"}
C {ammeter.sym} 570 -110 3 0 {name=V_Io savecurrent=true spice_ignore=0}
C {res.sym} 620 -70 0 0 {name=R1
value= \{R\}
footprint=1206
device=resistor
m=1}
C {gnd.sym} 560 20 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 660 -110 0 1 {name=p9 sig_type=std_logic lab=Vo}
C {ammeter.sym} 460 -110 3 0 {name=V_IL savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} -50 -250 0 0 {name=p10 sig_type=std_logic lab=27
}
C {lab_pin.sym} -70 -230 0 0 {name=p11 sig_type=std_logic lab=28}
C {lab_pin.sym} 30 -240 0 0 {name=p12 sig_type=std_logic lab=23}
C {lab_pin.sym} 120 -120 0 1 {name=p13 sig_type=std_logic lab=19}
C {gnd.sym} -20 -250 2 1 {name=l8 lab=GND}
C {gnd.sym} 130 -140 3 0 {name=l10 lab=GND}
C {gnd.sym} 130 -40 3 0 {name=l11 lab=GND}
C {gnd.sym} -150 -100 0 1 {name=l12 lab=GND}
C {devices/lab_pin.sym} 50 30 0 1 {name=p2 sig_type=std_logic lab=14
}
C {devices/lab_pin.sym} 30 50 0 1 {name=p3 sig_type=std_logic lab=13}
C {lab_pin.sym} 50 -240 0 1 {name=p4 sig_type=std_logic lab=22}
C {lab_pin.sym} 90 -180 0 1 {name=p6 sig_type=std_logic lab=21}
C {lab_pin.sym} 140 -100 0 1 {name=p7 sig_type=std_logic lab=18}
C {lab_pin.sym} 160 -80 0 1 {name=p14 sig_type=std_logic lab=17}
C {lab_pin.sym} 190 -60 0 1 {name=p15 sig_type=std_logic lab=16
}
C {devices/lab_pin.sym} 10 70 0 1 {name=p17 sig_type=std_logic lab=12
}
C {devices/lab_pin.sym} -10 90 0 1 {name=p19 sig_type=std_logic lab=11
}
C {devices/lab_pin.sym} -30 110 0 1 {name=p20 sig_type=std_logic lab=10
}
C {devices/lab_pin.sym} -50 130 0 1 {name=p21 sig_type=std_logic lab=9
}
C {devices/lab_pin.sym} -70 150 0 1 {name=p22 sig_type=std_logic lab=8
}
C {devices/code.sym} -350 70 0 0 {name=Transient_simulation_8.44MHz only_toplevel=false spice_ignore =true

value="
.save all
+ @n.x1.x1.xm1.nsg13_hv_pmos[ids]
+ @n.x1.x1.xm2.nsg13_hv_nmos[ids]
.param SimTime = 5u

.option method=gear

.control
reset
set color0 = white
tran 100p 5u
let Io = i(V_Io)
let IL = i(V_IL)
let Id_M1 = @n.x1.x1.xm1.nsg13_hv_pmos[ids]
let Id_M2 = @n.x1.x1.xm2.nsg13_hv_nmos[ids]
let I_DCDC = i(V_Idcdc)

let Vsd_M1 = v(28) - v(27)
let Vds_M2 = v(27)
let Vg_M1 = v(22)
let Vg_M2 = v(21)
let Vs_M1 = v(18)
let Vs_M2 = v(17)

let Pin_DCDC = I_DCDC*v(28)
let P_GD_VH = v(23)*i(V_Igd)
let P_DB = v(19)*i(V_Idig)
let P_M1 = Vsd_M1*Id_M1
let P_M2 = -Vds_M2*Id_M2


let Po = Io*v(Vo)

let DataMeasBegin = SimTime-1u

meas tran P_DB_mean AVG P_DB from=2.3697u to=4.7393u 
meas tran P_GD_mean AVG P_GD_VH from=2.3697u to=4.7393u 
meas tran Pin_DCDC_mean AVG Pin_DCDC from=2.3697u to=4.7393u 

let Pin_tot_mean = P_DB_mean + P_GD_mean + Pin_DCDC_mean
print Pin_tot_mean

meas tran Vo_mean AVG v(Vo) from=2.3697u to=4.7393u 
meas tran Io_mean AVG Io from=2.3697u to=4.7393u 
meas tran Po_mean AVG Po from=2.3697u to=4.7393u 

meas tran P_M1_mean AVG P_M1 from=2.3697u to=4.7393u 
meas tran P_M2_mean AVG P_M2 from=2.3697u to=4.7393u 

meas TRAN tdR TRIG Vg_M1 VAL=0.33 RISE=1 TARG Vg_M2 VAL=0.33 RISE=1
meas TRAN tdF TRIG Vg_M1 VAL=2.97 FALL=1 TARG Vg_M2 VAL=2.97 FALL=1

let eff = 100*Po_mean/Pin_tot_mean
let eff_DCDC = 100*Po_mean/Pin_DCDC_mean
let loss_M1 = 100*P_M1_mean/Pin_tot_mean
let loss_M2 = 100*P_M2_mean/Pin_tot_mean
let loss_GD = 100*P_GD_mean/Pin_tot_mean
let loss_DB = 100*P_DB_mean/Pin_tot_mean
let sumaPot = eff+loss_M1+loss_M2+loss_GD+loss_DB
print eff eff_DCDC loss_M1 loss_M2 loss_GD loss_DB sumaPot

plot Io IL
plot Id_M1 Id_M2
plot v(Vo)
plot Po 
*plot P_M1 P_M2
plot Vds_M2
plot Vg_M1 Vg_M2
plot Vs_M1 Vs_M2

.endc



.end
"}
