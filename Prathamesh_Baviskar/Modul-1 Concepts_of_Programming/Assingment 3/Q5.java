package A3;
/*******************************************************************************************
 * 5. Create a class Vehicle. The class should have two fields-no_of_seats and 
 * no_of_wheels. Create facilitator function to display number of seats and 
 * number of wheels.Create two objects and initialize the fields using constructor.
 *******************************************************************************************/
class Vehicle
{
	private int no_of_seats, no_of_wheels;

	public Vehicle(int no_of_seats, int no_of_wheels)
	{
		super();
		this.no_of_seats = no_of_seats;
		this.no_of_wheels = no_of_wheels;
	}

	public int getNo_of_seats() {
		return no_of_seats;
	}

	public void setNo_of_seats(int no_of_seats) {
		this.no_of_seats = no_of_seats;
	}

	public int getNo_of_wheels() {
		return no_of_wheels;
	}

	public void setNo_of_wheels(int no_of_wheels) {
		this.no_of_wheels = no_of_wheels;
	}
}
public class Q5 
{
	public static void main(String[] args)
	{
		Vehicle v1 = new Vehicle(10,20);
		Vehicle v2 = new Vehicle(100,250);
		
		System.out.println("V1 no. of seats : "+v1.getNo_of_seats()+" V1 no. of wheels : "+v1.getNo_of_wheels());
		System.out.println("V2 no. of seats : "+v2.getNo_of_seats()+" V2 no. of wheels : "+v2.getNo_of_wheels());
	}

}

