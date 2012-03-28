package org.txxfu.algo.string;

/**
 * 最长公共字串
 * @author wangjinhua
 *
 */
public class LCS3 {

	enum LcsDirect {

		kinit(0), kleft(1), kup(2), kleftup(3);

		int value;

		private LcsDirect(int value) {
			this.value = value;
		}

	}

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
		int[][] lcsdir = new int[length1][length2];
		int[][] lcsch = new int[length1][length2];
		
		// build array and direction
		for (int i = 0; i < length1; i++) {
			for (int j = 0; j < length2; j++) {
				if (0 == i || 0 == j) {
					if (str1.charAt(i) == str2.charAt(j)) {
						lcslen[i][j] = 1;
						lcsdir[i][j] = LcsDirect.kleftup.value;
						lcsch[i][j] = str1.charAt(i);
					}
				} else if (str1.charAt(i) == str2.charAt(j)) {
					if (str1.charAt(i) > lcsch[i-1][j-1]) {
						lcslen[i][j] = lcslen[i - 1][j - 1] + 1;
						lcsdir[i][j] = LcsDirect.kleftup.value;
						lcsch[i][j] = str1.charAt(i);
					} else {
						lcslen[i][j] = lcslen[i - 1][j - 1];
						lcsdir[i][j] = LcsDirect.kleftup.value;
						lcsch[i][j] = lcsch[i-1][j-1];
					}
				} else if (lcslen[i - 1][j] > lcslen[i][j - 1]) {
					lcslen[i][j] = lcslen[i - 1][j];
					lcsdir[i][j] = LcsDirect.kup.value;
					lcsch[i][j] = lcsch[i-1][j];
				} else {
					lcslen[i][j] = lcslen[i][j - 1];
					lcsdir[i][j] = LcsDirect.kleft.value;
					lcsch[i][j] = lcsch[i][j-1];
				}
			}
		}

		printArray(lcslen);
		
		// print lcs str
		lcsPrint(str1, str2, lcsdir, length1 - 1, length2 - 1);

		return lcslen[length1 - 1][length2 - 1];

	}

	void lcsPrint(String str1, String str2, int[][] lcsdir, int row, int col) {
		// check string and array
		if (null == str1 || null == str2 || null == lcsdir
				|| row >= str1.length() || col > str2.length()) {
			return;
		}

		// digui print
		if (lcsdir[row][col] == LcsDirect.kleftup.value) {
			if (row > 0 && col > 0) {
				lcsPrint(str1, str2, lcsdir, row - 1, col - 1);
			}
			System.out.print(str1.charAt(row));
		} else if (lcsdir[row][col] == LcsDirect.kleft.value) {
			if (col > 0) {
				lcsPrint(str1, str2, lcsdir, row, col - 1);
			}
		} else if (lcsdir[row][col] == LcsDirect.kup.value) {
			if (row > 0) {
				lcsPrint(str1, str2, lcsdir, row - 1, col);
			}
		}

	}
	
	void printArray(int[][] arr){
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				sb.append('\t').append(arr[i][j]);
			}
			sb.append('\n');
		}
		System.out.println(sb);
	}

	public static void main(String[] args) {
		LCS3 lcs = new LCS3();
		int len = lcs.lcs("BDCABDEGE", "ABCBDABAEGE");
		System.out.println(len);
	}
}
