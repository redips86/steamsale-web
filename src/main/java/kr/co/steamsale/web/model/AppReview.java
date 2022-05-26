package kr.co.steamsale.web.model;

public class AppReview {
	int appId;
	int positive;
	int negative;
	int percent;
	int total;

	public int getAppId() {
		return appId;
	}

	public void setAppId(int appId) {
		this.appId = appId;
	}

	public int getPositive() {
		return positive;
	}

	public void setPositive(int positive) {
		this.positive = positive;
	}

	public int getNegative() {
		return negative;
	}

	public void setNegative(int negative) {
		this.negative = negative;
	}

	public int getPercent() {
		return (int)(this.positive * 100 / (this.positive + this.negative));
	}

	public int getTotal() {
		return this.positive + this.negative;
	}
}
