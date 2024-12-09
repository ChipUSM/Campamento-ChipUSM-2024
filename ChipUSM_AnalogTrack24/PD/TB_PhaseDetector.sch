v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) 
} -660 -190 0 0 0.4 0.4 {}
N -110 40 -110 70 {
lab=Vdd}
N -110 210 -110 230 {
lab=Vss}
N 40 140 80 140 {
lab=V_PWM}
N 80 140 80 150 {
lab=V_PWM}
N 80 210 80 230 {
lab=Vss}
N -280 120 -260 120 {
lab=VIN_S}
N -280 160 -260 160 {
lab=VIN_R}
N 80 140 110 140 {
lab=V_PWM}
N -530 30 -530 50 {
lab=Vdd}
N -530 170 -530 190 {
lab=Vss}
N -680 110 -650 110 {
lab=VIN_1}
N -520 240 -520 260 {
lab=Vdd}
N -520 380 -520 400 {
lab=Vss}
N -670 320 -640 320 {
lab=VIN_2}
C {devices/code.sym} -670 -110 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.endif

.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {code.sym} -550 -110 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 1.2
.param VH = 3.3
.param Del = 0

.param T = 0.1u
.param TR = 1p
.param TF = 1p

*Caso 1 - No funciona bien
.param D = 0.8
.param Td = 0.03u

*Caso 2 - Funciona bien
*.param D = 0.5
*.param Td = 0.03u

*Caso 3 - Funciona bien
*.param D = 0.615
*.param Td = 0.03u

*Caso 4 - No funciona bien
*.param D = 0.615
*.param Td = 0.08u




.param temp = 27

"}
C {devices/vsource.sym} -70 -60 0 0 {name=VCC value=\{Vdd\}}
C {devices/vsource.sym} -150 -60 0 0 {name=VSS value=0}
C {devices/gnd.sym} -150 -30 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -70 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -900 50 0 0 {name=p1 sig_type=std_logic lab=VIN_1}
C {devices/lab_pin.sym} -900 110 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -150 -90 0 0 {name=p3 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} -70 -90 0 0 {name=p6 sig_type=std_logic lab=Vdd}
C {vsource.sym} -900 80 0 1 {name=Vg1 value="PULSE(0 \{Vdd\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {devices/lab_pin.sym} -110 40 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -110 230 0 0 {name=p5 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} -900 140 0 0 {name=p7 sig_type=std_logic lab=VIN_2}
C {devices/lab_pin.sym} -900 200 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {capa.sym} 80 180 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 80 230 0 0 {name=p9 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} -280 120 0 0 {name=p10 sig_type=std_logic lab=VIN_S}
C {devices/lab_pin.sym} -280 160 0 0 {name=p11 sig_type=std_logic lab=VIN_R}
C {devices/lab_pin.sym} 110 140 0 1 {name=p12 sig_type=std_logic lab=V_PWM}
C {devices/code.sym} -350 -110 0 0 {name=Transient_Simulation only_toplevel=false value="
.save all

.control
set color0 = white
tran 100p 300n
plot v(VIN_1) v(VIN_2)+1.5 v(V_PWM)+3
plot v(VIN_S) v(VIN_R)+1.5 
.endc

*.measure tran tdead_fall
*+ TRIG tran1.V(vcn) TD=0u VAL=0.6 FALL=1
*+ TARG tran1.V(vcp) TD=0u VAL=0.6 FALL=1

*.measure tran t_large_delay
*+ TRIG tran1.V(x1.C1) TD=0u VAL=0.6 RISE=1
*+ TARG tran1.V(x1.B2) TD=0u VAL=0.6 RISE=1

"}
C {vsource.sym} -900 170 0 1 {name=Vg3 value="PULSE(0 \{Vdd\} \{Td\} \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {/home/designer/shared/simulations/IHP-sg13g2/Simulaciones/IHP_Tapeout24/Short_Pulse_Generator.sym} -530 110 0 0 {name=x2}
C {devices/lab_pin.sym} -530 190 0 0 {name=p13 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} -530 30 0 0 {name=p14 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -410 130 0 1 {name=p15 sig_type=std_logic lab=VIN_S}
C {devices/lab_pin.sym} -680 110 0 0 {name=p16 sig_type=std_logic lab=VIN_1}
C {/home/designer/shared/simulations/IHP-sg13g2/Simulaciones/IHP_Tapeout24/Short_Pulse_Generator.sym} -520 320 0 0 {name=x3}
C {devices/lab_pin.sym} -520 400 0 0 {name=p17 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} -520 240 0 0 {name=p18 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -400 340 0 1 {name=p19 sig_type=std_logic lab=VIN_R}
C {devices/lab_pin.sym} -670 320 0 0 {name=p20 sig_type=std_logic lab=VIN_2}
C {/home/designer/shared/simulations/IHP-sg13g2/Simulaciones/IHP_Tapeout24/SR_Latch_NOR.sym} -110 140 0 0 {name=x1}
