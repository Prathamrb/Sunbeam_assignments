package Que7;

import java.util.Scanner;

public class que7 {

	public static void main(String[] args) {
		int cost=0;
		// TODO Auto-generated method stub
Scanner obj = new Scanner(System.in);
System.out.println("Enter the Quantity");
int qua = obj.nextInt();
if(qua>1000)
{ cost= qua*100;
	double dis =(10.0/100.0)*cost;
	cost =(int)(cost-dis);
	 System.out.println("Cost of given quantity with Discount is : "+cost);

}
else
{
	 cost= qua*100;
	 System.out.println("Cost of given quantity is : "+cost);
}
	
	}

}
