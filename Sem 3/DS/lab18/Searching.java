public class Searching {

    static int leanerSearch(int[] arr, int val) {
        for (int i = 0; i < arr.length; i++) {
            if (val == arr[i]) {
                return i;
            }
        }
        return -1;
    }

    static int binarySearchIterative(int[] arr, int val) {
        int left = 0, right = arr.length - 1;
        while (left <= right) {
            int mid = (left + right) / 2;
            if (arr[mid] == val) {
                return mid;
            }
            if (val < arr[mid]) {
                right = mid - 1;
            } else {
                left = mid + 1;
            }
        }
        return -1;
    }

    static int binarySearchRecursive(int[] arr, int val, int left, int right) {
        if (left <= right) {
            int mid = (left + right) / 2;
            if (arr[mid] == val) {
                return mid;
            } else if (val < arr[mid]) {
                return binarySearchRecursive(arr, val, left, (mid - 1));
            } else {
                return binarySearchRecursive(arr, val, (mid + 1), right);
            }
        }
        return -1;
    }

    public static void main(String[] args) {
        int[] arr = { 5, 6, 12, 3, 14, 6, 9, 88, 7 };
        int[] arr2 = { 3, 5, 6, 7, 9, 12, 14, 88 };
        System.out.println("LS Element found at index: " + leanerSearch(arr, 12));
        System.out.println("BS Element found at index: " + binarySearchIterative(arr2, 9));
        System.out.println("BS Element found at index: " + binarySearchRecursive(arr2, 12, 0, arr2.length - 1));
    }
}
