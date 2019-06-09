VERSION 14.0.1.25
SYSTYPE Process
UNITS Meters Seconds
SYSDEF UtilByAvail off RefCheck on debugger off warningMessages on report standard
FLAGS
	System Inherit
	Text Inherit
	Resources Inherit
	Resource Names Inherit
	Queues Inherit
	Queue Names Inherit
	Queue Amounts Inherit
	Blocks Inherit
	Block Names Inherit
	Labels Inherit
PROCDEF
PROC name P_vip 0 traf Infinite nextproc die
PROC name P_notvip 0 traf Infinite nextproc die
PROC name P_vipwork 0 traf Infinite nextproc die
PROC name P_notvipwork 4 traf Infinite nextproc die
PROC name P_dummy 0 traf Infinite nextproc die
LDTYPE name L_vip 0 dis
picpos begx -23.4696 begy 25.6032 endx -22.4696 endy 25.6032
 color 1 template Feet
700 17
1 1 0 1 1 man2_cell
1
700 21
1 1 0 1 1 manset
-0.315  0  3.8
0 0 0 180
	1.00	1.00	1.00
13
310 21
1 1 0 1 1 chest
	0.00	0.00	0.00
0 0 0 90
	1.00	1.00	1.00
0.5 1.2 0.6 1.62 1.2 0 0
310 21
1 1 0 1 1 middle
0  0  -1
0	0.00	0.00	0.00
	1.00	1.00	1.00
1.2 0.7 1.2 0.6 1 0 0
310 21
1 1 0 1 1 leg
-1.35  0.3  -2
0 0 45 0
	1.00	1.00	1.00
0.5 0.5 0.6 0.6 2 0 0
310 21
1 1 0 1 1 leg
-1.25  0.3  -3.5
0	0.00	0.00	0.00
	1.00	1.00	1.00
0.4 0.4 0.5 0.5 1.7 0 0
310 21
1 1 0 1 1 leg
0.4  -0.3  -2.2
0 0 -15 0
	1.00	1.00	1.00
0.5 0.5 0.6 0.6 1.8 0 0
310 21
1 1 0 1 1 leg
1.15  -0.3  -3.4
0 0 -30 0
	1.00	1.00	1.00
0.4 0.4 0.5 0.5 1.7 0 0
310 5
10 10 0 1 1 foot
0.9  -0.3  -3.6
0 0 -20 0
	1.00	1.00	1.00
0.4 1 0.4 1 0.3 0 0
310 5
10 10 0 1 1 foot
-1.5  0.3  -3.8
0	0.00	0.00	0.00
	1.00	1.00	1.00
0.4 1 0.4 1 0.3 0 0
700 21
1 1 0 1 1 headset
0  0  0.29
0 0 0 -90
	1.00	1.00	1.00
4
360 5
13 13 0 1 1 face
0  0  1.11
0	0.00	0.00	0.00
	1.00	1.00	1.00
0.2 0.3 0.3 0 0
330 5
13 13 0 1 1 Round
0  0  1.41
0	0.00	0.00	0.00
	1.00	1.00	1.00
0.3
350 5
13 13 0 1 1 neck
0  0  0.91
0	0.00	0.00	0.00
	1.00	1.00	1.00
0.2 0.2 0 0
310 5
13 13 0 1 1 chin
0  0  1.21
0 90 0 0
	1.00	1.00	1.00
0.2 0.48 0.1 0.2 0.29 0 -0.05
700 21
1 1 0 1 1 capset
0  0  0.23
0	0.00	0.00	0.00
	1.00	1.00	1.00
2
330 5
1 15 0 1 1 top
0  0  1.6
0 0 5 0
	1.00	1.00	1.00
0.3
310 5
15 15 0 1 1 bill
-0.48  0  1.67
0 0 95 0
	1.00	1.00	1.00
0.4 0.05 0.5 0.05 0.5 0 0
700 21
1 1 0 1 1 rarm
0.21  -0.29  -0.1
0	0.00	0.00	0.00
	1.00	1.00	1.00
5
360 21
1 1 0 1 1 upper
-0.9  1  0.1
0 0 35 0
	1.00	1.00	1.00
0.2 0.25 1.2 0 0
360 21
1 1 0 1 1 lower
-2.11  1  0.1
0 0 90 0
	1.00	1.00	1.00
0.1 0.2 1.2 0 0
350 5
13 13 0 1 1 hand
-2.31  1  0.1
0 90 90 0
	1.00	1.00	1.00
0.1 0.2 0 0
330 21
1 1 0 1 1 upperA
-0.22  0.99  1.07
0 0 34.5 0
	1.00	1.00	1.00
