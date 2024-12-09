v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1710 -30 1710 -10 {
lab=15}
N 1710 -210 1710 -190 {
lab=19}
N 1860 -130 1940 -130 {
lab=17}
N 1860 -90 1940 -90 {
lab=18}
N 1540 -130 1560 -130 {
lab=13}
N 1540 -90 1560 -90 {
lab=14}
N 2300 -240 2300 -200 {
lab=22}
N 2300 -20 2300 20 {
lab=21}
N 2240 -200 2300 -200 {
lab=22}
N 2240 -20 2300 -20 {
lab=21}
N 2300 -130 2330 -130 {
lab=22}
N 2300 -200 2300 -130 {
lab=22}
N 2300 -90 2330 -90 {
lab=21}
N 2300 -90 2300 -20 {
lab=21}
N 2140 30 2140 50 {
lab=25}
N 2140 -150 2140 -130 {
lab=25}
N 2420 -180 2420 -150 {
lab=28}
N 2510 -110 2540 -110 {
lab=27}
N 2420 -80 2420 -50 {
lab=26}
N 1940 -90 1940 -20 {
lab=18}
N 1940 -200 1940 -130 {
lab=17}
N 1940 -200 1980 -200 {
lab=17}
N 1940 -20 1980 -20 {
lab=18}
N 2170 -80 2170 -70 {
lab=23}
N 2170 30 2170 50 {
lab=20}
N 2170 -150 2170 -130 {
lab=20}
N 2140 -80 2140 -70 {
lab=19}
N 2140 -270 2140 -250 {
lab=19}
N 2170 -270 2170 -250 {
lab=23}
N 1940 -240 1940 -200 {
lab=17}
N 1940 -20 1940 30 {
lab=18}
N 465 30 465 60 {
lab=2}
N 465 180 465 210 {
lab=3}
N 525 100 620 100 {
lab=V_1r}
N 465 -290 465 -260 {
lab=2}
N 465 -140 465 -110 {
lab=3}
N 525 -220 620 -220 {
lab=V_1s}
N 975 -210 1115 -210 {
lab=#net1}
N 975 110 1115 110 {
lab=#net2}
N 760 -210 825 -210 {
lab=#net3}
N 760 110 825 110 {
lab=#net4}
N 2060 -200 2090 -200 {
lab=#net5}
N 2060 -20 2090 -20 {
lab=#net6}
N 525 -180 560 -180 {
lab=V_2s}
N 525 140 565 140 {
lab=V_2r}
C {iopin.sym} -240 -220 2 0 {name=p8 lab=1}
C {iopin.sym} -240 -200 2 0 {name=p9 lab=2}
C {iopin.sym} -240 -180 2 0 {name=p10 lab=3}
C {iopin.sym} -240 -160 2 0 {name=p11 lab=4}
C {iopin.sym} -240 -140 2 0 {name=p12 lab=5}
C {iopin.sym} -240 -120 2 0 {name=p13 lab=6}
C {iopin.sym} -240 -100 2 0 {name=p14 lab=7}
C {iopin.sym} -220 -80 1 0 {name=p15 lab=8}
C {iopin.sym} -200 -80 1 0 {name=p16 lab=9}
C {iopin.sym} -180 -80 1 0 {name=p17 lab=10}
C {iopin.sym} -160 -80 1 0 {name=p18 lab=11}
C {iopin.sym} -140 -80 1 0 {name=p19 lab=12}
C {iopin.sym} -120 -80 1 0 {name=p20 lab=13}
C {iopin.sym} -100 -80 1 0 {name=p21 lab=14}
C {iopin.sym} -80 -100 0 0 {name=p22 lab=15}
C {iopin.sym} -80 -120 0 0 {name=p23 lab=16}
C {iopin.sym} -80 -140 0 0 {name=p24 lab=17}
C {iopin.sym} -80 -160 0 0 {name=p25 lab=18}
C {iopin.sym} -80 -180 0 0 {name=p26 lab=19}
C {iopin.sym} -80 -200 0 0 {name=p27 lab=20}
C {iopin.sym} -80 -220 0 0 {name=p28 lab=21}
C {iopin.sym} -100 -240 3 0 {name=p29 lab=22}
C {iopin.sym} -120 -240 3 0 {name=p30 lab=23}
C {iopin.sym} -140 -240 3 0 {name=p31 lab=24}
C {iopin.sym} -160 -240 3 0 {name=p32 lab=25}
C {iopin.sym} -180 -240 3 0 {name=p33 lab=26}
C {iopin.sym} -200 -240 3 0 {name=p34 lab=27}
C {iopin.sym} -220 -240 3 0 {name=p35 lab=28}
C {lab_pin.sym} 1710 -210 1 0 {name=p3 sig_type=std_logic lab=19}
C {code_shown.sym} -670 -640 0 0 {name=esd only_toplevel=false spice_ignore=true value="
D1 28 1 8 diodevdd_2kv m=1
D2 28 2 8 diodevdd_2kv m=1
D3 28 3 8 diodevdd_2kv m=1
D4 28 4 8 diodevdd_2kv m=1
D5 28 5 8 diodevdd_2kv m=1
D6 28 6 8 diodevdd_2kv m=1
D7 28 7 8 diodevdd_2kv m=1
D8 28 8 8 diodevdd_2kv m=1
D9 28 9 8 diodevdd_2kv m=1
D10 28 10 8 diodevdd_2kv m=1
D11 28 11 8 diodevdd_2kv m=1
D12 28 12 8 diodevdd_2kv m=1
D13 28 13 8 diodevdd_2kv m=1
D14 28 14 8 diodevdd_2kv m=1
D15 28 15 8 diodevdd_2kv m=1
D16 28 16 8 diodevdd_2kv m=1
D17 28 17 8 diodevdd_2kv m=1
D18 28 18 8 diodevdd_2kv m=1
D19 28 19 8 diodevdd_2kv m=1
D20 28 20 8 diodevdd_2kv m=1
D21 28 21 8 diodevdd_2kv m=1
D22 28 22 8 diodevdd_2kv m=1
D23 28 23 8 diodevdd_2kv m=1
D24 28 24 8 diodevdd_2kv m=1
D25 28 25 8 diodevdd_2kv m=1
D26 28 26 8 diodevdd_2kv m=1
D27 28 27 8 diodevdd_2kv m=1
D28 28 28 8 diodevdd_2kv m=1

D29 28 1 8 diodevss_2kv m=1
D30 28 2 8 diodevss_2kv m=1
D31 28 3 8 diodevss_2kv m=1
D32 28 4 8 diodevss_2kv m=1
D33 28 5 8 diodevss_2kv m=1
D34 28 6 8 diodevss_2kv m=1
D35 28 7 8 diodevss_2kv m=1
D36 28 8 8 diodevss_2kv m=1
D37 28 9 8 diodevss_2kv m=1
D38 28 10 8 diodevss_2kv m=1
D39 28 11 8 diodevss_2kv m=1
D40 28 12 8 diodevss_2kv m=1
D41 28 13 8 diodevss_2kv m=1
D42 28 14 8 diodevss_2kv m=1
D43 28 15 8 diodevss_2kv m=1
D44 28 16 8 diodevss_2kv m=1
D45 28 17 8 diodevss_2kv m=1
D46 28 18 8 diodevss_2kv m=1
D47 28 19 8 diodevss_2kv m=1
D48 28 20 8 diodevss_2kv m=1
D49 28 21 8 diodevss_2kv m=1
D50 28 22 8 diodevss_2kv m=1
D51 28 23 8 diodevss_2kv m=1
D52 28 24 8 diodevss_2kv m=1
D53 28 25 8 diodevss_2kv m=1
D54 28 26 8 diodevss_2kv m=1
D55 28 27 8 diodevss_2kv m=1
D56 28 28 8 diodevss_2kv m=1
"}
C {lab_pin.sym} 1540 -130 0 0 {name=p38 sig_type=std_logic lab=13}
C {lab_pin.sym} 1540 -90 0 0 {name=p39 sig_type=std_logic lab=14}
C {lab_pin.sym} 1710 -10 3 0 {name=p1 sig_type=std_logic lab=15}
C {lab_pin.sym} 2300 -240 0 0 {name=p2 sig_type=std_logic lab=22}
C {lab_pin.sym} 2300 20 0 0 {name=p4 sig_type=std_logic lab=21}
C {lab_pin.sym} 2140 50 0 0 {name=p5 sig_type=std_logic lab=25}
C {lab_pin.sym} 2170 -270 2 0 {name=p6 sig_type=std_logic lab=23}
C {lab_pin.sym} 2170 -80 2 0 {name=p7 sig_type=std_logic lab=23
}
C {lab_pin.sym} 2420 -180 0 0 {name=p36 sig_type=std_logic lab=28}
C {lab_pin.sym} 2420 -50 0 0 {name=p37 sig_type=std_logic lab=26}
C {lab_pin.sym} 2140 -130 0 0 {name=p40 sig_type=std_logic lab=25}
C {lab_pin.sym} 2540 -110 2 0 {name=p41 sig_type=std_logic lab=27}
C {../Digital_Block/DB.sym} 1710 -110 0 0 {name=x4}
C {../GD/GD_vto1p1.sym} 2120 -160 0 0 {name=X2}
C {../GD/GD_vto1p1.sym} 2120 20 0 0 {name=X3}
C {../DCDCBuck/DCDCBuck_vto1p1.sym} 2430 -90 0 0 {name=X1}
C {lab_pin.sym} 2170 -130 0 1 {name=p42 sig_type=std_logic lab=20
}
C {lab_pin.sym} 2170 50 0 1 {name=p43 sig_type=std_logic lab=20}
C {lab_pin.sym} 2140 -80 0 0 {name=p44 sig_type=std_logic lab=19}
C {lab_pin.sym} 2140 -270 0 0 {name=p45 sig_type=std_logic lab=19}
C {lab_pin.sym} 1940 -240 0 0 {name=p46 sig_type=std_logic lab=17
}
C {lab_pin.sym} 1940 30 0 0 {name=p47 sig_type=std_logic lab=18
}
C {devices/lab_pin.sym} 405 -200 1 0 {name=p55 sig_type=std_logic lab=8}
C {sg13g2_stdcells/sg13g2_buf_4.sym} 1155 -210 0 0 {name=x7 VDD=19 VSS=15 prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_4.sym} 1155 110 0 0 {name=x12 VDD=19 VSS=15 prefix=sg13g2_ }
C {../VCO/VCO_vto2p1.sym} 465 -200 0 0 {name=x5}
C {../VCO/VCO_vto2p1.sym} 465 120 0 0 {name=x6}
C {../VCDL/VCDLtop_vto1p1.sym} 690 -210 0 0 {name=x11}
C {../VCDL/VCDLtop_vto1p1.sym} 690 110 0 0 {name=x14}
C {devices/lab_pin.sym} 690 -260 1 0 {name=p64 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 690 -160 3 0 {name=p66 sig_type=std_logic lab=3}
C {../LSHL/LSHL_vto1p1.sym} 855 -170 0 0 {name=X15}
C {../LSHL/LSHL_vto1p1.sym} 855 150 0 0 {name=X16}
C {lab_pin.sym} 1195 -210 0 1 {name=p58 sig_type=std_logic lab=13}
C {lab_pin.sym} 1195 110 0 1 {name=p59 sig_type=std_logic lab=14}
C {lab_pin.sym} 905 -260 1 0 {name=p60 sig_type=std_logic lab=19}
C {lab_pin.sym} 905 -160 3 0 {name=p61 sig_type=std_logic lab=15}
C {lab_pin.sym} 905 60 1 0 {name=p68 sig_type=std_logic lab=19}
C {lab_pin.sym} 905 160 3 0 {name=p69 sig_type=std_logic lab=15}
C {devices/lab_pin.sym} 690 60 1 0 {name=p65 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 690 160 3 0 {name=p67 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 465 -290 1 0 {name=p48 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 465 30 1 0 {name=p49 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 465 -110 3 0 {name=p51 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 465 210 3 0 {name=p52 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 405 120 1 0 {name=p50 sig_type=std_logic lab=7}
C {sg13g2_stdcells/sg13g2_buf_4.sym} 2020 -200 0 0 {name=x8 VDD=19 VSS=15 prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_4.sym} 2020 -20 0 0 {name=x9 VDD=19 VSS=15 prefix=sg13g2_ }
C {devices/lab_pin.sym} 620 -200 3 0 {name=p53 sig_type=std_logic lab=7}
C {devices/lab_pin.sym} 620 120 3 0 {name=p54 sig_type=std_logic lab=7}
C {devices/lab_pin.sym} 540 -220 1 0 {name=p56 sig_type=std_logic lab=V_1s}
C {devices/lab_pin.sym} 550 -180 1 0 {name=p57 sig_type=std_logic lab=V_2s}
C {devices/lab_pin.sym} 540 100 1 0 {name=p62 sig_type=std_logic lab=V_1r}
C {devices/lab_pin.sym} 550 140 1 0 {name=p63 sig_type=std_logic lab=V_2r}
C {devices/capa.sym} -55 85 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -55 55 1 0 {name=p70 sig_type=std_logic lab=5}
C {devices/lab_pin.sym} -55 115 3 0 {name=p71 sig_type=std_logic lab=3}
C {devices/capa.sym} 20 85 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 20 55 1 0 {name=p72 sig_type=std_logic lab=6}
C {devices/lab_pin.sym} 20 115 3 0 {name=p73 sig_type=std_logic lab=3}
C {devices/capa.sym} 105 85 0 0 {name=C3
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 105 55 1 0 {name=p74 sig_type=std_logic lab=24}
C {devices/lab_pin.sym} 105 115 3 0 {name=p75 sig_type=std_logic lab=3}
C {devices/capa.sym} -55 220 0 0 {name=C4
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -55 190 1 0 {name=p76 sig_type=std_logic lab=12}
C {devices/lab_pin.sym} -55 250 3 0 {name=p77 sig_type=std_logic lab=3}
C {devices/capa.sym} 20 220 0 0 {name=C5
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 20 190 1 0 {name=p78 sig_type=std_logic lab=11}
C {devices/lab_pin.sym} 20 250 3 0 {name=p79 sig_type=std_logic lab=3}
C {devices/capa.sym} 120 215 0 0 {name=C6
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 120 185 1 0 {name=p80 sig_type=std_logic lab=10}
C {devices/lab_pin.sym} 120 245 3 0 {name=p81 sig_type=std_logic lab=3}
C {devices/capa.sym} 195 215 0 0 {name=C7
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 195 185 1 0 {name=p82 sig_type=std_logic lab=9}
C {devices/lab_pin.sym} 195 245 3 0 {name=p83 sig_type=std_logic lab=3}
C {devices/capa.sym} -55 360 0 0 {name=C8
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -55 390 3 0 {name=p85 sig_type=std_logic lab=3}
C {devices/capa.sym} 20 360 0 0 {name=C9
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 20 390 3 0 {name=p87 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} -55 330 1 0 {name=p84 sig_type=std_logic lab=V_2s}
C {devices/lab_pin.sym} 20 330 1 0 {name=p86 sig_type=std_logic lab=V_2r}
C {devices/capa.sym} 205 90 0 0 {name=C10
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 205 60 1 0 {name=p88 sig_type=std_logic lab=18}
C {devices/lab_pin.sym} 205 120 3 0 {name=p89 sig_type=std_logic lab=3}
