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

public class Position
{
	private string salaryAccountNo
	{
		get;
		set;
	}

	private int positionNo
	{
		get;
		set;
	}

	private TimeInterval effectivePeriod
	{
		get;
		set;
	}

	private string category
	{
		get;
		set;
	}

	public virtual IEnumerable<Appointment> Appointment
	{
		get;
		set;
	}

}
