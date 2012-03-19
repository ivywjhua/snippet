package org.txxfu.algo.sort;

public class BubbleSort {

	static void swap(int[] arr, int p1, int p2) {
		int temp = arr[p1];
		arr[p1] = arr[p2];
		arr[p2] = temp;
	}

	static void bubbleSort(int[] arr, int left, int right) {
		// check

		for (int i = left; i <= right; i++) {
			for (int j = 0; j < i; j++) {
				if (arr[j] > arr[j + 1]) {
					swap(arr, j + 1, j);
				}
			}
		}
	}

	public static void main(String[] args) {
		int[] arr = new int[] { 41, 26, 53, 55, 59, 58, 97, 93 };
		printArr(arr);
		bubbleSort(arr, 0, arr.length - 1);
		printArr(arr);

	}

	private static void printArr(int[] arr) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < arr.length; i++) {
			sb.append(arr[i] + " ");
		}
		System.out.println(sb.toString());
	}

}
