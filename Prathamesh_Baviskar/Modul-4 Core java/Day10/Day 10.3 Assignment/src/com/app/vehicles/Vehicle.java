package com.app.vehicles;

import java.text.SimpleDateFormat;
import java.util.Date;

/*
 * Vehicle's  state(attributes) --chasisNo : String , color : String ,
 * category:string, price : double , manufactureDate(Date)
 */
public class Vehicle {
	private String chasisNo;
	private Colors color;
	private double price;
	private Date manufactureDate;
	private Category category;

	// SDF : for parsing + formatting
	public static SimpleDateFormat sdf;
	static {
		sdf = new SimpleDateFormat("yyyy-MM-dd");
	}

	public Vehicle(String chasisNo, Colors color, double price, Date manufactureDate, Category category) {
		super();
		this.chasisNo = chasisNo;
		this.color = color;
		this.price = price;
		this.manufactureDate = manufactureDate;
		this.category = category;
	}
	
	public String getChasisNo() {
		return chasisNo;
	}

	public Colors getColor() {
		return color;
	}

	//add overloaded constr to init chasis no of a vehicle
	public Vehicle(String chasisNo, Colors color) {
		this.chasisNo=chasisNo;
		this.color=color;
	}

	@Override
	public String toString() {
		return "Vehicle [chasisNo=" + chasisNo + ", color=" + color + ", price=" + price + " manufactured on "
				+ sdf.format(manufactureDate) + " category " + category;
	}

	@Override
	public boolean equals(Object o) {
		System.out.println("in vehicle's equals method");
		if (o instanceof Vehicle) {
			Vehicle v = (Vehicle)o;
			return this.chasisNo.equals(v.chasisNo) && Colors.valueOf(this.color.toString().toUpperCase()).equals(Colors.valueOf(v.color.toString().toUpperCase()));// String's equals method for : checking content
			// equality
		}
			
		return false;// => incompatible types !!!!!
	}

}

            