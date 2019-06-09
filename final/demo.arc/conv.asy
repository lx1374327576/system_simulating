VERSION 14.0.1.25
SYSTYPE Conveyor
UNITS Meters Seconds
SYSDEF timeout 60 Seconds confname Config1
FLAGS
	System Inherit
	Text Inherit
	Sections Inherit
	Section Names Inherit
	Direction Inherit
	Fixed Interval Inherit
	Loads Inherit
	Stations Inherit
	Station Names Inherit
	Transfers Inherit
	Photoeyes Inherit
	Photoeye Names Inherit
	Center Line Invisible Inherit
CONVDEF UserId 6
	NEXTSEC name sec19 type DefaultSection
	NEXTSTA name sta16 type DefaultStation
	NEXTTRAN name tran68 type DefaultTransfer
	NEXTMOTOR name motor1 type DefaultMotor
	NEXTPHOTOEYE name photoeye1 type DefaultPhotoeye
	ALTERNATE NONE EXTRASECTIONWIDTH 0 Feet
CONVTOL minang 450 maxang 1350
CONVMOTORTYPE name DefaultMotor
CONVMOTOR name M_sec1 type DefaultMotor
CONVSECTIONTYPE name DefaultSection width 4 Feet color -1 motor M_sec1 vel 1 Feet Seconds acc 1 Feet Seconds Seconds dec 1 Feet Seconds Seconds accum load stopsize 1 0 Feet movesize 1 0 Feet inductsize 1 0 Feet nofixed align centered_in_interval attach rigid nav 1
CONVSECTION name sec1 type DefaultSection vel 6 Meters Seconds piece begx -5.4864 begy -16.764 endx -5.4864 endy -10.3632 upz 1
CONVSECTION name sec2 type DefaultSection vel 6 Meters Seconds piece begx 15.8496 begy -10.3632 endx 15.8496 endy -16.764 upz 1
CONVSECTION name sec3 type DefaultSection vel 6 Meters Seconds piece begx -26.5176 begy -1.8288 endx -26.5176 endy 5.4864 upz 1
CONVSECTION name sec4 type DefaultSection vel 6 Meters Seconds piece begx -26.5176 begy 5.1816 endx 7.0104 endy 5.1816 upz 1
CONVSECTION name sec5 type DefaultSection vel 6 Meters Seconds piece begx 6.4008 begy 4.8768 endx 13.4112 endy 14.0208 upz 1
CONVSECTION name sec6 type DefaultSection vel 6 Meters Seconds piece begx 6.7056 begy 4.8768 endx 13.716 endy 7.9248 upz 1
CONVSECTION name sec7 type DefaultSection vel 6 Meters Seconds piece begx 6.7056 begy 4.572 endx 13.716 endy 2.4384 upz 1
CONVSECTION name sec8 type DefaultSection vel 6 Meters Seconds piece begx 6.4008 begy 4.572 endx 13.4112 endy -2.7432 upz 1
CONVSECTION name sec9 type DefaultSection vel 6 Meters Seconds piece begx 2.7432 begy 5.1816 endx 2.7432 endy 12.4968 upz 1
CONVSECTION name sec10 type DefaultSection vel 6 Meters Seconds piece begx 2.4384 begy 11.8872 endx -1.8288 endy 11.8872 upz 1
CONVSECTION name sec11 type DefaultSection vel 6 Meters Seconds piece begx -1.524 begy 11.5824 endx -1.524 endy -9.4488 upz 1
CONVSECTION name sec12 type DefaultSection vel 6 Meters Seconds piece begx -1.2192 begy -9.144 endx 16.1544 endy -10.668 upz 1
CONVSECTION name sec13 type DefaultSection vel 6 Meters Seconds piece begx 22.5552 begy 14.9352 endx 22.2504 endy -10.3632 upz 1
CONVSECTION name sec14 type DefaultSection vel 6 Meters Seconds piece begx 22.5552 begy -9.4488 endx 15.5448 endy -10.9728 upz 1
CONVSECTION name sec15 type DefaultSection vel 6 Meters Seconds piece begx 13.1064 begy 14.0208 endx 22.5552 endy 14.0208 upz 1
CONVSECTION name sec16 type DefaultSection vel 6 Meters Seconds piece begx 13.4112 begy 7.3152 endx 22.2504 endy 7.3152 upz 1
CONVSECTION name sec17 type DefaultSection vel 6 Meters Seconds piece begx 13.4112 begy 2.7432 endx 22.2504 endy 2.7432 upz 1
CONVSECTION name sec18 type DefaultSection vel 6 Meters Seconds piece begx 13.4112 begy -2.7432 endx 22.2504 endy -2.7432 upz 1
CONVSECTION name sec19 type DefaultSection vel 6 Meters Seconds piece begx -6 begy -11 endx -27 endy -12 upz 1
CONVSECTION name sec20 type DefaultSection vel 6 Meters Seconds piece begx -27 begy -12 endx -27 endy -3 upz 1
CONVSECTION name sec21 type DefaultSection vel 6 Meters Seconds piece begx -6 begy -11 endx -6 endy -1 upz 1
CONVSECTION name sec22 type DefaultSection vel 6 Meters Seconds piece begx -6 begy 0.0 endx -6 endy 5 upz 1
CONVSTATIONTYPE name DefaultStation raise 0 Seconds lower 0 Seconds dist 0 Feet release norestriction align leading cap Infinite scale 1 color -1 nrot 0 nscale 1
CONVSTATION name sta1 type DefaultStation at sec1 0.3048
CONVSTATION name sta2 type DefaultStation at sec1 5.7912
CONVSTATION name sta3 type DefaultStation at sec2 0.6096
CONVSTATION name sta4 type DefaultStation at sec4 28.0416
CONVSTATION name sta5 type DefaultStation at sec4 31.3944
CONVSTATION name sta6 type DefaultStation at sec15 7.9248
CONVSTATION name sta7 type DefaultStation at sec16 7.62
CONVSTATION name sta8 type DefaultStation at sec17 7.62
CONVSTATION name sta9 type DefaultStation at sec18 7.62
CONVSTATION name sta10 type DefaultStation at sec9 5.7912
CONVSTATION name sta11 type DefaultStation at sec2 5.7912
CONVSTATION name sta12 type DefaultStation at sec3 0.8288
CONVSTATION name sta13 type DefaultStation at sec20 8
CONVSTATION name sta14 type DefaultStation at sec21 9
CONVSTATION name sta15 type DefaultStation at sec22 1
CONVPHOTOEYETYPE name DefaultPhotoeye blocktimeout 5 Seconds cleartimeout 5 Seconds
CONVTRANSFERTYPE name DefaultTransfer inductsize 1 0 Feet aheadinductsize 1 0 Feet speedadjust Origin starttime 0 Seconds finishtime 0 Seconds style double movemethod movesection
CONVTRANSFER name tran30 type DefaultTransfer from sec3 7.0104 to sec4 0.6096
CONVTRANSFER name tran31 type DefaultTransfer from sec3 6.40080030643431 to sec4 0
CONVTRANSFER name tran32 type DefaultTransfer from sec4 33.528 to sec5 1.09014234981857
CONVTRANSFER name tran33 type DefaultTransfer from sec4 32.4405960797366 to sec5 0
CONVTRANSFER name tran34 type DefaultTransfer from sec4 33.2232 to sec6 0
CONVTRANSFER name tran35 type DefaultTransfer from sec4 33.528 to sec6 0.40105467190511
CONVTRANSFER name tran36 type DefaultTransfer from sec5 0.185449934506695 to sec6 0
CONVTRANSFER name tran37 type DefaultTransfer from sec4 33.2232 to sec7 0
CONVTRANSFER name tran38 type DefaultTransfer from sec4 32.9184 to sec8 0
CONVTRANSFER name tran39 type DefaultTransfer from sec8 0.210892754714215 to sec7 0
CONVTRANSFER name tran40 type DefaultTransfer from sec4 29.2607999733535 to sec9 0.6096
CONVTRANSFER name tran41 type DefaultTransfer from sec9 6.70559997335354 to sec10 0.3048
CONVTRANSFER name tran42 type DefaultTransfer from sec10 3.96240001332323 to sec11 0.3048
CONVTRANSFER name tran43 type DefaultTransfer from sec12 16.5270799754549 to sec2 0.224998013391139
CONVTRANSFER name tran44 type DefaultTransfer from sec12 17.1876309180659 to sec2 0.887871777052893
CONVTRANSFER name tran45 type DefaultTransfer from sec11 20.753034563101 to sec12 0.3048
CONVTRANSFER name tran46 type DefaultTransfer from sec14 6.26669658632834 to sec2 0.41683220062408
CONVTRANSFER name tran47 type DefaultTransfer from sec14 6.99102833433092 to sec2 1.14969261138344
CONVTRANSFER name tran48 type DefaultTransfer from sec14 7.17413995960491 to sec12 16.8596804701057
CONVTRANSFER name tran49 type DefaultTransfer from sec12 17.4403140155216 to sec14 6.51370469256547
CONVTRANSFER name tran50 type DefaultTransfer from sec13 24.5865543195785 to sec14 0.91140108215103
CONVTRANSFER name tran51 type DefaultTransfer from sec5 11.3366351268006 to sec15 0
CONVTRANSFER name tran52 type DefaultTransfer from sec5 11.5220850613073 to sec15 0.3048
CONVTRANSFER name tran53 type DefaultTransfer from sec15 8.85021606795847 to sec13 0.921544971780179
CONVTRANSFER name tran54 type DefaultTransfer from sec6 7.12175871928469 to sec16 0
CONVTRANSFER name tran55 type DefaultTransfer from sec6 7.64434510994892 to sec16 0.3048
CONVTRANSFER name tran56 type DefaultTransfer from sec16 8.44257731386373 to sec13 7.6278972670508
CONVTRANSFER name tran57 type DefaultTransfer from sec7 6.94754873554715 to sec17 0
CONVTRANSFER name tran58 type DefaultTransfer from sec7 7.32788899479243 to sec17 0.3048
CONVTRANSFER name tran59 type DefaultTransfer from sec17 8.38749697407139 to sec13 12.2002290402072
CONVTRANSFER name tran60 type DefaultTransfer from sec8 10.1320214764873 to sec18 0
CONVTRANSFER name tran61 type DefaultTransfer from sec18 8.32140056632057 to sec13 17.6870271679949
CONVTRANSFER name tran62 type DefaultTransfer from sec1 5.7594337309246 to sec19 0.096
CONVTRANSFER name tran63 type DefaultTransfer from sec19 20.9948003531613 to sec20 0.6096
CONVTRANSFER name tran64 type DefaultTransfer from sec19 20.4141960416286 to sec20 0.0289925824581366
CONVTRANSFER name tran65 type DefaultTransfer from sec1 5.764 to sec21 0
CONVTRANSFER name tran66 type DefaultTransfer from sec1 6.4008 to sec21 0.6368
CONVTRANSFER name tran67 type DefaultTransfer from sec22 4.572 to sec4 20.5175998001515
