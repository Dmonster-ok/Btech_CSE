public class BubbleSelection {

    static int[] BubbleSort(int[] arr) {
        int n = arr.length;
        int last = n - 1;
        for (int i = 0; i < n - 1; i++) {
            int swap = 0;
            for (int j = 0; j < last; j++) {
                if (arr[j] > arr[j + 1]) {
                    int tmp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = tmp;
                    swap += 1;
                }
            }
            if (swap == 0) {
                break;
            } else {
                last -= 1;
            }
        }
        return arr;
    }

    static int[] SelectionSort(int[] arr) {
        int n = arr.length;
        for (int i = 0; i < n - 1; i++) {
            int minidx = i;
            for (int j = i + 1; j < n; j++) {
                if (arr[j] < arr[minidx]) {
                    minidx = j;
                }
                if (minidx != j) {
                    int tmp = arr[i];
                    arr[i] = arr[minidx];
                    arr[minidx] = tmp;
                }
            }
        }
        return arr;
    }

    public static void main(String[] args) {
        int[] arr = { 5, 6, 12, 3, 14, 6, 9, 88, 7 };
        
        BubbleSort(arr);
        for (int i : arr) {
            System.out.print(i + " ");
        }
        System.out.println();
        int[] arr2 = { 5, 6, 12, 3, 14, 6, 9, 88, 7 };
        SelectionSort(arr2);
        for (int i : arr) {
            System.out.print(i + " ");
        }
    }
}