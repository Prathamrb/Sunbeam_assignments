package com.app.fruits;

public class Mango extends Fruit
{
	public Mango(String name, String color, double weight) 
	{
		super(name, color, weight);
	}
	
	public String taste()
	{
		return  "sweet";
	}
	
	public void pulp() {
		System.out.println(super.getName() +" "+super.getColor()+" of the fruit : creating  pulp!");
	}
	
	@Override
	public String toString() {
		return super.toString() + " taste = " + taste();
	}
}
