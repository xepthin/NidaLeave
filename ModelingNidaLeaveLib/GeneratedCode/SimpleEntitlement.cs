﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool
//     Changes to this file will be lost if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class SimpleEntitlement : LeaveEntitlement
{
	private object leaveDays
	{
		get;
		set;
	}

    public override int DetermineCarriedOverLeaveDays(DateTime onDate, Personnel personnel)
    {
        throw new NotImplementedException();
    }

    public override int DetermineLeaveEntitlement(DateTime onDate, Personnel personnel)
    {
        throw new NotImplementedException();
    }
}
