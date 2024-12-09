v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 90 -630 890 -230 {flags=graph
y1=-0
y2=2.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.5
divx=5
subdivx=1
node=i(Vd)
color=4
dataset=-1
unitx=1
logx=0
logy=0}
T {Esto es tanto para lv_nmos como para lv_pmos
l_min = 0.13u
w_min = 0.15u; w_max = 10u

hvMOS
l_min_HVnmos = 0.45u; l_min_HVpmos = 0.4
w_min_HVnmos = 0.3u;w_min_HVpmos = 0.3u;w_max = 10u;
} -980 -570 0 0 0.4 0.4 {}
N -210 -400 -210 -360 {
lab=GND}
N -490 0 -490 60 {
lab=GND}
N -210 -490 -210 -460 {
lab=Vg}
N -490 -60 -460 -60 {
lab=GND}
N -460 -60 -460 0 {
lab=GND}
N -490 0 -460 0 {
lab=GND}
N -490 -30 -490 0 {
lab=GND}
N -130 -490 -130 -460 {
lab=Vd}
N -490 -100 -490 -90 {
lab=#net1}
N -490 -180 -490 -160 {
lab=Vd}
N -560 -60 -530 -60 {
lab=Vg}
N -130 -400 -130 -360 {
lab=GND}
N -210 -360 -130 -360 {
lab=GND}
N -210 -360 -210 -340 {
lab=GND}
N -250 0 -250 60 {
lab=GND}
N -250 -60 -220 -60 {
lab=GND}
N -220 -60 -220 0 {
lab=GND}
N -250 0 -220 0 {
lab=GND}
N -250 -30 -250 0 {
lab=GND}
N -250 -100 -250 -90 {
lab=#net2}
N -250 -180 -250 -160 {
lab=Vd}
N -320 -60 -290 -60 {
lab=Vg}
N -20 0 -20 60 {
lab=GND}
N -20 -60 10 -60 {
lab=GND}
N 10 -60 10 0 {
lab=GND}
N -20 0 10 0 {
lab=GND}
N -20 -30 -20 0 {
lab=GND}
N -20 -100 -20 -90 {
lab=#net3}
N -20 -180 -20 -160 {
lab=Vd}
N -90 -60 -60 -60 {
lab=Vg}
N -490 320 -490 380 {
lab=GND}
N -490 260 -460 260 {
lab=GND}
N -460 260 -460 320 {
lab=GND}
N -490 320 -460 320 {
lab=GND}
N -490 290 -490 320 {
lab=GND}
N -490 220 -490 230 {
lab=#net4}
N -490 140 -490 160 {
lab=Vd}
N -560 260 -530 260 {
lab=Vg}
N -250 320 -250 380 {
lab=GND}
N -250 260 -220 260 {
lab=GND}
N -220 260 -220 320 {
lab=GND}
N -250 320 -220 320 {
lab=GND}
N -250 290 -250 320 {
lab=GND}
N -250 220 -250 230 {
lab=#net5}
N -250 140 -250 160 {
lab=Vd}
N -320 260 -290 260 {
lab=Vg}
N -20 320 -20 380 {
lab=GND}
N -20 260 10 260 {
lab=GND}
N 10 260 10 320 {
lab=GND}
N -20 320 10 320 {
lab=GND}
N -20 290 -20 320 {
lab=GND}
N -20 220 -20 230 {
lab=#net6}
N -20 140 -20 160 {
lab=Vd}
N -90 260 -60 260 {
lab=Vg}
C {sg13g2_pr/sg13_hv_nmos.sym} -510 -60 2 1 {name=M1
l=\{l_M1\}
w=\{w_M1\}
ng=1
m=\{mult\}
model=sg13_hv_nmos
spiceprefix=X
}
C {vsource.sym} -210 -430 0 0 {name=Vgs value=3.3 savecurrent=false}
C {vsource.sym} -130 -430 0 0 {name=Vds value=3.3 savecurrent=false}
C {gnd.sym} -490 60 0 0 {name=l1 lab=GND}
C {code.sym} 110 -170 0 0 {name=Simulation only_toplevel=false 

value="
.param temp=27
.param mult = 1

.param w_M1 =10u 
.param l_M1 =0.45u

.param w_M2 =10u 
.param l_M2 =0.55u

.param w_M3 =10u 
.param l_M3 =0.65u

.param w_M4 = 1u
.param l_M4 = 1u

.save all
* + @M.XM1.m1[id]
+ @n.xm1.nsg13_hv_nmos[vth]
+ @n.xm1.nsg13_hv_nmos[gds]
+ @n.xm2.nsg13_hv_nmos[vth]
+ @n.xm2.nsg13_hv_nmos[gds]
+ @n.xm3.nsg13_hv_nmos[vth]
+ @n.xm3.nsg13_hv_nmos[gds]
+ @n.xm4.nsg13_hv_nmos[vth]
+ @n.xm4.nsg13_hv_nmos[gds]
+ @n.xm5.nsg13_hv_nmos[vth]
+ @n.xm5.nsg13_hv_nmos[gds]
+ @n.xm6.nsg13_hv_nmos[vth]
+ @n.xm6.nsg13_hv_nmos[gds]
+ @n.xm1.nsg13_hv_nmos[ad]

.control 
*dc Vds 0 3 0.01 Vgs 0.5 3 0.5
dc Vds 0 3.3 0.01 
*dc Vds 0 0.5 0.01 
*dc Vds 0 0.5 0.01 temp 0 27 1
write dc_hv_nmos.raw
let G_M1 = @n.xm1.nsg13_hv_nmos[gds]
let G_M2 = @n.xm2.nsg13_hv_nmos[gds]
let G_M3 = @n.xm3.nsg13_hv_nmos[gds]
let G_M4 = @n.xm4.nsg13_hv_nmos[gds]
let G_M5 = @n.xm5.nsg13_hv_nmos[gds]
let G_M6 = @n.xm6.nsg13_hv_nmos[gds]
let Ron_M1 = 1/G_M1
let Ron_M2 = 1/G_M2
let Ron_M3 = 1/G_M3
let Ron_M4 = 1/G_M4
let Ron_M5 = 1/G_M5
let Ron_M6 = 1/G_M6
let Vds = v(Vd)

let Vth_M1 = @n.xm1.nsg13_hv_nmos[vth]
let Vth_M2 = @n.xm2.nsg13_hv_nmos[vth]
let Vth_M3 = @n.xm3.nsg13_hv_nmos[vth]

let Id_M1 = i(VdM1)
plot i(VdM1) i(VdM2) i(VdM3) vs Vds
plot Ron_M1 Ron_M2 Ron_M3 vs Vds
plot i(VdM4) i(VdM5) i(VdM6) vs Vds
plot Ron_M4 Ron_M5 Ron_M6 vs Vds
plot Vth_M1 Vth_M2 Vth_M3 vs Vds
*print @n.xm1.nsg13_hv_nmos[vth] @n.xm2.nsg13_hv_nmos[vth] Vth_M1
*print @n.xm2.nsg13_hv_nmos[vth]
write test_nmos.raw




.endc


"}
C {code.sym} 240 -170 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {launcher.sym} -220 -610 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/dc_hv_nmos.raw dc"
}
C {lab_pin.sym} -130 -490 0 0 {name=p2 sig_type=std_logic lab=Vd}
C {lab_pin.sym} -490 -180 0 0 {name=p1 sig_type=std_logic lab=Vd}
C {ammeter.sym} -490 -130 0 0 {name=VdM1 savecurrent=true spice_ignore=0}
C {ngspice_get_value.sym} -560 -10 0 0 {name=r6 node=v(@n.xm1.nsg13_hv_nmos[vth])
descr="Vth="}
C {launcher.sym} -260 -230 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
*tclcommand="xschem annotate_op"}
C {lab_pin.sym} -210 -490 0 0 {name=p3 sig_type=std_logic lab=Vg}
C {lab_pin.sym} -560 -60 0 0 {name=p4 sig_type=std_logic lab=Vg}
C {gnd.sym} -210 -340 0 0 {name=l2 lab=GND}
C {sg13g2_pr/sg13_hv_nmos.sym} -270 -60 2 1 {name=M2
l=\{l_M2\}
w=\{w_M2\}
ng=1
m=\{mult\}
model=sg13_hv_nmos
spiceprefix=X
}
C {gnd.sym} -250 60 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -250 -180 0 0 {name=p5 sig_type=std_logic lab=Vd}
C {ammeter.sym} -250 -130 0 0 {name=VdM2 savecurrent=true spice_ignore=0}
C {ngspice_get_value.sym} -320 -10 0 0 {name=r1 node=v(@n.xm1.nsg13_hv_nmos[vth])
descr="Vth="}
C {lab_pin.sym} -320 -60 0 0 {name=p6 sig_type=std_logic lab=Vg}
C {sg13g2_pr/sg13_hv_nmos.sym} -40 -60 2 1 {name=M3
l=\{l_M3\}
w=\{w_M3\}
ng=1
m=\{mult\}
model=sg13_hv_nmos
spiceprefix=X
}
C {gnd.sym} -20 60 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -20 -180 0 0 {name=p7 sig_type=std_logic lab=Vd}
C {ammeter.sym} -20 -130 0 0 {name=VdM3 savecurrent=true spice_ignore=0}
C {ngspice_get_value.sym} -90 -10 0 0 {name=r2 node=v(@n.xm1.nsg13_hv_nmos[vth])
descr="Vth="}
C {lab_pin.sym} -90 -60 0 0 {name=p8 sig_type=std_logic lab=Vg}
C {sg13g2_pr/sg13_hv_nmos.sym} -510 260 2 1 {name=M4
l=\{l_M4\}
w=\{w_M4\}
ng=1
m=\{mult\}
model=sg13_hv_nmos
spiceprefix=X
}
C {gnd.sym} -490 380 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -490 140 0 0 {name=p9 sig_type=std_logic lab=Vd}
C {ammeter.sym} -490 190 0 0 {name=VdM4 savecurrent=true spice_ignore=0}
C {ngspice_get_value.sym} -560 310 0 0 {name=r3 node=v(@n.xm1.nsg13_hv_nmos[vth])
descr="Vth="}
C {lab_pin.sym} -560 260 0 0 {name=p10 sig_type=std_logic lab=Vg}
C {sg13g2_pr/sg13_hv_nmos.sym} -270 260 2 1 {name=M5
l=\{l_M4\}
w=\{w_M4*5\}
ng=1
m=\{mult\}
model=sg13_hv_nmos
spiceprefix=X
}
C {gnd.sym} -250 380 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -250 140 0 0 {name=p11 sig_type=std_logic lab=Vd}
C {ammeter.sym} -250 190 0 0 {name=VdM5 savecurrent=true spice_ignore=0}
C {ngspice_get_value.sym} -320 310 0 0 {name=r4 node=v(@n.xm1.nsg13_hv_nmos[vth])
descr="Vth="}
C {lab_pin.sym} -320 260 0 0 {name=p12 sig_type=std_logic lab=Vg}
C {sg13g2_pr/sg13_hv_nmos.sym} -40 260 2 1 {name=M6
l=\{l_M4\}
w=\{w_M4*10\}
ng=1
m=\{mult\}
model=sg13_hv_nmos
spiceprefix=X
}
C {gnd.sym} -20 380 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -20 140 0 0 {name=p13 sig_type=std_logic lab=Vd}
C {ammeter.sym} -20 190 0 0 {name=VdM6 savecurrent=true spice_ignore=0}
C {ngspice_get_value.sym} -90 310 0 0 {name=r5 node=v(@n.xm1.nsg13_hv_nmos[vth])
descr="Vth="}
C {lab_pin.sym} -90 260 0 0 {name=p14 sig_type=std_logic lab=Vg}
