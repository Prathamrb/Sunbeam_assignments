package A5;

import java.util.Scanner;

/******************************************************************************
 * 3. Write a Java Program to check if see if Array contains a specific value.
 *****************************************************************************/
public class Q3 {

	public static void main(String[] args)
	{
		int i[]= {10, 12, 20, 30, 25, 40, 32, 31, 35, 50, 60};
		Scanner sc = new Scanner (System.in);
		System.out.println("Enter specific value : ");
		int toFind = sc.nextInt();
		boolean found = false;
		
		for(int a : i)
		{
			if(a== toFind)
			{
				found = true;
				break;
			}
		}
		if(found)
			System.out.println(toFind+" is found.");
		else
			System.out.println(toFind+" is not found.");
	}

}
