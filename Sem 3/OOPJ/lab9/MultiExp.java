import java.util.Scanner;

public class MultiExp {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        try {
            int a, b;
            System.out.print("Enter value of a: ");
            a = Integer.parseInt(s.nextLine());
            System.out.print("Enter value of b: ");
            b = Integer.parseInt(s.nextLine());

            System.out.println("a/b: " + (a / b));
        } catch (NumberFormatException e) {
            System.out.println("Number Format Exception occured");
            e.printStackTrace();
        } catch (ArithmeticException e) {
            System.out.println("Arithmetic Exception occured");
            e.printStackTrace();
        }
    }
}