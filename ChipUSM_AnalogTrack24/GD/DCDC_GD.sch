v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -80 110 -80 {
lab=#net1}
N 40 -40 110 -40 {
lab=#net2}
N 40 -40 40 20 {
lab=#net2}
N 40 -140 40 -80 {
lab=#net1}
N -20 -140 40 -140 {
lab=#net1}
N -20 20 40 20 {
lab=#net2}
C {/workspaces/usm-vlsi-tools/shared_xserver/TORepo_IHPNov2024_TDBuck/design_data/xschem/DCDCBuck/DCDCBuck_vto1p1.sym} 210 -40 0 0 {name=X1}
C {/workspaces/usm-vlsi-tools/shared_xserver/TORepo_IHPNov2024_TDBuck/design_data/xschem/GD/GD_vto1p1.sym} -140 -100 0 0 {name=X2}
C {/workspaces/usm-vlsi-tools/shared_xserver/TORepo_IHPNov2024_TDBuck/design_data/xschem/GD/GD_vto1p1.sym} -140 60 0 0 {name=X3}
C {iopin.sym} -240 -250 2 0 {name=p1 lab=VDD}
C {lab_pin.sym} -120 -190 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 200 -100 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {iopin.sym} -240 -220 2 0 {name=p4 lab=VSS}
C {lab_pin.sym} -90 70 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 200 -20 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -120 -30 1 0 {name=p7 sig_type=std_logic lab=VDD}
