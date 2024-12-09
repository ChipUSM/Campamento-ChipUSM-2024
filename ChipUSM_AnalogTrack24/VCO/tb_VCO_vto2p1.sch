v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2635 -1040 2635 -1010 {
lab=VDD}
N 2635 -890 2635 -860 {
lab=VSS}
N 2545 -950 2575 -950 {
lab=VCONT}
N 2695 -930 2725 -930 {
lab=V_2}
N 3070 -900 3070 -870 {
lab=VSS}
N 3010 -960 3070 -960 {
lab=#net1}
N 2695 -970 2870 -970 {
lab=V_1}
C {devices/code_shown.sym} 3240 -1020 0 0 {name=s1 only_toplevel=false value="vvdd vdd 0 dc 3.3
vvss vss 0 0
vvcont VCONT 0 dc 0.6
*.option temp = 200
.ic v(V_1) = 0
.ic v(V_2) = 3.3
.save v(V_1)
*.save v(V_1) v(x1.v_1_int) v(v_2) v(x1.v_3) v(x1.v_4) v(x1.v_5)

.option method=gear
.option cshunt=0.05e-12

.control
   compose vin_var start=0.1 stop=3.3 step=0.2
   foreach val $&vin_var
     alter vvcont $val
     tran 5n 50u
   end
wrdata /home/designer/shared/TORepo_IHPNov2024_TDBuck/design_data/xschem/sim_data/data_VCO_vto2p1.txt tran1.v(V_1) tran2.v(V_1) tran3.v(V_1) tran4.v(V_1) tran5.v(V_1) tran6.v(V_1) tran7.v(V_1) tran8.v(V_1) tran9.v(V_1) tran10.v(V_1) tran11.v(V_1) tran12.v(V_1) tran13.v(V_1) tran14.v(V_1) tran15.v(V_1) tran16.v(V_1) tran17.v(V_1)
plot tran1.v(V_1) (tran9.v(V_1)+4) (tran17.v(V_1)+8)

*tran 5n 5u
*plot v(x1.v_1_int) v(v_2) v(x1.v_3) v(x1.v_4) v(x1.v_5)

.endc

*.measure tran tdelay
*+ TRIG v(x1.v_1_int) TD=4u VAL=1.65 RISE=1
*+ TARG v(x1.v_1_int) TD=4u VAL=1.65 RISE=2
*.measure tran tdelay_buff
*+ TRIG v(x1.v_1_int) TD=4u VAL=1.65 RISE=1
*+ TARG v(v_1) TD=4u VAL=1.65 RISE=1

"}
C {devices/lab_pin.sym} 2635 -1040 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2635 -860 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2545 -950 1 0 {name=p6 sig_type=std_logic lab=VCONT}
C {devices/lab_pin.sym} 2725 -970 1 0 {name=p7 sig_type=std_logic lab=V_1}
C {devices/lab_pin.sym} 2725 -930 1 0 {name=p1 sig_type=std_logic lab=V_2}
C {../VCO/VCO_vto2p1.sym} 2635 -950 0 0 {name=x1}
C {devices/code_shown.sym} 3220 -1270 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.endif
"}
C {../VCDL/VCDLtop_vto1p1.sym} 2940 -960 0 0 {name=x11}
C {devices/lab_pin.sym} 2940 -1010 1 0 {name=p24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2940 -910 3 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2870 -950 3 0 {name=p2 sig_type=std_logic lab=VCONT}
C {devices/capa.sym} 3070 -930 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 3070 -870 3 0 {name=p26 sig_type=std_logic lab=VSS}
