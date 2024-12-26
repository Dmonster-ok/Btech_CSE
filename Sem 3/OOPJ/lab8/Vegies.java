public class Vegies {
    public static void main(String[] args) {
        Potato p = new Potato();
        Brinjal b = new Brinjal();
        Tomato t = new Tomato();
        p.display();
        b.display();
        t.display();
    }
}

abstract class Vegitables {
    String color;

    abstract void display();
}

class Potato extends Vegitables {

    void display() {
        color = "Pale yellow";
        System.err.println("Color of Potato :" + color);
    }

}

class Brinjal extends Vegitables {

    void display() {
        color = "Green";
        System.err.println("Color of Brinjal :" + color);
    }
}

class Tomato extends Vegitables {
    void display() {
        color = "Red";
        System.err.println("Color of Tomato :" + color);
    }
}