0.25
330 21
1 1 0 1 1 elbow
-0.9  1  0.1
0 0 -145.5 0
	1.00	1.00	1.00
0.2
700 21
1 1 0 1 1 larm
0.21  -1.71  -0.1
0	0.00	0.00	0.00
	1.00	1.00	1.00
5
360 21
1 1 0 1 1 upper
-0.9  1  0.1
0 0 35 0
	1.00	1.00	1.00
0.2 0.25 1.2 0 0
360 21
1 1 0 1 1 lower
-2.11  1  0.1
0 0 90 0
	1.00	1.00	1.00
0.1 0.2 1.2 0 0
350 5
13 13 0 1 1 hand
-2.31  1  0.1
0 90 90 0
	1.00	1.00	1.00
0.1 0.2 0 0
330 21
1 1 0 1 1 upperA
-0.22  0.99  1.07
0 0 34.5 0
	1.00	1.00	1.00
0.25
330 21
1 1 0 1 1 elbow
-0.9  1  0.1
0 0 -145.5 0
	1.00	1.00	1.00
0.2
700 19
1 1 0 1 1 TCF
	0
	0	0	0	0	1
	0.00	0.00	0.00
0	0.00	0.00	0.00
	1.00	1.00	1.00
	0
-2  0  0
0 0 0 180
1  1  1
0
end
		create con 6 Minutes stream stream_L_vip_1 First P_vip 0
LDTYPE name L_notvip 0 dis
picpos begx -17.3736 begy 24.9936 endx -16.3736 endy 24.9936
 color 4 template Feet
700 17
4 4 0 1 1 man_cell
1
700 21
4 4 0 1 1 manset
-0.315  0  3.8
0 0 0 180
	1.00	1.00	1.00
13
310 21
4 4 0 1 1 chest
	0.00	0.00	0.00
0 0 0 90
	1.00	1.00	1.00
1 1.2 1 2 1.2 0 0
310 21
4 4 0 1 1 middle
0  0  -1
0	0.00	0.00	0.00
	1.00	1.00	1.00
1.2 1 1.2 1 1 0 0
310 21
4 4 0 1 1 leg
-1.35  0.3  -2
0 0 45 0
	1.00	1.00	1.00
0.5 0.6 0.6 1.2 2 0 0
310 21
4 4 0 1 1 leg
-1.25  0.3  -3.5
0	0.00	0.00	0.00
	1.00	1.00	1.00
0.4 0.4 0.5 0.6 1.7 0 0
310 21
4 4 0 1 1 leg
0.4  -0.3  -2.2
0 0 -15 0
	1.00	1.00	1.00
0.5 0.6 0.6 1.1 1.8 0 0
310 21
4 4 0 1 1 leg
1.15  -0.3  -3.4
0 0 -30 0
	1.00	1.00	1.00
0.4 0.4 0.5 0.7 1.7 0 0
310 5
10 10 0 1 1 foot
0.9  -0.3  -3.6
0 0 -20 0
	1.00	1.00	1.00
0.4 1 0.4 1 0.3 0 0
310 5
10 10 0 1 1 foot
-1.5  0.3  -3.8
0	0.00	0.00	0.00
	1.00	1.00	1.00
0.4 1 0.4 1 0.3 0 0
350 5
13 13 0 1 1 head
0  0  1.1
0	0.00	0.00	0.00
	1.00	1.00	1.00
0.3 0.6 0 0
700 17
4 4 0 1 1 larm
3
350 21
4 4 0 1 1 upper
-0.9  1  0.1
0 0 35 0
	1.00	1.00	1.00
0.2 1.2 0 0
360 21
4 4 0 1 1 lower
-1.8  1  0.2
0 0 90 0
	1.00	1.00	1.00
0.1 0.2 1 0 0
350 5
13 13 0 1 1 hand
-2  1  0.2
0 90 90 0
	1.00	1.00	1.00
0.1 0.2 0 0
700 21
4 4 0 1 1 rarm
0  -2  0
0	0.00	0.00	0.00
	1.00	1.00	1.00
4
350 21
4 4 0 1 1 upper
-0.9  1  0.1
0 0 35 0
	1.00	1.00	1.00
0.2 1.2 0 0
360 21
4 4 0 1 1 lower
-1.8  1  0.2
0 0 90 0
	1.00	1.00	1.00
0.1 0.2 1 0 0
350 5
13 13 0 1 1 hand
-2  1  0.2
0 90 90 0
	1.00	1.00	1.00
0.1 0.2 0 0
700 7
4 4 0 1 1 holder
	0
	0	0	0	0	1
	0.00	0.00	0.00
0	0.00	0.00	0.00
	1.00	1.00	1.00
	0
