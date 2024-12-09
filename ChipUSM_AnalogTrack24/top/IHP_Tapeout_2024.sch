v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -4390 -790 -4390 -410 {}
L 4 -4050 -790 -4050 -400 {}
L 4 -4390 -410 -4390 -400 {}
L 4 -3720 -780 -3720 -400 {}
L 4 -3050 -1330 -3050 -830 {}
L 4 -4430 -1340 -4430 -820 {}
L 4 -3430 -780 -3430 -410 {}
L 4 -3430 -410 -3430 -400 {}
L 4 -4390 -390 -3430 -390 {}
L 4 -4390 -400 -4390 -390 {}
L 4 -4050 -410 -4050 -390 {}
L 4 -3720 -410 -3720 -390 {}
L 4 -3430 -410 -3430 -390 {}
L 4 -3130 -780 -3130 -390 {}
L 4 -3440 -390 -3130 -390 {}
T {Diseño power stage} -4410 -1350 0 0 0.8 0.8 {}
T {Ecuaciones} -3910 -1350 0 0 0.8 0.8 {}
T {- d = Vo/Vin. => Como la señal de disparo VgM1 es el negado de VsdM1, d*=1-d.
- R=Vo/Io, C= (rI)/(8*rV*R*fsw), L = Vs/(4*Io*rI*fsw)} -3930 -1260 0 0 0.4 0.4 {}
T {Specificaciones de diseño:
- fsw = 10mHz
- Vo = 1.2 V
- Io = 1 A
- rI = 0.3 , rV = 0.1
- eff>90%
- Area = 1mm²

Metodologia de diseño:
1) Definir W/L para unidad de transistor PMOS y NMOS minimo => Ron minimo 
-- (TB_hvPMOS_charact y TB_hvNMOS_charact)
2) Dimensionar cantidad de transistores necesaria (cambiar solo parametro mult, W/L dejarlo fijo) 
para cumplir con la corriente pedida y un Vds<<1 -- (TB_hvMOS_POWER_Sizing)
3) Configurar señales de disparo en (TB_hvMOS_switch_test) para setear nueva fsw => Modificar param T,TdR,TdF. 
4) Calcular parametros del convertidor Buck, d,R,L,C. Usar rv=0.1 y ri=0.3. => Configurar simulacion (TB_DCDCBuck)
5) Ajuste manual de L y C. Luego ajuste de tiempos muertos => Revisar formas de onda y eficiencia
6) Ajuste manal de cantidad de transistores en caso de tener muchas perdidas hasta tener eff>90%,
 luego ajuste de d para alcanzar Vo requerido.
7) Analizar perdidas y contrastar con Ron de M1 y M2.
} -4400 -1280 0 0 0.4 0.4 {}
T {Info Dispositivos} -3020 -1350 0 0 0.8 0.8 {}
T {Esto es tanto para lv_nmos como para lv_pmos
l_min = 0.13u
w_min = 0.15u; w_max = 10u

hvMOS
l_min_HVnmos = 0.45u; l_min_HVpmos = 0.4
w_min_HVnmos = 0.3u;w_min_HVpmos = 0.3u;w_max = 10u;
} -3030 -1260 0 0 0.4 0.4 {}
T {PULSE(VL VH TD TR TF PW PER PHASE) 
} -3030 -1050 0 0 0.4 0.4 {}
C {TB_hvPMOS_charact.sym} -4200 -750 0 0 {name=X1}
C {TB_hvNMOS_charact.sym} -4200 -700 0 0 {name=X2}
C {TB_hvMOS_POWER_Sizing.sym} -4200 -580 0 0 {name=X3}
C {TB_DCDCBuck.sym} -4200 -480 0 0 {name=X5}
C {title.sym} -4260 -330 0 0 {name=l1 author="Andrés Martínez"}
C {TB_hvMOS_switch_test.sym} -4200 -530 0 0 {name=X6}
C {TB_hvPMOS_cgate-ext.sym} -3870 -700 0 0 {name=X10}
C {TB_hvNMOS_cgate_ext.sym} -3870 -750 0 0 {name=X9}
C {TB_lvNMOS_charact.sym} -3870 -580 0 0 {name=X4}
C {TB_DCDCBuck_SweepR.sym} -4200 -430 0 0 {name=X7}
C {TB_lvMOS_Comp.sym} -3870 -530 0 0 {name=X8}
C {TB_GateDriver.sym} -3870 -480 0 0 {name=X11}
C {TB_GateDriver_hvMOS.sym} -3870 -430 0 0 {name=X12}
C {TB_DCDCBuck+GateDrivers.sym} -3870 -380 0 0 {name=X13}
C {TB_NOL.sym} -3560 -680 0 0 {name=X14}
C {TB_GateDriver_hvMOS_NOL.sym} -3560 -630 0 0 {name=X15}
C {TB_DCDCBuck_GateDrivers_NOL.sym} -3560 -580 0 0 {name=X16}
C {TB_PhaseDetector.sym} -3560 -530 0 0 {name=X17}
C {TB_PhaseDetectorV2.sym} -3560 -480 0 0 {name=X18}
C {TB_DCDCBuck_GD_NOL_PD.sym} -3560 -430 0 0 {name=X19}
C {TB_Top.sym} -3270 -680 0 0 {name=X20}
C {TB_DCDCBuck_GD_NOL_PD_MUX.sym} -3270 -630 0 0 {name=X21}
C {TB_Mux.sym} -3270 -580 0 0 {name=X22}
C {TB_TopOL_woSimbol.sym} -3270 -530 0 0 {name=X23}
