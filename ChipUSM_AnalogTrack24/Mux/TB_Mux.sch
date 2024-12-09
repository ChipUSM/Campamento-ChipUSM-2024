v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -870 -20 -870 0 {
lab=GND}
N -870 -110 -870 -80 {
lab=pwm_sel}
N -50 -90 10 -90 {
lab=VIN_Ref}
N -50 -50 10 -50 {
lab=VIN_S}
N 90 -70 210 -70 {
lab=vo}
N 170 -10 170 10 {
lab=GND}
N -10 -130 10 -130 {
lab=pwm_sel}
N -50 90 20 90 {
lab=VIN_Ref}
N -50 130 20 130 {
lab=VIN_S}
N -50 50 20 50 {
lab=pwm_sel}
N 100 110 220 110 {
lab=vo2}
N 180 170 180 190 {
lab=GND}
N -370 -20 -370 0 {
lab=GND}
N -370 -110 -370 -80 {
lab=VCC}
N -270 -20 -270 0 {
lab=GND}
N -270 -110 -270 -80 {
lab=VSS}
C {sg13g2_stdcells/sg13g2_mux2_2.sym} 50 -70 2 1 {name=x8 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {vsource.sym} -870 -50 0 0 {name=Vdd2 value=\{sel\} savecurrent=false}
C {lab_pin.sym} -870 -110 0 0 {name=p34 sig_type=std_logic lab=pwm_sel}
C {gnd.sym} -870 0 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} -510 -130 0 0 {name=p18 sig_type=std_logic lab=VIN_Ref}
C {vsource.sym} -510 -100 0 1 {name=Vg2 value="PULSE(0 \{Vdd\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {gnd.sym} -510 -70 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -510 -20 0 0 {name=p23 sig_type=std_logic lab=VIN_S}
C {vsource.sym} -510 10 0 1 {name=Vg3 value="PULSE(0 \{Vdd\} \{Td\} \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {gnd.sym} -510 40 0 0 {name=l9 lab=GND}
C {code.sym} -660 -300 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="

*.lib cornerMOShv.lib mos_tt
*.lib cornerMOSlv.lib mos_tt
*.lib cornerMOShv.lib mos_ff
*.lib cornerMOSlv.lib mos_ff
.lib cornerMOShv.lib mos_ss
.lib cornerMOSlv.lib mos_ss
*.lib cornerMOShv.lib mos_sf
*.lib cornerMOSlv.lib mos_sf
*.lib cornerMOShv.lib mos_fs
*.lib cornerMOSlv.lib mos_fs

.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ

"}
C {code.sym} -550 -300 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 1.2
.param VH = 3.3
.param Del = 0
*.param sel = 1.2
.param sel = 0

*.param D = 0.6364
.param D = 0.615
.param TR = 1p
.param TF = 1p
.param Td = D*T
.param TdR = 2n
.param TdF = 2n

*fs = 10MHz
*.param T = 0.1u
*fs = 8.4MHz
.param T = 0.11905u

*.param temp = 27
*.param temp = -40
.param temp = 125

"}
C {devices/code.sym} -360 -300 0 0 {name=Transient_simulation only_toplevel=false 

value="
.save all
+ @n.x1.xm1.nsg13_hv_pmos[ids]
+ @n.x1.xm2.nsg13_hv_nmos[ids]
.param SimTime = 5u

.option method=gear

.control
reset
set color0 = white
tran 100p 1u
plot v(VIN_Ref) v(VIN_S)+1.5 v(vo)+3
plot v(VIN_Ref) v(VIN_S)+1.5 v(vo2)+3
.endc



.end
"}
C {devices/lab_pin.sym} -50 -90 0 0 {name=p1 sig_type=std_logic lab=VIN_Ref}
C {devices/lab_pin.sym} -50 -50 0 0 {name=p2 sig_type=std_logic lab=VIN_S}
C {capa.sym} 170 -40 0 0 {name=C7
m=1
value= 10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 170 10 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -10 -130 0 0 {name=p3 sig_type=std_logic lab=pwm_sel}
C {lab_pin.sym} 210 -70 0 1 {name=p4 sig_type=std_logic lab=vo}
C {sg13g2_stdcells/sg13g2_mux2_1.sym} 60 110 2 1 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} -50 90 0 0 {name=p5 sig_type=std_logic lab=VIN_Ref}
C {devices/lab_pin.sym} -50 130 0 0 {name=p6 sig_type=std_logic lab=VIN_S}
C {lab_pin.sym} -50 50 0 0 {name=p7 sig_type=std_logic lab=pwm_sel}
C {capa.sym} 180 140 0 0 {name=C1
m=1
value= 10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 180 190 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 220 110 0 1 {name=p8 sig_type=std_logic lab=vo2}
C {vsource.sym} -370 -50 0 0 {name=VCC value=1.2 savecurrent=false}
C {lab_pin.sym} -370 -110 0 0 {name=p9 sig_type=std_logic lab=VCC}
C {gnd.sym} -370 0 0 0 {name=l3 lab=GND}
C {vsource.sym} -270 -50 0 0 {name=VSS value=0 savecurrent=false}
C {lab_pin.sym} -270 -110 0 0 {name=VSS1 sig_type=std_logic lab=VSS
value=0}
C {gnd.sym} -270 0 0 0 {name=VSS2 lab=GND
value=0}
