package A8;

public class Employee 
{
	private int empId = 0;
	private static int counter = 1;
	private String name;
	private double salary;
	
	public Employee(String name, double salary) {
		super();
		this.name = name;
		this.salary = salary;
		this.empId = counter++;
	}

	@Override
	public String toString() {
		return "Emp [ ID = "+this.empId+"name = " + name + " salary = " + salary + " ]";
	}
	
}
