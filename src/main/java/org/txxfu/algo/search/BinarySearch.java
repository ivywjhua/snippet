package org.txxfu.algo.search;

public class BinarySearch {

	static int binarySearch(int[] arr, int left, int right, int num) {
		//
		if (arr == null || arr.length <= 0) {
			throw new IllegalArgumentException(left + " " + right);
		}

		if (left > right) {
			return -1;
		}

		int p = (left + right) / 2;

		int t = arr[p];
		if (num == t) {
			return p;
		} else if (t > num) {
			return binarySearch(arr, left, p - 1, num);
		} else {
			return binarySearch(arr, p + 1, right, num);
		}
	}

	public static void main(String[] args) {
		int[] arr = new int[] { 26, 41, 53, 55, 58, 59, 93, 97 };
		int aa = binarySearch(arr, 0, arr.length - 1, 26);
		System.out.println(aa);
	}
}
