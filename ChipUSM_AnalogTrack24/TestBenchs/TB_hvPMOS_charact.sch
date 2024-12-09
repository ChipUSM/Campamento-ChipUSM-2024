v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {l_min_HVnmos = 0.45u; l_min_HVpmos = 0.4
w_max = 10u; w_min_HVnmos = 0.3u; w_min_HVpmos = 0.3u;} -1190 -500 0 0 0.4 0.4 {}
T {Esto es tanto para lv_nmos como para lv_pmos
l_min = 0.13u
w_min = 0.15u; w_max = 10u

hvMOS
l_min_HVnmos = 0.45u; l_min_HVpmos = 0.4
w_min_HVnmos = 0.3u;w_min_HVpmos = 0.3u;w_max = 10u;
} -1180 -720 0 0 0.4 0.4 {}
N -750 -300 -750 -260 {
lab=GND}
N -750 -390 -750 -360 {
lab=Vg}
N -670 -390 -670 -360 {
lab=Vd}
N -670 -300 -670 -260 {
lab=GND}
N -750 -260 -670 -260 {
lab=GND}
N -750 -260 -750 -240 {
lab=GND}
N -800 -30 -760 -30 {
lab=Vg}
N -720 0 -720 40 {
lab=Vd}
N -600 -300 -600 -260 {
lab=GND}
N -670 -260 -600 -260 {
lab=GND}
N -600 -390 -600 -360 {
lab=Vdd}
N -720 -70 -720 -60 {
lab=#net1}
N -720 -30 -700 -30 {
lab=#net1}
N -700 -70 -700 -30 {
lab=#net1}
N -720 -70 -700 -70 {
lab=#net1}
N -720 -90 -720 -70 {
lab=#net1}
N -580 -30 -540 -30 {
lab=Vg}
N -500 0 -500 40 {
lab=Vd}
N -500 -70 -500 -60 {
lab=#net2}
N -500 -30 -480 -30 {
lab=#net2}
N -480 -70 -480 -30 {
lab=#net2}
N -500 -70 -480 -70 {
lab=#net2}
N -500 -90 -500 -70 {
lab=#net2}
N -350 -30 -310 -30 {
lab=Vg}
N -270 0 -270 40 {
lab=Vd}
N -270 -70 -270 -60 {
lab=#net3}
N -270 -30 -250 -30 {
lab=#net3}
N -250 -70 -250 -30 {
lab=#net3}
N -270 -70 -250 -70 {
lab=#net3}
N -270 -90 -270 -70 {
lab=#net3}
N -120 -30 -80 -30 {
lab=Vg}
N -40 0 -40 40 {
lab=Vd}
N -40 -70 -40 -60 {
lab=#net4}
N -40 -30 -20 -30 {
lab=#net4}
N -20 -70 -20 -30 {
lab=#net4}
N -40 -70 -20 -70 {
lab=#net4}
N -40 -90 -40 -70 {
lab=#net4}
N -800 200 -760 200 {
lab=Vg}
N -720 230 -720 270 {
lab=Vd}
N -720 160 -720 170 {
lab=#net5}
N -720 200 -700 200 {
lab=#net5}
N -700 160 -700 200 {
lab=#net5}
N -720 160 -700 160 {
lab=#net5}
N -720 140 -720 160 {
lab=#net5}
N -580 200 -540 200 {
lab=Vg}
N -500 230 -500 270 {
lab=Vd}
N -500 160 -500 170 {
lab=#net6}
N -500 200 -480 200 {
lab=#net6}
N -480 160 -480 200 {
lab=#net6}
N -500 160 -480 160 {
lab=#net6}
N -500 140 -500 160 {
lab=#net6}
C {sg13g2_pr/sg13_hv_pmos.sym} -740 -30 0 0 {name=M1
l=\{l_M1\}
w=\{w_M1\}
ng=1
m=\{mult\}
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} -720 40 0 0 {name=p2 sig_type=std_logic lab=Vd}
C {lab_pin.sym} -800 -30 0 0 {name=p3 sig_type=std_logic lab=Vg}
C {vsource.sym} -750 -330 0 0 {name=Vg value=0 savecurrent=false}
C {vsource.sym} -670 -330 0 0 {name=Vd value=3.3 savecurrent=false}
C {lab_pin.sym} -670 -390 0 0 {name=p1 sig_type=std_logic lab=Vd}
C {lab_pin.sym} -750 -390 0 0 {name=p4 sig_type=std_logic lab=Vg}
C {gnd.sym} -750 -240 0 0 {name=l2 lab=GND}
C {code.sym} -1120 -240 0 0 {name=Simulation only_toplevel=false 

value="

*.option temp= 27
.option temp= 125

.param mult = 1

.param w_M1 =10u 
.param l_M1 =0.4u

.param w_M2 =10u 
.param l_M2 =0.45u

.param w_M3 =10u 
.param l_M3 =0.5u

.save all
+ @n.xm1.nsg13_hv_pmos[vth]
+ @n.xm1.nsg13_hv_pmos[gds]
+ @n.xm2.nsg13_hv_pmos[vth]
+ @n.xm2.nsg13_hv_pmos[gds]
+ @n.xm3.nsg13_hv_pmos[vth]
+ @n.xm3.nsg13_hv_pmos[gds]
+ @n.xm4.nsg13_lv_pmos[vth]
+ @n.xm4.nsg13_lv_pmos[gds]
+ @n.xm5.nsg13_hv_pmos[vth]
+ @n.xm5.nsg13_hv_pmos[gds]
+ @n.xm6.nsg13_hv_pmos[vth]
+ @n.xm6.nsg13_hv_pmos[gds]
.control 

*alter Vdd 5

*dc Vd 0 3.3 0.01 Vg 0.5 3.3 0.5
*dc Vd 0 0.5 0.01 temp 0 27 1
dc Vd 0 3.3 0.01 

let Vsd = v(Vdd) - v(Vd)
let G_M1 = @n.xm1.nsg13_hv_pmos[gds]
let G_M2 = @n.xm2.nsg13_hv_pmos[gds]
let G_M3 = @n.xm3.nsg13_hv_pmos[gds]
let G_M4 = @n.xm4.nsg13_lv_pmos[gds]
let G_M5 = @n.xm5.nsg13_hv_pmos[gds]
let G_M6 = @n.xm6.nsg13_hv_pmos[gds]
let Ron_M1 = 1/G_M1
let Ron_M2 = 1/G_M2
let Ron_M3 = 1/G_M3
let Ron_M4 = 1/G_M4
let Ron_M5 = 1/G_M5
let Ron_M6 = 1/G_M6

plot i(VdM1) i(VdM2) i(VdM3) vs Vsd
plot i(VdM1) i(VdM4) vs Vsd
plot i(VdM1) i(VdM5) i(VdM6) vs Vsd
plot Ron_M1 Ron_M2 Ron_M3 vs Vsd
plot Ron_M1 Ron_M4 vs Vsd
plot Ron_M1 Ron_M5 Ron_M6 vs Vsd
*plot i(VdM1) i(VdM2) vs Vsd

*plot @n.xm1.nsg13_hv_pmos[vth] @n.xm2.nsg13_hv_pmos[vth] @n.xm3.nsg13_hv_pmos[vth]
*print @n.xm2.nsg13_hv_nmos[vth]
write test_pmos.raw
.endc


.control
reset
alter Vd 0 
dc Vg 2 3.3 0.01 
let Vsg = v(Vdd) - v(Vg)
plot i(VdM1) i(VdM2) i(VdM3) vs Vsg
.endc

"}
C {code.sym} -1120 -400 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.lib cornerMOSlv.lib mos_tt
*.lib cornerMOShv.lib mos_ss
*.lib cornerMOShv.lib mos_ff
*.lib cornerMOShv.lib mos_sf
*.lib cornerMOShv.lib mos_fs
"}
C {vsource.sym} -600 -330 0 0 {name=Vdd value=3.3 savecurrent=false}
C {lab_pin.sym} -600 -390 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -720 -150 0 0 {name=p6 sig_type=std_logic lab=Vdd}
C {ammeter.sym} -720 -120 0 0 {name=VdM1 savecurrent=true spice_ignore=0}
C {sg13g2_pr/sg13_hv_pmos.sym} -520 -30 0 0 {name=M2
l=\{l_M2\}
w=\{w_M2\}
ng=1
m=\{mult\}
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} -500 40 0 0 {name=p7 sig_type=std_logic lab=Vd}
C {lab_pin.sym} -580 -30 0 0 {name=p8 sig_type=std_logic lab=Vg}
C {lab_pin.sym} -500 -150 0 0 {name=p9 sig_type=std_logic lab=Vdd}
C {ammeter.sym} -500 -120 0 0 {name=VdM2 savecurrent=true spice_ignore=0}
C {sg13g2_pr/sg13_hv_pmos.sym} -290 -30 0 0 {name=M3
l=\{l_M3\}
w=\{w_M3\}
ng=1
m=\{mult\}
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} -270 40 0 0 {name=p10 sig_type=std_logic lab=Vd}
C {lab_pin.sym} -350 -30 0 0 {name=p11 sig_type=std_logic lab=Vg}
C {lab_pin.sym} -270 -150 0 0 {name=p12 sig_type=std_logic lab=Vdd}
C {ammeter.sym} -270 -120 0 0 {name=VdM3 savecurrent=true spice_ignore=0}
C {sg13g2_pr/sg13_lv_pmos.sym} -60 -30 0 0 {name=M4
l=\{l_M1\}
w=\{w_M1\}
ng=1
m=\{mult\}
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -40 40 0 0 {name=p13 sig_type=std_logic lab=Vd}
C {lab_pin.sym} -120 -30 0 0 {name=p14 sig_type=std_logic lab=Vg}
C {lab_pin.sym} -40 -150 0 0 {name=p15 sig_type=std_logic lab=Vdd}
C {ammeter.sym} -40 -120 0 0 {name=VdM4 savecurrent=true spice_ignore=0}
C {sg13g2_pr/sg13_hv_pmos.sym} -740 200 0 0 {name=M5
l=\{l_M1*2\}
w=\{w_M1*2\}
ng=1
m=\{mult\}
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} -720 270 0 0 {name=p16 sig_type=std_logic lab=Vd}
C {lab_pin.sym} -800 200 0 0 {name=p17 sig_type=std_logic lab=Vg}
C {lab_pin.sym} -720 80 0 0 {name=p18 sig_type=std_logic lab=Vdd}
C {ammeter.sym} -720 110 0 0 {name=VdM5 savecurrent=true spice_ignore=0}
C {sg13g2_pr/sg13_hv_pmos.sym} -520 200 0 0 {name=M6
l=\{l_M1*3\}
w=\{w_M1*3\}
ng=1
m=\{mult\}
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} -500 270 0 0 {name=p19 sig_type=std_logic lab=Vd}
C {lab_pin.sym} -580 200 0 0 {name=p20 sig_type=std_logic lab=Vg}
C {lab_pin.sym} -500 80 0 0 {name=p21 sig_type=std_logic lab=Vdd}
C {ammeter.sym} -500 110 0 0 {name=VdM6 savecurrent=true spice_ignore=0}
