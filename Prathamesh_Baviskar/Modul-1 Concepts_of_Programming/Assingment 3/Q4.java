package A3;

import java.lang.reflect.Array;
import java.util.Scanner;

/*******************************************************************************************
 * 4. Create a class 'Student' with three data members which are 
 * name, age and address. The constructor of the class assigns default
 *  values name as "unknown", age as '0' and address as "not available". 
 * It has two members with the same name 'setInfo'. First method has two 
 * parameters for name and age and assigns the same whereas the second 
 * method takes has three parameters which are assigned to name, age 
 * and address respectively. Print the name, age and address of 10 students. 
 *******************************************************************************************/
class Student
{
	private String name;
	private int age;
	private String address;
	
	public Student()
	{
		super();
		this.name = "unknown";
		this.age = 0;
		this.address = "not available";
	}

	public void setInfo(String name, int age)
	{
		this.name = name;
		this.age = age;
	}

	public void setInfo(String name, int age, String address)
	{
		this.name = name;
		this.age = age;
		this.address = address;
	}
	public void getInfo()
	{
		System.out.println("Name - "+name+" Age - "+age+" Address - "+address);
	}
}
public class Q4 
{

	public static void main(String[] args)
	{
		String name, address;
		int age;
		
		Student s[] = new Student[10];
		Scanner sc = new Scanner (System.in);
		
		for(int i=0; i<s.length; i++)
		{
			s[i]=new Student();
			System.out.println("with address (0) or without address(1) : ");
			int a = sc.nextInt();
			sc.nextLine();
			System.out.println("Enter Name : ");
			name = sc.nextLine();
			System.out.println("Enter Age : ");
			age = sc.nextInt();
			if(a==0)
			{
				System.out.println("Enter address : ");
				sc.nextLine();
				address = sc.nextLine();
				s[i].setInfo(name, age, address);
			}
			else if(a==1)
			{
				s[i].setInfo(name, age);
			}
		}
		for(int i=0; i<s.length; i++)
		{
			s[i].getInfo();
		}
	}
}

