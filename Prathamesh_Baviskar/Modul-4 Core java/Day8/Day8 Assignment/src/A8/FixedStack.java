package A8;

public class FixedStack implements Stack {
	// state : Employee[]
	protected Employee[] employees;
	protected int top;


	// add arg-less constr : to init state of the object : emp[]
	public FixedStack() {
		employees = new Employee[StackSize];
		top = -1;
	}

	@Override
	public void push(Employee e) {
		if (top < StackSize - 1) // stack not full
		{
			employees[++top] = e;
		} 
		else
			System.out.println("!!!! STACK FULL (overflow) !!!! ");
	}

	@Override
	public Employee pop() {
		if (top == -1) {
			System.out.println("!!!! STACK EMPTY (underflow) !!!! ");
			return null;
		} 
		//=> non empty stack
		return employees[top];

	}
}
