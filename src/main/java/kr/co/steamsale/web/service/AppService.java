package kr.co.steamsale.web.service;

import java.util.List;

import kr.co.steamsale.web.model.AppGenre;
import kr.co.steamsale.web.model.AppModel;
import kr.co.steamsale.web.model.AppPlayer;
import kr.co.steamsale.web.model.AppPrice;
import kr.co.steamsale.web.model.AppReview;
import kr.co.steamsale.web.model.AppSearch;
import kr.co.steamsale.web.model.MainCount;
import kr.co.steamsale.web.model.MainInfo;
import kr.co.steamsale.web.model.PackageApp;
import kr.co.steamsale.web.model.PackageModel;
import kr.co.steamsale.web.model.PackagePrice;
import kr.co.steamsale.web.model.SaleInfo;
import kr.co.steamsale.web.persistence.AppMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AppService {
	@Autowired
	AppMapper mapper;

	public List<MainInfo> getMainSaleInfo() {
		return mapper.selectMainSaleInfo(); 
	}

	public AppModel getAppMainInfo(int id) {
		return mapper.selectAppMainInfo(id);
	}

	public List<AppPrice> getAppPriceChartInfo(int appId) {
		return mapper.selectAppPriceChartInfo(appId);
	}

	public AppPlayer getAppPlayerInfo(int appId) {
		return mapper.selectAppPlayerInfo(appId);
	}

	public AppPrice getAppPriceInfo(int appId) {
		return mapper.selectAppPriceInfo(appId);
	}

	public AppReview getAppReviewInfo(int appId) {
		return mapper.selectAppReviewInfo(appId);
	}

	public List<AppSearch> getSearchInfo(String query, int startIdx, int endIdx) {
		int appId = 0;
		String name;
		
		if(query.matches("[-+]?\\d*\\.?\\d+"))
			appId = Integer.parseInt(query);
		name = query;
	
		List<AppSearch> list = mapper.selectSearchInfo(appId, name, startIdx, endIdx);
		for(AppSearch data : list){
			data.setAppGenre(mapper.selectSearchGenreInfo(data.getId()));
		}
		
		return list; 
	}

	public int getSearchInfoTotal(String query) {
		int appId = 0;
		String name;
		
		if(query.matches("[-+]?\\d*\\.?\\d+"))
			appId = Integer.parseInt(query);
		name = query;
		
		return mapper.selectSearchInfoTotal(appId, name);
	}
	
	public List<AppGenre> getSearchGenreInfo(int id) {
		return mapper.selectSearchGenreInfo(id);
	}

	public MainCount getMainCountInfo() {
		return mapper.selectMainCountInfo();
	}
	
	public List<SaleInfo> getSaleInfo() {
		return mapper.selectSaleInfo(); 
	}

	public List<SaleInfo> getSaleInfo(String title, int startIdx, int endIdx) {
		return mapper.selectSaleInfo(title, startIdx, endIdx); 
	}

	public int getSaleInfoTotal(String title) {
		return mapper.selectSaleInfoTotal(title);
	}

	public PackageModel getPackageMainInfo(int id) {
		return mapper.selectPackageMainInfo(id);
	}

	public PackagePrice getPackagePriceInfo(int id) {
		return mapper.selectPackagePriceInfo(id);
	}

	public List<PackagePrice> getPackagePriceChartInfo(int packageId) {
		return mapper.selectPackagePriceChartInfo(packageId);
	}

	public List<PackageApp> getPackageAppsInfo(int packageId) {
		return mapper.selectPackageAppsInfo(packageId);
	}

	public List<AppSearch> getAppsInfo(int startIdx, int endIdx) {
		return getAppsInfo(null, startIdx, endIdx);
	}
	
	public List<AppSearch> getAppsInfo(String type, int startIdx, int endIdx) {
		List<AppSearch> list = mapper.selectAppsInfo(type, startIdx, endIdx);
		for(AppSearch data : list){
			data.setAppGenre(mapper.selectSearchGenreInfo(data.getId()));
		}
		
		return list;
	}


	public int getAppsInfoTotal() {
		return getAppsInfoTotal(null);
	}
	
	public int getAppsInfoTotal(String type) {
		return mapper.selectAppsInfoTotal(type);
	}

	public String getTypeTitle(String type) {
		return mapper.selectTypeTitle(type);
	}

	public List<AppSearch> getPackagesInfo(int startIdx, int endIdx) {
		return mapper.selectPackagesInfo(startIdx, endIdx);
	}

	public int getPackagesInfoTotal() {
		return mapper.selectPackagesInfoTotal();
	}

	public List<AppSearch> getGenreInfo(int genreId, int startIdx, int endIdx) {
		List<AppSearch> list = mapper.selectGenreInfo(genreId, startIdx, endIdx);
		for(AppSearch data : list){
			data.setAppGenre(mapper.selectSearchGenreInfo(data.getId()));
		}
		
		return list;
	}

	public int getGenreInfoTotal(int genreId) {
		return mapper.selectGenreInfoTotal(genreId);
	}

	public String getGenreTitle(int genreId) {
		return mapper.selectGenreTitle(genreId);
	}
}

