v {xschem version=3.4.8 file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {c512_slow_inv | SKY130 1.8 V} 0 -140 0 0 0.4 0.4 {}
C {sky130_fd_pr/nfet_01v8.sym} 40 30 0 0 {name=M1 model=nfet_01v8 W=1 L=1.0 nf=1 mult=1 spiceprefix=X ad=0.29 as=0.29 pd=2.58 ps=2.58 nrd=0.29 nrs=0.29 sa=0 sb=0 sd=0}
N 60 0 60 -40 {lab=Y}
C {lab_pin.sym} 60 -40 0 1 {name=n0_0 sig_type=std_logic lab=Y}
C {lab_pin.sym} 20 30 0 0 {name=n0_1 sig_type=std_logic lab=A}
N 60 60 60 100 {lab=GND}
C {lab_pin.sym} 60 100 0 1 {name=n0_2 sig_type=std_logic lab=GND}
N 60 30 160 30 {lab=GND}
N 160 30 160 90 {lab=GND}
C {lab_pin.sym} 160 90 0 1 {name=n0_3 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 380 30 0 0 {name=M2 model=pfet_01v8 W=2 L=1.0 nf=1 mult=1 spiceprefix=X ad=0.58 as=0.58 pd=4.58 ps=4.58 nrd=0.145 nrs=0.145 sa=0 sb=0 sd=0}
N 400 60 400 100 {lab=Y}
C {lab_pin.sym} 400 100 0 1 {name=n1_0 sig_type=std_logic lab=Y}
C {lab_pin.sym} 360 30 0 0 {name=n1_1 sig_type=std_logic lab=A}
N 400 0 400 -40 {lab=VDD}
C {lab_pin.sym} 400 -40 0 1 {name=n1_2 sig_type=std_logic lab=VDD}
N 400 30 500 30 {lab=VDD}
N 500 30 500 90 {lab=VDD}
C {lab_pin.sym} 500 90 0 1 {name=n1_3 sig_type=std_logic lab=VDD}
C {opin.sym} 0 280 0 0 {name=p0 lab=Y}
C {ipin.sym} 230 280 0 0 {name=p1 lab=A}
C {iopin.sym} 460 280 0 0 {name=p2 lab=VDD}
C {iopin.sym} 690 280 0 0 {name=p3 lab=GND}
