v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -355 -665 -355 -635 {
lab=2}
N -355 -515 -355 -485 {
lab=3}
N -355 -985 -355 -955 {
lab=2}
N -355 -835 -355 -805 {
lab=3}
N -445 -895 -415 -895 {
lab=8}
N -245 -225 -90 -225 {
lab=VCP}
N -240 10 -85 10 {
lab=VCN}
N -50 -895 90 -895 {
lab=V_1s_ls}
N -50 -575 90 -575 {
lab=V_1r_ls}
N -445 -575 -415 -575 {
lab=7}
N 375 -375 375 -340 {
lab=28}
N 375 -265 375 -220 {
lab=26}
N 465 -300 500 -300 {
lab=27}
N 670 -845 670 -795 {
lab=#net3}
N 670 -935 670 -905 {
lab=15}
N 655 -795 670 -795 {
lab=#net3}
N -295 -895 -200 -895 {
lab=V_1s}
N -295 -575 -200 -575 {
lab=V_1r}
C {devices/lab_pin.sym} -355 -665 1 0 {name=p4 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} -355 -485 3 0 {name=p5 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} -445 -575 1 0 {name=p6 sig_type=std_logic lab=7}
C {devices/lab_pin.sym} -275 -575 1 0 {name=p7 sig_type=std_logic lab=V_1r}
C {devices/lab_pin.sym} -355 -985 1 0 {name=p2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} -355 -805 3 0 {name=p3 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} -445 -895 1 0 {name=p8 sig_type=std_logic lab=8}
C {devices/lab_pin.sym} -275 -895 1 0 {name=p9 sig_type=std_logic lab=V_1s}
C {devices/lab_wire.sym} 375 -375 0 0 {name=l18 sig_type=std_logic lab=28}
C {devices/lab_pin.sym} 285 -320 0 0 {name=l21 sig_type=std_logic lab=D1
}
C {devices/lab_pin.sym} 285 -280 0 0 {name=l22 sig_type=std_logic lab=D1_N
}
C {devices/lab_wire.sym} -40 -275 0 0 {name=l11 sig_type=std_logic lab=19}
C {devices/lab_pin.sym} 60 -225 0 1 {name=l12 sig_type=std_logic lab=D1
}
C {devices/lab_wire.sym} -10 -175 2 0 {name=l7 sig_type=std_logic lab=20}
C {devices/lab_pin.sym} 505 -665 3 0 {name=p47 sig_type=std_logic lab=15}
C {devices/lab_pin.sym} 655 -765 2 0 {name=p14 sig_type=std_logic lab=VCP}
C {devices/lab_pin.sym} 655 -725 2 0 {name=p15 sig_type=std_logic lab=VCN}
C {devices/lab_pin.sym} 65 10 0 1 {name=l13 sig_type=std_logic lab=D1_N
}
C {devices/lab_pin.sym} 505 -825 1 0 {name=p21 sig_type=std_logic lab=19}
C {devices/lab_wire.sym} -10 -275 0 1 {name=l9 sig_type=std_logic lab=23}
C {../VCO/VCO_vto3p1.sym} -355 -895 0 0 {name=x5}
C {../VCO/VCO_vto3p1.sym} -355 -575 0 0 {name=x2}
C {devices/lab_pin.sym} -245 -225 1 0 {name=p11 sig_type=std_logic lab=VCP}
C {devices/lab_pin.sym} -240 10 1 0 {name=p13 sig_type=std_logic lab=VCN}
C {../GD/GD_vto1p1.sym} -60 -185 0 0 {name=X9}
C {devices/lab_wire.sym} -35 -40 0 0 {name=l10 sig_type=std_logic lab=19}
C {devices/lab_wire.sym} -5 60 2 0 {name=l16 sig_type=std_logic lab=20}
C {devices/lab_wire.sym} -5 -40 0 1 {name=l17 sig_type=std_logic lab=23}
C {../GD/GD_vto1p1.sym} -55 50 0 0 {name=X4}
C {devices/lab_pin.sym} 40 -895 1 0 {name=p17 sig_type=std_logic lab=V_1s_ls}
C {devices/lab_pin.sym} 35 -575 1 0 {name=p18 sig_type=std_logic lab=V_1r_ls}
C {devices/lab_pin.sym} -120 -845 3 0 {name=p35 sig_type=std_logic lab=15}
C {../LSHL/LSHL_vto1p1.sym} -170 -855 0 0 {name=X15}
C {devices/lab_pin.sym} -120 -525 3 0 {name=p34 sig_type=std_logic lab=15}
C {../LSHL/LSHL_vto1p1.sym} -170 -535 0 0 {name=X16}
C {devices/lab_pin.sym} -120 -945 1 0 {name=p43 sig_type=std_logic lab=19}
C {devices/lab_pin.sym} -120 -625 1 0 {name=p46 sig_type=std_logic lab=19}
C {devices/lab_wire.sym} 500 -300 2 0 {name=l4 sig_type=std_logic lab=27}
C {../DCDCBuck/DCDCBuck_vto1p1.sym} 385 -280 0 0 {name=X1}
C {devices/lab_wire.sym} 375 -220 2 0 {name=l5 sig_type=std_logic lab=26}
C {devices/lab_wire.sym} -40 -175 2 0 {name=l1 sig_type=std_logic lab=25}
C {devices/lab_wire.sym} -35 60 2 0 {name=l2 sig_type=std_logic lab=25}
C {iopin.sym} -1110 -590 2 0 {name=p39 lab=2}
C {iopin.sym} -1110 -570 2 0 {name=p40 lab=3}
C {iopin.sym} -1090 -470 1 0 {name=p50 lab=8}
C {iopin.sym} -950 -490 0 0 {name=p57 lab=15}
C {iopin.sym} -950 -570 0 0 {name=p61 lab=19}
C {iopin.sym} -950 -590 0 0 {name=p62 lab=20}
C {iopin.sym} -990 -630 3 0 {name=p65 lab=23}
C {iopin.sym} -1030 -630 3 0 {name=p67 lab=25}
C {iopin.sym} -1050 -630 3 0 {name=p68 lab=26}
C {iopin.sym} -1070 -630 3 0 {name=p69 lab=27}
C {iopin.sym} -1090 -630 3 0 {name=p70 lab=28}
C {code_shown.sym} -1745 -1015 0 0 {name=esd only_toplevel=false spice_ignore=true value="
D2 28 2 8 diodevdd_2kv m=1
D3 28 3 8 diodevdd_2kv m=1
D7 28 7 8 diodevdd_2kv m=1
D8 28 8 8 diodevdd_2kv m=1
D15 28 15 8 diodevdd_2kv m=1
D19 28 19 8 diodevdd_2kv m=1
D20 28 20 8 diodevdd_2kv m=1
D23 28 23 8 diodevdd_2kv m=1
D25 28 25 8 diodevdd_2kv m=1
D26 28 26 8 diodevdd_2kv m=1
D27 28 27 8 diodevdd_2kv m=1
D28 28 28 8 diodevdd_2kv m=1

D30 28 2 8 diodevss_2kv m=1
D31 28 3 8 diodevss_2kv m=1
D35 28 7 8 diodevss_2kv m=1
D36 28 8 8 diodevss_2kv m=1
D43 28 15 8 diodevss_2kv m=1
D47 28 19 8 diodevss_2kv m=1
D48 28 20 8 diodevss_2kv m=1
D51 28 23 8 diodevss_2kv m=1
D53 28 25 8 diodevss_2kv m=1
D54 28 26 8 diodevss_2kv m=1
D55 28 27 8 diodevss_2kv m=1
D56 28 28 8 diodevss_2kv m=1
"}
C {iopin.sym} -1110 -510 2 0 {name=p1 lab=6}
C {iopin.sym} -1110 -490 2 0 {name=p10 lab=7}
C {devices/lab_pin.sym} -415 -600 1 0 {name=p22 sig_type=std_logic lab=6}
C {devices/lab_pin.sym} -415 -920 1 0 {name=p23 sig_type=std_logic lab=6}
C {devices/capa.sym} 670 -875 2 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 670 -935 1 0 {name=p25 sig_type=std_logic lab=15}
C {/home/designer/shared/TORepo_IHPNov2024_TDBuck/design_data/xschem/Digital_Block/DB.sym} 505 -745 0 0 {name=x8}
C {devices/lab_pin.sym} 355 -765 1 0 {name=p12 sig_type=std_logic lab=V_1s_ls}
C {devices/lab_pin.sym} 355 -725 3 0 {name=p16 sig_type=std_logic lab=V_1r_ls}
