package insertionsort;

import java.util.Random;
import java.util.Scanner;

public class inputNumber {

    void sort(int arr[]) {
        int n = arr.length, i;
        for (i = 1; i < n; ++i) {
            //goi key la gia tri cua so tai index i
            int key = arr[i];
            int j = i - 1;
            //di chuyen cac phan tu cua arr [0 ... i - 1], lon hon 
            //key den mot vi tri truoc vi tri hien tai cua chung
            while (j >= 0 && arr[j] > key) {
                arr[j + 1] = arr[j];
                j = j - 1;
            }
            arr[j + 1] = key;
        }
    }

    public static int[] inputArr() {
        Scanner input = new Scanner(System.in);
        int i = 0, n = 0;
        while (true) {
            try {
                System.out.print("Nhap so phan tu: ");
                n = Integer.parseInt(input.nextLine());
                while (n <= 0) {
                    System.out.println("Number must be positive");
                    System.out.print("Re-enter: ");
                    n = Integer.parseInt(input.nextLine());
                }
                break;
            } catch (Exception e) {
                System.out.println("Invalid");
                System.out.println("Re-enter");
            }
        }
        int[] z = new int[n];
        Random rand = new Random();
        for (i = 0; i < n; i++) {
            z[i] = rand.nextInt(n);
        }
        return z;
    }

    public static void printArray(int arr[]) {
        int n = arr.length;
        for (int i = 0; i < n; ++i) {
            System.out.print(arr[i] + " ");
        }
        System.out.println();
    }
}
