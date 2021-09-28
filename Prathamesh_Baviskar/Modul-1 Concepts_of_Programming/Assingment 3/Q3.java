package A3;

import java.util.Scanner;

/******************************************************************
 * 3. Write a program to print the name, salary and date of joining 
 * of 10 employees in a company. Use array of objects. 
 ******************************************************************/
class Employee
{
	String name;
	int salary;
	String date;
	Scanner sc = new Scanner (System.in);
	void setData()
	{
		System.out.println("Enter name :");
		this.name = sc.next();
		System.out.println("Enter salary :");
		this.salary = sc.nextInt();
		System.out.println("Enter Date of joining :");
		this.date = sc.next();
					
	}
	void getData()
	{
		System.out.println("Name - "+name+" salary - "+salary+" Date of joining - "+date);
	}
}
public class Q3 
{
	
	public static void main(String[] args)
	{
		Employee e[]= new Employee [10];
		
		for(int i=0; i<e.length; i++)
		{
			e[i]= new Employee();
			e[i].setData();
		}
		for(int i=0; i<e.length; i++)
		{
			e[i].getData();
		}
	}

}

