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

public class Personnel
{
	private TimeInterval effectivePeriod
	{
		get;
		set;
	}

	private int employeeNo
	{
		get;
		set;
	}

	public virtual IEnumerable<Appointment> Appointment
	{
		get;
		set;
	}

	public virtual PersonnelCategory PersonnelCategory
	{
		get;
		set;
	}

	public virtual Person Person
	{
		get;
		set;
	}

}

