package tester;
import com.app.geometry.point2D;

import java.util.Scanner;
public class testpoint
{ 
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter X and Y co-ordinate : ");
        point2D p1= new point2D (sc.nextInt(),sc.nextInt());
        System.out.println("Enter X and Y co-ordinate : ");
        point2D p2= new point2D (sc.nextInt(),sc.nextInt());
        System.out.println(p1.getDetails());
        System.out.println(p2.getDetails());

        if(p1.isEqual(p2)==true)
            System.out.println("p1 & p2 are located at the same position");
        else 
        {
            System.out.println("Distance between p1 & p2 is : "+p1.calculateDistance(p2));
            System.out.println("Distance between p1 & p2 is : "+p1.distance(p2));
        }
        sc.close();
    }
}