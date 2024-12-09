v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -560 -655 -560 -625 {
lab=VDD}
N -560 -505 -560 -475 {
lab=VSS}
N -500 -585 -405 -585 {
lab=V_1r}
N -500 -545 -470 -545 {
lab=V_2r}
N -560 -975 -560 -945 {
lab=VDD}
N -560 -825 -560 -795 {
lab=VSS}
N -650 -885 -620 -885 {
lab=VCONTs}
N -500 -905 -405 -905 {
lab=V_1s}
N -500 -865 -470 -865 {
lab=V_2s}
N -310 -225 -280 -225 {
lab=VCP}
N -215 -225 -90 -225 {
lab=DOUT_D1}
N -305 10 -275 10 {
lab=VCN}
N -210 10 -85 10 {
lab=DOUT_D1_N}
N 170 -895 210 -895 {
lab=V_1s_buff}
N 170 -575 210 -575 {
lab=V_1r_buff}
N -50 -895 90 -895 {
lab=V_1s_dl}
N -50 -575 90 -575 {
lab=V_1r_dl}
N -265 -895 -200 -895 {
lab=#net1}
N -265 -575 -200 -575 {
lab=#net2}
N -650 -565 -620 -565 {
lab=VCONTr}
N 375 -375 375 -340 {
lab=VH}
N 375 -265 375 -220 {
lab=VSS}
N 465 -300 500 -300 {
lab=V_res}
C {devices/lab_pin.sym} -560 -655 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -560 -475 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -650 -565 1 0 {name=p6 sig_type=std_logic lab=VCONTr}
C {devices/lab_pin.sym} -480 -585 1 0 {name=p7 sig_type=std_logic lab=V_1r}
C {devices/lab_pin.sym} -470 -545 1 0 {name=p1 sig_type=std_logic lab=V_2r}
C {devices/lab_pin.sym} -560 -975 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -560 -795 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -650 -885 1 0 {name=p8 sig_type=std_logic lab=VCONTs}
C {devices/lab_pin.sym} -480 -905 1 0 {name=p9 sig_type=std_logic lab=V_1s}
C {devices/lab_pin.sym} -470 -865 1 0 {name=p10 sig_type=std_logic lab=V_2s}
C {devices/lab_wire.sym} 375 -375 0 0 {name=l18 sig_type=std_logic lab=VH}
C {devices/lab_pin.sym} 285 -320 0 0 {name=l21 sig_type=std_logic lab=D1
}
C {devices/lab_pin.sym} 285 -280 0 0 {name=l22 sig_type=std_logic lab=D1_N
}
C {devices/lab_wire.sym} -40 -275 0 0 {name=l11 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} 60 -225 0 1 {name=l12 sig_type=std_logic lab=D1
}
C {devices/lab_wire.sym} -10 -175 2 0 {name=l7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -190 -225 1 0 {name=p31 sig_type=std_logic lab=DOUT_D1}
C {devices/lab_pin.sym} -185 10 1 0 {name=p36 sig_type=std_logic lab=DOUT_D1_N}
C {devices/lab_pin.sym} 505 -665 3 0 {name=p47 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 195 -575 1 0 {name=p48 sig_type=std_logic lab=V_1r_buff}
C {devices/lab_pin.sym} 190 -895 1 0 {name=p49 sig_type=std_logic lab=V_1s_buff}
C {devices/lab_pin.sym} 655 -765 2 0 {name=p14 sig_type=std_logic lab=VCP}
C {devices/lab_pin.sym} 655 -725 2 0 {name=p15 sig_type=std_logic lab=VCN}
C {devices/lab_pin.sym} 65 10 0 1 {name=l13 sig_type=std_logic lab=D1_N
}
C {sg13g2_stdcells/sg13g2_buf_4.sym} -240 10 0 0 {name=x6 VDD=VDIG VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_4.sym} -240 -225 0 0 {name=x3 VDD=VDIG VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_4.sym} 130 -895 0 0 {name=x7 VDD=VDIG VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_4.sym} 130 -575 0 0 {name=x12 VDD=VDIG VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 505 -825 1 0 {name=p21 sig_type=std_logic lab=VDIG}
C {devices/lab_wire.sym} -10 -275 0 1 {name=l9 sig_type=std_logic lab=VDD_GD}
C {../VCO/VCO_vto2p1.sym} -560 -885 0 0 {name=x5}
C {../VCO/VCO_vto2p1.sym} -560 -565 0 0 {name=x2}
C {devices/lab_pin.sym} -310 -225 1 0 {name=p11 sig_type=std_logic lab=VCP}
C {devices/lab_pin.sym} -305 10 1 0 {name=p13 sig_type=std_logic lab=VCN}
C {../GD/GD_vto1p1.sym} -60 -185 0 0 {name=X9}
C {devices/lab_wire.sym} -35 -40 0 0 {name=l10 sig_type=std_logic lab=VDIG}
C {devices/lab_wire.sym} -5 60 2 0 {name=l16 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -5 -40 0 1 {name=l17 sig_type=std_logic lab=VDD_GD}
C {../GD/GD_vto1p1.sym} -55 50 0 0 {name=X4}
C {../VCDL/VCDLtop_vto1p1.sym} -335 -895 0 0 {name=x11}
C {../VCDL/VCDLtop_vto1p1.sym} -335 -575 0 0 {name=x14}
C {devices/lab_pin.sym} 40 -895 1 0 {name=p17 sig_type=std_logic lab=V_1s_dl}
C {devices/lab_pin.sym} 35 -575 1 0 {name=p18 sig_type=std_logic lab=V_1r_dl}
C {devices/lab_pin.sym} -405 -885 3 0 {name=p19 sig_type=std_logic lab=VCONTr}
C {devices/lab_pin.sym} -405 -565 3 0 {name=p22 sig_type=std_logic lab=VCONTr}
C {devices/lab_pin.sym} -335 -945 1 0 {name=p24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -335 -625 1 0 {name=p29 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -335 -845 3 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -335 -525 3 0 {name=p32 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -120 -845 3 0 {name=p35 sig_type=std_logic lab=VSS}
C {../LSHL/LSHL_vto1p1.sym} -170 -855 0 0 {name=X15}
C {devices/lab_pin.sym} -120 -525 3 0 {name=p34 sig_type=std_logic lab=VSS}
C {../LSHL/LSHL_vto1p1.sym} -170 -535 0 0 {name=X16}
C {devices/lab_pin.sym} -120 -945 1 0 {name=p43 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -120 -625 1 0 {name=p46 sig_type=std_logic lab=VDIG}
C {../Digital_block/DB.sym} 505 -745 0 0 {name=x17}
C {devices/lab_pin.sym} 355 -765 1 0 {name=p12 sig_type=std_logic lab=V_1s_buff}
C {devices/lab_pin.sym} 355 -725 3 0 {name=p16 sig_type=std_logic lab=V_1r_buff}
C {devices/lab_wire.sym} 500 -300 2 0 {name=l4 sig_type=std_logic lab=V_res}
C {../DCDCBuck/DCDCBuck_vto1p1.sym} 385 -280 0 0 {name=X1}
C {devices/lab_wire.sym} 375 -220 2 0 {name=l5 sig_type=std_logic lab=VSS}
C {iopin.sym} -910 -890 2 0 {name=p20 lab=VCONTs}
C {iopin.sym} -910 -860 2 0 {name=p23 lab=VCONTr}
C {iopin.sym} -1070 -890 2 0 {name=p25 lab=VDD}
C {iopin.sym} -1070 -860 2 0 {name=p26 lab=VDD_GD}
C {iopin.sym} -1070 -920 2 0 {name=p27 lab=VDIG}
C {devices/lab_wire.sym} -40 -175 2 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -35 60 2 0 {name=l2 sig_type=std_logic lab=VSS}
C {iopin.sym} -1070 -830 2 0 {name=p28 lab=VH}
C {iopin.sym} -1070 -800 2 0 {name=p33 lab=VSS}
C {iopin.sym} -910 -830 2 0 {name=p37 lab=V_res}
