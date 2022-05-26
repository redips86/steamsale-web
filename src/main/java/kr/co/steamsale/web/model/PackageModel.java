package kr.co.steamsale.web.model;

public class PackageModel {
	int packageId;
	String name;
	String pageImage;
	String headerImage;
	String smallLogo;
	boolean linuxPlatform;
	boolean macPlatform;
	boolean windowsPlatform;
	boolean comingSoon;
	String releaseDate;
	String platformHtml;

	public int getPackageId() {
		return packageId;
	}

	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPageImage() {
		return pageImage;
	}

	public void setPageImage(String pageImage) {
		this.pageImage = pageImage;
	}

	public String getHeaderImage() {
		return headerImage;
	}

	public void setHeaderImage(String headerImage) {
		this.headerImage = headerImage;
	}

	public String getSmallLogo() {
		return smallLogo;
	}

	public void setSmallLogo(String smallLogo) {
		this.smallLogo = smallLogo;
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

}
