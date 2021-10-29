package tester;

import java.util.Scanner;
import A8.*;

public class Tester {

	public static void main(String[] args) {
		try (Scanner sc = new Scanner(System.in)) {
			boolean exit = false;
			Stack ref = null;
			while (!exit) {
				System.out.println("1. Choose Fixed Stack\n" + "2. Choose Growable Stack\n" + "3. Push data\n"
						+ "4. Pop data\n" + "5. Exit");
				System.out.println("Enter your choice : ");
				switch (sc.nextInt()) {
				case 1: // 1 -- Choose Fixed Stack
					if (ref == null)
						ref = new FixedStack();
					else
						System.out.println("You have already chosen the stack , can't change it now!!!!!");
					break;

				case 2: // 2 -- Choose Growable Stack
					if (ref == null)
						ref = new GrowableStack();
					else
						System.out.println("You have already chosen the stack , can't change it now!!!!!");
					break;

				case 3: // 3 -- Push data
					if(ref !=null)
					{
						System.out.println("Enter name and salary of Employee : ");
						Employee e = new Employee(sc.next(), sc.nextDouble());
						ref.push(e);
					}
					else
						System.out.println("Not chosen any stack , pls choose one!!!!");
					break;

				case 4: // 4 --- Pop data & display the same (from the earlier chosen stack or give
						// error mesg : NO stack chosen !!!)
					// No inputs are required : pop emp details from the top of the stack
					if (ref != null) {
						Employee e = ref.pop();
						if (e != null)
							System.out.println(e);
					} else
						System.out.println("Not chosen any stack , pls choose one!!!!");
					break;

				case 5: // 5 -- Exit
					exit = true;
					break;
				}
			}
		}
	}
}
