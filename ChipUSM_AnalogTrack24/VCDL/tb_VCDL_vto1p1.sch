v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 885 145 1025 145 {
lab=VOUT}
N 765 145 815 145 {
lab=VOUT1}
N 270 -80 370 -80 {
lab=VOUT1}
C {devices/code_shown.sym} 20 170 0 0 {name=CODE only_toplevel=false value="
.control
   save all
   compose vin_var start=0.2 stop=1.05 step=0.2
   foreach val $&vin_var
      alter vcont $val
      tran 100p 120n
   end
   plot tran1.V(VIN) tran1.V(VOUT) tran2.V(VOUT) tran3.V(VOUT) tran4.V(VOUT) tran5.V(VOUT)
   plot tran1.V(VIN) tran1.V(VOUT1) tran2.V(VOUT1) tran3.V(VOUT1) tran4.V(VOUT1) tran5.V(VOUT1)


let tdelay=vector(5)
let run=vector(5)


let run[0] = 0.2
let run[1] = 0.4
let run[2] = 0.6
let run[3] = 0.8
let run[4] = 1

meas tran tdelay[0] 
+ TRIG tran1.V(VIN) TD=0u VAL=1.65 RISE=1
+ TARG tran1.V(VOUT) TD=0u VAL=0.6 RISE=1
meas tran tdelay[1]
+ TRIG tran2.V(VIN) TD=0u VAL=1.65 RISE=1
+ TARG tran2.V(VOUT) TD=0u VAL=0.6 RISE=1
meas tran tdelay[2]
+ TRIG tran3.V(VIN) TD=0u VAL=1.65 RISE=1
+ TARG tran3.V(VOUT) TD=0u VAL=0.6 RISE=1
meas tran tdelay[3]
+ TRIG tran4.V(VIN) TD=0u VAL=1.65 RISE=1
+ TARG tran4.V(VOUT) TD=0u VAL=0.6 RISE=1
meas tran tdelay[4]
+ TRIG tran5.V(VIN) TD=0u VAL=1.65 RISE=1
+ TARG tran5.V(VOUT) TD=0u VAL=0.6 RISE=1

setscale run
plot tdelay

.endc

"}
C {devices/vsource.sym} -160 -110 0 0 {name=VCC value=1.2}
C {devices/vsource.sym} -240 -110 0 0 {name=VSS value=0}
C {devices/gnd.sym} -240 -80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -160 -80 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -240 -210 0 0 {name=VIN value="PULSE(0 3.3 25n 100p 100p 50n 100n)"}
C {devices/lab_pin.sym} -240 -240 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} -240 -180 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -240 -140 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 130 -90 0 0 {name=p4 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 200 -30 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -160 -140 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 945 145 1 0 {name=p8 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} -410 -110 0 0 {name=VCONT value=0}
C {devices/gnd.sym} -410 -80 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -410 -140 0 0 {name=p9 sig_type=std_logic lab=VCONT
}
C {devices/lab_pin.sym} 130 -70 0 0 {name=p10 sig_type=std_logic lab=VCONT
}
C {devices/capa.sym} 1025 175 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1025 205 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 -130 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -30 -110 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} -30 -80 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -30 -140 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} -790 100 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.endif

.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {sg13g2_stdcells/sg13g2_buf_4.sym} 855 145 0 0 {name=x3 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 370 -80 1 0 {name=p28 sig_type=std_logic lab=VOUT1}
C {devices/lab_pin.sym} 790 145 1 0 {name=p29 sig_type=std_logic lab=VOUT1}
C {VCDLtop_vto1p1.sym} 200 -80 0 0 {name=x1}
