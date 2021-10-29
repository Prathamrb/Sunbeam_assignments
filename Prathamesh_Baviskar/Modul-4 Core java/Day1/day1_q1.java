import java.util.Scanner;
/*
day1 Q4.1 Accept 2 double values from User (using Scanner). 
Check data type.
If arguments are not doubles , 
supply suitable error message & terminate.
If numbers are double values , print its average.
*/
class day1_q1
{
    public static void main(String [] args)
    {
        double a=0,b=0;
        Scanner sc = new Scanner(System.in);
        Scanner input = new Scanner(System.in);
        System.out.println("Enter two number(double type)");

        // 1st Number
        if (sc.hasNextDouble())
            a = sc.nextDouble();
        else 
            System.out.println("ERROR");

        // 2nd Number
        if (input.hasNextDouble())
            b = input.nextDouble();
        else 
            System.out.println("ERROR");
       
        System.out.println("Num1 = "+a+" Num2 = "+b);
        System.out.println("Avereage : " +((a+b)/2));

        sc.close();
        input.close();
    }
}
