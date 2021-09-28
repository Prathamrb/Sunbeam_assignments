package A5;

import java.util.Arrays;

/******************************************************************************************
 * 1. If the input array is [10, 12, 20, 30, 25, 40, 32, 31, 35, 50, 60],
 * your program should be able to find that the subarray lies between the indexes 3 and 8.
 *****************************************************************************************/
public class Q1 {

	public static void main(String[] args)
	{
		int i[]= {10, 12, 20, 30, 25, 40, 32, 31, 35, 50, 60};
		int subarray[] = Arrays.copyOfRange(i,3,9);
		System.out.println(Arrays.toString(subarray));
	}

}
