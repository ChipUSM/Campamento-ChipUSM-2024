v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -5 -5 95 -5 {
lab=#net1}
C {devices/ipin.sym} -290 -150 0 0 {name=p1 lab=VIN}
C {devices/opin.sym} -290 -110 0 0 {name=p5 lab=VOUT}
C {devices/iopin.sym} -290 -180 2 0 {name=p2 lab=VDD}
C {devices/iopin.sym} -210 -180 2 0 {name=p4 lab=VSS}
C {devices/ipin.sym} -190 -150 0 0 {name=p3 lab=VCONT}
C {devices/lab_pin.sym} -145 -5 0 0 {name=p6 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} -75 45 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -145 15 0 0 {name=p10 sig_type=std_logic lab=VCONT
}
C {devices/lab_pin.sym} -75 -35 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {../VCDL/VCDL_vto1p1.sym} -75 5 0 0 {name=x1}
C {devices/lab_pin.sym} 165 45 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 165 -35 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {../VCDL/VCDL_vto1p1.sym} 165 5 0 0 {name=x2}
C {devices/lab_pin.sym} 235 -5 2 0 {name=p9 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 95 15 0 0 {name=p11 sig_type=std_logic lab=VCONT
}
