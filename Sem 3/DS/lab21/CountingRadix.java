public class CountingRadix {

    // Find the maximum value k in the array
    static int max(int[] arr) {
        int max = arr[0];
        for (int i = 1; i < arr.length; i++) {
            if (arr[i] > max) {
                max = arr[i];
            }
        }
        return max;
    }

    static int[] CountingSort(int[] arr) {

        // k is the maximum value in the array
        int k = max(arr) + 1;
        int n = arr.length;
        int[] tmp = new int[k];
        int[] result = new int[n];

        // Count the number of each element in the array
        for (int i = 0; i < n; i++) {
            tmp[arr[i]] += 1;
        }

        // Calculate the cumulative sum of the array
        for (int i = 1; i < k; i++) {
            tmp[i] += tmp[i - 1];
        }

        // Sort the array
        for (int i = n; i != 0; i--) {
            result[tmp[arr[i - 1]] - 1] = arr[i - 1];
            tmp[arr[i - 1]] -= 1;
        }
        return result;
    }

    public static void main(String[] args) {
        int[] arr = { 0, 5, 3, 2, 4, 5, 2, 1, 3, 4, 7, 8, 6, 5, 7, 8, 8, 7 };

        int[] rst = CountingSort(arr);
        for (int i : rst) {
            System.out.print(i + " ");
        }
    }
}