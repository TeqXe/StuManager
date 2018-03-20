package com.crm.common.utils;

public class Constant {

	public static final int SUPER_ADMIN = 1;

	public static final String imgStorePath = "D:\\eclipse-workspace\\StuManager\\src\\main\\resources\\static\\upload\\";

	public enum MenuType {
		
		CATALOG(0),
		
		MENU(1),

		BUTTON(2);

		private int value;

		MenuType(int value) {
			this.value = value;
		}

		public int getValue() {
			return value;
		}
	}

	public enum ScheduleStatus {

		NORMAL(0),

		PAUSE(1);

		private int value;

		ScheduleStatus(int value) {
			this.value = value;
		}

		public int getValue() {
			return value;
		}
	}
}
