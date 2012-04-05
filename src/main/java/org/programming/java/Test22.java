package org.programming.java;

import java.text.DecimalFormat;

public class Test22 {

	public static void main(String[] args) {
		// 存款 利率 存款期限
		int deposit = 10000;
		double rate = 0.045;
		int years = 20;
		double currDeposit = deposit;

		// double 格式化
		DecimalFormat decim = new DecimalFormat("0.00");

		StringBuilder strBuilder = new StringBuilder("当年利息\t\t累计利息\t\t存款额\n");
		for (int i = 0; i < years; i++) {
			// 计算当前存款
			double preDeposit = currDeposit;
			currDeposit = currDeposit * (1 + rate);

			// 计算利息和总利息
			double interest = currDeposit - preDeposit;
			double totalInterest = currDeposit - deposit;
			strBuilder.append(decim.format(interest) + "\t\t"
					+ decim.format(totalInterest) + "\t\t"
					+ decim.format(currDeposit) + "\n");
		}
		System.out.println(strBuilder);
	}

}
