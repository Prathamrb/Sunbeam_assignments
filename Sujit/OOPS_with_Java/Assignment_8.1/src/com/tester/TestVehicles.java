package com.tester;
import java.util.Scanner;

import com.app.vehicles.Vehicles;


public class TestVehicles {

	public static void main(String[] args) {
		try(Scanner sc=new Scanner(System.in))
		{
			System.out.println("Enter 1st vehicle details : chasis no clr price");
			//indirect ref.
			Object v1=new Vehicles(sc.nextInt(), sc.next(),sc.nextDouble());//up casting
			System.out.println("Enter 2nd vehicle details :  chasis no clr price");
			Object v2=new Vehicles(sc.nextInt(), sc.next(),sc.nextDouble());
			Vehicles v3 = (Vehicles) v1;
			System.out.println(v1.equals(v2)?"SAME":"DIFFERENT");
			String s="hello";
			System.out.println(v1.equals(s)?"SAME":"DIFFERENT");
			System.out.println(v1.equals(null)?"SAME":"DIFFERENT");
			System.out.println(v1.equals(v3)?"SAME":"DIFFERENT");//SAME
			System.out.println(v1.hashCode()+" "+v3.hashCode());
			
		}

	}

}
