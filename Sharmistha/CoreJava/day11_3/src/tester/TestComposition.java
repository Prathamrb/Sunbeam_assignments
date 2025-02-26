package tester;

import java.util.Date;

import com.app.vehicles.Category;
import com.app.vehicles.Color;
import com.app.vehicles.Vehicle;

public class TestComposition {

	public static void main(String[] args) {
		// Color color, double price, Date manufactureDate, Category category
		Vehicle v1 = new Vehicle("abc-12345",Color.BLACK, 34567,new Date(),Category.DIESEL);
		System.out.println(v1);
		//delivery address
	//DeliveryAddress adr=new DeliveryAddress("Pune", "MH", "India","34543654"); // cannot happen as deliveryAddress class does not exist alone
//establish association link
		v1.assignDeliveryAddress("Pune", "MH", "India","34543654");
	System.out.println(v1); //toString call
	//print city of delivery address
	System.out.println(v1.getAddress().getCity()); // gets outer class ref, dot visible state of inner class
	}

}
