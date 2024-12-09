v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 80 -90 140 {
lab=GND}
N -90 -0 -90 20 {
lab=VgMD2}
N -90 -30 -90 -0 {
lab=VgMD2}
N 70 -60 70 -30 {
lab=Vg}
N 10 0 30 0 {
lab=VgMD2}
N 110 -170 130 -170 {
lab=VgMD1}
N 260 -110 260 -30 {
lab=VgMD1}
N 130 -170 220 -110 {
lab=VgMD1}
N 220 -110 260 -110 {
lab=VgMD1}
N 260 -140 260 -110 {
lab=VgMD1}
N 70 -110 120 -110 {
lab=Vg}
N 70 -140 70 -110 {
lab=Vg}
N 200 -170 220 -170 {
lab=Vg}
N 120 -110 200 -170 {
lab=Vg}
N 70 -60 360 -60 {
lab=Vg}
N 70 -110 70 -60 {
lab=Vg}
N 340 0 340 170 {
lab=Vs}
N 300 0 340 0 {
lab=Vs}
N -200 170 340 170 {
lab=Vs}
N -200 -0 -200 170 {
lab=Vs}
N 260 30 260 140 {
lab=IGND}
N 70 140 260 140 {
lab=IGND}
N 70 30 70 140 {
lab=IGND}
N -130 0 -130 50 {
lab=Vs}
N -200 0 -130 0 {
lab=Vs}
N -130 -60 -130 0 {
lab=Vs}
N 70 -230 70 -200 {
lab=VH}
N 260 -230 260 -200 {
lab=VH}
N 70 -230 260 -230 {
lab=VH}
N 70 -250 70 -230 {
lab=VH}
N 60 -250 70 -250 {
lab=VH}
N -90 -150 -90 -90 {
lab=Vdd}
N -230 0 -200 -0 {
lab=Vs}
N 70 0 90 0 {
lab=IGND}
N 90 0 90 30 {
lab=IGND}
N 70 30 90 30 {
lab=IGND}
N 240 0 260 0 {
lab=IGND}
N 240 0 240 30 {
lab=IGND}
N 240 30 260 30 {
lab=IGND}
N 50 -170 70 -170 {
lab=VH}
N 50 -200 50 -170 {
lab=VH}
N 50 -200 70 -200 {
lab=VH}
N 260 -170 280 -170 {
lab=VH}
N 280 -200 280 -170 {
lab=VH}
N 260 -200 280 -200 {
lab=VH}
N -90 -60 -70 -60 {
lab=Vdd}
N -70 -90 -70 -60 {
lab=Vdd}
N -90 -90 -70 -90 {
lab=Vdd}
N -90 50 -70 50 {
lab=GND}
N -70 50 -70 80 {
lab=GND}
N -90 80 -70 80 {
lab=GND}
N 10 -20 10 0 {
lab=VgMD2}
N -90 0 10 0 {
lab=VgMD2}
C {sg13g2_pr/sg13_lv_pmos.sym} -110 -60 0 0 {name=MD9
l=0.13u
w=1.12u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -110 50 2 1 {name=MD10
l=0.13u
w=1.12u
ng=1
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 90 -170 0 1 {name=MD1
l=0.4u
w=10u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 240 -170 0 0 {name=MD3
l=0.4u
w=10u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 50 0 2 1 {name=MD2
l=0.45u
w=10u
ng=1
m=6
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 280 0 2 0 {name=MD4
l=0.45u
w=10u
ng=1
m=6
model=sg13_hv_nmos
spiceprefix=X
}
C {iopin.sym} 60 -250 0 1 {name=p1 lab=VH}
C {iopin.sym} -90 -150 0 1 {name=p2 lab=Vdd}
C {ipin.sym} -230 0 0 0 {name=p3 lab=Vs}
C {opin.sym} 360 -60 0 0 {name=p4 lab=Vg}
C {iopin.sym} -90 140 0 1 {name=p5 lab=GND}
C {lab_pin.sym} 10 -20 0 0 {name=p6 sig_type=std_logic lab=VgMD2}
C {lab_pin.sym} 260 -90 0 0 {name=p9 sig_type=std_logic lab=VgMD1}
C {iopin.sym} 70 140 0 1 {name=p11 lab=IGND}
