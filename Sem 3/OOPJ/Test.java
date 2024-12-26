interface Transport {
    void deliver();
}

abstract class Animal {
    abstract void makeSound();
}

class Tiger extends Animal {
    @Override
    void makeSound() {
        System.out.println("Roar");
    }
}

class Camel extends Animal implements Transport {
    @Override
    void makeSound() {
        System.out.println("Grunt");
    }

    @Override
    public void deliver() {
        System.out.println("Camel delivering goods");
    }
}

class Deer extends Animal {
    @Override
    void makeSound() {
        System.out.println("Bleat");
    }
}

class Donkey extends Animal implements Transport {
    @Override
    void makeSound() {
        System.out.println("Bray");
    }

    @Override
    public void deliver() {
        System.out.println("Donkey delivering goods");
    }
}

public class Test {
    public static void main(String[] args) {
        Animal[] animals = {new Tiger(), new Camel(), new Deer(), new Donkey()};

        for (Animal animal : animals) {
            animal.makeSound();
            if (animal instanceof Transport) {
                ((Transport) animal).deliver();
            }
        }
    }
}


public class Test {
    
}
