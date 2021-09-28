package A5;

import java.util.Arrays;

/*************************************************************
 * 5. Write a Java program to check if two arrays are equal.
 ************************************************************/
public class Q5 {

	public static void main(String[] args)
	{
		int i[]= {10, 12, 20, 30, 25, 40, 32, 31, 35, 50, 60};
		int j[]= {10, 12, 20, 30, 25, 40, 32, 31, 35, 50, 60};
		boolean result = Arrays.equals(i, j);
		if(result == true)
			System.out.println("Both arrays are equal.");
		else
			System.out.println("Both arrays are not equal.");
			
	}

}
