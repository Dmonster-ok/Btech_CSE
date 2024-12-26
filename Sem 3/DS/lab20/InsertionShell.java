public class InsertionShell {

    static int[] InsertionSort(int[] arr) {
        int n = arr.length;
        for (int i = 0; i < n; i++) {
            int key = arr[i];
            int j = i - 1;
            while (j >= 0 && arr[j] > key) {
                arr[j + 1] = arr[j];
                j -= 1;
            }
            arr[j + 1] = key;
            
        }
        return arr;
    }

    static int[] ShellSort(int[] arr) {
        int n = arr.length;
        for (int gap = n / 2; gap >= 1; gap /= 2) {
            for (int i = gap; i < n; i++) {
                for (int j = i - gap; j >= 0; j -= gap) {
                    if (arr[j + gap] > arr[j]) {
                        break;
                    } else {
                        int tmp = arr[j + gap];
                        arr[j + gap] = arr[j];
                        arr[j] = tmp;
                    }
                }
            }
        }
        return arr;
    }

    public static void main(String[] args) {
        int[] arr = { 5, 6, 12, 3, 14, 6, 9, 88, 7 };

        System.out.print("Insertion Sort : ");
        InsertionSort(arr);
        for (int i : arr) {
            System.out.print(i + " ");
        }

        System.out.println();

        System.out.print("Shell Sort : ");
        ShellSort(arr);
        for (int i : arr) {
            System.out.print(i + " ");
        }
    }
}
