package ArraysChallenge;

import java.util.Arrays;
import java.util.Scanner;

public class Main {

    private static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        int[] values = getIntegers(5);
        printArray(values);
        System.out.println("*********************");
        System.out.println("Sorted array: \n");
        printArray(sortIntegers(values));
    }

    public static int[] getIntegers(int number) {
        System.out.println("Enter " + number + " values: \r");
        int values[] = new int[number];
        for (int i = 0; i < number; i++) {
            values[i] = scanner.nextInt();
        }
        return values;
    }

    public static void printArray(int[] array) {
        for (int i = 0; i < array.length; i++) {
            System.out.println("Element: " + i + ", value: " + array[i]);
        }
    }

    public static int[] sortIntegers(int[] array) {
//        int[] newArray = new int[array.length];
//        for (int i = 0; i < array.length; i++) {
//            newArray[i] = array[i];
//        }

        // another way
        int [] newArray= Arrays.copyOf(array, array.length);
        boolean ok;
        int aux;
        do {
            ok = false;
            for (int i = 0; i < newArray.length - 1; i++) {
                if (newArray[i] < newArray[i + 1]) {
                    aux = newArray[i];
                    newArray[i] = newArray[i + 1];
                    newArray[i + 1] = aux;
                    ok = true;
                }
            }
        } while (ok);

        return newArray;
    }
}
