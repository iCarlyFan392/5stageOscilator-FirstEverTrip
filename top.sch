v {xschem version=3.4.8 file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Clock512 | Tiny Tapeout SKY130 | ring oscillator and resettable divide-by-512} -150 -180 0 0 0.4 0.4 {}
T {RUN = ui_in[0] & ena & rst_n. MODE = ui_in[1]: 0 internal ring, 1 external clk.
Hold RUN low while changing MODE. rst_n=0 resets all nine stages. Output: uo_out[0].} -150 -125 0 0 0.26 0.26 {}
C {c512_toggle.sym} 0 0 0 0 {name=xd1}
C {lab_pin.sym} 140 -40 0 1 {name=xd1_p0 sig_type=std_logic lab=D1}
C {lab_pin.sym} -140 -40 0 0 {name=xd1_p1 sig_type=std_logic lab=CLKDIV}
C {lab_pin.sym} -140 0 0 0 {name=xd1_p2 sig_type=std_logic lab=RESET}
C {lab_pin.sym} -140 40 0 0 {name=xd1_p3 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} -140 80 0 0 {name=xd1_p4 sig_type=std_logic lab=VGND}
T {divide by 2} -60 155 0 0 0.22 0.22 {}
C {c512_toggle.sym} 470 0 0 0 {name=xd2}
C {lab_pin.sym} 610 -40 0 1 {name=xd2_p0 sig_type=std_logic lab=D2}
C {lab_pin.sym} 330 -40 0 0 {name=xd2_p1 sig_type=std_logic lab=D1}
C {lab_pin.sym} 330 0 0 0 {name=xd2_p2 sig_type=std_logic lab=RESET}
C {lab_pin.sym} 330 40 0 0 {name=xd2_p3 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} 330 80 0 0 {name=xd2_p4 sig_type=std_logic lab=VGND}
T {divide by 4} 410 155 0 0 0.22 0.22 {}
C {c512_toggle.sym} 940 0 0 0 {name=xd3}
C {lab_pin.sym} 1080 -40 0 1 {name=xd3_p0 sig_type=std_logic lab=D3}
C {lab_pin.sym} 800 -40 0 0 {name=xd3_p1 sig_type=std_logic lab=D2}
C {lab_pin.sym} 800 0 0 0 {name=xd3_p2 sig_type=std_logic lab=RESET}
C {lab_pin.sym} 800 40 0 0 {name=xd3_p3 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} 800 80 0 0 {name=xd3_p4 sig_type=std_logic lab=VGND}
T {divide by 8} 880 155 0 0 0.22 0.22 {}
C {c512_toggle.sym} 0 240 0 0 {name=xd4}
C {lab_pin.sym} 140 200 0 1 {name=xd4_p0 sig_type=std_logic lab=D4}
C {lab_pin.sym} -140 200 0 0 {name=xd4_p1 sig_type=std_logic lab=D3}
C {lab_pin.sym} -140 240 0 0 {name=xd4_p2 sig_type=std_logic lab=RESET}
C {lab_pin.sym} -140 280 0 0 {name=xd4_p3 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} -140 320 0 0 {name=xd4_p4 sig_type=std_logic lab=VGND}
T {divide by 16} -60 395 0 0 0.22 0.22 {}
C {c512_toggle.sym} 470 240 0 0 {name=xd5}
C {lab_pin.sym} 610 200 0 1 {name=xd5_p0 sig_type=std_logic lab=D5}
C {lab_pin.sym} 330 200 0 0 {name=xd5_p1 sig_type=std_logic lab=D4}
C {lab_pin.sym} 330 240 0 0 {name=xd5_p2 sig_type=std_logic lab=RESET}
C {lab_pin.sym} 330 280 0 0 {name=xd5_p3 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} 330 320 0 0 {name=xd5_p4 sig_type=std_logic lab=VGND}
T {divide by 32} 410 395 0 0 0.22 0.22 {}
C {c512_toggle.sym} 940 240 0 0 {name=xd6}
C {lab_pin.sym} 1080 200 0 1 {name=xd6_p0 sig_type=std_logic lab=D6}
C {lab_pin.sym} 800 200 0 0 {name=xd6_p1 sig_type=std_logic lab=D5}
C {lab_pin.sym} 800 240 0 0 {name=xd6_p2 sig_type=std_logic lab=RESET}
C {lab_pin.sym} 800 280 0 0 {name=xd6_p3 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} 800 320 0 0 {name=xd6_p4 sig_type=std_logic lab=VGND}
T {divide by 64} 880 395 0 0 0.22 0.22 {}
C {c512_toggle.sym} 0 480 0 0 {name=xd7}
C {lab_pin.sym} 140 440 0 1 {name=xd7_p0 sig_type=std_logic lab=D7}
C {lab_pin.sym} -140 440 0 0 {name=xd7_p1 sig_type=std_logic lab=D6}
C {lab_pin.sym} -140 480 0 0 {name=xd7_p2 sig_type=std_logic lab=RESET}
C {lab_pin.sym} -140 520 0 0 {name=xd7_p3 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} -140 560 0 0 {name=xd7_p4 sig_type=std_logic lab=VGND}
T {divide by 128} -60 635 0 0 0.22 0.22 {}
C {c512_toggle.sym} 470 480 0 0 {name=xd8}
C {lab_pin.sym} 610 440 0 1 {name=xd8_p0 sig_type=std_logic lab=D8}
C {lab_pin.sym} 330 440 0 0 {name=xd8_p1 sig_type=std_logic lab=D7}
C {lab_pin.sym} 330 480 0 0 {name=xd8_p2 sig_type=std_logic lab=RESET}
C {lab_pin.sym} 330 520 0 0 {name=xd8_p3 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} 330 560 0 0 {name=xd8_p4 sig_type=std_logic lab=VGND}
T {divide by 256} 410 635 0 0 0.22 0.22 {}
C {c512_toggle.sym} 940 480 0 0 {name=xd9}
C {lab_pin.sym} 1080 440 0 1 {name=xd9_p0 sig_type=std_logic lab=DIVRAW}
C {lab_pin.sym} 800 440 0 0 {name=xd9_p1 sig_type=std_logic lab=D8}
C {lab_pin.sym} 800 480 0 0 {name=xd9_p2 sig_type=std_logic lab=RESET}
C {lab_pin.sym} 800 520 0 0 {name=xd9_p3 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} 800 560 0 0 {name=xd9_p4 sig_type=std_logic lab=VGND}
T {divide by 512} 880 635 0 0 0.22 0.22 {}
T {Enabled five-stage ring, L=1.0 um | full-custom control and output buffer} -150 740 0 0 0.3 0.3 {}
C {c512_slow_nand.sym} 0 850 0 0 {name=xr0}
C {lab_pin.sym} 140 810 0 1 {name=xr0_p0 sig_type=std_logic lab=OSC}
C {lab_pin.sym} -140 810 0 0 {name=xr0_p1 sig_type=std_logic lab=RN4}
C {lab_pin.sym} -140 850 0 0 {name=xr0_p2 sig_type=std_logic lab=RINGEN}
C {lab_pin.sym} -140 890 0 0 {name=xr0_p3 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} -140 930 0 0 {name=xr0_p4 sig_type=std_logic lab=VGND}
C {c512_slow_inv.sym} 470 850 0 0 {name=xr1}
C {lab_pin.sym} 610 810 0 1 {name=xr1_p0 sig_type=std_logic lab=RN1}
C {lab_pin.sym} 330 810 0 0 {name=xr1_p1 sig_type=std_logic lab=OSC}
C {lab_pin.sym} 330 850 0 0 {name=xr1_p2 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} 330 890 0 0 {name=xr1_p3 sig_type=std_logic lab=VGND}
C {c512_slow_inv.sym} 940 850 0 0 {name=xr2}
C {lab_pin.sym} 1080 810 0 1 {name=xr2_p0 sig_type=std_logic lab=RN2}
C {lab_pin.sym} 800 810 0 0 {name=xr2_p1 sig_type=std_logic lab=RN1}
C {lab_pin.sym} 800 850 0 0 {name=xr2_p2 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} 800 890 0 0 {name=xr2_p3 sig_type=std_logic lab=VGND}
C {c512_slow_inv.sym} 0 1110 0 0 {name=xr3}
C {lab_pin.sym} 140 1070 0 1 {name=xr3_p0 sig_type=std_logic lab=RN3}
C {lab_pin.sym} -140 1070 0 0 {name=xr3_p1 sig_type=std_logic lab=RN2}
C {lab_pin.sym} -140 1110 0 0 {name=xr3_p2 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} -140 1150 0 0 {name=xr3_p3 sig_type=std_logic lab=VGND}
C {c512_slow_inv.sym} 470 1110 0 0 {name=xr4}
C {lab_pin.sym} 610 1070 0 1 {name=xr4_p0 sig_type=std_logic lab=RN4}
C {lab_pin.sym} 330 1070 0 0 {name=xr4_p1 sig_type=std_logic lab=RN3}
C {lab_pin.sym} 330 1110 0 0 {name=xr4_p2 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} 330 1150 0 0 {name=xr4_p3 sig_type=std_logic lab=VGND}
C {c512_and3.sym} 940 1110 0 0 {name=xrun}
C {lab_pin.sym} 1080 1070 0 1 {name=xrun_p0 sig_type=std_logic lab=RUN}
C {lab_pin.sym} 800 1070 0 0 {name=xrun_p1 sig_type=std_logic lab=ui_in[0]}
C {lab_pin.sym} 800 1110 0 0 {name=xrun_p2 sig_type=std_logic lab=ena}
C {lab_pin.sym} 800 1150 0 0 {name=xrun_p3 sig_type=std_logic lab=rst_n}
C {lab_pin.sym} 800 1190 0 0 {name=xrun_p4 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} 800 1230 0 0 {name=xrun_p5 sig_type=std_logic lab=VGND}
C {c512_and2.sym} 0 1370 0 0 {name=xren}
C {lab_pin.sym} 140 1330 0 1 {name=xren_p0 sig_type=std_logic lab=RINGEN}
C {lab_pin.sym} -140 1330 0 0 {name=xren_p1 sig_type=std_logic lab=RUN}
C {lab_pin.sym} -140 1370 0 0 {name=xren_p2 sig_type=std_logic lab=MODEB}
C {lab_pin.sym} -140 1410 0 0 {name=xren_p3 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} -140 1450 0 0 {name=xren_p4 sig_type=std_logic lab=VGND}
C {c512_mux2.sym} 470 1370 0 0 {name=xmux}
C {lab_pin.sym} 610 1330 0 1 {name=xmux_p0 sig_type=std_logic lab=CLKSRC}
C {lab_pin.sym} 330 1330 0 0 {name=xmux_p1 sig_type=std_logic lab=OSC}
C {lab_pin.sym} 330 1370 0 0 {name=xmux_p2 sig_type=std_logic lab=clk}
C {lab_pin.sym} 330 1410 0 0 {name=xmux_p3 sig_type=std_logic lab=ui_in[1]}
C {lab_pin.sym} 610 1370 0 1 {name=xmux_p4 sig_type=std_logic lab=MODEB}
C {lab_pin.sym} 330 1450 0 0 {name=xmux_p5 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} 330 1490 0 0 {name=xmux_p6 sig_type=std_logic lab=VGND}
C {c512_and2.sym} 940 1370 0 0 {name=xgate}
C {lab_pin.sym} 1080 1330 0 1 {name=xgate_p0 sig_type=std_logic lab=CLKDIV}
C {lab_pin.sym} 800 1330 0 0 {name=xgate_p1 sig_type=std_logic lab=CLKSRC}
C {lab_pin.sym} 800 1370 0 0 {name=xgate_p2 sig_type=std_logic lab=RUN}
C {lab_pin.sym} 800 1410 0 0 {name=xgate_p3 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} 800 1450 0 0 {name=xgate_p4 sig_type=std_logic lab=VGND}
C {c512_inv.sym} 0 1630 0 0 {name=xrst}
C {lab_pin.sym} 140 1590 0 1 {name=xrst_p0 sig_type=std_logic lab=RESET}
C {lab_pin.sym} -140 1590 0 0 {name=xrst_p1 sig_type=std_logic lab=rst_n}
C {lab_pin.sym} -140 1630 0 0 {name=xrst_p2 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} -140 1670 0 0 {name=xrst_p3 sig_type=std_logic lab=VGND}
C {c512_buf4.sym} 470 1630 0 0 {name=xout}
C {lab_pin.sym} 610 1590 0 1 {name=xout_p0 sig_type=std_logic lab=uo_out[0]}
C {lab_pin.sym} 330 1590 0 0 {name=xout_p1 sig_type=std_logic lab=DIVRAW}
C {lab_pin.sym} 330 1630 0 0 {name=xout_p2 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} 330 1670 0 0 {name=xout_p3 sig_type=std_logic lab=VGND}
C {c512_ant.sym} 940 1630 0 0 {name=xa0}
C {lab_pin.sym} 800 1590 0 0 {name=xa0_p0 sig_type=std_logic lab=ui_in[0]}
C {lab_pin.sym} 800 1630 0 0 {name=xa0_p1 sig_type=std_logic lab=VGND}
C {c512_ant.sym} 0 1890 0 0 {name=xa1}
C {lab_pin.sym} -140 1850 0 0 {name=xa1_p0 sig_type=std_logic lab=ena}
C {lab_pin.sym} -140 1890 0 0 {name=xa1_p1 sig_type=std_logic lab=VGND}
C {c512_ant.sym} 470 1890 0 0 {name=xa2}
C {lab_pin.sym} 330 1850 0 0 {name=xa2_p0 sig_type=std_logic lab=rst_n}
C {lab_pin.sym} 330 1890 0 0 {name=xa2_p1 sig_type=std_logic lab=VGND}
C {c512_ant.sym} 940 1890 0 0 {name=xa3}
C {lab_pin.sym} 800 1850 0 0 {name=xa3_p0 sig_type=std_logic lab=ui_in[1]}
C {lab_pin.sym} 800 1890 0 0 {name=xa3_p1 sig_type=std_logic lab=VGND}
C {c512_ant.sym} 0 2150 0 0 {name=xa4}
C {lab_pin.sym} -140 2110 0 0 {name=xa4_p0 sig_type=std_logic lab=clk}
C {lab_pin.sym} -140 2150 0 0 {name=xa4_p1 sig_type=std_logic lab=VGND}
T {Tiny Tapeout interface | unused outputs are physically tied to VGND} 1400 -125 0 0 0.3 0.3 {}
C {ipin.sym} 1480 0 0 0 {name=p0 lab=clk}
C {ipin.sym} 1480 70 0 0 {name=p1 lab=ena}
C {ipin.sym} 1480 140 0 0 {name=p2 lab=rst_n}
C {ipin.sym} 1480 210 0 0 {name=p3 lab=ui_in[0]}
C {ipin.sym} 1480 280 0 0 {name=p4 lab=ui_in[1]}
C {ipin.sym} 1480 350 0 0 {name=p5 lab=ui_in[2]}
N 1480 350 1550 350 {lab=ui_in[2]}
C {noconn.sym} 1550 350 0 0 {name=nc5}
C {ipin.sym} 1480 420 0 0 {name=p6 lab=ui_in[3]}
N 1480 420 1550 420 {lab=ui_in[3]}
C {noconn.sym} 1550 420 0 0 {name=nc6}
C {ipin.sym} 1480 490 0 0 {name=p7 lab=ui_in[4]}
N 1480 490 1550 490 {lab=ui_in[4]}
C {noconn.sym} 1550 490 0 0 {name=nc7}
C {ipin.sym} 1480 560 0 0 {name=p8 lab=ui_in[5]}
N 1480 560 1550 560 {lab=ui_in[5]}
C {noconn.sym} 1550 560 0 0 {name=nc8}
C {ipin.sym} 1480 630 0 0 {name=p9 lab=ui_in[6]}
N 1480 630 1550 630 {lab=ui_in[6]}
C {noconn.sym} 1550 630 0 0 {name=nc9}
C {ipin.sym} 1480 700 0 0 {name=p10 lab=ui_in[7]}
N 1480 700 1550 700 {lab=ui_in[7]}
C {noconn.sym} 1550 700 0 0 {name=nc10}
C {ipin.sym} 1480 770 0 0 {name=p11 lab=uio_in[0]}
N 1480 770 1550 770 {lab=uio_in[0]}
C {noconn.sym} 1550 770 0 0 {name=nc11}
C {ipin.sym} 1480 840 0 0 {name=p12 lab=uio_in[1]}
N 1480 840 1550 840 {lab=uio_in[1]}
C {noconn.sym} 1550 840 0 0 {name=nc12}
C {ipin.sym} 1480 910 0 0 {name=p13 lab=uio_in[2]}
N 1480 910 1550 910 {lab=uio_in[2]}
C {noconn.sym} 1550 910 0 0 {name=nc13}
C {ipin.sym} 1480 980 0 0 {name=p14 lab=uio_in[3]}
N 1480 980 1550 980 {lab=uio_in[3]}
C {noconn.sym} 1550 980 0 0 {name=nc14}
C {ipin.sym} 1480 1050 0 0 {name=p15 lab=uio_in[4]}
N 1480 1050 1550 1050 {lab=uio_in[4]}
C {noconn.sym} 1550 1050 0 0 {name=nc15}
C {ipin.sym} 1480 1120 0 0 {name=p16 lab=uio_in[5]}
N 1480 1120 1550 1120 {lab=uio_in[5]}
C {noconn.sym} 1550 1120 0 0 {name=nc16}
C {ipin.sym} 1480 1190 0 0 {name=p17 lab=uio_in[6]}
N 1480 1190 1550 1190 {lab=uio_in[6]}
C {noconn.sym} 1550 1190 0 0 {name=nc17}
C {ipin.sym} 1480 1260 0 0 {name=p18 lab=uio_in[7]}
N 1480 1260 1550 1260 {lab=uio_in[7]}
C {noconn.sym} 1550 1260 0 0 {name=nc18}
C {opin.sym} 1480 1330 0 0 {name=p19 lab=uio_oe[0]}
N 1430 1330 1480 1330 {lab=uio_oe[0]}
C {tie.sym} 1400 1330 0 0 {name=Rtie19}
C {lab_pin.sym} 1370 1330 0 0 {name=gndtie19 sig_type=std_logic lab=VGND}
C {opin.sym} 1480 1400 0 0 {name=p20 lab=uio_oe[1]}
N 1430 1400 1480 1400 {lab=uio_oe[1]}
C {tie.sym} 1400 1400 0 0 {name=Rtie20}
C {lab_pin.sym} 1370 1400 0 0 {name=gndtie20 sig_type=std_logic lab=VGND}
C {opin.sym} 1480 1470 0 0 {name=p21 lab=uio_oe[2]}
N 1430 1470 1480 1470 {lab=uio_oe[2]}
C {tie.sym} 1400 1470 0 0 {name=Rtie21}
C {lab_pin.sym} 1370 1470 0 0 {name=gndtie21 sig_type=std_logic lab=VGND}
C {opin.sym} 1480 1540 0 0 {name=p22 lab=uio_oe[3]}
N 1430 1540 1480 1540 {lab=uio_oe[3]}
C {tie.sym} 1400 1540 0 0 {name=Rtie22}
C {lab_pin.sym} 1370 1540 0 0 {name=gndtie22 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 0 0 0 {name=p23 lab=uio_oe[4]}
N 1880 0 1930 0 {lab=uio_oe[4]}
C {tie.sym} 1850 0 0 0 {name=Rtie23}
C {lab_pin.sym} 1820 0 0 0 {name=gndtie23 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 70 0 0 {name=p24 lab=uio_oe[5]}
N 1880 70 1930 70 {lab=uio_oe[5]}
C {tie.sym} 1850 70 0 0 {name=Rtie24}
C {lab_pin.sym} 1820 70 0 0 {name=gndtie24 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 140 0 0 {name=p25 lab=uio_oe[6]}
N 1880 140 1930 140 {lab=uio_oe[6]}
C {tie.sym} 1850 140 0 0 {name=Rtie25}
C {lab_pin.sym} 1820 140 0 0 {name=gndtie25 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 210 0 0 {name=p26 lab=uio_oe[7]}
N 1880 210 1930 210 {lab=uio_oe[7]}
C {tie.sym} 1850 210 0 0 {name=Rtie26}
C {lab_pin.sym} 1820 210 0 0 {name=gndtie26 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 280 0 0 {name=p27 lab=uio_out[0]}
N 1880 280 1930 280 {lab=uio_out[0]}
C {tie.sym} 1850 280 0 0 {name=Rtie27}
C {lab_pin.sym} 1820 280 0 0 {name=gndtie27 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 350 0 0 {name=p28 lab=uio_out[1]}
N 1880 350 1930 350 {lab=uio_out[1]}
C {tie.sym} 1850 350 0 0 {name=Rtie28}
C {lab_pin.sym} 1820 350 0 0 {name=gndtie28 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 420 0 0 {name=p29 lab=uio_out[2]}
N 1880 420 1930 420 {lab=uio_out[2]}
C {tie.sym} 1850 420 0 0 {name=Rtie29}
C {lab_pin.sym} 1820 420 0 0 {name=gndtie29 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 490 0 0 {name=p30 lab=uio_out[3]}
N 1880 490 1930 490 {lab=uio_out[3]}
C {tie.sym} 1850 490 0 0 {name=Rtie30}
C {lab_pin.sym} 1820 490 0 0 {name=gndtie30 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 560 0 0 {name=p31 lab=uio_out[4]}
N 1880 560 1930 560 {lab=uio_out[4]}
C {tie.sym} 1850 560 0 0 {name=Rtie31}
C {lab_pin.sym} 1820 560 0 0 {name=gndtie31 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 630 0 0 {name=p32 lab=uio_out[5]}
N 1880 630 1930 630 {lab=uio_out[5]}
C {tie.sym} 1850 630 0 0 {name=Rtie32}
C {lab_pin.sym} 1820 630 0 0 {name=gndtie32 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 700 0 0 {name=p33 lab=uio_out[6]}
N 1880 700 1930 700 {lab=uio_out[6]}
C {tie.sym} 1850 700 0 0 {name=Rtie33}
C {lab_pin.sym} 1820 700 0 0 {name=gndtie33 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 770 0 0 {name=p34 lab=uio_out[7]}
N 1880 770 1930 770 {lab=uio_out[7]}
C {tie.sym} 1850 770 0 0 {name=Rtie34}
C {lab_pin.sym} 1820 770 0 0 {name=gndtie34 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 840 0 0 {name=p35 lab=uo_out[0]}
C {opin.sym} 1930 910 0 0 {name=p36 lab=uo_out[1]}
N 1880 910 1930 910 {lab=uo_out[1]}
C {tie.sym} 1850 910 0 0 {name=Rtie36}
C {lab_pin.sym} 1820 910 0 0 {name=gndtie36 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 980 0 0 {name=p37 lab=uo_out[2]}
N 1880 980 1930 980 {lab=uo_out[2]}
C {tie.sym} 1850 980 0 0 {name=Rtie37}
C {lab_pin.sym} 1820 980 0 0 {name=gndtie37 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 1050 0 0 {name=p38 lab=uo_out[3]}
N 1880 1050 1930 1050 {lab=uo_out[3]}
C {tie.sym} 1850 1050 0 0 {name=Rtie38}
C {lab_pin.sym} 1820 1050 0 0 {name=gndtie38 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 1120 0 0 {name=p39 lab=uo_out[4]}
N 1880 1120 1930 1120 {lab=uo_out[4]}
C {tie.sym} 1850 1120 0 0 {name=Rtie39}
C {lab_pin.sym} 1820 1120 0 0 {name=gndtie39 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 1190 0 0 {name=p40 lab=uo_out[5]}
N 1880 1190 1930 1190 {lab=uo_out[5]}
C {tie.sym} 1850 1190 0 0 {name=Rtie40}
C {lab_pin.sym} 1820 1190 0 0 {name=gndtie40 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 1260 0 0 {name=p41 lab=uo_out[6]}
N 1880 1260 1930 1260 {lab=uo_out[6]}
C {tie.sym} 1850 1260 0 0 {name=Rtie41}
C {lab_pin.sym} 1820 1260 0 0 {name=gndtie41 sig_type=std_logic lab=VGND}
C {opin.sym} 1930 1330 0 0 {name=p42 lab=uo_out[7]}
N 1880 1330 1930 1330 {lab=uo_out[7]}
C {tie.sym} 1850 1330 0 0 {name=Rtie42}
C {lab_pin.sym} 1820 1330 0 0 {name=gndtie42 sig_type=std_logic lab=VGND}
C {iopin.sym} 1930 1400 0 0 {name=p43 lab=VDPWR}
C {iopin.sym} 1930 1470 0 0 {name=p44 lab=VGND}
T {The 0-ohm markers describe direct metal ties; no resistor devices are fabricated.
Top MAG/GDS name: tt_um_clock512_custom. Source transistor count: 230 plus 5 antenna diodes.} 1400 1700 0 0 0.25 0.25 {}
