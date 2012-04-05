package org.programming.java;

public class Test23 {

	public static void main(String[] args) {
		// 阶乘 阶数
		int n = 10;
		int total = 0;
		int factorial = 1;

		for (int i = 0; i < n; i++) {
			// 当前阶乘
			factorial = factorial * (i + 1);
			total = total + factorial;
		}
		System.out.println(total);
	}
}
