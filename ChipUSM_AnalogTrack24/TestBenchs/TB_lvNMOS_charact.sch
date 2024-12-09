v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {l_min = 0.13u
w_min = 0.13u 
w_max = 10u
} -1080 -530 0 0 0.4 0.4 {}
N -420 -130 -420 -70 {
lab=GND}
N -420 -190 -390 -190 {
lab=GND}
N -390 -190 -390 -130 {
lab=GND}
N -420 -130 -390 -130 {
lab=GND}
N -420 -160 -420 -130 {
lab=GND}
N -420 -230 -420 -220 {
lab=#net1}
N -420 -310 -420 -290 {
lab=Vd}
N -490 -190 -460 -190 {
lab=Vg}
N -190 -130 -190 -70 {
lab=GND}
N -190 -190 -160 -190 {
lab=GND}
N -160 -190 -160 -130 {
lab=GND}
N -190 -130 -160 -130 {
lab=GND}
N -190 -160 -190 -130 {
lab=GND}
N -190 -230 -190 -220 {
lab=#net2}
N -190 -310 -190 -290 {
lab=Vd}
N -260 -190 -230 -190 {
lab=Vg}
N 20 -130 20 -70 {
lab=GND}
N 20 -190 50 -190 {
lab=GND}
N 50 -190 50 -130 {
lab=GND}
N 20 -130 50 -130 {
lab=GND}
N 20 -160 20 -130 {
lab=GND}
N 20 -230 20 -220 {
lab=#net3}
N 20 -310 20 -290 {
lab=Vd}
N -50 -190 -20 -190 {
lab=Vg}
N -510 -430 -510 -390 {
lab=GND}
N -510 -520 -510 -490 {
lab=Vg}
N -430 -520 -430 -490 {
lab=Vd}
N -430 -430 -430 -390 {
lab=GND}
N -510 -390 -430 -390 {
lab=GND}
N -510 -390 -510 -370 {
lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} -440 -190 2 1 {name=M1
l=\{l_M1\}
w=\{w_M1\}
ng=\{ng_M1\}
m=\{mult_M1\}
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} -420 -70 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -420 -310 0 0 {name=p1 sig_type=std_logic lab=Vd}
C {ammeter.sym} -420 -260 0 0 {name=VdM1 savecurrent=true spice_ignore=0}
C {ngspice_get_value.sym} -490 -140 0 0 {name=r6 node=v(@n.xm1.nsg13_lv_nmos[vth])
descr="Vth="}
C {lab_pin.sym} -490 -190 0 0 {name=p4 sig_type=std_logic lab=Vg}
C {gnd.sym} -190 -70 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -190 -310 0 0 {name=p5 sig_type=std_logic lab=Vd}
C {ammeter.sym} -190 -260 0 0 {name=VdM2 savecurrent=true spice_ignore=0}
C {ngspice_get_value.sym} -260 -140 0 0 {name=r1 node=v(@n.xm2.nsg13_lv_nmos[vth])
descr="Vth="}
C {lab_pin.sym} -260 -190 0 0 {name=p6 sig_type=std_logic lab=Vg}
C {gnd.sym} 20 -70 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 20 -310 0 0 {name=p7 sig_type=std_logic lab=Vd}
C {ammeter.sym} 20 -260 0 0 {name=VdM3 savecurrent=true spice_ignore=0}
C {ngspice_get_value.sym} -50 -140 0 0 {name=r2 node=v(@n.xm3.nsg13_lv_nmos[vth])
descr="Vth="}
C {lab_pin.sym} -50 -190 0 0 {name=p8 sig_type=std_logic lab=Vg}
C {vsource.sym} -510 -460 0 0 {name=Vgs value=1.2 savecurrent=false}
C {vsource.sym} -430 -460 0 0 {name=Vds value=1.2 savecurrent=false}
C {lab_pin.sym} -430 -520 0 0 {name=p2 sig_type=std_logic lab=Vd}
C {lab_pin.sym} -510 -520 0 0 {name=p3 sig_type=std_logic lab=Vg}
C {gnd.sym} -510 -370 0 0 {name=l2 lab=GND}
C {code_shown.sym} -840 -520 0 0 {name=Simulation only_toplevel=false 

value="
.param temp=27
.param mult_M1 = 1
.param w_M1 = 0.13u 
.param l_M1 = 0.13u
.param ng_M1 = 1

.param mult_M2 = 1
*.param w_M2 =0.26u 
.param w_M2 =0.13u
.param l_M2 =0.26u
.param ng_M2 = 1

.param mult_M3 = 1
*.param w_M3 =0.39u 
.param w_M3 =0.13u 
.param l_M3 =0.39u
.param ng_M3 = 1

.save all
* + @M.XM1.m1[id]
+ @n.xm1.nsg13_lv_nmos[vth]
+ @n.xm1.nsg13_lv_nmos[gds]
+ @n.xm2.nsg13_lv_nmos[vth]
+ @n.xm2.nsg13_lv_nmos[gds]
+ @n.xm3.nsg13_lv_nmos[vth]
+ @n.xm3.nsg13_lv_nmos[gds]
+ @n.xm1.nsg13_lv_nmos[ad]

.control 
dc Vds 0 1.2 0.01 Vgs 0.5 1.2 0.1
*dc Vds 0 1.2 0.01 
*dc Vds 0 0.5 0.01 temp 0 27 1
write dc_hv_nmos.raw
let G_M1 = @n.xm1.nsg13_lv_nmos[gds]
let G_M2 = @n.xm2.nsg13_lv_nmos[gds]
let G_M3 = @n.xm3.nsg13_lv_nmos[gds]
let Ron_M1 = 1/G_M1
let Ron_M2 = 1/G_M2
let Ron_M3 = 1/G_M3
let Vth_M1 = @n.xm1.nsg13_lv_nmos[vth]
let Vth_M2 = @n.xm2.nsg13_lv_nmos[vth]
let Vth_M3 = @n.xm3.nsg13_lv_nmos[vth]
let Vds = v(Vd)
let Id_M1 = i(VdM1)
let Id_M2 = i(VdM2)
let Id_M3 = i(VdM3)

plot Id_M1 Id_M2 Id_M3 vs Vds
plot Id_M1 vs Vds
*plot Ron_M1 Ron_M2 Ron_M3 vs Vds
plot Vth_M1 Vth_M2 Vth_M3 vs Vds
write test_nmos.raw

.endc
"}
C {devices/code_shown.sym} -170 -510 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {sg13g2_pr/sg13_lv_nmos.sym} -210 -190 2 1 {name="M2"
l=\{l_M2\}
w=\{w_M2\}
ng=\{ng_M2\}
m=\{mult_M2\}
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 0 -190 2 1 {name=M3
l=\{l_M3\}
w=\{w_M3\}
ng=\{ng_M3\}
m=\{mult_M3\}
model=sg13_lv_nmos
spiceprefix=X
}
C {launcher.sym} -310 30 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
*tclcommand="xschem annotate_op"}
