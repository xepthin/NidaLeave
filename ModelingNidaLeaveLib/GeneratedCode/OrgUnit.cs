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

public class OrgUnit
{
	private TimeInterval effectivePeriod
	{
		get;
		set;
	}

	public virtual IEnumerable<OrgUnitRelation> SubordinateUnits
	{
		get;
		set;
	}

	public virtual OrgUnitRelation SupervisorUnit
	{
		get;
		set;
	}

	public virtual IEnumerable<OrgUnitPosition> OrgUnitPosition
	{
		get;
		set;
	}

}

