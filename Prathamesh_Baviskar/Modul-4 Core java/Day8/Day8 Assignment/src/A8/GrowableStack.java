package A8;

public class GrowableStack extends FixedStack {
	@Override
	public void push(Employee e) {
		if (top < employees.length - 1) // stack not full
		{
			employees[++top] = e;
		} 
		else 
		{
			//create a new array with double the original capacity
			Employee [] tmp = new Employee[employees.length *2];
			//copy all references from the old array (employees) ---> new tmp array : double capacity
			for(int i=0; i<employees.length;i++)
				tmp[i]=employees[i];
			//IMPORTANT step : re assign employees --> tmp
			employees=tmp;
			employees[++top] = e;
		}
	}
}
