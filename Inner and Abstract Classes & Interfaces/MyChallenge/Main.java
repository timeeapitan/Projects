package MyChallenge;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Sports sports = new Sports();
        restoreValues(sports);
        saveValues(sports);
        System.out.println(sports.toString());
    }

    public static void saveValues(Sports sports){
        sports.returnArrayList();
    }

    public static void restoreValues(Sports sports){
        ArrayList values = readValues();
        sports.populateObject(values);

    }
    public static ArrayList<String> readValues(){
        ArrayList<String> values = new ArrayList<String>();

        Scanner scanner = new Scanner(System.in);
        boolean quit = false;
        int index =0;
        System.out.println("Choose\n"+
                            "1 to enter a string\n"+
                            "0 to quit");

        while(!quit){
            System.out.println("Choose an option: ");
            int choice = scanner.nextInt();
            scanner.nextLine();

            switch(choice){
                case 0:
                    quit = true;
                    break;
                case 1:
                    System.out.println("Enter a string: ");
                    String stringInput = scanner.nextLine();
                    values.add(index, stringInput);
                    index++;
                    break;
            }
        }
        return values;
    }
}
