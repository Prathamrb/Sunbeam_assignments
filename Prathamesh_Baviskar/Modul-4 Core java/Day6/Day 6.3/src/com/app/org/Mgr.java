package com.app.org;

public class Mgr extends Emp 
{
	private double performanceBonus = 0.25;
	private double salary = 0;
	
	public Mgr(String name, String deptId, double basic) 
	{
		super(name, deptId, basic);
	}

	public double getPerformanceBonus() {
		return performanceBonus;
	}

	public double netSalary()
	{
		return salary = super.getBasic() +(super.getBasic() * performanceBonus);
	}
	
	@Override
	public String toString() {
		return "Mgr [toString()=" + super.toString() + " Net Salary = "+netSalary()+"]";
	}
	
}
