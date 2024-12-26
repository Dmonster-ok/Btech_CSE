import java.util.Scanner;

public class Student {
    Scanner s = new Scanner(System.in);

    int id, no_of_subjects;
    String[] subject_code;
    int[] subject_credits;
    String[] grade_obtained;
    int[] points;

    float spi;

    Student(int id, int num) {
        this.id = id;
        this.no_of_subjects = num;
        this.subject_code = new String[num];
        this.subject_credits = new int[num];
        this.grade_obtained = new String[num];
        this.points = new int[num];
        getsub(num);
    }

    void getsub(int n) {
        for (int i = 0; i < n; i++) {
            System.out.print("Enter subject code: ");
            subject_code[i] = s.next();
            System.out.print("Enter credits: ");
            subject_credits[i] = s.nextInt();
            System.out.print("Enter grade: ");
            grade_obtained[i] = s.next().toUpperCase();
        }
    }

    void display() {
        System.out.println("\nID: " + id);
        System.out.println("Number of subjects: " + no_of_subjects);
        for (int i = 0; i < no_of_subjects; i++) {
            System.out.print("Subject code: " + subject_code[i]);
            System.out.print("\tCredits: " + subject_credits[i]);
            System.out.print("\tGrade: " + grade_obtained[i] + "\n");
        }
        getSpi();
        System.out.println("SPI: " + spi);
    }

    void getSpi() {
        float sum = 0;
        float totalCredits = 0;
        for (int i = 0; i < no_of_subjects; i++) {
            if (grade_obtained[i].equals("AA")) {
                points[i] = 10 * subject_credits[i];
            } else if (grade_obtained[i].equals("AB")) {
                points[i] = 9 * subject_credits[i];
            } else if (grade_obtained[i].equals("BB")) {
                points[i] = 8 * subject_credits[i];
            } else if (grade_obtained[i].equals("BC")) {
                points[i] = 7 * subject_credits[i];
            } else if (grade_obtained[i].equals("CC")) {
                points[i] = 6 * subject_credits[i];
            } else if (grade_obtained[i].equals("CD")) {
                points[i] = 5 * subject_credits[i];
            } else if (grade_obtained[i].equals("DD")) {
                points[i] = 4 * subject_credits[i];
            } else {
                points[i] = 0 * subject_credits[i];
            }
            sum += points[i];
            totalCredits += subject_credits[i];
        }

        spi = sum / totalCredits;
    }

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        int n = Integer.parseInt(args[0]);
        Student[] stu = new Student[n];

        for (int i = 0; i < n; i++) {
        System.out.println("Enter ID and Number of subjects");
        stu[i] = new Student(s.nextInt(), s.nextInt());
        }

        for (int i = 0; i < n; i++) {
        stu[i].display();
        }

    }
}