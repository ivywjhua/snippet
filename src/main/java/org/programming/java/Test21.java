package org.programming.java;

import java.util.Scanner;

public class Test21 {

	private static final int MAX_INT_NUM = 20;

	public static void main(String[] args) {
		System.out.println("请输入20个整型数：");

		// 读入20个整型数到数组
		int[] intArr = new int[MAX_INT_NUM];
		Scanner scan = new Scanner(System.in);
		for (int i = 0; i < MAX_INT_NUM; i++) {
			int number = scan.nextInt();
			intArr[i] = number;
		}

		StringBuilder numStr = new StringBuilder("3的倍数的整型数：\n");
		int numCount = 0;

		// 判断是否为3的倍数
		for (int i = 0; i < intArr.length; i++) {
			if (0x00 == intArr[i] % 3) {
				numStr.append(intArr[i] + " ");
				numCount++;
			}
		}
		
		// 输出
		System.out.println(numStr);

		System.out.println("3的倍数的数量：");
		System.out.println(numCount);
	}

}
