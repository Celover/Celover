package com.fan.celover.global.common;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

public class ConvertLocaldatetimeToString {

	private static class TIME_MAXIMUM {
		public static final int SEC = 60;
		public static final int MIN = 60;
		public static final int HOUR = 24;
		public static final int DAY = 30;
	}

	public static String calculateTime(LocalDateTime localDateTime) {
		
		LocalDateTime now = LocalDateTime.now();
		
		long diffTime = localDateTime.until(now, ChronoUnit.SECONDS);

		String msg = null;

		if (diffTime < TIME_MAXIMUM.SEC) {
			msg = diffTime + "초 전";
		} else if ((diffTime /= TIME_MAXIMUM.SEC) < TIME_MAXIMUM.MIN) {
			msg = diffTime + "분 전";
		} else if ((diffTime /= TIME_MAXIMUM.MIN) < TIME_MAXIMUM.HOUR) {
			msg = (diffTime) + "시간 전";
		} else if ((diffTime /= TIME_MAXIMUM.HOUR) < TIME_MAXIMUM.DAY) {
			msg = (diffTime) + "일 전";
		} else { // 30 일 이후로는 2023-12-12 14:44:12 로 변경
			msg = localDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		}
		return msg;
	}
}
