v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 60 40 110 {
lab=VSS}
N 40 60 140 60 {
lab=VSS}
N 140 -0 140 60 {
lab=VSS}
N 40 0 140 0 {
lab=VSS}
N 40 30 40 60 {
lab=VSS}
N 40 -50 40 -30 {
lab=out}
N -50 -0 -0 -0 {
lab=in}
N -50 -110 -0 -110 {
lab=in}
N 40 -110 120 -110 {
lab=vdd}
N 40 -180 40 -140 {
lab=vdd}
N 120 -180 120 -110 {
lab=vdd}
N 40 -180 120 -180 {
lab=vdd}
N 40 -50 190 -50 {
lab=out}
N 40 -80 40 -50 {
lab=out}
N -50 -110 -50 0 {
lab=in}
C {sg13g2_pr/sg13_hv_nmos.sym} 20 0 2 1 {name=M1
l=0.22u
w=5u
ng=1
m=54
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 20 -110 0 0 {name=M2
l=0.22u
w=5u
ng=1
m=54
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} -50 -50 0 0 {name=p1 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 190 -50 2 0 {name=p2 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 40 -180 0 0 {name=p3 sig_type=std_logic lab=vdd
}
C {iopin.sym} -150 -220 0 0 {name=p4 lab=vdd}
C {iopin.sym} -150 -190 0 0 {name=p5 lab=vss}
C {devices/lab_pin.sym} 40 100 0 0 {name=p6 sig_type=std_logic lab=vss
}
C {ipin.sym} -130 -160 0 0 {name=p7 lab=in}
C {opin.sym} -150 -130 0 0 {name=p8 lab=out}
