v {xschem version=3.4.8 file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {c512_ant | SKY130 1.8 V} 0 -140 0 0 0.4 0.4 {}
T {Antenna diode: signal cathode, ground anode. Area 2.25 um2.} 0 -85 0 0 0.25 0.25 {}
C {sky130_fd_pr/diode.sym} 160 40 0 0 {name=D1 model=diode_pw2nd_05v5 area=2.25 perim=6 spiceprefix=X}
C {lab_pin.sym} 160 70 0 0 {name=d_anode sig_type=std_logic lab=GND}
C {lab_pin.sym} 160 10 0 0 {name=d_cathode sig_type=std_logic lab=D}
C {iopin.sym} 0 100 0 0 {name=p0 lab=D}
C {iopin.sym} 230 100 0 0 {name=p1 lab=GND}
