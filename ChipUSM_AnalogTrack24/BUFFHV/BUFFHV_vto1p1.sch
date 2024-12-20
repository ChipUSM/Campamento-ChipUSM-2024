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
lab=#net2}
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
N 510 0 510 25 {
lab=#net3}
N 470 0 470 55 {
lab=#net2}
N 510 -55 530 -55 {
lab=VDIG}
N 530 -85 530 -55 {
lab=VDIG}
N 510 55 530 55 {
lab=VSS}
N 530 55 530 85 {
lab=VSS}
N 360 0 470 0 {
lab=#net2}
N 470 -55 470 0 {
lab=#net2}
N 380 -85 530 -85 {
lab=VDIG}
N 380 85 530 85 {
lab=VSS}
N 360 -25 360 0 {
lab=#net2}
N 660 0 660 25 {
lab=#net4}
N 620 0 620 55 {
lab=#net3}
N 660 -55 680 -55 {
lab=VDIG}
N 680 -85 680 -55 {
lab=VDIG}
N 660 55 680 55 {
lab=VSS}
N 680 55 680 85 {
lab=VSS}
N 510 0 620 0 {
lab=#net3}
N 620 -55 620 0 {
lab=#net3}
N 530 -85 680 -85 {
lab=VDIG}
N 530 85 680 85 {
lab=VSS}
N 510 -25 510 0 {
lab=#net3}
N 810 0 810 25 {
lab=#net5}
N 770 0 770 55 {
lab=#net4}
N 810 -55 830 -55 {
lab=VDIG}
N 830 -85 830 -55 {
lab=VDIG}
N 810 55 830 55 {
lab=VSS}
N 830 55 830 85 {
lab=VSS}
N 660 0 770 0 {
lab=#net4}
N 770 -55 770 0 {
lab=#net4}
N 680 -85 830 -85 {
lab=VDIG}
N 680 85 830 85 {
lab=VSS}
N 960 -25 960 25 {
lab=Vg}
N 920 0 920 55 {
lab=#net5}
N 960 -55 980 -55 {
lab=VDIG}
N 980 -85 980 -55 {
lab=VDIG}
N 960 55 980 55 {
lab=VSS}
N 980 55 980 85 {
lab=VSS}
N 810 0 920 0 {
lab=#net5}
N 920 -55 920 0 {
lab=#net5}
N 830 -85 980 -85 {
lab=VDIG}
N 830 85 980 85 {
lab=VSS}
N 810 -25 810 0 {
lab=#net5}
N 660 -25 660 0 {
lab=#net4}
C {iopin.sym} 280 -85 1 1 {name=p2 lab=VDIG}
C {ipin.sym} 170 0 0 0 {name=p3 lab=Vs}
C {opin.sym} 960 0 0 0 {name=p4 lab=Vg}
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
C {sg13g2_pr/sg13_hv_pmos.sym} 490 -55 0 0 {name=MD3
l=0.45u
w=1u
ng=1
m=8
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 490 55 2 1 {name=MD4
l=0.45u
w=1u
ng=1
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 640 -55 0 0 {name=MD7
l=0.45u
w=1u
ng=1
m=16
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 640 55 2 1 {name=MD8
l=0.45u
w=1u
ng=1
m=8
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 790 -55 0 0 {name=MD9
l=0.45u
w=1u
ng=1
m=32
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 790 55 2 1 {name=MD10
l=0.45u
w=1u
ng=1
m=16
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 940 -55 0 0 {name=MD11
l=0.45u
w=1u
ng=1
m=64
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 940 55 2 1 {name=MD12
l=0.45u
w=1u
ng=1
m=32
model=sg13_hv_nmos
spiceprefix=X
}
