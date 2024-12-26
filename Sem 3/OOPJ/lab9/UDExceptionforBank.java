import java.util.Scanner;

class InSufficientFundException extends Exception {
    InSufficientFundException(String message) {
        super(message);
    }
}

class Account {
    private int money;

    Account() {
        money = 1000;
    }

    void display() {
        System.out.println("Amount: " + money);
    }

    void deposit(int amount) {
        money += amount;
    }

    void withdraw(int amount) {
        try {
            money -= amount;
            if (money < 1000) {
                throw new InSufficientFundException("Balance limit reached min amount =  1000");
            }
        } catch (InSufficientFundException e) {
            money += amount;
            e.printStackTrace();
        }
    }
}

public class UDExceptionforBank {

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        Account a = new Account();

        while (true) {
            System.out.println("1. Display Amount\n2. Deposit\n3. Withdraw\n4. Exit");
            System.out.print("Enter choice: ");
            switch (s.nextInt()) {
                case 1:
                    a.display();
                    break;
                case 2:
                    System.out.println();
                    System.out.print("Enter Amount: ");
                    a.deposit(s.nextInt());
                    break;
                case 3:
                    System.out.println();
                    System.out.print("Enter Amount: ");
                    a.withdraw(s.nextInt());
                    break;
                case 4:
                    System.exit(0);
                default:
                    System.out.println("Invalid choice");
                    break;
            }
        }
    }
}