v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 -360 -60 -340 {
lab=GND}
N 150 -360 150 -340 {
lab=GND}
N 150 -430 150 -410 {
lab=#net1}
N 150 -510 150 -490 {
lab=23}
N -60 -510 -60 -490 {
lab=19}
N -60 -430 -60 -420 {
lab=#net2}
N 260 -360 260 -340 {
lab=GND}
N 260 -430 260 -410 {
lab=#net3}
N 260 -510 260 -490 {
lab=28}
N 440 -180 450 -180 {
lab=#net4}
N 530 -180 570 -180 {
lab=Vo}
N 530 -110 530 -50 {
lab=GND}
N 530 -180 530 -170 {
lab=Vo}
N 510 -180 530 -180 {
lab=Vo}
N 440 -180 440 -160 {
lab=#net4}
N 400 -180 440 -180 {
lab=#net4}
N 240 -180 260 -180 {
lab=27}
N 440 -50 530 -50 {
lab=GND}
N 440 -100 440 -50 {
lab=GND}
N 320 -180 340 -180 {
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
N 30 -360 30 -340 {
lab=GND}
N 30 -430 30 -410 {
lab=#net6}
N 30 -510 30 -490 {
lab=10}
N 290 120 290 130 {
lab=GND}
N 480 130 540 130 {
lab=GND}
N 540 120 540 130 {
lab=GND}
N 480 120 480 130 {
lab=GND}
N 420 130 480 130 {
lab=GND}
N 420 120 420 130 {
lab=GND}
N 360 130 420 130 {
lab=GND}
N 360 120 360 130 {
lab=GND}
N 290 130 360 130 {
lab=GND}
N 420 130 420 150 {
lab=GND}
N -130 -40 -110 -40 {
lab=7}
N -130 -120 -110 -120 {
lab=3}
N -130 -140 -110 -140 {
lab=2}
N -130 -160 -110 -160 {
lab=1}
N -130 -60 -110 -60 {
lab=6}
N -130 -80 -110 -80 {
lab=5}
N 290 40 290 60 {
lab=16}
N 360 40 360 60 {
lab=17}
N 420 40 420 60 {
lab=18}
N 480 40 480 60 {
lab=21}
N 540 40 540 60 {
lab=22}
N 150 120 150 130 {
lab=GND}
N 220 120 220 130 {
lab=GND}
N 150 130 220 130 {
lab=GND}
N 150 40 150 60 {
lab=13}
N 220 40 220 60 {
lab=14}
N 220 130 290 130 {
lab=GND}
N -160 -360 -160 -340 {
lab=GND}
N -160 -450 -160 -420 {
lab=12}
N -390 -90 -390 -60 {
lab=10}
N -390 0 -390 20 {
lab=GND}
N -330 -10 -330 20 {
lab=11}
N -330 80 -330 100 {
lab=GND}
C {code.sym} -680 -440 0 0 {name=MODEL only_toplevel=true
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
C {code.sym} -571 -439 0 0 {name=RLC_Parameters only_toplevel=false 
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
C {devices/code.sym} -490 -250 0 1 {name=Transient_simulation_8.48MHz only_toplevel=false spice_ignore =false

value="
*.save all
.save v(Vo) i(V_Io) i(V_IL) i(V_Idcdc) v(28) v(27) v(x1.GD_P) v(22) v(x1.GD_N) v(21) v(x1.NOC_P) v(x1.NOC_N) v(17) v(18) v(x1.x10.PD_OUT) v(16) v(13) v(8) v(14) v(9) v(28) v(23) v(10) v(19)
+ @n.x1.x1.xm1.nsg13_hv_pmos[ids]
+ @n.x1.x1.xm2.nsg13_hv_nmos[ids]
.param SimTime = 5u

.option method=gear

.control
reset
set color0 = white
*tran 100p 4.717u 
tran 100p 1u
*tran 10p 1u
let Io = i(V_Io)
let IL = i(V_IL)
let Id_M1 = @n.x1.x1.xm1.nsg13_hv_pmos[ids]
let Id_M2 = @n.x1.x1.xm2.nsg13_hv_nmos[ids]
let I_DCDC = i(V_Idcdc)


let Vsd_M1 = v(28) - v(27)
let Vds_M2 = v(27)
let Vg_M1 = v(x1.GD_P)
let GD_P = v(22)
let Vg_M2 = v(x1.GD_N)
let GD_N = v(21)
let Vs_M1 = v(x1.NOC_P)
let NOC_P_BUFF = v(18)
let Vs_M2 = v(x1.NOC_N)
let NOC_N_BUFF = v(17)
let PD_OUT = v(x1.x10.PD_OUT)
let PD_BUFF = v(16)
let VINS_BUFF = v(13)
let VINS = v(8)
let VINR_BUFF = v(14)
let VINR = v(9) 

let Pin_DCDC = I_DCDC*v(28)
let P_GD_VH = v(23)*i(V_Igd)
let P_Analog = v(10)*i(V_Ianalog)
let P_DB = v(19)*i(V_Idig)
let P_M1 = Vsd_M1*Id_M1
let P_M2 = -Vds_M2*Id_M2


let Po = Io*v(Vo)

let DataMeasBegin = SimTime-1u

meas tran P_DB_mean AVG P_DB from=2.358u to=4.717u 
meas tran P_GD_mean AVG P_GD_VH from=2.358u to=4.717u
meas tran P_Analog_mean AVG P_Analog from=2.358u to=4.717u
meas tran Pin_DCDC_mean AVG Pin_DCDC from=2.358u to=4.717u

let Pin_tot_mean = P_DB_mean + P_GD_mean + Pin_DCDC_mean + P_Analog_mean
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
let loss_AB = 100*P_Analog_mean/Pin_tot_mean
let sumaPot = eff+loss_M1+loss_M2+loss_GD+loss_DB + loss_AB
print eff eff_DCDC loss_M1 loss_M2 loss_GD loss_DB loss_AB sumaPot 

plot Io IL
plot Id_M1 Id_M2
plot v(Vo)
plot Po 
*plot P_M1 P_M2
plot Vds_M2
plot Vg_M1 Vg_M2
*plot Vs_M1 Vs_M2
plot PD_OUT PD_BUFF
plot NOC_P_BUFF Vs_M1
plot NOC_N_BUFF Vs_M2
plot GD_P Vg_M1
plot GD_N Vg_M2
plot VINS VINS_BUFF
plot VINR VINR_BUFF

.endc



.end
"}
C {vsource.sym} -60 -390 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} -60 -510 0 0 {name=p5 sig_type=std_logic lab=19}
C {gnd.sym} -60 -340 0 0 {name=l2 lab=GND}
C {vsource.sym} 150 -390 0 0 {name=Vdd1 value=\{VH\} savecurrent=false}
C {lab_pin.sym} 150 -510 0 0 {name=p16 sig_type=std_logic lab=23}
C {gnd.sym} 150 -340 0 0 {name=l7 lab=GND}
C {ammeter.sym} 150 -460 2 1 {name=V_Igd savecurrent=true spice_ignore=0}
C {ammeter.sym} -60 -460 2 1 {name=V_Idig savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 360 -510 0 1 {name=p18 sig_type=std_logic lab=9
}
C {vsource.sym} 360 -480 0 0 {name=Vg2 value="PULSE(0 \{Vdd\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {devices/lab_pin.sym} 360 -410 0 1 {name=p23 sig_type=std_logic lab=8}
C {vsource.sym} 360 -380 0 0 {name=Vg3 value="PULSE(0 \{Vdd\} \{Td\} \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {gnd.sym} 360 -450 0 1 {name=l4 lab=GND}
C {gnd.sym} 360 -350 0 1 {name=l9 lab=GND}
C {vsource.sym} 260 -390 0 0 {name=Vdd2 value=\{VH\} savecurrent=false}
C {lab_pin.sym} 260 -510 0 0 {name=p1 sig_type=std_logic lab=28}
C {gnd.sym} 260 -340 0 0 {name=l1 lab=GND}
C {ammeter.sym} 260 -460 2 1 {name=V_Idcdc savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 240 -180 0 0 {name=p8 sig_type=std_logic lab=27
}
C {ind.sym} 290 -180 3 1 {name=L5
m=1
value= \{L\}
footprint=1206
device=inductor}
C {capa.sym} 440 -130 0 0 {name=C1
m=1
value= \{C\}
footprint=1206
device="ceramic capacitor"}
C {ammeter.sym} 480 -180 3 0 {name=V_Io savecurrent=true spice_ignore=0}
C {res.sym} 530 -140 0 0 {name=R1
value= \{R\}
footprint=1206
device=resistor
m=1}
C {gnd.sym} 470 -50 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 570 -180 0 1 {name=p9 sig_type=std_logic lab=Vo}
C {ammeter.sym} 370 -180 3 0 {name=V_IL savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} -50 -250 0 0 {name=p10 sig_type=std_logic lab=27
}
C {lab_pin.sym} -70 -230 0 0 {name=p11 sig_type=std_logic lab=28}
C {lab_pin.sym} 30 -240 0 0 {name=p12 sig_type=std_logic lab=23}
C {lab_pin.sym} 120 -120 0 1 {name=p13 sig_type=std_logic lab=19}
C {gnd.sym} -20 -250 2 1 {name=l8 lab=GND}
C {gnd.sym} 130 -140 3 0 {name=l10 lab=GND}
C {gnd.sym} 130 -40 3 0 {name=l11 lab=GND}
C {gnd.sym} -150 -100 1 1 {name=l12 lab=GND}
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
C {devices/code.sym} -500 -250 0 0 {name=Transient_simulation_8.44MHz only_toplevel=false spice_ignore =true

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
C {code.sym} -430 -440 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 1.2
.param VH = 3.3

* OL
.param V_sel = 1.2
* CL
*.param V_sel = 0

.param TR = 1p
.param TF = 1p
.param Td = D*T

*OL
.param TdR = 2n
.param TdF = 2n

*fs = 10MHz
*.param T = 0.1u
*fs = 8.48MHz a Vo=1.2V
.param T = 0.11792u 
.param D = 0.615
*fs = 8.44MHz a Vo=1.8V
*.param T = 0.11848u 
*.param D = 0.4545

.option temp = 27
.option KLU
.option itl4=100
.option method=gear
.option maxord=2
.option trtol=25
.option lvltim=1
.option tnum=1e9
.option reltol=1e-3
.option abstol=1e-10
.option vntol=1e-4

.option gmin=1e-10
.option cshunt=1e-13

"}
C {vsource.sym} 30 -390 0 0 {name=Vdd3 value=\{VH\} savecurrent=false}
C {lab_pin.sym} 30 -510 0 0 {name=p24 sig_type=std_logic lab=10}
C {gnd.sym} 30 -340 0 0 {name=l3 lab=GND}
C {ammeter.sym} 30 -460 2 1 {name=V_Ianalog savecurrent=true spice_ignore=0}
C {capa.sym} 290 90 0 0 {name=C2
m=1
value= 10p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 360 90 0 0 {name=C3
m=1
value= 10p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 420 90 0 0 {name=C4
m=1
value= 10p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 480 90 0 0 {name=C5
m=1
value= 10p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 540 90 0 0 {name=C6
m=1
value= 10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 420 150 0 1 {name=l13 lab=GND}
C {devices/lab_pin.sym} -130 -40 0 0 {name=p25 sig_type=std_logic lab=7
}
C {devices/lab_pin.sym} -130 -60 0 0 {name=p26 sig_type=std_logic lab=6
}
C {devices/lab_pin.sym} -130 -80 0 0 {name=p27 sig_type=std_logic lab=5
}
C {devices/lab_pin.sym} -130 -120 0 0 {name=p28 sig_type=std_logic lab=3
}
C {devices/lab_pin.sym} -130 -140 0 0 {name=p29 sig_type=std_logic lab=2
}
C {devices/lab_pin.sym} -130 -160 0 0 {name=p30 sig_type=std_logic lab=1
}
C {lab_pin.sym} 290 40 0 0 {name=p31 sig_type=std_logic lab=16
}
C {lab_pin.sym} 360 40 0 0 {name=p32 sig_type=std_logic lab=17
}
C {lab_pin.sym} 420 40 0 0 {name=p33 sig_type=std_logic lab=18
}
C {lab_pin.sym} 480 40 0 0 {name=p34 sig_type=std_logic lab=21
}
C {lab_pin.sym} 540 40 0 0 {name=p35 sig_type=std_logic lab=22
}
C {../top/top.sym} -10 -100 0 0 {name=x1}
C {capa.sym} 150 90 0 0 {name=C7
m=1
value= 10p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 220 90 0 0 {name=C8
m=1
value= 10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 150 40 0 0 {name=p36 sig_type=std_logic lab=13
}
C {lab_pin.sym} 220 40 0 0 {name=p37 sig_type=std_logic lab=14
}
C {vsource.sym} -160 -390 0 0 {name=Vdd4 value=\{V_sel\} savecurrent=false}
C {lab_pin.sym} -160 -450 0 0 {name=p38 sig_type=std_logic lab=12}
C {gnd.sym} -160 -340 0 0 {name=l14 lab=GND}
C {vsource.sym} -330 50 0 1 {name=Vg5 value="PULSE(0 \{Vdd\} \{TdR\} \{TR\} \{TF\} \{T*D-TdR-TdF\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -390 -90 0 1 {name=p41 sig_type=std_logic lab=10}
C {gnd.sym} -390 20 0 1 {name=l17 lab=GND}
C {vsource.sym} -390 -30 0 1 {name=Vg6 value="PULSE(0 \{Vdd\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -330 -10 0 1 {name=p42 sig_type=std_logic lab=11}
C {gnd.sym} -330 100 0 1 {name=l18 lab=GND}
