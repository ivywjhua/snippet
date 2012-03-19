package org.txxfu.algo.search;

public class BinarySearch2 {

	static int binarySearch(int[] arr, int left, int right, int num) {
		//
		if (arr == null || arr.length <= 0 || left > right) {
			throw new IllegalArgumentException(left + " " + right);
		}

		int low = left, high = right;
		while (low <= high) {
			int n = (low + high) / 2;
			int t = arr[n];
			if (t == num) {
				return n;
			} else if (t > num) {
				high = n - 1;
			} else {
				low = n + 1;
			}
		}
		return -1;
	}

	public static void main(String[] args) {
		int[] arr = new int[] { 26, 41, 53, 55, 58, 59, 93, 97 };
		int aa = binarySearch(arr, 1, arr.length - 1, 98);
		System.out.println(aa);
	}
}
