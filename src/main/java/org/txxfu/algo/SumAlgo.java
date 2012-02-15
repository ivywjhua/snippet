package org.txxfu.algo;


//一个排好序的数组，找出两数之和为M的所有组合 这里设置M为100，可以将100替换为想要让求的和
public class SumAlgo {

	public static int[] arr = { 1, 3, 5, 7, 9, 14, 23, 70, 93, 95, 95, 100,200, 300 };
	public static int count1 = 0;
	public static int count2 = 0;
	public static int count3 = 0;
	public static int count4 =0;

	public static void main(String[] args) {
		// 1、纯for循环
		for (int i = 0; i < arr.length; i++) {
			for (int j = i + 1; j < arr.length; j++) {
				count1++;
				if (arr[i] + arr[j] == 100) {
					System.out.println(arr[i] + ":" + arr[j]);
				}
			}
		}
		//卡住一个端，左端只有小于M/2才会判断
		for (int i = 0; i < arr.length; i++) {
			if (arr[i] <= 100 / 2) {
				for (int j = i + 1; j < arr.length; j++) {
					count2++;
					if (arr[i] + arr[j] == 100) {
						System.out.println(arr[i] + ":" + arr[j]);
					}
				}
			}
		}
		//卡住一个端，左端只有小于M/2，右端大于M/2才会判断
		for (int i = 0; i < arr.length; i++) {
			if (arr[i] <= 100 / 2) {
					for (int j = i + 1; j < arr.length; j++) {
						if (arr[j] >= 100 / 2) {
							count3++;
							if (arr[i] + arr[j] == 100) {
								System.out.println(arr[i] + ":" + arr[j]);
							}
					}

				}
			}
		}
		
		int m =0, n= arr.length -1;
		while(m<n){
			if (arr[m] + arr[n] == 100) {
				System.out.println(arr[m] + ":" + arr[n]);
				m++;
				n--;
			} else if (arr[m] + arr[n] > 100) {
				n--;
			} else {
				m++;
			}
			count4 ++;
		}
		
		System.out.println("count1=" + count1);
		System.out.println("count2=" + count2);
		System.out.println("count3=" + count3);
		System.out.println("count4=" + count4);
	}

}

