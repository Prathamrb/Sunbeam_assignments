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

	@Override
	public String toString() {
		return super.toString() + " taste = " + taste();
	}
	
}
