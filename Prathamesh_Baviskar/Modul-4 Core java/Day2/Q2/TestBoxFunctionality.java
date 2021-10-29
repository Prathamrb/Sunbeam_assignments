import java.util.Scanner;
public class TestBoxFunctionality 
{
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner (System.in);
        System.out.println("Enter 1st box dims n color : w d h color");
        box b1 = new box(sc.nextDouble(), sc.nextDouble(), sc.nextDouble(), sc.next());
        System.out.println("Box 1's addr " + b1.hashCode());
        System.out.println("Enter 2st box dims n color : w d h color");
        box b2 = new box(sc.nextDouble(), sc.nextDouble(), sc.nextDouble(), sc.next());
        System.out.println("Box 2's addr " + b2.hashCode());
        System.out.println(b1.isEqual(b2)?"SAME":"DIFFERENT");
        System.out.println("Enter offsets in Box 1's dims : woff doff hoff");
        box b3 = b1.createNewBox(sc.nextDouble(), sc.nextDouble(), sc.nextDouble());
        System.out.println("Box 3's addr " + b3.hashCode());
        System.out.println("new box's dims " + b3.getBoxDimensions());
        
        sc.close();
    }
}
