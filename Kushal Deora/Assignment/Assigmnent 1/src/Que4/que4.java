package Que4;

import java.util.Scanner;

public class que4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
Scanner sc = new Scanner(System.in);
System.out.println("Enter the 5 digit number");
int num= sc.nextInt();
int a = num/10000;
int b= num%100;
int c= b/10;
System.out.println("Sum: "+(a+c));
	}
}
