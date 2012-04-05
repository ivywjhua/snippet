package org.programming.java;

import java.util.Arrays;
import java.util.Scanner;

public class Test24 {

	private static final int MAX_INT_NUM = 4;

	public static void main(String[] args) {
		System.out.println("请输入四个整型数：");

		// 读入四个整型数到数组
		int[] intArr = new int[MAX_INT_NUM];
		Scanner scan = new Scanner(System.in);
		for (int i = 0; i < MAX_INT_NUM; i++) {
			int number = scan.nextInt();
			intArr[i] = number;
		}

		// 冒泡排序
		int arrLen = intArr.length;
		for (int i = arrLen - 1; i >= 0; i--) {
			for (int j = 0; j < i; j++) {
				if (intArr[i] > intArr[j]) {
					swap(intArr, i, j);
				}
			}
		}

		// 输出
		System.out.println(Arrays.toString(intArr));
	}

	private static void swap(int[] intArr, int i, int j) {
		int temp = intArr[i];
		intArr[i] = intArr[j];
		intArr[j] = temp;
	}
}