0  1  0
0 0 0 180
1  1  1
-1.91  1  0.3
0	0.00	0.00	0.00
	1.00	1.00	1.00
0
330 5
1 1 0 1 1 tophead
0  0  1.6
0 0 5 0
	1.00	1.00	1.00
0.4
310 5
1 1 0 1 1 cap
-0.3  0  1.63
0 0 5 0
	1.00	1.00	1.00
0.5 0.5 0.5 0.5 0.05 0 0
end
		create exp 0.025 Hours stream stream_L_notvip_1 First P_notvip 0
LDTYPE name L_dummy 0
picpos endx 1
 template Meters
700 17
2 2 0 1 1 none
1
310 17
2 2 0 1 1 none
1 1 1 1 1 0 0
end
		create con 1 Seconds stream stream_L_dummy_1 First P_dummy 0
RSRC name R_vip 0 cap 1 prtime con 5 Seconds stream stream_R_vip_1
 dis 0 picpos begx 3 begy 15 endx 4 endy 15 scx 0.5 scy 0.5 scz 0.5

	UserDef	template Meters
700 17
2 2 0 1 1 none
1
310 17
2 2 0 1 1 none
4 4 4 4 4 0 0
end
		
RSRC name R_normal1 0 cap 1 prtime con 5 Seconds stream stream_R_normal1_1
 dis 0 picpos begx 25 begy 15 endx 25 endy 16 scx 0.5 scy 0.5 scz 0.5

	UserDef	template Meters
700 17
2 2 0 1 1 none
1
310 17
2 2 0 1 1 none
4 4 4 4 4 0 0
end
		
RSRC name R_normal2 0 cap 1 prtime con 5 Seconds stream stream_R_normal2_1
 dis 0 picpos begx 25 begy 9 endx 25 endy 10 scx 0.5 scy 0.5 scz 0.5

	UserDef	template Meters
700 17
2 2 0 1 1 none
1
310 17
2 2 0 1 1 none
4 4 4 4 4 0 0
end
		
RSRC name R_normal3 0 cap 1 prtime con 5 Seconds stream stream_R_normal3_1
 dis 0 picpos begx 25 begy 3 endx 25 endy 4 scx 0.5 scy 0.5 scz 0.5

	UserDef	template Meters
700 17
2 2 0 1 1 none
1
310 17
2 2 0 1 1 none
4 4 4 4 4 0 0
end
		
RSRC name R_normal4 0 cap 1 prtime con 5 Seconds stream stream_R_normal4_1
 dis 0 picpos begx 25 begy -3 endx 25 endy -2 scx 0.5 scy 0.5 scz 0.5

	UserDef	template Meters
700 17
2 2 0 1 1 none
1
310 17
2 2 0 1 1 none
4 4 4 4 4 0 0
end
		
QUEUE name Q_vipwait 0 cap 10

	dis 0 Stacking MINUSY
		picpos begx -10.3632 begy -3.048 endx -9.3632 endy -3.048 scx 5 scy 5 scz 5

	UserDef	template Feet
700 17
2 2 0 1 1 none
1
310 17
2 2 0 1 0 none
4 4 4 4 4 0 0
end

	CONTAINER name Container1 3 
		x 1 1.0 Feet 
		y 1 1.0 Feet 
		z 1 1.0 Feet
		dim 0 array 2 dir PLUSX
		dim 1 array 5 dir MINUSY
		dim 2 array 1 dir PLUSZ
		trx 0 try 0 trz 0
		rotx 0 roty 0 rotz 0
QUEUE name Q_notvipwait 0 cap 60

	dis 0 Stacking MINUSY
		picpos begx -21.0312 begy -3.048 endx -20.0312 endy -3.048 scx 5 scy 5 scz 5

	UserDef	template Feet
700 17
2 2 0 1 1 none
1
310 17
2 2 0 1 0 none
4 4 4 4 4 0 0
end

	CONTAINER name Container1 3 
		x 1 1 Feet 
		y 1 1 Feet 
		z 1 1.0 Feet
		dim 0 array 6 dir PLUSX
		dim 1 array 10 dir MINUSY
		dim 2 array 1 dir PLUSZ
		trx 0 try 0 trz 0
		rotx 0 roty 0 rotz 0
ORDER name OL_vip 0
ORDER name OL_notvip 0
VAR name V_normal1 0 type Integer
VAR name V_normal2 0 type Integer
VAR name V_normal3 0 type Integer
VAR name V_normal4 0 type Integer
VAR name V_vip 0 type Integer
RNSTREAM stream0 0 type CMRG flags 1
	cmrgseed 1 12345 12345 12345 12345 12345 12345
