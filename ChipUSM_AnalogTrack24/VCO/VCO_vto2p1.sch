v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -310 -50 450 -50 {
lab=VDD}
N -240 -20 -190 -20 {
lab=V_1_int}
N -50 -20 0 -20 {
lab=V_2}
N 140 -20 190 -20 {
lab=V_3}
N 330 -20 380 -20 {
lab=V_4}
N -380 -100 -380 -20 {
lab=V_5}
N -380 -100 520 -100 {
lab=V_5}
N 520 -100 520 -20 {
lab=V_5}
N -380 0 -380 80 {
lab=VCONT}
N -420 80 -380 80 {
lab=VCONT}
N 380 30 450 30 {
lab=VSS}
N -380 80 380 80 {
lab=VCONT}
N -190 0 -190 30 {
lab=VSS}
N -310 30 -190 30 {
lab=VSS}
N -0 0 0 30 {
lab=VSS}
N -190 30 0 30 {
lab=VSS}
N 190 0 190 30 {
lab=VSS}
N 0 30 190 30 {
lab=VSS}
N 380 0 380 30 {
lab=VSS}
N 190 30 380 30 {
lab=VSS}
N -0 -240 0 -215 {
lab=#net1}
N -40 -295 -40 -185 {
lab=V_1_int}
N 0 -295 20 -295 {
lab=VDD}
N 20 -325 20 -295 {
lab=VDD}
N 0 -325 20 -325 {
lab=VDD}
N 0 -185 20 -185 {
lab=VSS}
N 20 -185 20 -155 {
lab=VSS}
N 0 -155 20 -155 {
lab=VSS}
N 150 -265 150 -215 {
lab=V_1}
N 110 -240 110 -185 {
lab=#net1}
N 150 -295 170 -295 {
lab=VDD}
N 170 -325 170 -295 {
lab=VDD}
N 150 -185 170 -185 {
lab=VSS}
N 170 -185 170 -155 {
lab=VSS}
N -0 -240 110 -240 {
lab=#net1}
N 0 -265 -0 -240 {
lab=#net1}
N 110 -295 110 -240 {
lab=#net1}
N 20 -325 170 -325 {
lab=VDD}
N 20 -155 170 -155 {
lab=VSS}
C {devices/lab_pin.sym} -280 -50 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -280 30 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -420 80 1 0 {name=p1 sig_type=std_logic lab=VCONT}
C {devices/lab_pin.sym} -220 -20 1 0 {name=p2 sig_type=std_logic lab=V_1_int}
C {devices/lab_pin.sym} -30 -20 1 0 {name=p3 sig_type=std_logic lab=V_2}
C {devices/lab_pin.sym} 160 -20 1 0 {name=p4 sig_type=std_logic lab=V_3}
C {devices/lab_pin.sym} 350 -20 1 0 {name=p5 sig_type=std_logic lab=V_4}
C {devices/lab_pin.sym} 520 -100 1 0 {name=p6 sig_type=std_logic lab=V_5}
C {devices/ipin.sym} -370 -170 0 0 {name=p7 lab=VCONT}
C {devices/iopin.sym} -325 -160 3 0 {name=p8 lab=VDD}
C {devices/iopin.sym} -275 -210 1 0 {name=p9 lab=VSS}
C {devices/opin.sym} -220 -170 0 0 {name=p10 lab=V_1}
C {devices/opin.sym} -220 -140 0 0 {name=p11 lab=V_2}
C {../VCO/stage_vto2p1.sym} -310 -10 0 0 {name=x1}
C {../VCO/stage_vto2p1.sym} -120 -10 0 0 {name=x2}
C {../VCO/stage_vto2p1.sym} 70 -10 0 0 {name=x3}
C {../VCO/stage_vto2p1.sym} 260 -10 0 0 {name=x4}
C {../VCO/stage_vto2p1.sym} 450 -10 0 0 {name=x5}
C {sg13g2_pr/sg13_hv_pmos.sym} -20 -295 0 0 {name=MD5
l=0.4u
w=1u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -20 -185 2 1 {name=MD6
l=0.45u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 130 -295 0 0 {name=MD1
l=0.4u
w=1u
ng=1
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 130 -185 2 1 {name=MD2
l=0.45u
w=1u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} -40 -240 0 0 {name=p12 sig_type=std_logic lab=V_1_int}
C {devices/lab_pin.sym} 150 -240 0 1 {name=p15 sig_type=std_logic lab=V_1}
C {devices/lab_pin.sym} 70 -325 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 70 -155 3 0 {name=p17 sig_type=std_logic lab=VSS}
