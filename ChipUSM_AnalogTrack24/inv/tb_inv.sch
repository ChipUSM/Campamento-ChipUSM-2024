v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 30 -320 830 80 {flags=graph
y1=-0.11

ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.6477941e-09
x2=1.0385857e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color="5 4"
node="out
in"
y2=3.7
rawfile=$netlist_dir/Inversor_ejemplo.raw
sim_type=tran}
N -640 170 -640 190 {
lab=GND}
N -640 90 -640 110 {
lab=VDD}
N -560 170 -560 190 {
lab=GND}
N -560 50 -560 110 {
lab=in}
N -570 50 -560 50 {
lab=in}
N -560 50 -420 50 {
lab=in}
C {devices/vsource.sym} -640 140 0 0 {name=Vgs value=3.3}
C {devices/gnd.sym} -640 190 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -270 100 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -670 -310 0 0 {name=MODEL only_toplevel=true
value="
.lib cornerMOShv.lib mos_tt
"}
C {devices/code_shown.sym} -680 -210 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 50p 200n
meas tran tdelay TRIG v(in) VAl=0.9 FALl=1 TARG v(out) VAl=0.9 RISE=1
write
.endc
"}
C {devices/gnd.sym} -560 190 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -560 140 0 0 {name=Vin value="dc 0 ac 0 pulse(0, 3.3, 0, 100p, 100p, 2n, 4n ) "}
C {devices/launcher.sym} 410 160 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/rawspice.raw tran"
}
C {devices/lab_pin.sym} -570 50 0 0 {name=p1 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} -120 50 2 0 {name=p2 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} -640 90 0 0 {name=p3 sig_type=std_logic lab=VDD
}
C {inv.sym} -270 50 0 0 {name=x1}
C {devices/lab_pin.sym} -270 0 0 0 {name=p4 sig_type=std_logic lab=VDD
}