RNSTREAM stream_L_vip_1 0 type CMRG flags 1
	title "Generated automatically for L_vip"
	cmrgseed 1 3692455944 1366884236 2968912127 335948734 4161675175 475798818
RNSTREAM stream_L_notvip_1 0 type CMRG flags 1
	title "Generated automatically for L_notvip"
	cmrgseed 1 1015873554 1310354410 2249465273 994084013 2912484720 3876682925
RNSTREAM stream_R_vip_1 0 type CMRG flags 1
	title "Generated automatically for R_vip"
	cmrgseed 1 2338701263 1119171942 2570676563 317077452 3194180850 618832124
RNSTREAM stream_R_normal1_1 0 type CMRG flags 1
	title "Generated automatically for R_normal1"
	cmrgseed 1 1597262096 3906379055 3312112953 1016013135 4099474108 275305423
RNSTREAM stream_R_normal2_1 0 type CMRG flags 1
	title "Generated automatically for R_normal2"
	cmrgseed 1 97147054 3131372450 829345164 3691032523 3006063034 4259826321
RNSTREAM stream_R_normal3_1 0 type CMRG flags 1
	title "Generated automatically for R_normal3"
	cmrgseed 1 796079799 2105258207 955365076 2923159030 4116632677 3067683584
RNSTREAM stream_R_normal4_1 0 type CMRG flags 1
	title "Generated automatically for R_normal4"
	cmrgseed 1 3281794178 2616230133 1457051261 2762791137 2480527362 2282316169
RNSTREAM stream_L_dummy_1 0 type CMRG flags 1
	title "Generated automatically for L_dummy"
	cmrgseed 1 3777646647 1837464056 4204654757 664239048 4190510072 2959195122
RNSTATE 4215590817 3862461878 1087200967 1544910132 936383720 1611370123
SFileBegin	name demo.m
begin P_vip arriving procedure
	if ac > 2 hours then
		send to die
	move into conv.sta1
	travel to conv.sta2
	wait for 3 seconds
	travel to conv.sta14
	move into Q_vipwait
	wait to be ordered on OL_vip
end

begin P_notvip arriving procedure
	if ac > 2 hours then
		send to die
	move into conv.sta1
	travel to conv.sta2
	wait for 3 seconds
	travel to conv.sta13
	move into Q_notvipwait
	wait to be ordered on OL_notvip
end

begin P_dummy arriving procedure
	if OL_vip current loads >= 1 then
		begin
			if V_vip = 0 then
				begin
					set V_vip = 1
					order 1 load from OL_vip to P_vipwork
				end
		end
	if OL_notvip current loads >= 1 then
		begin
			if V_normal1 = 0 then
				begin
					set V_normal1 = 1
					order 1 load from OL_notvip to P_notvipwork(1)
				end
				else
				if V_normal2 = 0 then
					begin
						set V_normal2 = 1
						order 1 load from OL_notvip to P_notvipwork(2)
					end
					else 
					if V_normal3 = 0 then
						begin
							set V_normal3 = 1
							order 1 load from OL_notvip to P_notvipwork(3)
						end
						else
						if V_normal4 = 0 then
							begin
								set V_normal4 = 1
								order 1 load from OL_notvip to P_notvipwork(4)
							end
		end
	send to die
end

begin P_notvipwork arriving procedure
	if procindex = 1 then
		begin
			move into conv.sta12
			travel to conv.sta4
			travel to conv.sta5
			travel to conv.sta6
			use R_normal1 for uniform 6.7, 1.5 min
			set V_normal1 = 0
			travel to conv.sta11
			send to die
		end
		else 
		if procindex = 2 then
			begin
				move into conv.sta12
				travel to conv.sta4
				travel to conv.sta5
				travel to conv.sta7
				use R_normal2 for uniform 6.7, 1.5 min
				set V_normal2 = 0
				travel to conv.sta11
				send to die
			end
			else
			if procindex = 3 then
				begin
					move into conv.sta12
					travel to conv.sta4
					travel to conv.sta5
					travel to conv.sta8
					use R_normal3 for uniform 6.7, 1.5 min
					set V_normal3 = 0
					travel to conv.sta11
					send to die
				end
				else
				if procindex = 4 then
					begin
						move into conv.sta12
						travel to conv.sta4
						travel to conv.sta5
						travel to conv.sta9
						use R_normal4 for uniform 6.7, 1.5 min
						set V_normal4 = 0
						travel to conv.sta11
						send to die
					end
end

begin P_vipwork arriving procedure
	move into conv.sta15
	travel to conv.sta4
	travel to conv.sta10
	use R_vip for uniform 6.7, 1.5 min
	set V_vip = 0
	travel to conv.sta11
	send to die
end

#@!
