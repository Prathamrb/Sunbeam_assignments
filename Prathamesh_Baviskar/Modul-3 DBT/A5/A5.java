package Assignment;

class Emp 
{
	int empno;
	String ename;
	int deptno;
	int mgr;
	public Emp() 
	{
	}
	public Emp(int empno, String ename, int deptno, int mgr) 
	{
		this.empno = empno;
		this.ename = ename;
		this.deptno = deptno;
		this.mgr = mgr;
	}
	@Override
	public String toString() 
	{
		return "Emp [empno=" + empno + ", ename=" + ename + ", deptno=" + deptno + ", mgr=" + mgr + "]";
	}
}

class Dept 
{
	int deptno;
	String dname;
	public Dept() 
	{
	}
	public Dept(int deptno, String dname) 
	{
		this.deptno = deptno;
		this.dname = dname;
	}
	@Override
	public String toString() 
	{
		return "Dept [deptno=" + deptno + ", dname=" + dname + "]";
	}
}

public class A5 
{

	public static void main(String[] args) 
	{
		Dept[] dept = new Dept[] 
			{
				 new Dept(10, "DEV"),                             
				 new Dept(20, "QA"),                              
				 new Dept(30, "OPS"),                             
				 new Dept(40, "ACC")
			};

		Emp[] emp = new Emp[] 
			{
				 new Emp(1, "Amit", 10, 4),   
				 new Emp(2, "Rahul", 10, 3),  
				 new Emp(3, "Nilesh", 20, 4), 
				 new Emp(4, "Nitin", 50, 5),  
				 new Emp(5, "Sarang", 50, 0)
			};
		System.out.println("Display ename and all possible depts in which emp can be.");
		System.out.println("");
		for (Emp e : emp)
		{
			for (Dept d : dept)
			{
				System.out.println("name -"+e.ename+" department -"+d.dname);
			}
		}
		System.out.println("");
		System.out.println("Display ename and his dname (do not display non-matching).");
		for (Emp e : emp)
		{
			for (Dept d : dept)
			{
				if(e.deptno == d.deptno)
				{
					System.out.println("name -"+e.ename+" department -"+d.dname);
				}
				
			}
		}
	}

}
