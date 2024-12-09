v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 830 -380 830 -370 {
lab=VDD}
N 760 -340 790 -340 {
lab=VCONT}
N 830 -340 860 -340 {
lab=VDD}
N 860 -380 860 -340 {
lab=VDD}
N 830 -380 860 -380 {
lab=VDD}
N 960 -380 960 -370 {
lab=VDD}
N 960 -340 990 -340 {
lab=VDD}
N 990 -380 990 -340 {
lab=VDD}
N 960 -380 990 -380 {
lab=VDD}
N 860 -380 960 -380 {
lab=VDD}
N 960 -310 960 -280 {
lab=#net1}
N 830 -280 960 -280 {
lab=#net1}
N 830 -310 830 -280 {
lab=#net1}
N 900 -340 920 -340 {
lab=VOUT}
N 830 -280 830 -230 {
lab=#net1}
N 465 -275 495 -275 {
lab=VSS}
C {devices/code_shown.sym} -10 300 0 0 {name=CODE only_toplevel=false value="
*.save v(vin) v(vout) i(vim)
.control
tran 100p 6u
.endc
"}
C {devices/vsource.sym} -160 -110 0 0 {name=VDD value=3.3}
C {devices/vsource.sym} -240 -110 0 0 {name=VSS value=0}
C {devices/gnd.sym} -240 -80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -160 -80 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -240 -210 0 0 {name=VIN value="PULSE(0 1.2 3u 100p 100p 12u 24u)"}
C {devices/lab_pin.sym} -240 -240 0 0 {name=p1 sig_type=std_logic lab=VSEL}
C {devices/lab_pin.sym} -240 -180 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -240 -140 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -160 -140 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} -10 -20 0 0 {name=MODEL1 only_toplevel=true
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
C {devices/vsource.sym} -240 10 0 0 {name=VIN1 value=0}
C {devices/lab_pin.sym} -240 -20 0 0 {name=p9 sig_type=std_logic lab=VCONT}
C {devices/lab_pin.sym} -240 40 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_pmos.sym} 810 -340 0 0 {name=M8
l=7u
w=0.6u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 940 -340 0 0 {name=M7
l=7u
w=0.6u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 900 -340 0 0 {name=p5 sig_type=std_logic lab=VOUT}
C {res.sym} 830 -140 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 830 -110 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 760 -340 0 0 {name=p4 sig_type=std_logic lab=VCONT}
C {devices/vsource.sym} 830 -200 0 0 {name=VIM value=0}
C {devices/lab_pin.sym} 830 -380 1 0 {name=p22 sig_type=std_logic lab=VDD}
C {./LSLH_vto1p1.sym} 445 -285 0 0 {name=X1}
C {devices/lab_pin.sym} 495 -375 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 495 -275 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -45 -110 0 0 {name=VDIG value=1.2}
C {devices/gnd.sym} -45 -80 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -45 -140 0 0 {name=p12 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} 465 -375 1 0 {name=p13 sig_type=std_logic lab=VDIG}
C {lab_pin.sym} 565 -325 2 0 {name=p14 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 415 -325 0 0 {name=p15 sig_type=std_logic lab=VSEL}
