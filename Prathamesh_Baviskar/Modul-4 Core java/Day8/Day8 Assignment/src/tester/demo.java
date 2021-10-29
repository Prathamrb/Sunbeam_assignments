import java.util.Scanner;

import A8.*;

public class demo {

	public static void main(String[] args) {
		try (Scanner sc = new Scanner(System.in)) {
			boolean exit = false;
			Stack ref = null;
			while (!exit) {
				System.out.println(
						"Options 1. Choose FS 2. Choose GS 3.Push Emp Detail " + "4.Pop Emp Details" + "5. Exit");
				System.out.println("Choose");
				switch (sc.nextInt()) {
				case 1:
					if (ref == null)// => user has not yet chosen any stack
						ref = new FixedStack();// up casting
					else
						System.out.println("You have already chosen the stack , can't change it now!!!!!");
					break;
				case 2:
					if (ref == null)// => user has not yet chosen any stack
						ref = new GrowableStack();// up casting
					else
						System.out.println("You have already chosen the stack , can't change it now!!!!!");

					break;
				case 3: // store emp details : iff stack is already chosen
					if (ref != null) {
						System.out.println("Enter emp details : id name sal");
						Employee e = new Employee(sc.next(), sc.nextDouble());
						ref.push(e);// push method gets called based upon type of the object(FS/GS)
					} else
						System.out.println("Not chosen any stack , pls choose one!!!!");

					break;
				case 4:
					if (ref != null) {
						Employee e = ref.pop();
						if (e != null)
							System.out.println(e);

					} else
						System.out.println("Not chosen any stack , pls choose one!!!!");
					break;

				case 5:
					exit = true;
					break;
				}
			}
		}

	}
}