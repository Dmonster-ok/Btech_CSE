import java.util.*;

class Account {

    int accountNo;
    String userName, email, accountType;
    double accountBalance;

    Account(int no, String name, String mail, String type, double bal) {
        accountNo = no;
        userName = name;
        email = mail;
        accountType = type;
        accountBalance = bal;
    }

    void displayAccountDetails() {
        System.out.println("\nAccount Number: " + accountNo);
        System.out.println("Name: " + userName);
        System.out.println("Email: " + email);
        System.out.println("Account Type: " + accountType);
        System.out.println("Account Balance: " + accountBalance);
    }

}

public class Bank_Account {
    public static void main(String[] args) {
        int accno;
        String uname, email, acctype;
        double bal;
        Scanner s = new Scanner(System.in);

        System.out.print("Enter Account Number: ");
        accno = s.nextInt();
        System.out.print("Enter Name: ");
        uname = s.next();
        System.out.print("Enter Email: ");
        email = s.next();
        System.out.print("Enter Account Type: ");
        acctype = s.next();
        System.out.print("Enter Account Balance: ");
        bal = s.nextDouble();

        Account a1 = new Account(accno,uname,email,acctype,bal);

        a1.displayAccountDetails();
    }
}