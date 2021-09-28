package A3;
/*******************************************************************************************
 * 1. Write a program to print the area of two rectangles having sides (4,5) and (5,8)
 *  respectively by creating a class named 'Rectangle' with a method named 'Area' which 
 *  returns the area and length and breadth passed as parameters to its constructor.
 *******************************************************************************************/
class Rectangle
{
	private int length, breadth;
	
	Rectangle(int l, int b)
	{
		this.length = l;
		this.breadth = b;
	}
	
	public int Area()
	{
		return length*breadth;
	}
	
}
public class Q1 
{

	public static void main(String[] args)
	{
		Rectangle Rect1 = new Rectangle(4,5);
		Rectangle Rect2 = new Rectangle(6,7);
		
		System.out.println("Area of First Rectangle = "+(Rect1.Area()));
		System.out.println("Area of Second Rectangle = "+(Rect2.Area()));
	}

}

