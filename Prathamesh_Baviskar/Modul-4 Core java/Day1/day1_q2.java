import java.util.Scanner;

/*
day1 Q4.2 Display food menu to user. User will select items
from menu along with the quantity. (eg 1. Dosa 2. Samosa
3. Idli ... 10 . Generate Bill ) Assign fixed prices
to food items(hard code the prices)
When user enters 'Generate Bill' option(10) ,
display total bill & exit.
*/
public class day1_q2
{
    public static void main(String [] args)
    {   
        int Dosa = 50, Samosa = 15, Idli = 40, Pizza = 120, Pasta = 100;
        int Noodle = 70, Maggi = 25, Biryani = 150, Tanduri = 200;
        int total = 0, ch;
        
        Scanner sc = new Scanner(System.in);
        do
        {   
            System.out.println("FOOD MENU");
            System.out.println("1. Dosa 2. Samosa 3. Idli 4. Pizza 5. Pasta");
            System.out.println("6. Noodle 7. Maggi 8. Biryani 9. Tanduri");
            System.out.println("10. Generate Bill.");
            System.out.println("Eneter choice : ");
            ch = sc.nextInt();
            switch(ch)
            {
                case 1 :
                System.out.println("Add quantity of DOSA in order");
                total += (Dosa*sc.nextInt());
                break;
                case 2 :
                System.out.println("Add quantity of SAMOSA in order");
                total += (Samosa*sc.nextInt());
                break; 
                case 3 :
                System.out.println("Add quantity of IDLI in order");
                total += (Idli*sc.nextInt());
                break; 
                case 4 :
                System.out.println("Add quantity of PIZZA in order");
                total += (Pizza*sc.nextInt());
                break;
                case 5 :
                System.out.println("Add quantity of PASTA in order");
                total += (Pasta*sc.nextInt());
                break; 
                case 6 :
                System.out.println("Add quantity of NOODLE in order");
                total += (Noodle*sc.nextInt());
                break; 
                case 7 :
                System.out.println("Add quantity of MAGGI in order");
                total += (Maggi*sc.nextInt());
                break; 
                case 8 :
                System.out.println("Add quantity of BIRYANI in order");
                total += (Biryani*sc.nextInt());
                break; 
                case 9 :
                System.out.println("Add quantity of TANDURI in order");
                total += (Tanduri*sc.nextInt());
                break; 
                case 10 :
                System.out.println("Total Bill : "+total);
                break;         
                default :
                System.out.println("Please Enter valid choice.");
            }
        }while(ch != 10);

        sc.close();
    }
}
