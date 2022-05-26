package kr.co.steamsale.web.model;

import java.text.NumberFormat;

public class PackagePrice {
	int id;
	String execDate;
	String execTime;
	double usd;
	double krw;
	String dateField;
	int priceCurr;
	int priceMax;
	int priceMin;
	String priceCurrStr;
	String priceMaxStr;
	String priceMinStr;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getExecDate() {
		return execDate;
	}

	public void setExecDate(String execDate) {
		this.execDate = execDate;
	}

	public String getExecTime() {
		return execTime;
	}

	public void setExecTime(String execTime) {
		this.execTime = execTime;
	}

	public double getUsd() {
		return usd;
	}

	public void setUsd(double usd) {
		this.usd = usd;
	}

	public double getKrw() {
		return Math.floor(krw);
	}

	public void setKrw(double krw) {
		this.krw = krw;
	}

	public String getDateField() {
		return dateField;
	}

	public void setDateField(String dateField) {
		this.dateField = dateField;
	}

	public int getPriceCurr() {
		return priceCurr;
	}

	public void setPriceCurr(int priceCurr) {
		this.priceCurr = priceCurr;
	}

	public int getPriceMax() {
		return priceMax;
	}

	public void setPriceMax(int priceMax) {
		this.priceMax = priceMax;
	}

	public int getPriceMin() {
		return priceMin;
	}

	public void setPriceMin(int priceMin) {
		this.priceMin = priceMin;
	}

	public String getPriceCurrStr() {
		return (priceCurr == 0) ? "무료" : NumberFormat.getInstance().format(priceCurr);
	}

	public String getPriceMaxStr() {
		return NumberFormat.getInstance().format(priceMax);
	}

	public String getPriceMinStr() {
		return NumberFormat.getInstance().format(priceMin);
	}
}
