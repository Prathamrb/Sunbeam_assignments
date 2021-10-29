package com.app.fruits;

public class Fruit 
{
	private String name;
	private String color;
	private double weight;
	private boolean isFresh = true;
	
	public Fruit(String name, String color, double weight) 
	{
		this.name = name;
		this.color = color;
		this.weight = weight;
	}

	public String taste()
	{
		return "no specific taste";
	}
	
	public String getName() 
	{
		return name;
	}

	public boolean isFresh() {
		return isFresh;
	}

	public void setFresh(boolean isFresh) 
	{
		this.isFresh = isFresh;
	}

	@Override
	public String toString() 
	{
		return "fruit name = " + name + " color = " + color + " weight = " + weight;
	}
	
	
}
