v {xschem version=3.4.8 file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {c512_toggle | SKY130 1.8 V} 0 -140 0 0 0.4 0.4 {}
C {sky130_fd_pr/nfet_01v8.sym} 40 30 0 0 {name=M1 model=nfet_01v8 W=1 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.29 as=0.29 pd=2.58 ps=2.58 nrd=0.29 nrs=0.29 sa=0 sb=0 sd=0}
N 60 0 60 -40 {lab=CLKB}
C {lab_pin.sym} 60 -40 0 1 {name=n0_0 sig_type=std_logic lab=CLKB}
C {lab_pin.sym} 20 30 0 0 {name=n0_1 sig_type=std_logic lab=CLK}
N 60 60 60 100 {lab=GND}
C {lab_pin.sym} 60 100 0 1 {name=n0_2 sig_type=std_logic lab=GND}
N 60 30 160 30 {lab=GND}
N 160 30 160 90 {lab=GND}
C {lab_pin.sym} 160 90 0 1 {name=n0_3 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 380 30 0 0 {name=M2 model=pfet_01v8 W=2 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.58 as=0.58 pd=4.58 ps=4.58 nrd=0.145 nrs=0.145 sa=0 sb=0 sd=0}
N 400 60 400 100 {lab=CLKB}
C {lab_pin.sym} 400 100 0 1 {name=n1_0 sig_type=std_logic lab=CLKB}
C {lab_pin.sym} 360 30 0 0 {name=n1_1 sig_type=std_logic lab=CLK}
N 400 0 400 -40 {lab=VDD}
C {lab_pin.sym} 400 -40 0 1 {name=n1_2 sig_type=std_logic lab=VDD}
N 400 30 500 30 {lab=VDD}
N 500 30 500 90 {lab=VDD}
C {lab_pin.sym} 500 90 0 1 {name=n1_3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 720 30 0 0 {name=M3 model=nfet_01v8 W=1 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.29 as=0.29 pd=2.58 ps=2.58 nrd=0.29 nrs=0.29 sa=0 sb=0 sd=0}
N 740 0 740 -40 {lab=M}
C {lab_pin.sym} 740 -40 0 1 {name=n2_0 sig_type=std_logic lab=M}
C {lab_pin.sym} 700 30 0 0 {name=n2_1 sig_type=std_logic lab=CLKB}
N 740 60 740 100 {lab=QB}
C {lab_pin.sym} 740 100 0 1 {name=n2_2 sig_type=std_logic lab=QB}
N 740 30 840 30 {lab=GND}
N 840 30 840 90 {lab=GND}
C {lab_pin.sym} 840 90 0 1 {name=n2_3 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1060 30 0 0 {name=M4 model=pfet_01v8 W=2 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.58 as=0.58 pd=4.58 ps=4.58 nrd=0.145 nrs=0.145 sa=0 sb=0 sd=0}
N 1080 60 1080 100 {lab=M}
C {lab_pin.sym} 1080 100 0 1 {name=n3_0 sig_type=std_logic lab=M}
C {lab_pin.sym} 1040 30 0 0 {name=n3_1 sig_type=std_logic lab=CLK}
N 1080 0 1080 -40 {lab=QB}
C {lab_pin.sym} 1080 -40 0 1 {name=n3_2 sig_type=std_logic lab=QB}
N 1080 30 1180 30 {lab=VDD}
N 1180 30 1180 90 {lab=VDD}
C {lab_pin.sym} 1180 90 0 1 {name=n3_3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 1400 30 0 0 {name=M5 model=nfet_01v8 W=1 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.29 as=0.29 pd=2.58 ps=2.58 nrd=0.29 nrs=0.29 sa=0 sb=0 sd=0}
N 1420 0 1420 -40 {lab=MB}
C {lab_pin.sym} 1420 -40 0 1 {name=n4_0 sig_type=std_logic lab=MB}
C {lab_pin.sym} 1380 30 0 0 {name=n4_1 sig_type=std_logic lab=M}
N 1420 60 1420 100 {lab=GND}
C {lab_pin.sym} 1420 100 0 1 {name=n4_2 sig_type=std_logic lab=GND}
N 1420 30 1520 30 {lab=GND}
N 1520 30 1520 90 {lab=GND}
C {lab_pin.sym} 1520 90 0 1 {name=n4_3 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 40 210 0 0 {name=M6 model=pfet_01v8 W=2 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.58 as=0.58 pd=4.58 ps=4.58 nrd=0.145 nrs=0.145 sa=0 sb=0 sd=0}
N 60 240 60 280 {lab=MB}
C {lab_pin.sym} 60 280 0 1 {name=n5_0 sig_type=std_logic lab=MB}
C {lab_pin.sym} 20 210 0 0 {name=n5_1 sig_type=std_logic lab=M}
N 60 180 60 140 {lab=VDD}
C {lab_pin.sym} 60 140 0 1 {name=n5_2 sig_type=std_logic lab=VDD}
N 60 210 160 210 {lab=VDD}
N 160 210 160 270 {lab=VDD}
C {lab_pin.sym} 160 270 0 1 {name=n5_3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 380 210 0 0 {name=M7 model=nfet_01v8 W=1 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.29 as=0.29 pd=2.58 ps=2.58 nrd=0.29 nrs=0.29 sa=0 sb=0 sd=0}
N 400 180 400 140 {lab=MF}
C {lab_pin.sym} 400 140 0 1 {name=n6_0 sig_type=std_logic lab=MF}
C {lab_pin.sym} 360 210 0 0 {name=n6_1 sig_type=std_logic lab=MB}
N 400 240 400 280 {lab=GND}
C {lab_pin.sym} 400 280 0 1 {name=n6_2 sig_type=std_logic lab=GND}
N 400 210 500 210 {lab=GND}
N 500 210 500 270 {lab=GND}
C {lab_pin.sym} 500 270 0 1 {name=n6_3 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 720 210 0 0 {name=M8 model=pfet_01v8 W=2 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.58 as=0.58 pd=4.58 ps=4.58 nrd=0.145 nrs=0.145 sa=0 sb=0 sd=0}
N 740 240 740 280 {lab=MF}
C {lab_pin.sym} 740 280 0 1 {name=n7_0 sig_type=std_logic lab=MF}
C {lab_pin.sym} 700 210 0 0 {name=n7_1 sig_type=std_logic lab=MB}
N 740 180 740 140 {lab=VDD}
C {lab_pin.sym} 740 140 0 1 {name=n7_2 sig_type=std_logic lab=VDD}
N 740 210 840 210 {lab=VDD}
N 840 210 840 270 {lab=VDD}
C {lab_pin.sym} 840 270 0 1 {name=n7_3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 1060 210 0 0 {name=M9 model=nfet_01v8 W=1 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.29 as=0.29 pd=2.58 ps=2.58 nrd=0.29 nrs=0.29 sa=0 sb=0 sd=0}
N 1080 180 1080 140 {lab=M}
C {lab_pin.sym} 1080 140 0 1 {name=n8_0 sig_type=std_logic lab=M}
C {lab_pin.sym} 1040 210 0 0 {name=n8_1 sig_type=std_logic lab=CLK}
N 1080 240 1080 280 {lab=MF}
C {lab_pin.sym} 1080 280 0 1 {name=n8_2 sig_type=std_logic lab=MF}
N 1080 210 1180 210 {lab=GND}
N 1180 210 1180 270 {lab=GND}
C {lab_pin.sym} 1180 270 0 1 {name=n8_3 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1400 210 0 0 {name=M10 model=pfet_01v8 W=2 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.58 as=0.58 pd=4.58 ps=4.58 nrd=0.145 nrs=0.145 sa=0 sb=0 sd=0}
N 1420 240 1420 280 {lab=M}
C {lab_pin.sym} 1420 280 0 1 {name=n9_0 sig_type=std_logic lab=M}
C {lab_pin.sym} 1380 210 0 0 {name=n9_1 sig_type=std_logic lab=CLKB}
N 1420 180 1420 140 {lab=MF}
C {lab_pin.sym} 1420 140 0 1 {name=n9_2 sig_type=std_logic lab=MF}
N 1420 210 1520 210 {lab=VDD}
N 1520 210 1520 270 {lab=VDD}
C {lab_pin.sym} 1520 270 0 1 {name=n9_3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 40 390 0 0 {name=M11 model=nfet_01v8 W=1 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.29 as=0.29 pd=2.58 ps=2.58 nrd=0.29 nrs=0.29 sa=0 sb=0 sd=0}
N 60 360 60 320 {lab=S}
C {lab_pin.sym} 60 320 0 1 {name=n10_0 sig_type=std_logic lab=S}
C {lab_pin.sym} 20 390 0 0 {name=n10_1 sig_type=std_logic lab=CLK}
N 60 420 60 460 {lab=MB}
C {lab_pin.sym} 60 460 0 1 {name=n10_2 sig_type=std_logic lab=MB}
N 60 390 160 390 {lab=GND}
N 160 390 160 450 {lab=GND}
C {lab_pin.sym} 160 450 0 1 {name=n10_3 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 380 390 0 0 {name=M12 model=pfet_01v8 W=2 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.58 as=0.58 pd=4.58 ps=4.58 nrd=0.145 nrs=0.145 sa=0 sb=0 sd=0}
N 400 420 400 460 {lab=S}
C {lab_pin.sym} 400 460 0 1 {name=n11_0 sig_type=std_logic lab=S}
C {lab_pin.sym} 360 390 0 0 {name=n11_1 sig_type=std_logic lab=CLKB}
N 400 360 400 320 {lab=MB}
C {lab_pin.sym} 400 320 0 1 {name=n11_2 sig_type=std_logic lab=MB}
N 400 390 500 390 {lab=VDD}
N 500 390 500 450 {lab=VDD}
C {lab_pin.sym} 500 450 0 1 {name=n11_3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 720 390 0 0 {name=M13 model=nfet_01v8 W=1 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.29 as=0.29 pd=2.58 ps=2.58 nrd=0.29 nrs=0.29 sa=0 sb=0 sd=0}
N 740 360 740 320 {lab=Y}
C {lab_pin.sym} 740 320 0 1 {name=n12_0 sig_type=std_logic lab=Y}
C {lab_pin.sym} 700 390 0 0 {name=n12_1 sig_type=std_logic lab=S}
N 740 420 740 460 {lab=GND}
C {lab_pin.sym} 740 460 0 1 {name=n12_2 sig_type=std_logic lab=GND}
N 740 390 840 390 {lab=GND}
N 840 390 840 450 {lab=GND}
C {lab_pin.sym} 840 450 0 1 {name=n12_3 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 1060 390 0 0 {name=M14 model=nfet_01v8 W=1 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.29 as=0.29 pd=2.58 ps=2.58 nrd=0.29 nrs=0.29 sa=0 sb=0 sd=0}
N 1080 360 1080 320 {lab=Y}
C {lab_pin.sym} 1080 320 0 1 {name=n13_0 sig_type=std_logic lab=Y}
C {lab_pin.sym} 1040 390 0 0 {name=n13_1 sig_type=std_logic lab=RST}
N 1080 420 1080 460 {lab=GND}
C {lab_pin.sym} 1080 460 0 1 {name=n13_2 sig_type=std_logic lab=GND}
N 1080 390 1180 390 {lab=GND}
N 1180 390 1180 450 {lab=GND}
C {lab_pin.sym} 1180 450 0 1 {name=n13_3 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1400 390 0 0 {name=M15 model=pfet_01v8 W=2 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.58 as=0.58 pd=4.58 ps=4.58 nrd=0.145 nrs=0.145 sa=0 sb=0 sd=0}
N 1420 420 1420 460 {lab=PZ}
C {lab_pin.sym} 1420 460 0 1 {name=n14_0 sig_type=std_logic lab=PZ}
C {lab_pin.sym} 1380 390 0 0 {name=n14_1 sig_type=std_logic lab=S}
N 1420 360 1420 320 {lab=VDD}
C {lab_pin.sym} 1420 320 0 1 {name=n14_2 sig_type=std_logic lab=VDD}
N 1420 390 1520 390 {lab=VDD}
N 1520 390 1520 450 {lab=VDD}
C {lab_pin.sym} 1520 450 0 1 {name=n14_3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 40 570 0 0 {name=M16 model=pfet_01v8 W=2 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.58 as=0.58 pd=4.58 ps=4.58 nrd=0.145 nrs=0.145 sa=0 sb=0 sd=0}
N 60 600 60 640 {lab=Y}
C {lab_pin.sym} 60 640 0 1 {name=n15_0 sig_type=std_logic lab=Y}
C {lab_pin.sym} 20 570 0 0 {name=n15_1 sig_type=std_logic lab=RST}
N 60 540 60 500 {lab=PZ}
C {lab_pin.sym} 60 500 0 1 {name=n15_2 sig_type=std_logic lab=PZ}
N 60 570 160 570 {lab=VDD}
N 160 570 160 630 {lab=VDD}
C {lab_pin.sym} 160 630 0 1 {name=n15_3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 380 570 0 0 {name=M17 model=nfet_01v8 W=1 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.29 as=0.29 pd=2.58 ps=2.58 nrd=0.29 nrs=0.29 sa=0 sb=0 sd=0}
N 400 540 400 500 {lab=QB}
C {lab_pin.sym} 400 500 0 1 {name=n16_0 sig_type=std_logic lab=QB}
C {lab_pin.sym} 360 570 0 0 {name=n16_1 sig_type=std_logic lab=Y}
N 400 600 400 640 {lab=GND}
C {lab_pin.sym} 400 640 0 1 {name=n16_2 sig_type=std_logic lab=GND}
N 400 570 500 570 {lab=GND}
N 500 570 500 630 {lab=GND}
C {lab_pin.sym} 500 630 0 1 {name=n16_3 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 720 570 0 0 {name=M18 model=pfet_01v8 W=2 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.58 as=0.58 pd=4.58 ps=4.58 nrd=0.145 nrs=0.145 sa=0 sb=0 sd=0}
N 740 600 740 640 {lab=QB}
C {lab_pin.sym} 740 640 0 1 {name=n17_0 sig_type=std_logic lab=QB}
C {lab_pin.sym} 700 570 0 0 {name=n17_1 sig_type=std_logic lab=Y}
N 740 540 740 500 {lab=VDD}
C {lab_pin.sym} 740 500 0 1 {name=n17_2 sig_type=std_logic lab=VDD}
N 740 570 840 570 {lab=VDD}
N 840 570 840 630 {lab=VDD}
C {lab_pin.sym} 840 630 0 1 {name=n17_3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 1060 570 0 0 {name=M19 model=nfet_01v8 W=1 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.29 as=0.29 pd=2.58 ps=2.58 nrd=0.29 nrs=0.29 sa=0 sb=0 sd=0}
N 1080 540 1080 500 {lab=S}
C {lab_pin.sym} 1080 500 0 1 {name=n18_0 sig_type=std_logic lab=S}
C {lab_pin.sym} 1040 570 0 0 {name=n18_1 sig_type=std_logic lab=CLKB}
N 1080 600 1080 640 {lab=QB}
C {lab_pin.sym} 1080 640 0 1 {name=n18_2 sig_type=std_logic lab=QB}
N 1080 570 1180 570 {lab=GND}
N 1180 570 1180 630 {lab=GND}
C {lab_pin.sym} 1180 630 0 1 {name=n18_3 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1400 570 0 0 {name=M20 model=pfet_01v8 W=2 L=0.15 nf=1 mult=1 spiceprefix=X ad=0.58 as=0.58 pd=4.58 ps=4.58 nrd=0.145 nrs=0.145 sa=0 sb=0 sd=0}
N 1420 600 1420 640 {lab=S}
C {lab_pin.sym} 1420 640 0 1 {name=n19_0 sig_type=std_logic lab=S}
C {lab_pin.sym} 1380 570 0 0 {name=n19_1 sig_type=std_logic lab=CLK}
N 1420 540 1420 500 {lab=QB}
C {lab_pin.sym} 1420 500 0 1 {name=n19_2 sig_type=std_logic lab=QB}
N 1420 570 1520 570 {lab=VDD}
N 1520 570 1520 630 {lab=VDD}
C {lab_pin.sym} 1520 630 0 1 {name=n19_3 sig_type=std_logic lab=VDD}
C {opin.sym} 0 820 0 0 {name=p0 lab=Y}
C {ipin.sym} 230 820 0 0 {name=p1 lab=CLK}
C {ipin.sym} 460 820 0 0 {name=p2 lab=RST}
C {iopin.sym} 690 820 0 0 {name=p3 lab=VDD}
C {iopin.sym} 920 820 0 0 {name=p4 lab=GND}
T {Static toggle: master latch transparent at CLK=0; slave transparent at CLK=1.
RST=1 forces Y=0. Bulk ties and every internal net are explicit.} 0 885 0 0 0.25 0.25 {}
