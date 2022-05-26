package kr.co.steamsale.web.model;

public class MainInfo {
	String type;
	int id;
	String title;
	String headerImage;
	String name;
	String linkUrl;
	String typeCss;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getHeaderImage() {
		return headerImage;
	}

	public void setHeaderImage(String headerImage) {
		this.headerImage = headerImage;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLinkUrl() {
		return linkUrl;
	}

	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}

	public String getTypeCss() {
		return typeCss;
	}

	public void setTypeCss(String typeCss) {
		this.typeCss = typeCss;
	}
}
