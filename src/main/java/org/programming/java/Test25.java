package org.programming.java;

import java.util.Scanner;

public class Test25 {

	private static int gcd(int m, int n) {
		while (n != 0) {
			int r = n;
			n = m % n;
			m = r;
		}
		return m;
	}

	public static void main(String[] args) {
		System.out.println("请输入两个正整数：");
		Scanner scan = new Scanner(System.in);
		int m = scan.nextInt();
		int n = scan.nextInt();

		// 确认是两个正整数
		if (m <= 0 || n <= 0) {
			throw new IllegalArgumentException("请输入两个正整数");
		}

		System.out.println("最大公约数：" + gcd(m, n));
		System.out.println("最小公倍数：" + m*n/gcd(m, n));

	}

}
