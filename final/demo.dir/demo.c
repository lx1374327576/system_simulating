// demo.c
// AutoMod 14.0.1 Generated File
// Build: 14.0.1.25
// Model name:	demo
// Model path:	D:\simulation_work\final\demo.dir\
// Generated:	Wed Jun 05 22:43:56 2019
// Applied/AutoMod Licensee Confidential
// NO DISTRIBUTION OR REPRODUCTION RIGHTS GRANTED!
// Copyright (c) 1988-2017 Applied Materials All rights reserved.
//
// All Rights Reserved.  Reproduction or transmission in whole or
// in part, in any form or by any means, electronic, mechanical or
// otherwise, is prohibited without the prior written consent of
// copyright owner.
//
// Licensed Material - Property of Applied Materials, Inc.
//
// Applied Materials, Inc.
// 3050 Bowers Drive
// P.O. Box 58039
// Santa Clara, CA 95054-3299
// U.S.A.
//


#include "cdecls.h"


static int32
P_vip_arriving(load* this, int32 step, void* args)
{
	void* am_localargs = NULL;
	int32 retval = Continue;
	switch (step) { /* Make the step switcher */
	case Step 1: goto Label1;
	case Step 2: goto Label2;
	case Step 3: goto Label3;
	case Step 4: goto Label4;
	case Step 5: goto Label5;
	case Step 6: goto Label6;
	case Step 7: goto Label7;
	default: message("Bad step number %ld.", step);
	}
	retval = Error;
	goto LabelRet;
Label1: ;  /* Step1 */
	{
		{
			if (ASIclock > ToModelTime(2, UNITHOURS)) {
				this->nextproc = am2_die; /* send to ... */
				EntityChanged(W_LOAD);
				retval = Continue;
				goto LabelRet;
			}
		}
		{
			pushppa(this, P_vip_arriving, Step 2, am_localargs);
			load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta1, -9999));
			pushppa(this, move_in_loc, Step 1, NULL);
			return Continue; // go move into territory
Label2: ; // Step 2
		}
		{
			pushppa(this, P_vip_arriving, Step 3, am_localargs);
			load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta2, -9999));
			pushppa(this, travel_to_loc, Step 1, NULL);
			return Continue; // go move to location
Label3: ; // Step 3
		}
		{
			if (waitfor(ToModelTime(3, UNITSECONDS), this, P_vip_arriving, Step 4, am_localargs) == Delayed)
				return Delayed;
Label4: ; // Step 4
		}
		{
			pushppa(this, P_vip_arriving, Step 5, am_localargs);
			load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta14, -9999));
			pushppa(this, travel_to_loc, Step 1, NULL);
			return Continue; // go move to location
Label5: ; // Step 5
		}
		{
			pushppa(this, P_vip_arriving, Step 6, am_localargs);
			pushppa(this, inqueue, Step 1, am2_Q_vipwait);
			return Continue; // go move into territory
Label6: ; // Step 6
		}
		{
			return waitorder(am2_OL_vip, this, P_vip_arriving, Step 7, am_localargs);
Label7: ; // Step 7
			if (!this->inLeaveProc && this->nextproc) {
				retval = Continue;
				goto LabelRet;
			}
		}
	}
LabelRet: ;
	if (am_localargs)
		xfree(am_localargs);
	return retval;
} /* end of P_vip_arriving */

static int32
P_notvip_arriving(load* this, int32 step, void* args)
{
	void* am_localargs = NULL;
	int32 retval = Continue;
	switch (step) { /* Make the step switcher */
	case Step 1: goto Label1;
	case Step 2: goto Label2;
	case Step 3: goto Label3;
	case Step 4: goto Label4;
	case Step 5: goto Label5;
	case Step 6: goto Label6;
	case Step 7: goto Label7;
	default: message("Bad step number %ld.", step);
	}
	retval = Error;
	goto LabelRet;
Label1: ;  /* Step1 */
	{
		{
			if (ASIclock > ToModelTime(2, UNITHOURS)) {
				this->nextproc = am2_die; /* send to ... */
				EntityChanged(W_LOAD);
				retval = Continue;
				goto LabelRet;
			}
		}
		{
			pushppa(this, P_notvip_arriving, Step 2, am_localargs);
			load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta1, -9999));
			pushppa(this, move_in_loc, Step 1, NULL);
			return Continue; // go move into territory
Label2: ; // Step 2
		}
		{
			pushppa(this, P_notvip_arriving, Step 3, am_localargs);
			load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta2, -9999));
			pushppa(this, travel_to_loc, Step 1, NULL);
			return Continue; // go move to location
