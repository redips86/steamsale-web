package kr.co.steamsale.web.model;

import java.text.NumberFormat;

public class AppPlayer {
	int id;
	String execDate;
	String execTime;
	int playerCountCurr;
	int playerCountMax;
	int playerCountAvg;
	int playerCountMin;
	String playerCountCurrStr;
	String playerCountMaxStr;
	String playerCountAvgStr;
	String playerCountMinStr; 

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

	public int getPlayerCountCurr() {
		return playerCountCurr;
	}

	public void setPlayerCountCurr(int playerCountCurr) {
		this.playerCountCurr = playerCountCurr;
	}

	public int getPlayerCountMax() {
		return playerCountMax;
	}

	public void setPlayerCountMax(int playerCountMax) {
		this.playerCountMax = playerCountMax;
	}

	public int getPlayerCountAvg() {
		return playerCountAvg;
	}

	public void setPlayerCountAvg(int playerCountAvg) {
		this.playerCountAvg = playerCountAvg;
	}

	public int getPlayerCountMin() {
		return playerCountMin;
	}

	public void setPlayerCountMin(int playerCountMin) {
		this.playerCountMin = playerCountMin;
	}

	public String getPlayerCountCurrStr() {
		return NumberFormat.getInstance().format(playerCountCurr);
	}

	public String getPlayerCountMaxStr() {
		return NumberFormat.getInstance().format(playerCountMax);
	}

	public String getPlayerCountAvgStr() {
		return NumberFormat.getInstance().format(playerCountAvg);
	}

	public String getPlayerCountMinStr() {
		return NumberFormat.getInstance().format(playerCountMin);
	}

}
