v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 0 230 -0 {
lab=PD_OUT}
N 20 -100 20 -70 {
lab=VCC}
N 350 -90 350 -60 {
lab=VCC}
N 20 70 20 90 {
lab=VSS}
N 350 60 350 80 {
lab=VSS}
N -160 20 -130 20 {
lab=VINR}
N -160 -20 -130 -20 {
lab=VINS}
N 480 -20 500 -20 {
lab=NOC_P}
N 170 0 200 0 {
lab=PD_OUT}
N 200 -120 200 0 {
lab=PD_OUT}
N 180 -120 200 -120 {
lab=PD_OUT}
N -330 -240 -330 -200 {
lab=VCC}
N -330 -100 -330 -60 {
lab=VSS}
N -330 90 -330 120 {
lab=VCC}
N -330 220 -330 260 {
lab=VSS}
N 300 -200 300 -170 {
lab=VSS}
N 300 -330 300 -300 {
lab=VCC}
N 660 -230 660 -190 {
lab=VCC}
N 660 -90 660 -60 {
lab=VSS}
N 660 70 660 100 {
lab=VCC}
N 660 200 660 250 {
lab=VSS}
N 730 -140 780 -140 {
lab=NOC_P_BUFF}
N 730 150 780 150 {
lab=NOC_N_BUFF}
N 370 -250 420 -250 {
lab=PD_BUFF}
N -260 -150 -210 -150 {
lab=VINS_BUFF}
N -260 170 -230 170 {
lab=VINR_BUFF}
N -450 -150 -410 -150 {
lab=VINS}
N -450 170 -410 170 {
lab=VINR}
N 200 -250 220 -250 {
lab=PD_OUT}
N 200 -250 200 -120 {
lab=PD_OUT}
N 480 -140 580 -140 {
lab=NOC_P}
N 480 -140 480 -20 {
lab=NOC_P}
N 470 -20 480 -20 {
lab=NOC_P}
N 480 20 480 150 {
lab=NOC_N}
N 480 20 500 20 {
lab=NOC_N}
N 470 20 480 20 {
lab=NOC_N}
N 480 150 580 150 {
lab=NOC_N}
C {devices/iopin.sym} -640 -260 2 0 {name=p4 lab=VCC}
C {devices/iopin.sym} -640 -220 2 0 {name=p5 lab=VSS}
C {devices/lab_pin.sym} 20 -100 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 350 -90 0 0 {name=p2 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 20 90 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 350 80 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -640 -180 2 0 {name=p7 lab=VINS}
C {devices/iopin.sym} -640 -100 2 0 {name=p8 lab=VINR}
C {devices/lab_pin.sym} -160 20 0 0 {name=p20 sig_type=std_logic lab=VINR}
C {devices/lab_pin.sym} -160 -20 0 0 {name=p6 sig_type=std_logic lab=VINS}
C {devices/iopin.sym} 500 -20 0 0 {name=p9 lab=NOC_P}
C {devices/iopin.sym} 500 20 0 0 {name=p10 lab=NOC_N
}
C {devices/lab_pin.sym} 180 -120 0 0 {name=p14 sig_type=std_logic lab=PD_OUT}
C {../PD/PD_vto1p1.sym} 20 0 0 0 {name=x3}
C {../NOL/NOL_vto1p1.sym} 350 0 0 0 {name=x4}
C {../BUFFLV/BUFFLV_vto1p1.sym} -380 -110 0 0 {name=X1}
C {../BUFFLV/BUFFLV_vto1p1.sym} -380 210 0 0 {name=X2}
C {../BUFFLV/BUFFLV_vto1p1.sym} 250 -210 0 0 {name=X5}
C {../BUFFLV/BUFFLV_vto1p1.sym} 610 -100 0 0 {name=X6}
C {../BUFFLV/BUFFLV_vto1p1.sym} 610 190 0 0 {name=X7}
C {devices/iopin.sym} -210 -150 0 0 {name=p12 lab=VINS_BUFF}
C {devices/iopin.sym} -230 170 0 0 {name=p13 lab=VINR_BUFF}
C {devices/iopin.sym} 420 -250 0 0 {name=p15 lab=PD_BUFF}
C {devices/iopin.sym} 780 -140 0 0 {name=p16 lab=NOC_P_BUFF}
C {devices/iopin.sym} 780 150 0 0 {name=p18 lab=NOC_N_BUFF}
C {devices/lab_pin.sym} -330 -240 0 0 {name=p19 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -330 -60 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -330 90 0 0 {name=p22 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -330 260 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 660 250 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 660 -60 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 660 -230 0 0 {name=p26 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 660 70 0 0 {name=p27 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 300 -330 0 0 {name=p28 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 300 -170 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -450 -150 0 0 {name=p30 sig_type=std_logic lab=VINS}
C {devices/lab_pin.sym} -450 170 0 0 {name=p11 sig_type=std_logic lab=VINR}