Label3: ; // Step 3
		}
		{
			if (waitfor(ToModelTime(3, UNITSECONDS), this, P_notvip_arriving, Step 4, am_localargs) == Delayed)
				return Delayed;
Label4: ; // Step 4
		}
		{
			pushppa(this, P_notvip_arriving, Step 5, am_localargs);
			load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta13, -9999));
			pushppa(this, travel_to_loc, Step 1, NULL);
			return Continue; // go move to location
Label5: ; // Step 5
		}
		{
			pushppa(this, P_notvip_arriving, Step 6, am_localargs);
			pushppa(this, inqueue, Step 1, am2_Q_notvipwait);
			return Continue; // go move into territory
Label6: ; // Step 6
		}
		{
			return waitorder(am2_OL_notvip, this, P_notvip_arriving, Step 7, am_localargs);
Label7: ; // Step 7
			if (!this->inLeaveProc && this->nextproc) {
				retval = Continue;
				goto LabelRet;
			}
		}
	}
LabelRet: ;
	if (am_localargs)
		xfree(am_localargs);
	return retval;
} /* end of P_notvip_arriving */

static int32
P_dummy_arriving(load* this, int32 step, void* args)
{
	void* am_localargs = NULL;
	int32 retval = Continue;
	{
		{
			if (OrdGetCurConts(am2_OL_vip) >= 1) {
				{
					if (am2_V_vip == 0) {
						{
							am2_V_vip = 1;
							EntityChanged(0x01000000);
						}
						{
							order(1, am2_OL_vip, am2_P_vipwork, NULL);		// Place an order
						}
					}
				}
			}
		}
		{
			if (OrdGetCurConts(am2_OL_notvip) >= 1) {
				{
					if (am2_V_normal1 == 0) {
						{
							am2_V_normal1 = 1;
							EntityChanged(0x01000000);
						}
						{
							order(1, am2_OL_notvip, &(am2_P_notvipwork[1]), NULL);		// Place an order
						}
					}
					else {
						if (am2_V_normal2 == 0) {
							{
								am2_V_normal2 = 1;
								EntityChanged(0x01000000);
							}
							{
								order(1, am2_OL_notvip, &(am2_P_notvipwork[2]), NULL);		// Place an order
							}
						}
						else {
							if (am2_V_normal3 == 0) {
								{
									am2_V_normal3 = 1;
									EntityChanged(0x01000000);
								}
								{
									order(1, am2_OL_notvip, &(am2_P_notvipwork[3]), NULL);		// Place an order
								}
							}
							else {
								if (am2_V_normal4 == 0) {
									{
										am2_V_normal4 = 1;
										EntityChanged(0x01000000);
									}
									{
										order(1, am2_OL_notvip, &(am2_P_notvipwork[4]), NULL);		// Place an order
									}
								}
							}
						}
					}
				}
			}
		}
		{
			this->nextproc = am2_die; /* send to ... */
			EntityChanged(W_LOAD);
			retval = Continue;
			goto LabelRet;
		}
	}
LabelRet: ;
	if (am_localargs)
		xfree(am_localargs);
	return retval;
} /* end of P_dummy_arriving */

static int32
P_notvipwork_arriving(load* this, int32 step, void* args)
{
	void* am_localargs = NULL;
	int32 retval = Continue;
	switch (step) { /* Make the step switcher */
	case Step 1: goto Label1;
	case Step 2: goto Label2;
	case Step 3: goto Label3;
	case Step 4: goto Label4;
	case Step 5: goto Label5;
	case Step 6: goto Label6;
	case Step 7: goto Label7;
	case Step 8: goto Label8;
	case Step 9: goto Label9;
	case Step 10: goto Label10;
	case Step 11: goto Label11;
	case Step 12: goto Label12;
	case Step 13: goto Label13;
	case Step 14: goto Label14;
	case Step 15: goto Label15;
	case Step 16: goto Label16;
	case Step 17: goto Label17;
	case Step 18: goto Label18;
	case Step 19: goto Label19;
	case Step 20: goto Label20;
	case Step 21: goto Label21;
	case Step 22: goto Label22;
	case Step 23: goto Label23;
	case Step 24: goto Label24;
	case Step 25: goto Label25;
	default: message("Bad step number %ld.", step);
	}
	retval = Error;
	goto LabelRet;
Label1: ;  /* Step1 */
	{
		{
			if (CurProcIndex() == 1) {
				{
					pushppa(this, P_notvipwork_arriving, Step 2, am_localargs);
					load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta12, -9999));
					pushppa(this, move_in_loc, Step 1, NULL);
					return Continue; // go move into territory
Label2: ; // Step 2
				}
				{
					pushppa(this, P_notvipwork_arriving, Step 3, am_localargs);
					load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta4, -9999));
					pushppa(this, travel_to_loc, Step 1, NULL);
					return Continue; // go move to location
Label3: ; // Step 3
				}
				{
					pushppa(this, P_notvipwork_arriving, Step 4, am_localargs);
					load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta5, -9999));
					pushppa(this, travel_to_loc, Step 1, NULL);
					return Continue; // go move to location
