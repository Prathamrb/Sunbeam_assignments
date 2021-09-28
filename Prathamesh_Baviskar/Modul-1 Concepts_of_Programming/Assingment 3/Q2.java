package A3;

import java.util.Scanner;

/*******************************************************************************************
 * 2. Write a program that would print the information (name, year of joining, salary, address) 
 * of three employees by creating a class named 'Employee'. The output should be as follows:
 * Name Year of joining Address
 * EMP1 2000 Pune
 * EMP2 2002 Pune
 * EMP3 2008 Mumbai
 *******************************************************************************************/
class Employee
{
	private String name, address;
	private int salary, doj;
	Scanner sc= new Scanner(System.in);
	
	void getData(){
		System.out.println(" Name	Year	Salary	Address");
		System.out.printf("%-10s %-10d %-10d %-10s",this.name,this.doj,this.salary,this.address);
	}
	void setData(){
		System.out.println("Enter your name : ");
		this.name=sc.nextLine();
		System.out.println("Enter your year of joining: ");
		this.doj=sc.nextInt();
		System.out.println("Enter your salary : ");
		this.salary=sc.nextInt();
		System.out.println("Enter your address : ");
		this.address = sc.next();
		
	}
}

public class Q2 
{

	public static void main(String[] args)
	{
		Employee E1 = new Employee ();
		Employee E2 = new Employee ();
		Employee E3 = new Employee ();
		
		E1.setData();
	//	E2.setData();
	//	E3.setData();
		
		E1.getData();
	//	E2.getData();
	//	E3.getData();
	
	}

}

