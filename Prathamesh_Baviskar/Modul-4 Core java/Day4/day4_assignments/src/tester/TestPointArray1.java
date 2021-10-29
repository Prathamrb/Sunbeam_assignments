/*
2.1 Create a new eclipse project day4_assignments
2.2 Copy earlier Point2D class , along with the package.
2.3 Create a class "TestPointArray1.java" in "tester" package for the following
2.4 Accept , how many no of points to plot from user.
2.5 Create suitable data structure
2.6 Prompt user for x & y co ordinates n store the data suitably 
2.7 Supply Menu to user
Options
1. Dsiplay details of a specific point
User i/p : index
O/p : x & y co-ordinates or error message(eg : Invalid index , pls retry!!!!)

2. Display x, y co-ordinates of all points

3. User i/p : 2 indices for the points , validate the indices
Display distance between specified points (iff they are not located at the same position)

4. Exit
*/
package tester;

import com.app.geometry.point2D;
import java.util.Scanner;

public class TestPointArray1
{ 
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner(System.in);
        
        // 2.4 Accept , how many no of points to plot from user.
        // 2.5 Create suitable data structure

        System.out.println("Enter no. of co-ordinate : ");
        
        // 2.6 Prompt user for x & y co ordinates n store the data suitably 
        // 2.7 Supply Menu to user        
        point2D [] p1 = new point2D [sc.nextInt()];
        for(int i = 0; i<p1.length; i++)
        {
        	System.out.println("Enter X and Y Co-ordinates : ");
        	p1[i] = new point2D(sc.nextInt(),sc.nextInt());
        }
        
        int ch;
		do 
        {
			System.out.println("1. Display details of a specific point.\n"
					+ "2. Display x, y co-ordinates of all points.\n"
					+ "3. Display distance between specified points.");
			System.out.println("");
        	System.out.println("Enter a choice : ");
        	ch = sc.nextInt();
        	switch(ch) 
        	{
        		case 1:
        			System.out.println("Enter index of specific co-ordinate : ");
        	        int index = sc.nextInt();
        	        	if(index<p1.length && index >= 0)
        	        		System.out.println(p1[index].getDetails());
        	        	else
        	        		System.out.println("Invalid index \npls retry!!!!");
        		 	System.out.println("");
        			break;
        		case 2:
        			System.out.println("Display x, y co-ordinates of all points :");
        			for(point2D i : p1)
        	        {
        	        	System.out.println(i.getDetails());
        	        }
        		 	System.out.println("");
        			break;
        		case 3:
        			System.out.println("Enter index of specific co-ordinate to find distance: ");
        	        int a = sc.nextInt();
        	        int b = sc.nextInt();
        	        if((a<p1.length && a >= 0)&&(b<p1.length && b >= 0))
        	        {
        	        	if(p1[a].isEqual(p1[b]))
        	        		System.out.println("Both points are located at same position.");
        	        	else
        	        	{
        	        		System.out.println(p1[a].getDetails()+"\n"+p1[b].getDetails());
        	        		double ans = p1[a].calculateDistance(p1[b]);
        	        		System.out.println("Distance = "+ans);
        	        	}
        	        }
        	        else
        	        	System.out.println("Invalid index \npls retry!!!!");
        	      
        		 	System.out.println("");
        			break;
        		default :
        			System.out.println("Invalid choice \npls retry!!!!");        			
        			break;
        	}
        	
        }while(ch!=4);
        sc.close();
    }
}