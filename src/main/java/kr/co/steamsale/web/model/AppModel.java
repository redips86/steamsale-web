package kr.co.steamsale.web.model;

import java.util.List;

public class AppModel {
	int appId;
	String name;
	String headerImage;
	String developers;
	String currency;
	double initialPrice;
	double finalPrice;
	double discountPercent;

	String type;
	int requiredAge;
	String aboutTheGame;
	String description;
	String supportedLanguages;
	String website;
	String pcReqMin;
	String pcReqRec;
	String macReqMin;
	String macReqRec;
	String linuxReqMin;
	String linuxReqRec;
	String publishers;
	boolean linuxPlatform;
	boolean macPlatform;
	boolean windowsPlatform;
	String platformHtml;
	int metaScore;
	String metaUrl;
	int recommendations;
	boolean comingSoon;
	String releaseDate;
	boolean isFree;
	
	List<AppGenre> appGenre;

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

	public String getHeaderImage() {
		return headerImage;
	}

	public void setHeaderImage(String headerImage) {
		this.headerImage = headerImage;
	}

	public String getDevelopers() {
		return developers;
	}

	public void setDevelopers(String developers) {
		this.developers = developers;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getRequiredAge() {
		return requiredAge;
	}

	public void setRequiredAge(int requiredAge) {
		this.requiredAge = requiredAge;
	}

	public String getAboutTheGame() {
		return aboutTheGame;
	}

	public void setAboutTheGame(String aboutTheGame) {
		this.aboutTheGame = aboutTheGame;
	}

	public String getSupportedLanguages() {
		return supportedLanguages;
	}

	public void setSupportedLanguages(String supportedLanguages) {
		this.supportedLanguages = supportedLanguages;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getPcReqMin() {
		return pcReqMin;
	}

	public void setPcReqMin(String pcReqMin) {
		this.pcReqMin = pcReqMin;
	}

	public String getPcReqRec() {
		return pcReqRec;
	}

	public void setPcReqRec(String pcReqRec) {
		this.pcReqRec = pcReqRec;
	}

	public String getMacReqMin() {
		return macReqMin;
	}

	public void setMacReqMin(String macReqMin) {
		this.macReqMin = macReqMin;
	}

	public String getMacReqRec() {
		return macReqRec;
	}

	public void setMacReqRec(String macReqRec) {
		this.macReqRec = macReqRec;
	}

	public String getLinuxReqMin() {
		return linuxReqMin;
	}

	public void setLinuxReqMin(String linuxReqMin) {
		this.linuxReqMin = linuxReqMin;
	}

	public String getLinuxReqRec() {
		return linuxReqRec;
	}

	public void setLinuxReqRec(String linuxReqRec) {
		this.linuxReqRec = linuxReqRec;
	}

	public String getPublishers() {
		return publishers;
	}

	public void setPublishers(String publishers) {
		this.publishers = publishers;
	}

	public boolean isLinuxPlatform() {
		return linuxPlatform;
	}

	public void setLinuxPlatform(boolean linuxPlatform) {
		this.linuxPlatform = linuxPlatform;
	}

	public boolean isMacPlatform() {
		return macPlatform;
	}

	public void setMacPlatform(boolean macPlatform) {
		this.macPlatform = macPlatform;
	}

	public boolean isWindowsPlatform() {
		return windowsPlatform;
	}

	public void setWindowsPlatform(boolean windowsPlatform) {
		this.windowsPlatform = windowsPlatform;
	}

	public int getMetaScore() {
		return metaScore;
	}

	public void setMetaScore(int metaScore) {
		this.metaScore = metaScore;
	}

	public String getMetaUrl() {
		return metaUrl;
	}

	public void setMetaUrl(String metaUrl) {
		this.metaUrl = metaUrl;
	}

	public int getRecommendations() {
		return recommendations;
	}

	public void setRecommendations(int recommendations) {
		this.recommendations = recommendations;
	}

	public boolean isComingSoon() {
		return comingSoon;
	}

	public void setComingSoon(boolean comingSoon) {
		this.comingSoon = comingSoon;
	}

	public String getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}

	public boolean isFree() {
		return isFree;
	}

	public void setFree(boolean isFree) {
		this.isFree = isFree;
	}

	public List<AppGenre> getAppGenre() {
		return appGenre;
	}

	public void setAppGenre(List<AppGenre> appGenre) {
		this.appGenre = appGenre;
	}
	
	public String getPlatformHtml() {
		String temp = "";
		
		if(this.windowsPlatform)
			temp += "<i class='fa fa-windows'></i> ";
		if(this.linuxPlatform)
			temp += "<i class='fa fa-linux'></i> ";
		if(this.macPlatform)
			temp += "<i class='fa fa-apple'></i>";
		
		return temp;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
