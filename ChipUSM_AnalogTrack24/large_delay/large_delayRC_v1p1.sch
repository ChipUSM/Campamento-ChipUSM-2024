v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -140 -10 -80 -10 {
lab=VIN}
N 0 -10 100 -10 {
lab=#net1}
N 180 -10 260 -10 {
lab=VOUT}
C {devices/lab_pin.sym} -140 -10 0 0 {name=p6 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 260 -10 0 1 {name=p7 sig_type=std_logic lab=VOUT}
C {devices/iopin.sym} 0 -150 2 0 {name=p4 lab=VIN}
C {devices/iopin.sym} 0 -110 2 0 {name=p5 lab=VOUT}
C {devices/iopin.sym} -130 -160 2 0 {name=p1 lab=VCC}
C {devices/iopin.sym} -130 -120 2 0 {name=p2 lab=VSS}
C {sg13g2_stdcells/sg13g2_dlygate4sd3_1.sym} -40 -10 0 0 {name=x1 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_dlygate4sd3_1.sym} 140 -10 0 0 {name=x2 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {capa.sym} 40 20 0 0 {name=C1
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 220 20 0 0 {name=C2
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 40 50 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 220 50 0 0 {name=p8 sig_type=std_logic lab=VSS}
