package Assignment;

import java.util.Scanner;

/************************************************
* Q1. Write a menu driven program for addition, 
* subtraction, multiplication and division of 
* two numbers. Accept input from User. You need
* write separate function for each operation 
* also test all functionality in Testclass.
*************************************************/
public class testclass
{

	public static void main(String[] args)
	{
		int a,b,ch;
		Scanner sc = new Scanner(System.in);
		
		//do-while loop:-
		//Menu driven program
		do 
		{
			System.out.println("Enter two number for calculation : ");
			a = sc.nextInt();
			b = sc.nextInt();
			System.out.println(" 0.exit\n 1.Add\n 2.Subtract\n 3.Multiply\n 4.Divide\n ");
			System.out.println("Enter operation no. : ");
			ch = sc.nextInt();
			
			//Switch case:-
			switch(ch)
			{
			case 1:
				add(a,b);
				break;
			case 2:
				subtract(a,b);
				break;
			case 3:
				multiply(a,b);
				break;
			case 4:
				divide(a,b);
				break;
			}
		}while(ch !=0);

	}

	
	//Addition Function
	public static void add(int i, int j)
	{
		System.out.println("Addition of "+i+" & "+j+" is "+(i+j)+".\n");
	}
	
	//Subtract Function
	public static void subtract(int i, int j)
	{
		System.out.println("Subtration of "+i+" & "+j+" is "+(i-j)+".\n");
	}
	
	//Multiplication Function
	public static void multiply(int i, int j)
	{
		System.out.println("Multiplication of "+i+" & "+j+" is "+(i*j)+".\n");
	}
	
	//Division Function
	public static void divide(int i, int j)
	{
		if(j != 0)
			System.out.println("Division of "+i+" & "+j+" is "+(i/j)+".\n");
		else
			System.out.println("Denominator should not be ZERO(0).\n");
	}
}
