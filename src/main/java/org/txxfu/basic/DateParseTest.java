package org.txxfu.basic;

import java.text.ParseException;
import java.util.Date;

import org.apache.commons.lang.time.DateUtils;

public class DateParseTest {

	public static void main(String[] args) {
		Date expDate = null;
		try {
			expDate = DateUtils.parseDate(
					String.valueOf(20150331),
					new String[] { "yyyyMMdd" });
		} catch (ParseException e) {
			throw new RuntimeException("parse date error", e);
		}
		
		System.out.println(expDate);
	}
}
