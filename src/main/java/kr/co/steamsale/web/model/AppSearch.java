package kr.co.steamsale.web.model;

import java.util.List;

public class AppSearch {
	int id;
	String type;
	String typeKor;
	String headerImage;
	String image_120x49;
	String image_184x69;
	String name;
	String aboutTheGame;
	double initialPrice;
	double finalPrice;
	double discountPercent;
	String discountPercentStr;
	int positive;
	int negative;
	List<AppGenre> appGenre;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAboutTheGame() {
		return aboutTheGame;
	}

	public void setAboutTheGame(String aboutTheGame) {
		this.aboutTheGame = aboutTheGame;
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

	public String getImage_120x49() {
		if(this.type.equals("sub") && this.headerImage == null)
			return "/assets/img/steam-logo.png";
		else if(this.type.equals("sub"))
			return this.headerImage;
		else if(this.type.equals("unknown"))
			return "/assets/img/steam-logo.png";
		else
			return String.format("http://cdn.akamai.steamstatic.com/steam/apps/%d/capsule_sm_120.jpg", this.id);
	}

	public String getImage_184x69() {
		if(this.type.equals("sub") && this.headerImage == null)
			return "/assets/img/steam-logo.png";
		else if(this.type.equals("sub"))
			return this.headerImage;
		else if(this.type.equals("unknown"))
			return "/assets/img/steam-logo.png";
		else
			return String.format("http://cdn.akamai.steamstatic.com/steam/apps/%d/capsule_184x69.jpg", this.id);
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

	public List<AppGenre> getAppGenre() {
		return appGenre;
	}

	public void setAppGenre(List<AppGenre> appGenre) {
		this.appGenre = appGenre;
	}

	public String getDiscountPercentStr() {
		return String.valueOf((int)this.discountPercent);
	}

	public String getHeaderImage() {
		return headerImage;
	}

	public void setHeaderImage(String headerImage) {
		this.headerImage = headerImage;
	}

	public String getTypeKor() {
		return typeKor;
	}

	public void setTypeKor(String typeKor) {
		this.typeKor = typeKor;
	}


}
