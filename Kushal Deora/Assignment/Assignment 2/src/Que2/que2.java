package Que2;

import java.util.Scanner;

public class que2 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
Scanner sc =new Scanner(System.in);
System.out.println("Enter the lower bound");
int lb= sc.nextInt();
System.out.println("Enter the upper bound");
int ub= sc.nextInt();
int sum_odd=0;
int sum_even=0;
while(lb<=ub)
{
	if(lb%2==0)
		sum_even=sum_even+lb;
	else
		sum_odd=sum_odd+lb;
	lb++;
	
	
}

System.out.println("Sum Even: "+sum_even);
System.out.println("Sum Odd: "+sum_odd);
	}
}