Label4: ; // Step 4
				}
				{
					pushppa(this, P_notvipwork_arriving, Step 5, am_localargs);
					load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta6, -9999));
					pushppa(this, travel_to_loc, Step 1, NULL);
					return Continue; // go move to location
Label5: ; // Step 5
				}
				{
					return usefor(am2_R_normal1, 1, this, P_notvipwork_arriving, Step 6, am_localargs, ToModelTime(uniform1(am2_stream0, 6.7000000000000002, 1.5000000000000000), UNITMINUTES));
Label6: ; // Step 6
				}
				{
					am2_V_normal1 = 0;
					EntityChanged(0x01000000);
				}
				{
					pushppa(this, P_notvipwork_arriving, Step 7, am_localargs);
					load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta11, -9999));
					pushppa(this, travel_to_loc, Step 1, NULL);
					return Continue; // go move to location
Label7: ; // Step 7
				}
				{
					this->nextproc = am2_die; /* send to ... */
					EntityChanged(W_LOAD);
					retval = Continue;
					goto LabelRet;
				}
			}
			else {
				if (CurProcIndex() == 2) {
					{
						pushppa(this, P_notvipwork_arriving, Step 8, am_localargs);
						load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta12, -9999));
						pushppa(this, move_in_loc, Step 1, NULL);
						return Continue; // go move into territory
Label8: ; // Step 8
					}
					{
						pushppa(this, P_notvipwork_arriving, Step 9, am_localargs);
						load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta4, -9999));
						pushppa(this, travel_to_loc, Step 1, NULL);
						return Continue; // go move to location
Label9: ; // Step 9
					}
					{
						pushppa(this, P_notvipwork_arriving, Step 10, am_localargs);
						load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta5, -9999));
						pushppa(this, travel_to_loc, Step 1, NULL);
						return Continue; // go move to location
Label10: ; // Step 10
					}
					{
						pushppa(this, P_notvipwork_arriving, Step 11, am_localargs);
						load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta7, -9999));
						pushppa(this, travel_to_loc, Step 1, NULL);
						return Continue; // go move to location
Label11: ; // Step 11
					}
					{
						return usefor(am2_R_normal2, 1, this, P_notvipwork_arriving, Step 12, am_localargs, ToModelTime(uniform1(am2_stream0, 6.7000000000000002, 1.5000000000000000), UNITMINUTES));
Label12: ; // Step 12
					}
					{
						am2_V_normal2 = 0;
						EntityChanged(0x01000000);
					}
					{
						pushppa(this, P_notvipwork_arriving, Step 13, am_localargs);
						load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta11, -9999));
						pushppa(this, travel_to_loc, Step 1, NULL);
						return Continue; // go move to location
Label13: ; // Step 13
					}
					{
						this->nextproc = am2_die; /* send to ... */
						EntityChanged(W_LOAD);
						retval = Continue;
						goto LabelRet;
					}
				}
				else {
					if (CurProcIndex() == 3) {
						{
							pushppa(this, P_notvipwork_arriving, Step 14, am_localargs);
							load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta12, -9999));
							pushppa(this, move_in_loc, Step 1, NULL);
							return Continue; // go move into territory
Label14: ; // Step 14
						}
						{
							pushppa(this, P_notvipwork_arriving, Step 15, am_localargs);
							load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta4, -9999));
							pushppa(this, travel_to_loc, Step 1, NULL);
							return Continue; // go move to location
Label15: ; // Step 15
						}
						{
							pushppa(this, P_notvipwork_arriving, Step 16, am_localargs);
							load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta5, -9999));
							pushppa(this, travel_to_loc, Step 1, NULL);
							return Continue; // go move to location
Label16: ; // Step 16
						}
						{
							pushppa(this, P_notvipwork_arriving, Step 17, am_localargs);
							load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta8, -9999));
							pushppa(this, travel_to_loc, Step 1, NULL);
							return Continue; // go move to location
Label17: ; // Step 17
						}
						{
							return usefor(am2_R_normal3, 1, this, P_notvipwork_arriving, Step 18, am_localargs, ToModelTime(uniform1(am2_stream0, 6.7000000000000002, 1.5000000000000000), UNITMINUTES));
Label18: ; // Step 18
						}
						{
							am2_V_normal3 = 0;
							EntityChanged(0x01000000);
						}
						{
							pushppa(this, P_notvipwork_arriving, Step 19, am_localargs);
							load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta11, -9999));
							pushppa(this, travel_to_loc, Step 1, NULL);
							return Continue; // go move to location
