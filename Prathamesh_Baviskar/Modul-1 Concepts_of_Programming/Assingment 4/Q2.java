package A4;
/********************************************************************************************
 * 2. Create a class Employee having name and id as fields. 
 * Declare static variable with data type string as name of 
 * company assign name as “Sunbeam” for all objects. Declare
 * a two-parameter constructor with parameters named n and i.
 * Declare an instance method display and print the output on 
 * the console. Create the first object of the class and pass
 * the two arguments with type string and int. all the display
 * method using reference variable e. Similarly create one more 
 * object with different name and id and call display method.
 *******************************************************************************************/
public class Q2 {

	public static void main(String[] args) 
	{
		Employee e1 = new Employee ("Pratham", "SIPL1080");
		e1.display();
		Employee e2 = new Employee ("Prathamesh", "SIPL2080");
		e2.display();
	}
		
}
class Employee
{
	private String name,id;
	static String name_of_company;
	static
	{
		name_of_company="Sunbeam";
	}
	public Employee(String n, String i)
	{
		super();
		this.name = n;
		this.id = i;
	}
	void display()
	{
		System.out.println("Name : "+this.name+" ID : "+this.id+" Name of Company : "+name_of_company);
	}
}


