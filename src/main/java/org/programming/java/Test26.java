package org.programming.java;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Test26 {

	public static void main(String[] args) {
		System.out.println("请输入一组正整数，以-1表示输入结束：");

		// 读入正整数
		Scanner scan = new Scanner(System.in);
		int curInt = scan.nextInt();
		int preInt = curInt;

		// 记录数字
		List<Integer> intList = new ArrayList<Integer>();
		intList.add(curInt);
		while (curInt > 0) {
			if (curInt != preInt) {
				intList.add(curInt);
			}

			preInt = curInt;
			curInt = scan.nextInt();
		}

		System.out.println(intList);

	}
}
