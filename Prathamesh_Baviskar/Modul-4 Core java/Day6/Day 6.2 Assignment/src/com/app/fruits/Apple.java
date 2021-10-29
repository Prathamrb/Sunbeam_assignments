package com.app.fruits;

public class Apple extends Fruit
{
	public Apple(String name, String color, double weight) 
	{
		super(name, color, weight);
	}

	public String taste()
	{
		return  "sweet n sour";
	}

	public void jam() {
		System.out.println(super.getName()+" of the fruit : making jam!");
	}
	
	@Override
	public String toString() {
		return super.toString() + " taste = " + taste();
	}
	
}
