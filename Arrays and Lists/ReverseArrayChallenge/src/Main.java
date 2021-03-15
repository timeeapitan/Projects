import java.util.Arrays;
import java.util.Scanner;

public class Main {

    private static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.println("Give count: ");
        int count = scanner.nextInt();
        int[] array = readIntegers(count);
        System.out.println("The array is: " + Arrays.toString(array));
        reverse(array);
        System.out.println("The reversed array is :" + Arrays.toString(array));
    }

    public static void reverse(int[] array) {
        int aux;
        int maxIndex = array.length - 1;
        int halfLength = array.length / 2;
        for (int i = 0; i < halfLength; i++) {
            aux = array[i];
            array[i] = array[maxIndex - i];
            array[maxIndex - i] = aux;
        }
    }

    public static int[] readIntegers(int count) {
        int[] array = new int[count];
        System.out.println("Enter " + count + " numbers.\r");
        for (int i = 0; i < count; i++) {
            array[i] = scanner.nextInt();
        }
        return array;
    }
}
