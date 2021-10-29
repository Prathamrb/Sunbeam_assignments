package covariance_demo;

class Grain {
	public String toString() {
		return "Grain";
	}
}

class Wheat extends Grain {
	public String toString() {
		return "Wheat";
	}
}

class Mill {
	Grain process() {
		return new Grain();
	}
}

class WheatMill extends Mill {
	Wheat process() {
		return new Wheat();
	}
}

public class CovariantReturn {
	public static void main(String[] args) {
		Mill m = new Mill(); // direct ref
		Grain g = m.process(); // RHS : Grain LHS : Grain => direct ref
		System.out.println(g); // g.toString : "Grain"
		m = new WheatMill(); // LHS : Mill RHS : WheatMil --super class ref ---> sub class obj(upcasting)
		g = m.process(); // Grain -- > Wheat
		// where will javac check for process method : exists -- no javac err, JVM:whose
							// process method : on wheat Mill process
		System.out.println(g);
	}
}
