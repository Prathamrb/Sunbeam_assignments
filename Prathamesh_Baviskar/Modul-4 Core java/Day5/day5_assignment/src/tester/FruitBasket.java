/*
 * 3. Solve  assignment to apply inheritance n polymorphism

3.1 Can you arrange Fruit,Apple,Orange,Mango in inheritance hierarchy ?
Use tight encapsulation.

3.2 Properties name(instance variables)  : color : String , weight : double , name:String, isFresh : boolean

3.3 Add suitable constructors.

3.4 Override  toString correctly to return state of all fruits (including : name ,color , weight )

3.5 Add a taste() method : public String taste()

For Fruit : it should return "no specific taste"
Apple : should return  "sweet n sour"
Mango : should return  "sweet"
Orange : should return  "sour"

3.6 Add all of above classes under the package "com.app.fruits"
3.7 Create java application FruitBasket , with main method , as a tester
3.8 Prompt user for the basket size n create suitable data structure
3.9 Supply options
1. Add Mango
2. Add Orange
3. Add Apple
NOTE : You will be adding a fresh fruit in the basket , in all of above options.
4. Display names of all fruits in the basket. 
5. Display name,color,weight , taste of all fresh fruits , in the basket.
6. Display tastes of all stale(not fresh) fruits in the basket.
7. Mark a fruit as stale
i/p : index 
o/p : error message (in case of invalid index) or mark it stale
8. Mark all sour fruits stale (optional)
10. Exit 
 */
package tester;

import java.util.Scanner;

import com.app.fruits.*;

public class FruitBasket {

	public static void main(String[] args) 
	{
		Scanner sc = new Scanner (System.in);
		System.out.println("Enter basket size : ");
		boolean exit = false;
		int counter = 0;
		int index = 0;
		Fruit [] bascket = new Fruit [sc.nextInt()];
		
		while(!exit)
		{
			System.out.println("\noptions\n"
					+ "1. Add Mango\n"
					+ "2. Add Orange\n"
					+ "3. Add Apple\n"
					+ "4. Display names of all fruits in the basket.\n" 
					+ "5. Display name,color,weight , taste of all fresh fruits in the basket.\n"
					+ "6. Display tastes of all stale(not fresh) fruits in the basket.\n"
					+ "7. Mark a fruit as stale.\n"
					+ "8. Mark all sour fruits stale.\n"
					+ "10. Exit.");
			int ch = sc.nextInt();
			
			switch(ch)
			{	
				case 1:   	//1. Add Mango
					System.out.println("Enter Name, Color and weight of fruit : ");
					if(counter < bascket.length)
						bascket[counter++] = new Mango(sc.next(),sc.next(),sc.nextDouble());
					else
						System.out.println("Basket Full!!!!!");
					break;
					
				case 2:		//2. Add Orange
					System.out.println("Enter Name, Color and weight of fruit : ");
					if(counter < bascket.length)
						bascket[counter++] = new Orange(sc.next(),sc.next(),sc.nextDouble());
					else
						System.out.println("Basket Full!!!!!");
					break;
					
				case 3:		//3. Add Apple
					System.out.println("Enter Name, Color and weight of fruit : ");
					if(counter < bascket.length)
						bascket[counter++] = new Apple(sc.next(),sc.next(),sc.nextDouble());
					else
						System.out.println("Basket Full!!!!!");
					break;
					
				case 4:		//4. Display names of all fruits in the basket.
					System.out.println("\nName of fruit added in basket : ");
					int i =1;
					for(Fruit f : bascket)
					{
						if(f != null)
						{
							System.out.println(i+". "+f.getName());
						}
						++i;
					}
					break;
					
				case 5:		//5. Display name,color,weight , taste of all fresh fruits , in the basket.
					int j =1;
					for(Fruit f : bascket)
					{
						if(f != null)
						{
							if(f.isFresh() == true)
							{
								System.out.println(j+". "+f.toString());
							}
						}
						++j;
					}	
					break;
					
				case 6:		//6. Display tastes of all stale(not fresh) fruits in the basket.
					int k =1;
					for(Fruit f : bascket)
					{
						if(f != null)
						{
							if(f.isFresh() == false)
							{
								System.out.println(k +". " +f.taste());
							}
						}
						++k;
					}	
					break;
					
				case 7:		//7. Mark a fruit as stale
					System.out.println("Enter index no : ");
					index = sc.nextInt() - 1;
					if(0 <= index & index < c)
						bascket[index].setFresh(false);
					else
						System.out.println("Invalid Index...Try again.");
					break;
					
				case 8:		//8. Mark all sour fruits stale
					for(Fruit f : bascket)
						if(f != null)
							if(f.taste().equals("sour"))
							{
								f.setFresh(false);
							}
					break;
				case 9:
					
					break;
				case 10:
					exit = true;
					System.out.println("Good Bye....Visit again.");
					break;
	
			}

		}

	}

}
