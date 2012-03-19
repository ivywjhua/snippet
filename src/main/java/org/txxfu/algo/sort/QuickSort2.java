package org.txxfu.algo.sort;

import java.util.Random;

public class QuickSort2 {

	static void swap(int[] arr, int p1, int p2) {
		int temp = arr[p1];
		arr[p1] = arr[p2];
		arr[p2] = temp;
	}

	static void quickSort(int[] arr, int left, int right) {
		if (left >= right) {
			return;
		}
		swap(arr, left, randint(left, right));
		int t = arr[left];
		int i = left;
		int j = right + 1;
		for (;;) {
			do
				i++;
			while (i <= right && arr[i] < t );

			do
				j--;
			while (arr[j] > t);

			if (i > j) {
				break;
			}
			swap(arr, i, j);
		}
		swap(arr, left, j);
		quickSort(arr, left, j - 1);
		quickSort(arr, j + 1, right);

	}

	public static void main(String[] args) {
		int[] arr = new int[] { 41, 26, 53, 55, 59, 58, 97, 93 };
		printArr(arr);
		quickSort(arr, 0, arr.length - 1);
		printArr(arr);

	}

	private static void printArr(int[] arr) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < arr.length; i++) {
			sb.append(arr[i] + " ");
		}
		System.out.println(sb.toString());
	}
	
	private static int randint(int left, int right){
		int z = right - left;
		return left + new Random().nextInt(z);
	}

}
