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

/// <remarks>effectivePeriod of any two marriages of the same husband or wife must not overlapped</remarks>
public class Marriage
{
	private string licenseNo
	{
		get;
		set;
	}

	private string issuedBy
	{
		get;
		set;
	}

	private TimeInterval effectivePeriod
	{
		get;
		set;
	}

	public virtual Person Husband
	{
		get;
		set;
	}

	public virtual Person Wife
	{
		get;
		set;
	}

}

