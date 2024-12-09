v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 330 -30 410 -30 {
lab=Vout}
N 370 30 370 80 {
lab=GND}
N 190 -90 190 -70 {
lab=VCC}
N 20 -30 30 -30 {
lab=VIN}
C {/home/designer/shared/simulations/IHP-sg13g2/Simulaciones/IHP_Tapeout24/large_delay_v1p1.sym} 150 -30 0 0 {name=x1}
C {devices/vsource.sym} -170 -70 0 0 {name=VCC value=\{Vdd\}}
C {devices/vsource.sym} -250 -70 0 0 {name=VSS value=0}
C {devices/gnd.sym} -250 -40 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -170 -40 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -170 0 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} -170 60 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -250 -100 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -170 -100 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {vsource.sym} -170 30 0 1 {name=Vg1 value="PULSE(0 \{Vdd\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {code.sym} -550 -30 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 1.2
.param VH = 3.3
.param Del = 0

*.param D = 0.42
*.param T = 1u
*.param TR = 7n
*.param TF = 7n
*.param TdR = 0.1u
*.param TdF = 0.1u

*.param D = 0.6364
.param D = 0.615
.param T = 0.1u
.param TR = 1n
.param TF = 1n
.param TdR = 1.5n
.param TdF = 1.5n
*.param TdR = 1n
*.param TdF = 1n


.param temp = 27

"}
C {devices/capa.sym} 370 0 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} -680 -30 0 0 {name=MODEL1 only_toplevel=true
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
C {devices/gnd.sym} 370 80 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 210 10 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 190 -90 0 0 {name=p4 sig_type=std_logic lab=VCC}
C {devices/code.sym} -680 120 0 0 {name=Transient_simulation only_toplevel=false 

value="
.save all
.control
reset
set color0 = white
tran 1n 1u

meas TRAN t_delay TRIG v(VIN) VAL=0.6 RISE=1 TARG v(Vout) VAL=0.6 RISE=1
plot v(VIN) v(Vout)

.endc

.measure tran t_large_delay
+ TRIG tran1.V(VIN) TD=0u VAL=0.6 RISE=1
+ TARG tran1.V(Vout) TD=0u VAL=0.6 RISE=1

.end
"}
C {devices/lab_pin.sym} 20 -30 0 0 {name=p5 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 410 -30 0 1 {name=p7 sig_type=std_logic lab=Vout}
