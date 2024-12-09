#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import sys
import pandas as pd
import numpy as np
from matplotlib import pyplot as plt

from scipy.signal import find_peaks


#/home/designer/shared/TORepo_IHPNov2024_TDBuck/design_data/xschem/sim_data/data_TDBuckTOP_vto4p1.txt
df=pd.read_fwf('../sim_data/data_TDBuckTOP_vto5p1.txt',infer_nrows = 1000)
df.to_csv('../sim_data/data_TDBuckTOP_vto4p1.csv', index=False)
data = pd.read_csv("../sim_data/data_TDBuckTOP_vto4p1.csv").values
num_rows, num_cols = data.shape
print("Data rows:",num_rows)
print("Data columns:",num_cols)

#exit()

#Data rows: 516311 for t ~ 50us, dt = 100ps
#Vref --> 1.2V
i_cut = 150000
num_rows_cut = 250000
#Vref --> 1.8V
#i_cut = 600000
#num_rows_cut = 1200000
#tran.v(ldo_out) tran.i(vldo_out) tran.i(vh) tran.i(vdd_gd) tran.i(vvdig) tran.i(vvdd)
x_vout = data[i_cut:num_rows_cut,0]
y_vout = data[i_cut:num_rows_cut,1]
x_iout = data[i_cut:num_rows_cut,2]
y_iout = data[i_cut:num_rows_cut,3]
x_ih = data[i_cut:num_rows_cut,4]
y_ih = [-1]*data[i_cut:num_rows_cut,5]
x_igd = data[i_cut:num_rows_cut,6]
y_igd = [-1]*data[i_cut:num_rows_cut,7]
x_idig = data[i_cut:num_rows_cut,8]
y_idig = [-1]*data[i_cut:num_rows_cut,9]
x_iana = data[i_cut:num_rows_cut,10]
y_iana = [-1]*data[i_cut:num_rows_cut,11]

#plt.plot(x_vout,y_vout)
#plt.show()
#plt.plot(x_iout,y_iout)
#plt.show()
#plt.plot(x_ih,y_ih)
#plt.show()
#plt.plot(x_igd,y_igd)
#plt.show()
#plt.plot(x_idig,y_idig)
#plt.show()
#plt.plot(x_iana,y_iana)
#plt.show()

#exit()

peaks , _ = find_peaks(y_ih, height=1.5, distance = 1000)
pk_len = len(peaks)
print("Pk length:",pk_len)
plt.plot(y_ih)
plt.plot(peaks, y_ih[peaks], "x")
plt.plot(np.zeros_like(y_ih),"--",color="gray")
plt.show()


#exit()



pk_init = 1;
#pk_init = 150;
vout = np.mean(y_vout[peaks[pk_init]:peaks[pk_len-1]])
iout = np.mean(y_iout[peaks[pk_init]:peaks[pk_len-1]])
vh = 3.3;
ih = np.mean(y_ih[peaks[pk_init]:peaks[pk_len-1]])
vgd = 3.3;
igd = np.mean(y_igd[peaks[pk_init]:peaks[pk_len-1]])
vdig = 1.2;
idig = np.mean(y_idig[peaks[pk_init]:peaks[pk_len-1]])
vana = 3.3;
iana = np.mean(y_iana[peaks[pk_init]:peaks[pk_len-1]])
pout = vout*iout
pin = vh*ih
pgd = vgd*igd
pdig = vdig*idig
pana = vana*iana
pin_tot = (pin+pgd+pdig+pana)

eff = (pout/pin_tot)*(100)
print("ih promedio",ih,"[A]")
print("iout promedio",iout,"[A]")
print("V_out promedio:",vout,"[V]")
print("potencia de dc link:",pin, "[W]")
print("potencia de gate drivers:",pgd, "[W]")
print("potencia de bloques digitales:",pdig, "[W]")
print("potencia de bloques análogos:",pana, "[W]")
print("potencia de entrada total:",pin_tot, "[W]")
print("potencia de salida:",pout, "[W]")


print("eficiencia:", eff ,"[%]")
#print("eficiencia (con LS):", eff_ls ,"[%]")
#plt.plot(x_ih[peaks[pk_init]:peaks[pk_len-1]],y_ih[peaks[pk_init]:peaks[pk_len-1]])
plt.plot(x_ih[peaks[pk_len-2]:peaks[pk_len-1]],y_ih[peaks[pk_len-2]:peaks[pk_len-1]])
plt.show()

period = x_ih[peaks[pk_len-1]]-x_ih[peaks[pk_len-2]]
print("period: ", period ,"[%]")
frequency = 1/period
print("frequency: ", frequency ,"[%]")

#plt.plot(x_iout[peaks[pk_init]:peaks[pk_len-1]],y_iout[peaks[pk_init]:peaks[pk_len-1]])
plt.plot(x_iout[peaks[pk_len-2]:peaks[pk_len-1]],y_iout[peaks[pk_len-2]:peaks[pk_len-1]])
plt.show()



exit()

