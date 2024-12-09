v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {DOUT too many 0s
--> VCOREF faster than VCOSENS
--> VCOSENS needs to  be faster by DECREASING VCONTs
--> this is done by having more 1s in D1 (PMOS)
--> DOUT connected to D1_N to have negative FB} 3220 -1465 0 0 0.3 0.3 {}
N 1115 -1050 1115 -1020 {
lab=VDD}
N 1115 -900 1115 -870 {
lab=VSS}
N 1175 -980 1270 -980 {
lab=V_1r}
N 1175 -940 1205 -940 {
lab=V_2r}
N 1115 -1370 1115 -1340 {
lab=VDD}
N 1115 -1220 1115 -1190 {
lab=VSS}
N 1025 -1280 1055 -1280 {
lab=VCONTs}
N 1175 -1300 1270 -1300 {
lab=V_1s}
N 1175 -1260 1205 -1260 {
lab=V_2s}
N 2670 -420 2700 -420 {
lab=#net1}
N 2570 -420 2610 -420 {
lab=V_inductor}
N 2795 -630 2795 -610 { lab=GND}
N 2795 -740 2795 -690 { lab=VH}
N 1365 -620 1395 -620 {
lab=VCP}
N 2905 -630 2905 -610 { lab=GND}
N 2905 -740 2905 -690 { lab=VDIG}
N 2700 -250 2700 -210 {
lab=VSS}
N 2860 -320 2860 -260 {
lab=v_rl}
N 2860 -420 2860 -380 {
lab=ldo_out}
N 2700 -360 2700 -310 {
lab=ldo_out}
N 3080 -300 3080 -240 {
lab=VCONTs}
N 3080 -85 3080 -45 {
lab=GND}
N 3080 -400 3080 -360 {
lab=ldo_out}
N 1460 -620 1585 -620 {
lab=DOUT_D1}
N 1370 -385 1400 -385 {
lab=VCN}
N 1465 -385 1590 -385 {
lab=DOUT_D1_N}
N 1845 -1290 1885 -1290 {
lab=V_1s_buff}
N 1845 -970 1885 -970 {
lab=V_1r_buff}
N 3080 -180 3080 -145 {
lab=#net2}
N 2580 -630 2580 -610 { lab=GND}
N 2580 -740 2580 -690 { lab=VDD_GD}
N 1625 -1290 1765 -1290 {
lab=V_1s_dl}
N 1625 -970 1765 -970 {
lab=V_1r_dl}
N 1410 -1290 1475 -1290 {
lab=#net3}
N 1410 -970 1475 -970 {
lab=#net4}
N 2565 -880 2565 -850 {
lab=VSS}
N 1025 -960 1055 -960 {
lab=VCONTr}
N 2050 -770 2050 -735 {
lab=VH}
N 2050 -660 2050 -615 {
lab=VSS}
N 2140 -695 2175 -695 {
lab=V_res}
C {devices/code_shown.sym} 3240 -1020 0 0 {name=s1 only_toplevel=false value=".param VDIG = 1.2
.param VH = 3.3
.param VDD_GD = 3.3
*LATEST TDBuckLOADS
*1000mA
*.param RL = 1.2
*RL v_rl gnd = 'TIME > 25u ? 120:1.2'
RL v_rl gnd 1.2
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
.save v(ldo_out) v(v_res) v(D1) v(D1_N) v(DOUT) v(VCONTr) v(VCONTs) v(V_1r) v(V_1s) v(V_1r_dl) v(V_1s_dl) v(V_1r_buff) v(V_1s_buff) v(V_1r_buff_sp) v(V_1s_buff_sp) v(vh) i(vh) v(vdd_gd) i(vdd_gd) i(v_res) v(vcp) v(vcn) i(vldo_out) i(vvdig) i(vvdd)
vvdd vdd 0 dc 3.3
vvss vss 0 0
*vvcontr VCONTr 0 dc 0.6
*vvconts VCONTs 0 dc 0.61
*.option temp = 200
.ic v(VCONTs) = 0.6
.ic v(V_1s) = 0
.ic v(V_2s) = 3.3
.ic v(V_1r) = 3.3
.ic v(V_2r) = 0
.ic v(ldo_out) = 1.2
*.ic v(V_res) = 1.2
.ic v(V_inductor) = 1.2

.option method=gear
.option cshunt=0.01e-12

.control
*tran 2n 1m
*tran 4n 250u
tran 100p 150u
*wrdata /home/designer/shared/TO202410_IHP_TDBuck/xschem/data/data_TDBuckTOP-IHP-CL_v7p2_TEST.txt tran.v(ldo_out) tran.i(vldo_out) tran.i(vh) tran.i(vdd_gd) tran.i(vvdig) tran.i(vvdd)
plot v(ldo_out)
plot v(v_res)
plot v(D1) v(D1_N) i(VH)
plot v(DOUT)
plot v(VCONTr) v(VCONTs)
plot v(V_1r_buff) v(V_1s_buff)+2 v(DOUT)+4
plot i(vldo_out)
*plot v(VCONTs_OL)
.endc
"}
C {devices/lab_pin.sym} 1115 -1050 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1115 -870 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1025 -960 1 0 {name=p6 sig_type=std_logic lab=VCONTr}
C {devices/lab_pin.sym} 1195 -980 1 0 {name=p7 sig_type=std_logic lab=V_1r}
C {devices/lab_pin.sym} 1205 -940 1 0 {name=p1 sig_type=std_logic lab=V_2r}
C {devices/lab_pin.sym} 1115 -1370 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1115 -1190 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1025 -1280 1 0 {name=p8 sig_type=std_logic lab=VCONTs}
C {devices/lab_pin.sym} 1195 -1300 1 0 {name=p9 sig_type=std_logic lab=V_1s}
C {devices/lab_pin.sym} 1205 -1260 1 0 {name=p10 sig_type=std_logic lab=V_2s}
C {devices/ind.sym} 2640 -420 1 0 {name=L37
m=1
value=275n
footprint=1206
device=inductor}
C {devices/lab_wire.sym} 2590 -420 1 1 {name=l38 sig_type=std_logic lab=V_inductor}
C {devices/res.sym} 2540 -420 1 0 {name=R3
value=0
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 2510 -420 2 1 {name=l39 sig_type=std_logic lab=V_res}
C {devices/lab_wire.sym} 2050 -770 0 0 {name=l18 sig_type=std_logic lab=VH}
C {devices/lab_pin.sym} 1960 -715 0 0 {name=l21 sig_type=std_logic lab=D1
}
C {devices/lab_pin.sym} 1960 -675 0 0 {name=l22 sig_type=std_logic lab=D1_N
}
C {devices/vsource.sym} 2700 -390 0 0 {name=V_res value=0}
C {devices/lab_pin.sym} 2700 -335 2 0 {name=p23 sig_type=std_logic lab=ldo_out

}
C {devices/vsource.sym} 2795 -660 0 0 {name=VH value=\{VH\}}
C {devices/gnd.sym} 2795 -610 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} 2795 -740 0 0 {name=l24 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 1635 -670 0 0 {name=l11 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} 1735 -620 0 1 {name=l12 sig_type=std_logic lab=D1
}
C {devices/lab_wire.sym} 1665 -570 2 0 {name=l7 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 2905 -660 0 0 {name=VVDIG value=\{VDIG\}}
C {devices/gnd.sym} 2905 -610 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 2905 -740 0 0 {name=l2 sig_type=std_logic lab=VDIG}
C {devices/capa.sym} 2700 -280 0 0 {name=C4
m=1
value=32n
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 2700 -210 0 0 {name=l19 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 2860 -350 0 0 {name=Vldo_out value=0}
C {devices/lab_pin.sym} 2860 -420 2 0 {name=p25 sig_type=std_logic lab=ldo_out

}
C {devices/res.sym} 3080 -330 0 0 {name=RDIV1
value=100e6
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 3080 -210 0 0 {name=RDIV2
value=50e6
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 3080 -45 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 3080 -400 2 0 {name=p27 sig_type=std_logic lab=ldo_out

}
C {devices/lab_pin.sym} 3080 -270 2 0 {name=p28 sig_type=std_logic lab=VCONTs}
C {devices/lab_pin.sym} 1485 -620 1 0 {name=p31 sig_type=std_logic lab=DOUT_D1}
C {devices/lab_pin.sym} 1490 -385 1 0 {name=p36 sig_type=std_logic lab=DOUT_D1_N}
C {devices/lab_pin.sym} 2180 -1060 3 0 {name=p47 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1870 -970 1 0 {name=p48 sig_type=std_logic lab=V_1r_buff}
C {devices/lab_pin.sym} 1865 -1290 1 0 {name=p49 sig_type=std_logic lab=V_1s_buff}
C {devices/lab_pin.sym} 2330 -1160 2 0 {name=p14 sig_type=std_logic lab=VCP}
C {devices/lab_pin.sym} 2330 -1120 2 0 {name=p15 sig_type=std_logic lab=VCN}
C {devices/res.sym} 3080 -115 0 0 {name=RDIV3
value=50e6
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1740 -385 0 1 {name=l13 sig_type=std_logic lab=D1_N
}
C {sg13g2_stdcells/sg13g2_buf_4.sym} 1435 -385 0 0 {name=x6 VDD=VDIG VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_4.sym} 1435 -620 0 0 {name=x3 VDD=VDIG VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_4.sym} 1805 -1290 0 0 {name=x7 VDD=VDIG VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_4.sym} 1805 -970 0 0 {name=x12 VDD=VDIG VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 2180 -1220 1 0 {name=p21 sig_type=std_logic lab=VDIG}
C {devices/vsource.sym} 2580 -660 0 0 {name=VDD_GD value=\{VDD_GD\}}
C {devices/gnd.sym} 2580 -610 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 2580 -740 0 0 {name=l8 sig_type=std_logic lab=VDD_GD}
C {devices/lab_wire.sym} 1665 -670 0 1 {name=l9 sig_type=std_logic lab=VDD_GD}
C {devices/code_shown.sym} 3240 -1315 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.endif

.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {../VCO/VCO_vto2p1.sym} 1115 -1280 0 0 {name=x5}
C {../VCO/VCO_vto2p1.sym} 1115 -960 0 0 {name=x2}
C {devices/lab_pin.sym} 1365 -620 1 0 {name=p11 sig_type=std_logic lab=VCP}
C {devices/lab_pin.sym} 1370 -385 1 0 {name=p13 sig_type=std_logic lab=VCN}
C {../GD/GD_vto1p1.sym} 1615 -580 0 0 {name=X9}
C {devices/lab_wire.sym} 1640 -435 0 0 {name=l10 sig_type=std_logic lab=VDIG}
C {devices/lab_wire.sym} 1670 -335 2 0 {name=l16 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1670 -435 0 1 {name=l17 sig_type=std_logic lab=VDD_GD}
C {../GD/GD_vto1p1.sym} 1620 -345 0 0 {name=X4}
C {../VCDL/VCDLtop_vto1p1.sym} 1340 -1290 0 0 {name=x11}
C {../VCDL/VCDLtop_vto1p1.sym} 1340 -970 0 0 {name=x14}
C {devices/lab_pin.sym} 1715 -1290 1 0 {name=p17 sig_type=std_logic lab=V_1s_dl}
C {devices/lab_pin.sym} 1710 -970 1 0 {name=p18 sig_type=std_logic lab=V_1r_dl}
C {devices/lab_pin.sym} 1270 -1280 3 0 {name=p19 sig_type=std_logic lab=VCONTr}
C {devices/lab_pin.sym} 1270 -960 3 0 {name=p22 sig_type=std_logic lab=VCONTr}
C {devices/lab_pin.sym} 1340 -1340 1 0 {name=p24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1340 -1020 1 0 {name=p29 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1340 -1240 3 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1340 -920 3 0 {name=p32 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1555 -1240 3 0 {name=p35 sig_type=std_logic lab=VSS}
C {../LSHL/LSHL_vto1p1.sym} 1505 -1250 0 0 {name=X15}
C {devices/lab_pin.sym} 1555 -920 3 0 {name=p34 sig_type=std_logic lab=VSS}
C {../LSHL/LSHL_vto1p1.sym} 1505 -930 0 0 {name=X16}
C {devices/lab_pin.sym} 1555 -1340 1 0 {name=p43 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} 1555 -1020 1 0 {name=p46 sig_type=std_logic lab=VDIG}
C {../Digital_block/DB.sym} 2180 -1140 0 0 {name=x17}
C {devices/lab_pin.sym} 2030 -1160 1 0 {name=p12 sig_type=std_logic lab=V_1s_buff}
C {devices/lab_pin.sym} 2030 -1120 3 0 {name=p16 sig_type=std_logic lab=V_1r_buff}
C {devices/lab_pin.sym} 2860 -280 2 0 {name=p20 sig_type=std_logic lab=v_rl

}
C {devices/lab_wire.sym} 2175 -695 2 0 {name=l4 sig_type=std_logic lab=V_res}
C {devices/vsource.sym} 2565 -910 0 0 {name=V1 value="pulse 0.6 0.9 75u 1u 1u 75u 150u"}
C {devices/lab_pin.sym} 2565 -850 3 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2565 -940 1 0 {name=p33 sig_type=std_logic lab=VCONTr}
C {../DCDCBuck/DCDCBuck_vto1p1.sym} 2060 -675 0 0 {name=X1}
C {devices/lab_wire.sym} 2050 -615 2 0 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1635 -570 2 0 {name=l14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1640 -335 2 0 {name=l15 sig_type=std_logic lab=VSS}
