package kr.co.steamsale.web.model;

public class PagingInfo {
	int pageId;
	int pageSize;
	int totalCount;
	int currIdx;
	int startIdx;
	int endIdx;
	int beforeIdx;
	int nextIdx;

	public int getPageId() {
		return pageId;
	}

	public void setPageId(int pageId) {
		this.pageId = pageId;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getStartIdx() {
		return startIdx;
	}

	public void setStartIdx(int startIdx) {
		this.startIdx = startIdx;
	}

	public int getEndIdx() {
		return endIdx;
	}

	public void setEndIdx(int endIdx) {
		this.endIdx = endIdx;
	}

	public int getBeforeIdx() {
		return (this.currIdx - 1) < 1 ? 1 : (this.currIdx - 1);
	}

	public int getNextIdx() {
		return (this.currIdx + 1) > (int)Math.ceil((float)this.totalCount / this.pageSize) ? (int)Math.ceil((float)this.totalCount / this.pageSize) : (this.currIdx + 1);
	}

	public int getCurrIdx() {
		return currIdx;
	}

	public void setCurrIdx(int currIdx) {
		this.currIdx = currIdx;
	}
}
