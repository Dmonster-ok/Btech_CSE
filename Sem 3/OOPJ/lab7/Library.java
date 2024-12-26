class Book {
    private final String author_Fname;
    String author_name;

    Book(String name) {
        this.author_name = name;
        String[] names = name.split(" ");
        this.author_Fname = names[0];
    }

    void display() {
        // author_Fname = "Harry"; // Error: cannot assign a value to final variable author_Fname
        System.out.println("Author First Name: " + author_Fname);
    }

    class book_publication extends Book {
        private String title;

        book_publication(String name, String title) {
            super(name);
            this.title = title;
        }

        void display() {
            System.out.println("Book Name: " + title + " Aurthor Name: " + author_name);
        }
    }

    class paper_publication extends Book {
        private String title;

        paper_publication(String name, String title) {
            super(name);
            this.title = title;
        }

        void display() {
            System.out.println("Book Name: " + title + " Aurthor Name: " + author_name);
        }
    }
}

public class Library {
    public static void main(String[] args) {
        Book b = new Book("J.K. Rowling");
        b.display();
        Book.book_publication bp = b.new book_publication("J.K. Rowling", "Harry Potter");
        bp.display();
        Book.paper_publication pp = b.new paper_publication("J.K. Rowling", "Harry Potter");
        pp.display();
    }
}
