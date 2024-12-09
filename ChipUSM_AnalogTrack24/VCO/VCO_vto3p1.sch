v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
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
N 190 30 450 30 {
lab=VSS}
N -310 -60 -310 -50 {
lab=VDD}
N -120 -60 -120 -50 {
lab=VDD}
N 70 -60 70 -50 {
lab=VDD}
N 450 -60 450 -50 {
lab=VDD}
N 260 -60 260 -50 {
lab=VDD}
N 260 -60 450 -60 {
lab=VDD}
N -310 -60 -120 -60 {
lab=VDD}
N -120 -60 70 -60 {
lab=VDD}
N 70 -60 260 -60 {
lab=VDD}
N -340 -70 -340 -50 {
lab=VSEL}
N -150 -70 -150 -50 {
lab=VSEL}
N 40 -70 40 -50 {
lab=VSEL}
N 230 -70 230 -50 {
lab=VSEL}
N 420 -70 420 -50 {
lab=VSEL}
N 230 -70 420 -70 {
lab=VSEL}
N -340 -70 -150 -70 {
lab=VSEL}
N -150 -70 40 -70 {
lab=VSEL}
N -410 -70 -340 -70 {
lab=VSEL}
N 40 -70 230 -70 {
lab=VSEL}
N 380 0 380 80 {
lab=VCONT}
C {devices/lab_pin.sym} -280 -60 1 0 {name=p13 sig_type=std_logic lab=VDD}
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
C {../VCO/stage_vto3p1.sym} -310 -10 0 0 {name=x1}
C {../VCO/stage_vto3p1.sym} -120 -10 0 0 {name=x2}
C {../VCO/stage_vto3p1.sym} 70 -10 0 0 {name=x3}
C {../VCO/stage_vto3p1.sym} 260 -10 0 0 {name=x4}
C {../VCO/stage_vto3p1.sym} 450 -10 0 0 {name=x5}
C {devices/lab_pin.sym} -15 -280 0 0 {name=p12 sig_type=std_logic lab=V_1_int}
C {devices/lab_pin.sym} 135 -280 0 1 {name=p15 sig_type=std_logic lab=V_1}
C {devices/lab_pin.sym} 65 -330 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 65 -230 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -410 -70 0 0 {name=p11 lab=VSEL}
C {../BUFFHVVCO/BUFFHVVCO_vto1p1.sym} 15 -240 0 0 {name=X6}
