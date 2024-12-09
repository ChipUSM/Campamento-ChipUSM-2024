v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 0 210 25 {
lab=#net1}
N 170 -55 170 55 {
lab=Vs}
N 210 -55 230 -55 {
lab=VDIG}
N 230 -85 230 -55 {
lab=VDIG}
N 210 -85 230 -85 {
lab=VDIG}
N 210 55 230 55 {
lab=VSS}
N 230 55 230 85 {
lab=VSS}
N 210 85 230 85 {
lab=VSS}
N 360 0 360 25 {
lab=Vg}
N 320 0 320 55 {
lab=#net1}
N 360 -55 380 -55 {
lab=VDIG}
N 380 -85 380 -55 {
lab=VDIG}
N 360 55 380 55 {
lab=VSS}
N 380 55 380 85 {
lab=VSS}
N 210 0 320 0 {
lab=#net1}
N 210 -25 210 0 {
lab=#net1}
N 320 -55 320 0 {
lab=#net1}
N 230 -85 380 -85 {
lab=VDIG}
N 230 85 380 85 {
lab=VSS}
N 360 0 470 0 {
lab=Vg}
N 360 -25 360 0 {
lab=Vg}
C {iopin.sym} 280 -85 1 1 {name=p2 lab=VDIG}
C {ipin.sym} 170 0 0 0 {name=p3 lab=Vs}
C {opin.sym} 470 0 0 0 {name=p4 lab=Vg}
C {iopin.sym} 280 85 3 1 {name=p5 lab=VSS}
C {sg13g2_pr/sg13_hv_pmos.sym} 190 -55 0 0 {name=MD5
l=0.45u
w=1u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 190 55 2 1 {name=MD6
l=0.45u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 340 -55 0 0 {name=MD1
l=0.45u
w=1u
ng=1
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 340 55 2 1 {name=MD2
l=0.45u
w=1u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
