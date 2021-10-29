package com.app.org;

public abstract class Emp 
{
	private static int id = 0;
	private String name;
	private String deptId;
	private double basic;
	
	static 
	{
		++id;
	}

	public Emp(String name, String deptId, double basic) 
	{
		this.name = name;
		this.deptId = deptId;
		this.basic = basic;
	}
	
	public abstract double netSalary();

	public void setId() 
	{
		this.id++;
	}
	
	public double getBasic() {
		return basic;
	}

	@Override
	public String toString() {
		return "Emp [id=" + id + ", name=" + name + ", deptId=" + deptId + ", basic=" + basic + "]";
	}
	
	
}
