package org.txxfu.algo.string;

/**
 * 最长公共字符串
 * Common Longest Substring
 * 
 * @author wangjinhua
 * 
 */
public class LCS2 {


	int lcs(String str1, String str2) {
		// check string
		if (null == str1 || null == str2 || 0 == str1.length()
				|| 0 == str2.length()) {
			return 0;
		}

		// initiate lcs array and direction array
		int length1 = str1.length();
		int length2 = str2.length();
		int[][] lcslen = new int[length1][length2];

		// build array and direction
		int maxlen = 0;
		int mark = 0;
		for (int i = 0; i < length1; i++) {
			for (int j = 0; j < length2; j++) {
				if (0 == i || 0 == j) {
					if (str1.charAt(i) == str2.charAt(j)) {
						lcslen[i][j] = 1;
					}
				} else if (str1.charAt(i) == str2.charAt(j)) {
					lcslen[i][j] = lcslen[i - 1][j - 1] + 1;
				} else {
					lcslen[i][j] = 0;
				}
				if (lcslen[i][j] > maxlen) {
					maxlen = lcslen[i][j];
					mark = i;
				}
			}
		}

		// print lcs str
		StringBuilder sb = new StringBuilder();
		for (int i = mark-maxlen; i < mark; i++) {
			sb.append(str1.charAt(i +1));
		}
		System.out.println(sb);

		return maxlen;

	}

	public static void main(String[] args) {
		LCS2 lcs = new LCS2();
		int len = lcs.lcs("BDCABA", "ABCBDABA");
		System.out.println(len);
	}
}
