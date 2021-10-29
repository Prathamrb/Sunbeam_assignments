package com.app.org;

public class Worker extends Emp 
{
	private static int hoursWorked =500;
	private static double hourlyRate = 50;
	private double salary;
	
	public Worker(String name, String deptId, double basic) 
	{
		super(name, deptId, basic);
	}

	public double netSalary()
	{
		return salary = super.getBasic() + (hoursWorked*hourlyRate);
	}
	
	public double getHourlyRate() {
		return hourlyRate;
	}

	@Override
	public String toString() {
		return "Worker [toString()=" + super.toString() + "]";
	}
}
