v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 -75 -110 35 {
lab=SEL}
N -70 -75 -50 -75 {
lab=VDD}
N -50 -105 -50 -75 {
lab=VDD}
N -70 -105 -50 -105 {
lab=VDD}
N -70 35 -50 35 {
lab=VSS}
N -50 35 -50 65 {
lab=VSS}
N -70 65 -50 65 {
lab=VSS}
N -70 -45 -70 5 {
lab=SEL_N}
N 245 -70 245 -50 {
lab=VSS}
N 215 -70 215 -0 {
lab=VIN}
N 245 80 245 100 {
lab=VDD}
N 215 -0 215 100 {
lab=VIN}
N 170 0 215 -0 {
lab=VIN}
N 275 0 275 100 {
lab=VOUT}
N 275 0 340 -0 {
lab=VOUT}
N 275 -70 275 0 {
lab=VOUT}
N 245 -50 335 -50 {
lab=VSS}
N 245 80 335 80 {
lab=VDD}
C {sg13g2_pr/sg13_hv_pmos.sym} -90 -75 0 0 {name=MD5
l=0.5u
w=1u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -90 35 2 1 {name=MD6
l=0.5u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 245 -90 3 1 {name=MD1
l=0.5u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 245 120 1 1 {name=MD2
l=0.5u
w=1u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} -70 -20 0 1 {name=p2 sig_type=std_logic lab=SEL_N}
C {devices/lab_pin.sym} 245 140 1 1 {name=p3 sig_type=std_logic lab=SEL_N}
C {devices/lab_pin.sym} 245 -110 1 0 {name=p4 sig_type=std_logic lab=SEL}
C {iopin.sym} -50 -105 1 1 {name=p5 lab=VDD}
C {ipin.sym} -110 -20 0 0 {name=p6 lab=SEL}
C {opin.sym} 340 0 0 0 {name=p7 lab=VOUT}
C {iopin.sym} -50 65 3 1 {name=p8 lab=VSS}
C {ipin.sym} 170 0 0 0 {name=p1 lab=VIN}
C {devices/lab_pin.sym} 335 -50 1 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 335 80 1 0 {name=p10 sig_type=std_logic lab=VDD}
