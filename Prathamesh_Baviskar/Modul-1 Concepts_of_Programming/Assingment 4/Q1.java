package A4;
/********************************************************************************************
 * 1. Create a class called Date that includes three instance variables—a month (type int),
 * a day (type int) and a year (type int). Provide a constructor that initializes the three 
 * instance variables and assumes that the values provided are correct. Provide a set and a
 * get method for each instance variable. Provide a method displayDate that displays the month,
 * day and year separated by forward slashes (/).Write a test application named DateTest that
 * demonstrates class Date’s capabilities.
 *******************************************************************************************/
public class Q1 {

	public static void main(String[] args) 
	{
		DateTest();
	}
	
	public static void DateTest()
	{
		Date d1 = new Date(12,5,2021);
		Date d2 = new Date(22,6,2031);
		d1.displayDate();
		d2.displayDate();
	}
}

class Date
{
	private int d;
	private int m;
	private int y;
	public Date(int d, int m, int y) 
	{
		super();
		this.d = d;
		this.m = m;
		this.y = y;
	}
	public Date() 
	{
		super();
	}
	public int getD() 
	{
		return d;
	}
	public void setD(int d)
	{
		this.d = d;
	}
	public int getM()
	{
		return m;
	}
	public void setM(int m) 
	{
		this.m = m;
	}
	public int getY()
	{
		return y;
	}
	public void setY(int y) 
	{
		this.y = y;
	}
	public void displayDate()
	{
		System.out.println(this.d+"/"+this.m+"/"+this.y);
	}
}