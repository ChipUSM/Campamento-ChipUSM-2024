v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 -20 -60 30 {
lab=Vo}
N -60 110 -60 160 {
lab=GND}
N -60 100 -60 110 {
lab=GND}
N -130 -50 -100 -50 {
lab=VgM1}
N -130 70 -100 70 {
lab=VgM2}
N -90 -100 -60 -100 {
lab=Vin}
N -60 -90 -60 -80 {
lab=Vin}
N -60 30 -60 40 {
lab=Vo}
N -60 30 -20 30 {
lab=Vo}
N -60 -50 -40 -50 {
lab=Vin}
N -40 -90 -40 -50 {
lab=Vin}
N -60 -90 -40 -90 {
lab=Vin}
N -60 -100 -60 -90 {
lab=Vin}
N -60 70 -40 70 {
lab=GND}
N -40 70 -40 110 {
lab=GND}
N -60 110 -40 110 {
lab=GND}
N -90 160 -60 160 {
lab=GND}
C {sg13g2_pr/sg13_hv_nmos.sym} -80 70 2 1 {name=M2
l=0.45u
w=10u
ng=1
m=4080
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -80 -50 0 0 {name=M1
l=0.4u
w=10u
ng=1
m=12096
model=sg13_hv_pmos
spiceprefix=X
}
C {iopin.sym} -90 -100 2 0 {name=p1 lab=Vin

}
C {ipin.sym} -130 -50 0 0 {name=p2 lab=VgM1}
C {ipin.sym} -130 70 0 0 {name=p4 lab=VgM2}
C {iopin.sym} -20 30 0 0 {name=p3 lab=Vo}
C {iopin.sym} -90 160 2 0 {name=p6 lab=GND

}
