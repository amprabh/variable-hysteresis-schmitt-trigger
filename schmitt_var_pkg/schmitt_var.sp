*
*
*
*                       LINUX           Fri May 29 05:04:49 2026
*
*
*
*  PROGRAM  advgen
*
*  Name           : advgen - Quantus - (64-bit)
*  Version        : 23.1.1-p051
*  Build Date     : Thu Feb 15 21:11:17 PST 2024
*
*  HSPICE LIBRARY
*
*  OPERATING_TEMPERATURE 25
*  QRC_TECH_DIR /home/lab.apps/vlsiapps_new/kits/sky130_release_0.0.1/quantus/extraction/typical 
*
*
*

*
.SUBCKT schmitt_var vin CTL0 CTL1 CTL0_BAR CTL1_BAR vout vdd! gnd!
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MNM1	vout#28	vin#5	net2#8	gnd!	sky130_fd_pr__nfet_01v8	L=1.5e-07
+ W=6.8e-06
MNM0	net2#12	vin#7	gnd!#23	gnd!	sky130_fd_pr__nfet_01v8
+ L=1.5e-07	W=6.8e-06
MNM_SwitchB	gnd!#25	CTL1#1	net4#4	gnd!	sky130_fd_pr__nfet_01v8
+ L=1.5e-07	W=2e-05
MNM_SwitchA	gnd!#4	CTL0#1	net1#4	gnd!	sky130_fd_pr__nfet_01v8	L=1.5e-07
+ W=8e-06
MNM2	vdd!#10	vout#7	net2#2	gnd!	sky130_fd_pr__nfet_01v8	L=1.5e-07
+ W=4.2e-07
MNM_BranchA	net2#4	vout#9	net6#6	gnd!	sky130_fd_pr__nfet_01v8	L=1.5e-07
+ W=5e-07
MNM_BranchB	net2#5	vout#11	net3#2	gnd!	sky130_fd_pr__nfet_01v8
+ L=1.5e-07	W=1.325e-06
MPM0	vout#25	vin#3	net5#16	vdd!	sky130_fd_pr__pfet_01v8
+ L=1.5e-07	W=1.63e-05
MPM1	net5#5	vin#1	vdd!#7	vdd!	sky130_fd_pr__pfet_01v8	L=1.5e-07
+ W=1.63e-05
MPM_SwitchB	net3#3	CTL1_BAR#1	vdd!#13	vdd!	sky130_fd_pr__pfet_01v8
+ L=1.5e-07	W=4e-05
MPM_SwitchA	net6	CTL0_BAR#1	vdd!#2	vdd!	sky130_fd_pr__pfet_01v8
+ L=1.5e-07	W=1.6e-05
MPM2	gnd!#2	vout#1	net5#2	vdd!	sky130_fd_pr__pfet_01v8	L=1.5e-07
+ W=5.5e-07
MPM_BranchA	net5#9	vout#3	net1#3	vdd!	sky130_fd_pr__pfet_01v8	L=1.5e-07
+ W=4.5e-06
MPM_BranchB	net5#13	vout#5	net4	vdd!	sky130_fd_pr__pfet_01v8
+ L=1.5e-07	W=1.1925e-05
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Rg_1_1	CTL1_BAR#3	CTL1_BAR#4	6696.345703	$poly	$W=1.5e-07
Rg2	CTL0_BAR#1	CTL0_BAR#4	2686.882080	$poly	$W=1.5e-07
Rg4	vout#11	vout#9	371.943329	$poly	$W=1.5e-07
Rg6	vout#9	vout#7	226.539993	$poly	$W=1.5e-07
Rg8	vout#7	vout#19	194.845749	$poly	$W=1.5e-07
Rg10	CTL0#1	CTL0#4	1393.419067	$poly	$W=1.5e-07
Rg12	vout#5	vout#3	2717.676758	$poly	$W=1.5e-07
Rg14	vout#3	vout#1	890.093323	$poly	$W=1.5e-07
Rg16	vout#1	vout#20	198.059082	$poly	$W=1.5e-07
Rg18	vin#3	vin#1	5316.459961	$poly	$W=1.5e-07
Rg20	vin#1	vin#13	2710.982178	$poly	$W=1.5e-07
Rg21	CTL1_BAR#3	CTL1_BAR#1	24.100000	$poly	$W=1.99995e-05
Rg22	CTL1_BAR#1	CTL1_BAR#4	28.518772	$poly	$W=1.832e-05
Rg23	CTL1_BAR#4	CTL1_BAR#5	3046.839600	$poly	$W=1.5e-07
Rg25	vin#5	vin#14	1215.079102	$poly	$W=1.5e-07
Rg27	vin#7	vin#15	1216.190063	$poly	$W=1.5e-07
Rg29	CTL1#1	CTL1#4	3339.092285	$poly	$W=1.5e-07
Rf1	CTL1_BAR#5	CTL1_BAR#7	15.000000	$li	$W=1.7e-07
Rf2	CTL0_BAR#4	CTL0_BAR#6	15.000000	$li	$W=1.7e-07
Rf3	vin#13	vin#17	167.000000	$li	$W=1.7e-07
Rf4	CTL1#4	CTL1#6	15.000000	$li	$W=1.7e-07
Rf5	net6#2	net6#3	345.600006	$li	$W=1.7e-07
Rf6	net6#3	net6	512.750000	$li	$W=1.7e-07
Rf7	net6#2	net6#4	73.433273	$li	$W=1.7e-07
Rf8	net6	net6#2	2.142857	$li	$W=1.7e-07
Rf9	net6	net6#3	0.750000	$li	$W=1.7e-07
Rf10	vdd!#1	vdd!#3	76.423531	$li	$W=1.7e-07
Rf11	vdd!#3	vdd!#4	345.600006	$li	$W=1.7e-07
Rf12	vdd!#4	vdd!#2	512.750000	$li	$W=1.7e-07
Rf13	vdd!#2	vdd!#3	2.142857	$li	$W=1.7e-07
Rf14	vdd!#2	vdd!#4	0.750000	$li	$W=1.7e-07
Rf15	vout#20	vout#22	15.000000	$li	$W=1.7e-07
Rf16	CTL0#4	CTL0#6	15.000000	$li	$W=1.7e-07
Rf17	net5	net5#2	15.000000	$li	$W=1.7e-07
Rf18	gnd!#1	gnd!#2	18.388235	$li	$W=1.7e-07
Rf20	net5#4	net5#6	47.583412	$li	$W=1.7e-07
Rf21	net5#6	net5#7	345.600006	$li	$W=1.7e-07
Rf22	net5#7	net5#5	512.750000	$li	$W=1.7e-07
Rf23	net5#5	net5#6	2.142857	$li	$W=1.7e-07
Rf24	net5#5	net5#7	0.750000	$li	$W=1.7e-07
Rf26	vdd!#6	vdd!#8	45.434055	$li	$W=1.7e-07
Rf27	vdd!#8	vdd!#9	345.600006	$li	$W=1.7e-07
Rf28	vdd!#9	vdd!#7	512.750000	$li	$W=1.7e-07
Rf29	vdd!#7	vdd!#8	2.142857	$li	$W=1.7e-07
Rf30	vdd!#7	vdd!#9	0.750000	$li	$W=1.7e-07
Rf32	net1#2	net1#3	125.787125	$li	$W=1.7e-07
Rf33	net5#8	net5#10	152.847061	$li	$W=1.7e-07
Rf34	net5#10	net5#11	116.350929	$li	$W=1.7e-07
Rf36	net5#9	net5#10	1.153846	$li	$W=1.7e-07
Rf37	vout#19	vout#24	167.000000	$li	$W=1.7e-07
Rf38	vdd!#11	vdd!#12	0.365714	$li	$W=1.75e-07
Rf39	vdd!#10	vdd!#11	15.000000	$li	$W=1.75e-07
Rf40	net2	net2#2	15.000000	$li	$W=1.7e-07
Rf41	net2#3	net2#4	15.000000	$li	$W=1.7e-07
Rf42	net6#5	net6#6	178.955795	$li	$W=1.7e-07
Rf43	net2#5	net2#6	30.600000	$li	$W=1.7e-07
Rf44	net3	net3#2	43.023529	$li	$W=1.7e-07
Rf45	gnd!#3	gnd!#5	28.235294	$li	$W=1.7e-07
Rf46	gnd!#5	gnd!#4	295.149994	$li	$W=1.7e-07
Rf47	gnd!#4	gnd!#5	5.000000	$li	$W=1.7e-07
Rf48	net1#4	net1#5	257.611755	$li	$W=1.7e-07
Rf49	net1#5	net1#4	42.538235	$li	$W=1.7e-07
Rf50	vin#15	vin#19	15.000000	$li	$W=1.7e-07
Rf51	vin#14	vin#21	15.000000	$li	$W=1.7e-07
Rf53	gnd!#6	gnd!#9	199.296005	$li	$W=2.5e-07
Rf55	gnd!#9	gnd!#11	243.327988	$li	$W=2.5e-07
Rf57	gnd!#11	gnd!#13	338.559998	$li	$W=2.5e-07
Rf59	gnd!#13	gnd!#15	345.088013	$li	$W=2.5e-07
Rf61	gnd!#15	gnd!#17	346.368011	$li	$W=2.5e-07
Rf63	gnd!#17	gnd!#19	255.488007	$li	$W=2.5e-07
Rf65	gnd!#19	gnd!#21	119.423996	$li	$W=2.5e-07
Rf66	gnd!#21	gnd!#7	3.750000	$li	$W=1.285e-06
Rf67	gnd!#7	gnd!#6	1.500000	$li	$W=4.425e-06
Rf68	gnd!#7	gnd!#9	2.500000	$li	$W=2.47e-06
Rf69	gnd!#7	gnd!#11	0.937500	$li	$W=6.245e-06
Rf70	gnd!#7	gnd!#13	0.833333	$li	$W=6.55e-06
Rf71	gnd!#7	gnd!#15	0.833333	$li	$W=6.55e-06
Rf72	gnd!#7	gnd!#17	0.833333	$li	$W=6.55e-06
Rf73	gnd!#7	gnd!#19	1.875000	$li	$W=2.76e-06
Rf74	net4	net4#2	449.000000	$li	$W=1.7e-07
Rf75	net4#2	net4#3	68.894119	$li	$W=1.7e-07
Rf76	net4	net4#2	0.750000	$li	$W=1.7e-07
Rf77	net5#13	net5#14	449.000000	$li	$W=1.7e-07
Rf78	net5#14	net5#15	243.576462	$li	$W=1.7e-07
Rf79	net5#13	net5#14	0.750000	$li	$W=1.7e-07
Rf80	net5#16	net5#17	347.742859	$li	$W=1.7e-07
Rf81	net5#17	net5#18	512.000000	$li	$W=1.7e-07
Rf82	net5#18	net5#19	238.186996	$li	$W=1.7e-07
Rf83	net5#16	net5#17	0.750000	$li	$W=1.7e-07
Rf84	net5#16	net5#18	0.750000	$li	$W=1.7e-07
Rf85	vout#25	vout#26	347.742859	$li	$W=1.7e-07
Rf86	vout#26	vout#27	14.682353	$li	$W=1.7e-07
Rf87	vout#27	vout#25	498.067657	$li	$W=1.7e-07
Rf88	vout#25	vout#26	0.750000	$li	$W=1.7e-07
Rf89	vdd!#13	vdd!#14	474.482361	$li	$W=1.7e-07
Rf90	vdd!#14	vdd!#15	512.000000	$li	$W=1.7e-07
Rf91	vdd!#15	vdd!#16	86.588234	$li	$W=1.7e-07
Rf92	vdd!#16	vdd!#17	425.411774	$li	$W=1.7e-07
Rf93	vdd!#17	vdd!#18	512.000000	$li	$W=1.7e-07
Rf94	vdd!#18	vdd!#13	512.750000	$li	$W=1.7e-07
Rf95	vdd!#13	vdd!#14	0.750000	$li	$W=1.7e-07
Rf96	vdd!#13	vdd!#15	0.750000	$li	$W=1.7e-07
Rf97	vdd!#13	vdd!#17	0.750000	$li	$W=1.7e-07
Rf98	vdd!#13	vdd!#18	0.750000	$li	$W=1.7e-07
Rf99	net3#3	net3#4	452.270599	$li	$W=1.7e-07
Rf100	net3#4	net3#5	22.211765	$li	$W=1.7e-07
Rf101	net3#5	net3#6	512.000000	$li	$W=1.7e-07
Rf102	net3#6	net3#7	512.000000	$li	$W=1.7e-07
Rf103	net3#7	net3#8	512.000000	$li	$W=1.7e-07
Rf104	net3#8	net3#3	512.750000	$li	$W=1.7e-07
Rf105	net3#3	net3#5	0.750000	$li	$W=1.7e-07
Rf106	net3#3	net3#6	0.750000	$li	$W=1.7e-07
Rf107	net3#3	net3#7	0.750000	$li	$W=1.7e-07
Rf108	net3#3	net3#8	0.750000	$li	$W=1.7e-07
Rf110	vdd!#19	vdd!#22	125.695999	$li	$W=2.5e-07
Rf112	vdd!#22	vdd!#24	199.167999	$li	$W=2.5e-07
Rf114	vdd!#24	vdd!#26	198.912003	$li	$W=2.5e-07
Rf116	vdd!#26	vdd!#28	149.248001	$li	$W=2.5e-07
Rf118	vdd!#28	vdd!#30	198.783997	$li	$W=2.5e-07
Rf120	vdd!#30	vdd!#32	198.528000	$li	$W=2.5e-07
Rf122	vdd!#32	vdd!#34	149.248001	$li	$W=2.5e-07
Rf124	vdd!#34	vdd!#36	199.423996	$li	$W=2.5e-07
Rf126	vdd!#36	vdd!#38	199.167999	$li	$W=2.5e-07
Rf128	vdd!#38	vdd!#40	149.248001	$li	$W=2.5e-07
Rf130	vdd!#40	vdd!#42	148.992004	$li	$W=2.5e-07
Rf131	vdd!#42	vdd!#20	2.500000	$li	$W=2.47e-06
Rf132	vdd!#20	vdd!#19	3.750000	$li	$W=1.55e-06
Rf133	vdd!#20	vdd!#22	2.500000	$li	$W=2.47e-06
Rf134	vdd!#20	vdd!#24	1.500000	$li	$W=4.43e-06
Rf135	vdd!#20	vdd!#26	2.500000	$li	$W=2.47e-06
Rf136	vdd!#20	vdd!#28	2.500000	$li	$W=2.47e-06
Rf137	vdd!#20	vdd!#30	1.500000	$li	$W=4.415e-06
Rf138	vdd!#20	vdd!#32	2.500000	$li	$W=2.47e-06
Rf139	vdd!#20	vdd!#34	2.500000	$li	$W=2.47e-06
Rf140	vdd!#20	vdd!#36	1.500000	$li	$W=4.44e-06
Rf141	vdd!#20	vdd!#38	2.500000	$li	$W=2.47e-06
Rf142	vdd!#20	vdd!#40	2.500000	$li	$W=2.47e-06
Rf143	vout#28	vout#29	209.314697	$li	$W=1.7e-07
Rf144	net2#7	net2#9	243.199997	$li	$W=1.7e-07
Rf145	net2#9	net2#10	395.200012	$li	$W=1.7e-07
Rf146	net2#8	net2#9	0.750000	$li	$W=1.7e-07
Rf147	net2#11	net2#12	243.949997	$li	$W=1.7e-07
Rf148	gnd!#22	gnd!#23	201.032349	$li	$W=1.7e-07
Rf149	gnd!#24	gnd!#26	156.235291	$li	$W=1.7e-07
Rf150	gnd!#26	gnd!#27	486.399994	$li	$W=1.7e-07
Rf151	gnd!#27	gnd!#25	512.750000	$li	$W=1.7e-07
Rf152	gnd!#25	gnd!#26	0.833333	$li	$W=1.7e-07
Rf153	gnd!#25	gnd!#27	0.750000	$li	$W=1.7e-07
Rf154	net4#4	net4#5	473.680420	$li	$W=1.7e-07
Rf155	net4#5	net4#6	13.552942	$li	$W=1.7e-07
Rf156	net4#6	net4#4	512.750000	$li	$W=1.7e-07
Rf157	net4#4	net4#6	0.750000	$li	$W=1.7e-07
Re1	CTL1_BAR	CTL1_BAR#8	0.003182	$metal1
+ $W=2.75e-07
Re2	CTL1_BAR#8	CTL1_BAR#7	152.000000	$metal1
+ $W=2.75e-07
Re3	CTL0_BAR	CTL0_BAR#7	0.003623	$metal1
+ $W=3.45e-07
Re4	CTL0_BAR#7	CTL0_BAR#6	152.000000	$metal1
+ $W=3.45e-07
Re5	CTL1	CTL1#7	0.005263	$metal1	$W=2.85e-07
Re6	CTL1#7	CTL1#6	152.000000	$metal1	$W=2.85e-07
Re7	net6#7	net6#4	152.000000	$metal1	$W=2.6e-07
Re8	vdd!#43	vdd!#1	152.000000	$metal1	$W=2.6e-07
Re9	vout#30	vout#22	152.000000	$metal1
+ $W=2.6e-07
Re10	vdd!#45	vdd!#16	156.500000	$metal1
+ $W=2.6e-07
Re11	vdd!#47	vdd!#6	152.000000	$metal1	$W=2.6e-07
Re12	CTL0	CTL0#7	0.005263	$metal1	$W=2.85e-07
Re13	CTL0#7	CTL0#6	152.000000	$metal1	$W=2.85e-07
Re14	net5#20	net5	152.000000	$metal1	$W=2.6e-07
Re15	gnd!#28	gnd!#29	0.358874	$metal1
+ $W=1.4e-07
Re16	gnd!#29	gnd!#1	152.000000	$metal1	$W=2.6e-07
Re17	net5#22	net5#23	5.474945	$metal1
+ $W=1.4e-07
Re18	net5#23	net5#4	152.000000	$metal1	$W=2.6e-07
Re19	net5#25	net5#19	152.000000	$metal1
+ $W=2.6e-07
Re20	net5#27	net5#11	152.000000	$metal1
+ $W=2.6e-07
Re21	net1	net1#2	152.000000	$metal1	$W=2.6e-07
Re22	net1#8	net1#5	152.000000	$metal1	$W=2.6e-07
Re24	vout#24	vout	5.105534	$metal1	$W=1.4e-07
Re25	vout	vout#34	0.004924	$metal1	$W=3.3e-07
Re26	net5#29	net5#15	152.000000	$metal1
+ $W=2.6e-07
Re27	net5#29	net5#31	0.466017	$metal1
+ $W=1.4e-07
Re28	net5#31	net5#8	152.000000	$metal1	$W=2.6e-07
Re29	net2#13	net2	152.000000	$metal1	$W=2.6e-07
Re30	vdd!#49	vdd!#12	152.000000	$metal1
+ $W=2.6e-07
Re32	net6#5	net6#11	7.549353	$metal1	$W=1.4e-07
Re33	net4#7	net4#3	152.000000	$metal1	$W=2.6e-07
Re34	net4#9	net4#5	152.000000	$metal1	$W=2.6e-07
Re35	gnd!#31	gnd!#3	152.000000	$metal1	$W=2.6e-07
Re36	net3#9	net3#4	152.000000	$metal1	$W=2.6e-07
Re37	net3#11	net3	152.000000	$metal1	$W=2.6e-07
Re38	net2#15	net2#16	1.849945	$metal1
+ $W=1.4e-07
Re39	net2#16	net2#6	152.000000	$metal1	$W=2.6e-07
Re40	net2#16	net2#18	0.622267	$metal1
+ $W=1.4e-07
Re41	net2#18	net2#3	152.000000	$metal1	$W=2.6e-07
Re42	net2#18	net2#20	0.386331	$metal1
+ $W=1.4e-07
Re43	vin#22	vin#17	23.098694	$metal1	$W=1.4e-07
Re45	vin#17	vin	0.006356	$metal1	$W=2.95e-07
Re46	vin#25	vin#19	152.000000	$metal1	$W=2.6e-07
Re47	vin#27	vin#21	156.500000	$metal1	$W=2.6e-07
Re49	net2#10	net2#23	0.880535	$metal1
+ $W=1.4e-07
Re50	vout#35	vout#36	9.695955	$metal1
+ $W=1.4e-07
Re51	vout#37	vout#27	152.000000	$metal1
+ $W=2.6e-07
Re52	vout#39	vout#29	152.000000	$metal1
+ $W=2.6e-07
Re53	gnd!#33	gnd!#24	152.000000	$metal1
+ $W=2.6e-07
Re54	gnd!#35	gnd!#22	152.000000	$metal1
+ $W=2.6e-07
Re55	gnd!#37	gnd!#38	1.216406	$metal1
+ $W=4e-07
Re56	gnd!#38	gnd!	0.634063	$metal1	$W=4e-07
Re57	gnd!	gnd!#39	0.440156	$metal1	$W=4e-07
Re58	gnd!#39	gnd!#40	1.406719	$metal1
+ $W=4e-07
Re59	gnd!#40	gnd!#41	0.195312	$metal1
+ $W=4e-07
Re60	gnd!#41	gnd!#42	0.464375	$metal1
+ $W=4e-07
Re61	gnd!#42	gnd!#43	2.106250	$metal1
+ $W=4e-07
Re62	gnd!#43	gnd!#44	2.114063	$metal1
+ $W=4e-07
Re63	gnd!#44	gnd!#45	1.559375	$metal1
+ $W=4e-07
Re64	gnd!#45	gnd!#21	38.728905	$metal1
+ $W=4e-07
Re65	gnd!#37	gnd!#47	5.177189	$metal1
+ $W=4e-07
Re66	vdd!#19	vdd!#52	38.767189	$metal1
+ $W=4e-07
Re67	vdd!#52	vdd!	0.463750	$metal1	$W=4e-07
Re68	vdd!	vdd!#53	0.292500	$metal1	$W=4e-07
Re69	vdd!#53	vdd!#54	1.214062	$metal1
+ $W=4e-07
Re70	vdd!#54	vdd!#55	0.034063	$metal1
+ $W=4e-07
Re71	vdd!#55	vdd!#56	0.876875	$metal1
+ $W=4e-07
Re72	vdd!#56	vdd!	0.463750	$metal1	$W=4e-07
Re73	vdd!	vdd!#57	0.032812	$metal1	$W=4e-07
Re74	vdd!#57	vdd!#58	0.257344	$metal1
+ $W=4e-07
Re75	vdd!#58	vdd!#59	0.255156	$metal1
+ $W=4e-07
Re76	vdd!#59	vdd!#60	0.956563	$metal1
+ $W=4e-07
Re77	vdd!#60	vdd!#61	0.910937	$metal1
+ $W=4e-07
Re78	vdd!#61	vdd!	0.463750	$metal1	$W=4e-07
Re79	vdd!	vdd!#62	0.294062	$metal1	$W=4e-07
Re80	vdd!#62	vdd!#63	1.215625	$metal1
+ $W=4e-07
Re81	vdd!#63	vdd!#64	0.910937	$metal1
+ $W=4e-07
Re82	vdd!#64	vdd!	0.463750	$metal1	$W=4e-07
Re83	vdd!	vdd!#65	0.445625	$metal1	$W=4e-07
Re84	vdd!#65	vdd!	0.013750	$metal1	$W=4e-07
Re85	net2#24	net2#7	152.000000	$metal1	$W=2.6e-07
Re86	net2#26	net2#11	152.000000	$metal1
+ $W=2.6e-07
Re124	gnd!#6	gnd!#37	15.200000	$metal1	$W=2.89e-07
Re125	gnd!#9	gnd!#38	25.333334	$metal1	$W=1.734e-07
Re126	gnd!#11	gnd!#39	9.500000	$metal1
+ $W=4.624e-07
Re127	gnd!#13	gnd!#42	8.444445	$metal1
+ $W=5.202e-07
Re128	gnd!#15	gnd!#43	8.444445	$metal1
+ $W=5.202e-07
Re129	gnd!#17	gnd!#44	8.444445	$metal1
+ $W=5.202e-07
Re130	gnd!#19	gnd!#45	19.000000	$metal1
+ $W=2.312e-07
Re133	vdd!#22	vdd!#52	25.333334	$metal1
+ $W=1.734e-07
Re134	vdd!#24	vdd!#53	15.200000	$metal1
+ $W=2.89e-07
Re135	vdd!#26	vdd!#54	25.333334	$metal1
+ $W=1.734e-07
Re136	vdd!#28	vdd!#56	25.333334	$metal1
+ $W=1.734e-07
Re137	vdd!#30	vdd!#58	15.200000	$metal1
+ $W=2.89e-07
Re138	vdd!#32	vdd!#60	25.333334	$metal1
+ $W=1.734e-07
Re139	vdd!#34	vdd!#61	25.333334	$metal1
+ $W=1.734e-07
Re140	vdd!#36	vdd!#62	15.200000	$metal1
+ $W=2.89e-07
Re141	vdd!#38	vdd!#63	25.333334	$metal1
+ $W=1.734e-07
Re142	vdd!#40	vdd!#64	25.333334	$metal1
+ $W=1.734e-07
Re143	vdd!#42	vdd!#65	25.333334	$metal1
+ $W=1.734e-07
Rd1	net6#7	net6#11	10.496724	$metal2	$W=1.4e-07
Rd2	vdd!#43	vdd!#59	11.242260	$metal2
+ $W=1.4e-07
Rd3	vout#30	vout#34	10.144046	$metal2
+ $W=1.4e-07
Rd4	vdd!#47	vdd!#45	5.227995	$metal2
+ $W=1.4e-07
Rd5	vdd!#45	vdd!#57	4.889581	$metal2
+ $W=1.4e-07
Rd6	net5#23	net5#20	9.326210	$metal2
+ $W=1.4e-07
Rd7	gnd!#28	gnd!#41	12.326917	$metal2
+ $W=1.4e-07
Rd8	net5#25	net5#22	5.009245	$metal2
+ $W=1.4e-07
Rd9	net5#22	net5#27	5.198261	$metal2
+ $W=1.4e-07
Rd10	net1	net1#8	11.411031	$metal2	$W=1.4e-07
Rd11	vout#36	vout#24	9.314333	$metal2
+ $W=1.4e-07
Rd12	vdd!#55	vdd!#49	12.532274	$metal2
+ $W=1.4e-07
Rd13	net2#20	net2#13	9.305468	$metal2
+ $W=1.4e-07
Rd14	net4#7	net4#9	12.272638	$metal2	$W=1.4e-07
Rd15	net3#9	net3#11	12.031567	$metal2	$W=1.4e-07
Rd16	net2#15	net2#23	9.434868	$metal2
+ $W=1.4e-07
Rd17	vin#22	vin#27	6.573968	$metal2	$W=1.4e-07
Rd18	vin#27	vin#25	5.225919	$metal2	$W=1.4e-07
Rd19	vout#39	vout#35	4.752704	$metal2
+ $W=1.4e-07
Rd20	vout#35	vout#37	5.801812	$metal2
+ $W=1.4e-07
Rd21	gnd!#47	gnd!#53	0.317013	$metal2
+ $W=1.4e-07
Rd22	gnd!#53	gnd!#31	13.167893	$metal2
+ $W=1.4e-07
Rd23	gnd!#47	gnd!#35	5.679874	$metal2
+ $W=1.4e-07
Rd24	gnd!#53	gnd!#33	5.216879	$metal2
+ $W=1.4e-07
Rd25	net2#24	net2#26	9.375317	$metal2
+ $W=1.4e-07
*
*       CAPACITOR CARDS
*
*
C1	vdd!	gnd!	1.37141e-15
C2	CTL0_BAR	gnd!	9.66775e-17
C3	vin	gnd!	7.52104e-17
C4	CTL1_BAR	gnd!	9.75311e-17
C5	CTL1	gnd!	1.21192e-16
C6	CTL0	gnd!	1.67867e-16
C7	vout	gnd!	4.33805e-16
C8	net5	gnd!	2.39517e-16
C9	net2	gnd!	3.50025e-16
C10	net4	gnd!	1.41852e-15
C11	net1	gnd!	1.83989e-16
C12	net6	gnd!	1.78874e-15
C13	net3	gnd!	1.03286e-16
C14	vout#5	gnd!	4.75416e-16
C15	vin#3	gnd!	7.41895e-16
C16	vout#3	gnd!	2.00182e-16
C17	vout#1	gnd!	3.52812e-17
C18	CTL1_BAR#1	gnd!	1.97166e-15
C19	vin#1	gnd!	8.11991e-16
C20	CTL0_BAR#1	gnd!	7.32995e-16
C21	vin#5	gnd!	3.11831e-16
C22	vin#7	gnd!	2.94794e-16
C23	vout#11	gnd!	7.98149e-17
C24	CTL1#1	gnd!	1.03764e-15
C25	vout#9	gnd!	2.82103e-17
C26	vout#7	gnd!	3.34779e-17
C27	CTL0#1	gnd!	4.34099e-16
C28	net2#24	gnd!	3.57622e-17
C29	net2#26	gnd!	3.41039e-17
C30	vout#35	gnd!	5.26711e-16
C31	vout#39	gnd!	3.05226e-17
C32	vout#37	gnd!	8.09122e-17
C33	vin#27	gnd!	2.78348e-16
C34	vin#25	gnd!	7.86925e-17
C35	vin#22	gnd!	2.04622e-15
C36	net2#23	gnd!	1.9011e-16
C37	net2#15	gnd!	2.69197e-16
C38	net3#9	gnd!	2.40579e-16
C39	net3#11	gnd!	3.4118e-16
C40	net4#7	gnd!	3.60507e-16
C41	net4#9	gnd!	3.14891e-16
C42	net2#20	gnd!	1.79152e-16
C43	vdd!#55	gnd!	1.72577e-16
C44	vdd!#49	gnd!	3.01749e-16
C45	net2#13	gnd!	8.08663e-17
C46	net5#29	gnd!	6.8005e-17
C47	vout#36	gnd!	6.35276e-16
C48	net5#31	gnd!	6.35107e-17
C49	net1#8	gnd!	2.2095e-16
C50	net5#25	gnd!	5.16935e-17
C51	net5#27	gnd!	6.1675e-17
C52	net5#22	gnd!	2.11189e-16
C53	net5#23	gnd!	1.63171e-16
C54	net5#20	gnd!	6.89245e-17
C55	vdd!#47	gnd!	4.85409e-17
C56	vdd!#45	gnd!	2.22358e-17
C57	vout#30	gnd!	1.05797e-16
C58	vout#34	gnd!	8.48306e-17
C59	vdd!#59	gnd!	2.62795e-17
C60	vdd!#43	gnd!	1.58935e-16
C61	net6#7	gnd!	1.33104e-16
C62	net6#11	gnd!	6.88925e-16
C63	vin#14	gnd!	4.66407e-17
C64	vin#15	gnd!	5.42749e-17
C65	vout#19	gnd!	4.28617e-17
C66	CTL0#4	gnd!	4.45971e-17
C67	vout#20	gnd!	4.79835e-17
C68	CTL1#4	gnd!	4.27459e-17
C69	vin#13	gnd!	3.70307e-17
C70	CTL0_BAR#4	gnd!	3.3606e-17
C71	CTL1_BAR#5	gnd!	3.04424e-17
C72	net2#7	gnd!	1.61554e-17
C73	net2#11	gnd!	1.74262e-17
C74	vdd!#19	gnd!	4.41129e-17
C75	vdd!#22	gnd!	6.17483e-17
C76	vdd!#24	gnd!	1.28172e-16
C77	vout#29	gnd!	2.93184e-17
C78	vout#27	gnd!	3.43268e-17
C79	net2#10	gnd!	9.7644e-17
C80	vin#21	gnd!	9.94658e-17
C81	vin#19	gnd!	4.86279e-17
C82	net3#4	gnd!	4.25102e-17
C83	net4#3	gnd!	5.15305e-17
C84	net4#5	gnd!	7.35707e-17
C85	net2#6	gnd!	2.41111e-16
C86	vdd!#26	gnd!	6.38882e-17
C87	net6#5	gnd!	8.80274e-16
C88	net2#3	gnd!	1.93807e-16
C89	vdd!#12	gnd!	1.25839e-16
C90	vout#24	gnd!	4.57351e-16
C91	net5#8	gnd!	1.23233e-16
C92	net1#2	gnd!	2.15576e-16
C93	net1#5	gnd!	4.31354e-17
C94	vdd!#28	gnd!	6.34472e-17
C95	vdd!#30	gnd!	5.81515e-17
C96	net5#19	gnd!	3.58708e-16
C97	net5#11	gnd!	2.13739e-16
C98	net5#4	gnd!	1.26618e-16
C99	vdd!#6	gnd!	2.26408e-16
C100	vdd!#16	gnd!	1.03211e-17
C101	vout#22	gnd!	5.8342e-17
C102	vdd!#1	gnd!	8.28297e-17
C103	net6#4	gnd!	1.55937e-16
C104	vdd!#32	gnd!	4.13584e-17
C105	vdd!#34	gnd!	4.08653e-17
C106	vdd!#36	gnd!	6.79368e-17
C107	vdd!#38	gnd!	4.55314e-17
C108	vin#17	gnd!	1.29304e-15
C109	vdd!#40	gnd!	4.64599e-17
C110	vdd!#42	gnd!	2.02708e-17
C111	vdd!#13	gnd!	2.89876e-15
C112	net3#3	gnd!	4.58523e-15
C113	net5#16	gnd!	1.75322e-15
C114	vout#25	gnd!	2.04698e-15
C115	net5#13	gnd!	1.29079e-15
C116	net1#3	gnd!	3.86227e-16
C117	net5#9	gnd!	1.72131e-16
C118	vdd!#7	gnd!	1.75835e-15
C119	net5#5	gnd!	2.15077e-15
C120	net5#2	gnd!	5.8785e-17
C121	vdd!#2	gnd!	1.79274e-15
C122	vout#28	gnd!	6.44497e-16
C123	net2#8	gnd!	5.41726e-16
C124	net2#12	gnd!	5.62343e-16
C125	net4#4	gnd!	2.65591e-15
C126	net1#4	gnd!	1.00059e-15
C127	net2#5	gnd!	1.37744e-16
C128	net3#2	gnd!	1.99587e-16
C129	net6#6	gnd!	6.73162e-17
C130	vdd!#10	gnd!	6.27852e-17
*
*
.ENDS schmitt_var
*
