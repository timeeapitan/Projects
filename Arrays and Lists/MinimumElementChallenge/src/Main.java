import java.util.Arrays;
import java.util.Scanner;

public class Main {

    private static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.println("Enter the count of numbers: ");
        int count = scanner.nextInt();
        scanner.nextLine();

        int[] array = readIntegers(count);
        System.out.println("The given array is: " + Arrays.toString(array));
        System.out.println("The minimum of the array is: " + findMin(array));
    }

    public static int[] readIntegers(int count) {
        int[] array = new int[count];
        System.out.println("Enter " + count + " numbers.\r");
        for (int i = 0; i < count; i++) {
            array[i] = scanner.nextInt();
        }
        return array;
    }

    public static int findMin(int[] array) {
        int min = Integer.MAX_VALUE;
        for (int i = 0; i < array.length; i++) {
            if (array[i] < min) {
                min = array[i];
            }
        }
        return min;
    }
}
