package kr.co.steamsale.web.model;

import java.util.List;

public class PackageApp {
	int packageId;
	int appId;
	String name;
	String type;
	String image_120x49;
	String image_184x69;
	double initialPrice;
	double finalPrice;
	double discountPercent;
	String discountPercentStr;

	public int getPackageId() {
		return packageId;
	}

	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}

	public int getAppId() {
		return appId;
	}

	public void setAppId(int appId) {
		this.appId = appId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getImage_120x49() {
		return String.format("http://cdn.akamai.steamstatic.com/steam/apps/%d/capsule_sm_120.jpg", this.appId);
	}

	public String getImage_184x69() {
		return String.format("http://cdn.akamai.steamstatic.com/steam/apps/%d/capsule_184x69.jpg", this.appId);
	}

	public double getInitialPrice() {
		return initialPrice;
	}

	public void setInitialPrice(double initialPrice) {
		this.initialPrice = initialPrice;
	}

	public double getFinalPrice() {
		return finalPrice;
	}

	public void setFinalPrice(double finalPrice) {
		this.finalPrice = finalPrice;
	}

	public double getDiscountPercent() {
		return discountPercent;
	}

	public void setDiscountPercent(double discountPercent) {
		this.discountPercent = discountPercent;
	}
	
	public String getDiscountPercentStr() {
		return String.valueOf((int)this.discountPercent);
	}
}
