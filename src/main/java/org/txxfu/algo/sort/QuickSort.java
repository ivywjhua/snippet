package org.txxfu.algo.sort;

public class QuickSort {

	static void swap(int[] arr, int p1, int p2) {
		int temp = arr[p1];
		arr[p1] = arr[p2];
		arr[p2] = temp;
	}

	static void quickSort(int[] arr, int left, int right) {
		if(left>=right){
			return;
		}
		
		int m = left;
		for (int i = left + 1; i < right; i++) {
			if (arr[i] < arr[left]) {
				swap(arr, ++m, i);
			}
		}
		swap(arr, left, m);

		quickSort(arr, left, m - 1);
		quickSort(arr, m + 1, right);

	}

	public static void main(String[] args) {
		int[] arr = new int[] { 41, 26, 53, 55, 59, 58, 97, 93 };
		printArr(arr);
		quickSort(arr, 0, arr.length);
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
