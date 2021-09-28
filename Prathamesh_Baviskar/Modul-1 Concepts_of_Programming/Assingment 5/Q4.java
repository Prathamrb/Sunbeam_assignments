package A5;

import java.util.Arrays;

/***************************************************************
 * 4. Create a Java code to copy an Array into another array.
 **************************************************************/
public class Q4 {

	public static void main(String[] args)
	{
		int i[]= {10, 12, 20, 30, 25, 40, 32, 31, 35, 50, 60};
		int j[]= new int[i.length];
		for(int a =0; a<i.length;a++)
		{
			j[a] = i[a];
		}
		System.out.println("Element of original array : ");
		System.out.println(Arrays.toString(i));
		System.out.println("Element of copy array : ");
		System.out.println(Arrays.toString(j));
	}

}
