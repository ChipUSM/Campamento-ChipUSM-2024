v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -55 -410 -55 -390 {
lab=GND}
N 35 -410 35 -390 {
lab=GND}
N 35 -480 35 -460 {
lab=#net1}
N 35 -560 35 -540 {
lab=23}
N -55 -560 -55 -540 {
lab=19}
N -55 -480 -55 -470 {
lab=#net2}
N 145 -410 145 -390 {
lab=GND}
N 145 -480 145 -460 {
lab=#net3}
N 145 -560 145 -540 {
lab=28}
N 530 -110 540 -110 {
lab=V_inductor}
N 620 -110 660 -110 {
lab=Vo}
N 620 -40 620 20 {
lab=GND}
N 620 -110 620 -100 {
lab=Vo}
N 600 -110 620 -110 {
lab=Vo}
N 530 -110 530 -90 {
lab=V_inductor}
N 490 -110 530 -110 {
lab=V_inductor}
N 330 -110 350 -110 {
lab=27}
N 530 20 620 20 {
lab=GND}
N 530 -30 530 20 {
lab=GND}
N 410 -110 430 -110 {
lab=#net4}
N -50 -250 -50 -200 {
lab=27}
N -70 -230 -70 -200 {
lab=28}
N 30 -240 30 -200 {
lab=23}
N 90 -120 120 -120 {
lab=19}
N -20 -200 10 -200 {
lab=VSS}
N -20 -250 -20 -200 {
lab=VSS}
N -30 -200 -20 -200 {
lab=VSS}
N 90 -140 130 -140 {
lab=VSS}
N 90 -40 130 -40 {
lab=VSS}
N 50 -0 50 30 {
lab=14}
N 30 -0 30 50 {
lab=13}
N 50 -240 50 -200 {
lab=22}
N 90 -180 90 -160 {
lab=21}
N 90 -80 160 -80 {
lab=17}
N 90 -60 190 -60 {
lab=16}
N -70 0 -70 150 {
lab=8}
N 360 190 360 250 {
lab=8}
N 360 90 360 130 {
lab=Vo}
N 360 310 360 375 {
lab=GND}
N -445 -335 -445 -305 {
lab=GND}
N -445 -440 -445 -395 {
lab=7}
N -155 -410 -155 -390 {
lab=GND}
N -155 -560 -155 -540 {
lab=2}
N -155 -480 -155 -470 {
lab=#net5}
N -200 -160 -110 -160 {
lab=VSS}
N -125 -80 -110 -80 {
lab=VSS}
N -125 -65 -125 -60 {
lab=VSS}
N -125 -60 -110 -60 {
lab=VSS}
N -160 -65 -125 -65 {
lab=VSS}
N -125 -80 -125 -65 {
lab=VSS}
N -440 270 -440 285 {
lab=GND}
N -370 270 -370 285 {
lab=GND}
N -355 430 -355 445 {
lab=GND}
N -275 430 -275 445 {
lab=GND}
N -180 430 -180 445 {
lab=GND}
N -100 430 -100 445 {
lab=GND}
N -0 -0 10 -0 {
lab=VSS}
N -0 -0 0 30 {
lab=VSS}
N -50 0 -0 -0 {
lab=VSS}
N 90 -100 130 -100 {
lab=VSS}
N 310 -405 310 -385 {
lab=GND}
N 310 -475 310 -455 {
lab=VSS}
N -110 -120 -110 -80 {
lab=VSS}
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
C {vsource.sym} -55 -440 0 0 {name=Vdd_dig value=\{Vdd_dig\} savecurrent=false}
C {lab_pin.sym} -55 -560 0 0 {name=p5 sig_type=std_logic lab=19}
C {gnd.sym} -55 -390 0 0 {name=l2 lab=GND}
C {vsource.sym} 35 -440 0 0 {name=Vdd_gd value=\{VH\} savecurrent=false}
C {lab_pin.sym} 35 -560 0 0 {name=p16 sig_type=std_logic lab=23}
C {gnd.sym} 35 -390 0 0 {name=l7 lab=GND}
C {ammeter.sym} 35 -510 2 1 {name=V_Igd savecurrent=true spice_ignore=0}
C {ammeter.sym} -55 -510 2 1 {name=V_Idig savecurrent=true spice_ignore=0}
C {vsource.sym} 145 -440 0 0 {name=Vdd_vh value=\{VH\} savecurrent=false}
C {lab_pin.sym} 145 -560 0 0 {name=p1 sig_type=std_logic lab=28}
C {gnd.sym} 145 -390 0 0 {name=l1 lab=GND}
C {ammeter.sym} 145 -510 2 1 {name=V_Idcdc savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 330 -110 0 0 {name=p8 sig_type=std_logic lab=27
}
C {ind.sym} 380 -110 3 1 {name=L5
m=1
value= 327n
footprint=1206
device=inductor}
C {capa.sym} 530 -60 0 0 {name=C1
m=1
value= 37n
footprint=1206
device="ceramic capacitor"}
C {ammeter.sym} 570 -110 3 0 {name=V_Io savecurrent=true spice_ignore=0}
C {res.sym} 620 -70 0 0 {name=R1
value= \{RL\}
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
C {devices/lab_pin.sym} 50 30 0 1 {name=p2 sig_type=std_logic lab=14
}
C {devices/lab_pin.sym} 30 50 0 1 {name=p3 sig_type=std_logic lab=13}
C {lab_pin.sym} 50 -240 0 1 {name=p4 sig_type=std_logic lab=22}
C {lab_pin.sym} 90 -180 0 1 {name=p6 sig_type=std_logic lab=21}
C {lab_pin.sym} 160 -80 0 1 {name=p14 sig_type=std_logic lab=17}
C {lab_pin.sym} 190 -60 0 1 {name=p15 sig_type=std_logic lab=16
}
C {devices/lab_pin.sym} -70 150 0 1 {name=p22 sig_type=std_logic lab=8
}
C {devices/code_shown.sym} 840 -460 0 0 {name=s1 only_toplevel=false value="*.param VDIG = 1.2
*.param VH = 3.3
*.param VDD_GD = 3.3
*LATEST TDBuckLOADS
*1000mA
.param RL = 1.2
*100mA
*.param RL = 12
*80mA
*.param RL = 15
*40mA
*.param RL = 30
*20mA
*.param RL = 60
*10mA
*.param RL = 120
*.save v(ldo_out) v(v_res) v(D1) v(D1_N) v(DOUT) v(VCONTr) v(VCONTs) v(V_1r) v(V_1s) v(V_1r_dl) v(V_1s_dl) v(V_1r_buff) v(V_1s_buff) v(V_1r_buff_sp) v(V_1s_buff_sp) v(vh) i(vh) v(vdd_gd) i(vdd_gd) i(v_res) v(vcp) v(vcn) i(vldo_out) i(vvdig) i(vvdd)
.save v(Vo) v(8)
vvdd vdd 0 dc 3.3
vvss vss 0 0
*vvcontr VCONTr 0 dc 0.6
*vvconts VCONTs 0 dc 0.61
*.option temp = 200
.ic v(8) = 0.6
.ic v(x1.V_1s) = 0
.ic v(x1.V_2s) = 3.3
.ic v(x1.V_1r) = 3.3
.ic v(x1.V_2r) = 0
.ic v(Vo) = 1.2
.ic v(27) = 1.2
.ic v(V_inductor) = 1.2

.option method=gear
.option cshunt=0.01e-12

.control
*tran 2n 1m
*tran 4n 250u
tran 100p 150u
*wrdata /home/designer/shared/TO202410_IHP_TDBuck/xschem/data/data_TDBuckTOP-IHP-CL_v7p2_TEST.txt tran.v(ldo_out) tran.i(vldo_out) tran.i(vh) tran.i(vdd_gd) tran.i(vvdig) tran.i(vvdd)
plot v(Vo)
*plot v(D1) v(D1_N) i(VH)
*plot v(DOUT)
*plot v(VCONTr) v(VCONTs)
*plot v(V_1r_buff) v(V_1s_buff)+2 v(DOUT)+4
*plot i(vldo_out)
*plot v(VCONTs_OL)
.endc
"}
C {devices/res.sym} 360 160 0 0 {name=RDIV1
value=100e6
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 360 280 0 0 {name=RDIV2
value=100e6
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 360 375 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 360 90 0 1 {name=p24 sig_type=std_logic lab=Vo}
C {devices/lab_pin.sym} 360 220 0 1 {name=p25 sig_type=std_logic lab=8
}
C {devices/gnd.sym} -445 -305 0 0 {name=l13 lab=GND}
C {lab_pin.sym} -110 -40 0 0 {name=p26 sig_type=std_logic lab=7}
C {lab_pin.sym} -445 -440 0 0 {name=p27 sig_type=std_logic lab=7}
C {vsource.sym} -155 -440 0 0 {name=Vdd_ana value=\{Vdd_ana\} savecurrent=false}
C {lab_pin.sym} -155 -560 0 0 {name=p28 sig_type=std_logic lab=2}
C {gnd.sym} -155 -390 0 0 {name=l15 lab=GND}
C {ammeter.sym} -155 -510 2 1 {name=V_Idig1 savecurrent=true spice_ignore=0}
C {code.sym} -600 -5 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd_dig = 1.2
.param Vdd_ana = 3.3
.param VH = 3.3

.param temp = 27

"}
C {lab_pin.sym} -110 -140 0 0 {name=p18 sig_type=std_logic lab=2}
C {lab_pin.sym} 515 -110 3 1 {name=p23 sig_type=std_logic lab=V_inductor}
C {/home/designer/shared/TORepo_IHPNov2024_TDBuck/design_data/xschem/top/top_CL.sym} -10 -100 0 0 {name=x1}
C {vsource.sym} -445 -365 0 0 {name=Vref value=0.6 savecurrent=false}
C {devices/capa.sym} -440 240 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -440 285 0 1 {name=l9 lab=GND}
C {lab_pin.sym} -440 210 0 1 {name=p29 sig_type=std_logic lab=21}
C {devices/capa.sym} -370 240 0 0 {name=C3
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -370 285 0 1 {name=l17 lab=GND}
C {lab_pin.sym} -370 210 0 1 {name=p30 sig_type=std_logic lab=22}
C {devices/capa.sym} -355 400 0 0 {name=C5
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -355 445 0 1 {name=l19 lab=GND}
C {lab_pin.sym} -355 370 0 1 {name=p32 sig_type=std_logic lab=17}
C {devices/capa.sym} -275 400 0 0 {name=C6
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -275 445 0 1 {name=l20 lab=GND}
C {lab_pin.sym} -275 370 0 1 {name=p33 sig_type=std_logic lab=16}
C {devices/capa.sym} -180 400 0 0 {name=C7
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -180 445 0 1 {name=l21 lab=GND}
C {lab_pin.sym} -180 370 0 1 {name=p34 sig_type=std_logic lab=14}
C {devices/capa.sym} -100 400 0 0 {name=C8
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -100 445 0 1 {name=l22 lab=GND}
C {lab_pin.sym} -100 370 0 1 {name=p35 sig_type=std_logic lab=13}
C {vsource.sym} 310 -435 0 0 {name=Vss value=0 savecurrent=false}
C {lab_pin.sym} 310 -475 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {gnd.sym} 310 -385 0 0 {name=l24 lab=GND}
C {lab_pin.sym} -20 -250 1 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 130 -140 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 130 -100 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 130 -40 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -200 -160 2 1 {name=p31 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -160 -65 2 1 {name=p38 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 30 3 0 {name=p36 sig_type=std_logic lab=VSS}
