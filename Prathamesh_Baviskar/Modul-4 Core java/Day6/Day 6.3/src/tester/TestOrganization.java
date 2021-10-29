package tester;

import java.util.Scanner;
import com.app.org.*;

public class TestOrganization 
{
	public static void main(String[] args) 
	{
		boolean exit = false;
		Scanner sc = new Scanner (System.in);
		Emp [] e = new Emp [(sc.nextInt())]
		while(!exit)
		{
			int ch = sc.nextInt()
			switch(ch)
			{
			//	1. Hire Manager
			case 1 :
				Emp e = new Mgr(sc.next(), sc.next(), sc.nextDouble())
				break;
			//	2. Hire Worker  
			case 2 :
				Emp e = new Worker(sc.next(), sc.next(), sc.nextDouble());
				break;
			//	3. Display information of all employees , including net
			//	salary using single for-each loop.
			//	Display from the same for-each loop, performance bonus if
			//	it's a manager or if it's a worker , display hourly rate
			//	of the worker .
			case 3 :
				for(Employee e1 : e)
				{
					
				}
				break;
			//	4. Update basic salary
			//	i/p : emp id &  increment in basic component of salary
			//	o/p : In case of invalid emp id , give suitable error message.
			//	Otherwise , increment the salary.
			case 4 :
				
				break;
			//	5.  Exit
			case 5 :
				exit = true;
				break;
			}
		}
		sc.close();
	}

}
