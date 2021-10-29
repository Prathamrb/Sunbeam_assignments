package com.app.fruits;

public class Orange extends Fruit
{
	public Orange(String name, String color, double weight) 
	{
		super(name, color, weight);
	}

	public String taste()
	{
		return  "sour";
	}
	
	@Override
	public String toString() {
		return super.toString() + " taste = " + taste();
	}
}
