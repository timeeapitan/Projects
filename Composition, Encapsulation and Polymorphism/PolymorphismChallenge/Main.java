package PolymorphismChallenge;

class Car {
    private String name;
    private boolean engine;
    private int cylinders;
    private int wheels;

    public Car(String name, int cylinders) {
        this.name = name;
        this.cylinders = cylinders;
        this.wheels = 4;
        this.engine = true;
    }

    public void startEngine() {
        System.out.println("The engine has started.");
    }

    public void accelerate() {
        System.out.println("The car has accelerated.");
    }

    public void brake() {
        System.out.println("The car stopped.");
    }

    public String getName() {
        return name;
    }

    public int getCylinders() {
        return cylinders;
    }

}

class Holden extends Car {
    public Holden(String name, int cylinders) {
        super(name, cylinders);
    }

    @Override
    public void startEngine() {
        System.out.println("Holden has started.");
    }

    @Override
    public void accelerate() {
        System.out.println("Holden has accelerated.");
    }

    @Override
    public void brake() {
        System.out.println("Holden stopped.");
    }
}

class Mitsubishi extends Car {
    public Mitsubishi(String name, int cylinders) {
        super(name, cylinders);
    }

    @Override
    public void startEngine() {
        System.out.println("Mitsubishi has started.");
    }

    @Override
    public void accelerate() {
        System.out.println("Mitsubishi has accelerated.");
    }

    @Override
    public void brake() {
        System.out.println("Mitsubishi stopped.");
    }
}

class Ford extends Car {
    public Ford(String name, int cylinders) {
        super(name, cylinders);
    }

    @Override
    public void startEngine() {
        System.out.println("Ford has started.");
    }

    @Override
    public void accelerate() {
        System.out.println("Ford has accelerated.");
    }

    @Override
    public void brake() {
        System.out.println("Ford stopped.");
    }
}


public class Main {
    public static void main(String[] args) {
        Car car = new Car("Base car", 8);
        car.startEngine();
        car.accelerate();
        car.brake();

        Holden holden = new Holden("Holden", 10);
        holden.startEngine();
        holden.accelerate();
        holden.brake();

        Ford ford=new Ford("VolksWagen",6);
        ford.startEngine();
        ford.accelerate();
        ford.brake();
    }
}
