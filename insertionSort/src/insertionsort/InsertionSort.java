package insertionsort;

public class InsertionSort {

    public static void main(String[] args) {
        inputNumber rd = new inputNumber();
        int[] arr = rd.inputArr();
        System.out.println("Truoc khi xep: ");
        rd.printArray(arr);
        rd.sort(arr);
        System.out.println("Sau khi xep: ");
        rd.printArray(arr);
    }

}
