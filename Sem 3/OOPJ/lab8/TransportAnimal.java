public class TransportAnimal {
    public static void main(String[] args) {
        Animal[] animals = { new Tiger(), new Camel(), new Deer(), new Donkey() };
        for (Animal animal : animals) {
            animal.eat();
            if (animal instanceof Transport) {
                ((Transport) animal).deliver();
            }
        }
    }
}

interface Transport {
    void deliver();
}

abstract class Animal {
    abstract void eat();
}

class Tiger extends Animal {
    void eat() {
        System.out.println("Tiger eats meat");
    }
}

class Camel extends Animal implements Transport {
    public void deliver() {
        System.out.println("Camel is delivered");
    }

    void eat() {
        System.out.println("Camel eats grass");
    }
}

class Deer extends Animal {
    void eat() {
        System.out.println("Deer eats grass");
    }
}

class Donkey extends Animal implements Transport {
    public void deliver() {
        System.out.println("Donkey is delivered");
    }

    void eat() {
        System.out.println("Donkey eats grass");
    }
}