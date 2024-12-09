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
N 2670 -420 2700 -420 {
lab=#net1}
N 2570 -420 2610 -420 {
lab=V_inductor}
N 2795 -630 2795 -610 { lab=GND}
N 2795 -740 2795 -690 { lab=VH}
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
N 3080 -180 3080 -145 {
lab=#net2}
N 2580 -630 2580 -610 { lab=GND}
N 2580 -740 2580 -690 { lab=VDD_GD}
N 2565 -880 2565 -850 {
lab=VSS}
C {devices/code_shown.sym} 3240 -1020 0 0 {name=s1 only_toplevel=false value=".param VDIG = 1.2
.param VH = 3.3
.param VDD_GD = 3.3
*LATEST TDBuckLOADS
*1000mA
*.param RL = 120
*RL v_rl gnd R = 'TIME > 25u ? 120:1.2'
RL v_rl gnd 120
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
.save v(ldo_out) v(v_res) v(x8.D1) v(x8.D1_N) v(x8.x17.16) v(VCONTr) v(VCONTs) v(x8.V_1r) v(x8.V_1s) v(x8.V_1r_dl) v(x8.V_1s_dl) v(x8.V_1r_buff) v(x8.V_1s_buff) v(x8.V_1r_buff_sp) v(x8.V_1s_buff_sp) v(vh) i(vh) v(vdd_gd) i(vdd_gd) i(v_res) v(x8.vcp) v(x8.vcn) i(vldo_out) i(vvdig) i(vvdd)
vvdd vdd 0 dc 3.3
vvss vss 0 0
*vvcontr VCONTr 0 dc 0.6
*vvconts VCONTs 0 dc 0.61
*.option temp = 200
.ic v(VCONTs) = 0.6
.ic v(x8.V_1s) = 0
.ic v(x8.V_2s) = 3.3
.ic v(x8.V_1r) = 3.3
.ic v(x8.V_2r) = 0
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
plot v(x8.D1) v(x8.D1_N) i(VH)
plot v(x8.x17.16)
plot v(VCONTr) v(VCONTs)
plot v(x8.V_1r_buff) v(x8.V_1s_buff)+2 v(x8.x17.16)+4
plot i(vldo_out)
*plot v(VCONTs_OL)
.endc
"}
C {devices/lab_pin.sym} 1895 -720 0 0 {name=p6 sig_type=std_logic lab=VCONTr}
C {devices/lab_pin.sym} 1895 -740 0 0 {name=p8 sig_type=std_logic lab=VCONTs}
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
C {devices/vsource.sym} 2700 -390 0 0 {name=V_res value=0}
C {devices/lab_pin.sym} 2700 -335 2 0 {name=p23 sig_type=std_logic lab=ldo_out

}
C {devices/vsource.sym} 2795 -660 0 0 {name=VH value=\{VH\}}
C {devices/gnd.sym} 2795 -610 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} 2795 -740 0 0 {name=l24 sig_type=std_logic lab=VH}
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
C {devices/lab_pin.sym} 2045 -630 3 0 {name=p47 sig_type=std_logic lab=VSS}
C {devices/res.sym} 3080 -115 0 0 {name=RDIV3
value=50e6
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 2580 -660 0 0 {name=VDD_GD value=\{VDD_GD\}}
C {devices/gnd.sym} 2580 -610 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 2580 -740 0 0 {name=l8 sig_type=std_logic lab=VDD_GD}
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
C {devices/lab_wire.sym} 2055 -830 3 1 {name=l17 sig_type=std_logic lab=VDD_GD}
C {devices/lab_pin.sym} 2035 -830 1 0 {name=p29 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2015 -830 1 0 {name=p43 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} 2860 -280 2 0 {name=p20 sig_type=std_logic lab=v_rl

}
C {devices/lab_wire.sym} 2195 -730 2 0 {name=l4 sig_type=std_logic lab=V_res}
C {devices/vsource.sym} 2565 -910 0 0 {name=V1 value="pulse 0.6 0.9 75u 1u 1u 75u 150u"}
C {devices/lab_pin.sym} 2565 -850 3 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2565 -940 1 0 {name=p33 sig_type=std_logic lab=VCONTr}
C {/home/designer/shared/TORepo_IHPNov2024_TDBuck/design_data/xschem/top/top_CL_vto2p3.sym} 2045 -730 0 0 {name=x8}
C {devices/lab_wire.sym} 2075 -830 1 0 {name=l20 sig_type=std_logic lab=VH}
