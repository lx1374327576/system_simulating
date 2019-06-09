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