Label19: ; // Step 19
						}
						{
							this->nextproc = am2_die; /* send to ... */
							EntityChanged(W_LOAD);
							retval = Continue;
							goto LabelRet;
						}
					}
					else {
						if (CurProcIndex() == 4) {
							{
								pushppa(this, P_notvipwork_arriving, Step 20, am_localargs);
								load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta12, -9999));
								pushppa(this, move_in_loc, Step 1, NULL);
								return Continue; // go move into territory
Label20: ; // Step 20
							}
							{
								pushppa(this, P_notvipwork_arriving, Step 21, am_localargs);
								load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta4, -9999));
								pushppa(this, travel_to_loc, Step 1, NULL);
								return Continue; // go move to location
Label21: ; // Step 21
							}
							{
								pushppa(this, P_notvipwork_arriving, Step 22, am_localargs);
								load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta5, -9999));
								pushppa(this, travel_to_loc, Step 1, NULL);
								return Continue; // go move to location
Label22: ; // Step 22
							}
							{
								pushppa(this, P_notvipwork_arriving, Step 23, am_localargs);
								load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta9, -9999));
								pushppa(this, travel_to_loc, Step 1, NULL);
								return Continue; // go move to location
Label23: ; // Step 23
							}
							{
								return usefor(am2_R_normal4, 1, this, P_notvipwork_arriving, Step 24, am_localargs, ToModelTime(uniform1(am2_stream0, 6.7000000000000002, 1.5000000000000000), UNITMINUTES));
Label24: ; // Step 24
							}
							{
								am2_V_normal4 = 0;
								EntityChanged(0x01000000);
							}
							{
								pushppa(this, P_notvipwork_arriving, Step 25, am_localargs);
								load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta11, -9999));
								pushppa(this, travel_to_loc, Step 1, NULL);
								return Continue; // go move to location
Label25: ; // Step 25
							}
							{
								this->nextproc = am2_die; /* send to ... */
								EntityChanged(W_LOAD);
								retval = Continue;
								goto LabelRet;
							}
						}
					}
				}
			}
		}
	}
LabelRet: ;
	if (am_localargs)
		xfree(am_localargs);
	return retval;
} /* end of P_notvipwork_arriving */

static int32
P_vipwork_arriving(load* this, int32 step, void* args)
{
	void* am_localargs = NULL;
	int32 retval = Continue;
	switch (step) { /* Make the step switcher */
	case Step 1: goto Label1;
	case Step 2: goto Label2;
	case Step 3: goto Label3;
	case Step 4: goto Label4;
	case Step 5: goto Label5;
	case Step 6: goto Label6;
	default: message("Bad step number %ld.", step);
	}
	retval = Error;
	goto LabelRet;
Label1: ;  /* Step1 */
	{
		{
			pushppa(this, P_vipwork_arriving, Step 2, am_localargs);
			load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta15, -9999));
			pushppa(this, move_in_loc, Step 1, NULL);
			return Continue; // go move into territory
Label2: ; // Step 2
		}
		{
			pushppa(this, P_vipwork_arriving, Step 3, am_localargs);
			load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta4, -9999));
			pushppa(this, travel_to_loc, Step 1, NULL);
			return Continue; // go move to location
Label3: ; // Step 3
		}
		{
			pushppa(this, P_vipwork_arriving, Step 4, am_localargs);
			load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta10, -9999));
			pushppa(this, travel_to_loc, Step 1, NULL);
			return Continue; // go move to location
Label4: ; // Step 4
		}
		{
			return usefor(am2_R_vip, 1, this, P_vipwork_arriving, Step 5, am_localargs, ToModelTime(uniform1(am2_stream0, 6.7000000000000002, 1.5000000000000000), UNITMINUTES));
Label5: ; // Step 5
		}
		{
			am2_V_vip = 0;
			EntityChanged(0x01000000);
		}
		{
			pushppa(this, P_vipwork_arriving, Step 6, am_localargs);
			load_SetDestLoc(this, LocGetQualifier(am_model.am_conv.am_sta11, -9999));
			pushppa(this, travel_to_loc, Step 1, NULL);
			return Continue; // go move to location
Label6: ; // Step 6
		}
		{
			this->nextproc = am2_die; /* send to ... */
			EntityChanged(W_LOAD);
			retval = Continue;
			goto LabelRet;
		}
	}
LabelRet: ;
	if (am_localargs)
		xfree(am_localargs);
	return retval;
} /* end of P_vipwork_arriving */



/* init function for demo.m */
void
model_demo_init(struct model_struct* data)
{
	data->am_P_vip->aprc = P_vip_arriving;
	data->am_P_notvip->aprc = P_notvip_arriving;
	data->am_P_dummy->aprc = P_dummy_arriving;
	data->am_P_notvipwork->aprc = P_notvipwork_arriving;
	data->am_P_vipwork->aprc = P_vipwork_arriving;
}

