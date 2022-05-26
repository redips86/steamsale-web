package kr.co.steamsale.web.persistence;

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

import org.apache.ibatis.annotations.Param;

public interface AppMapper {
	public List<MainInfo> selectMainSaleInfo();

	public AppModel selectAppMainInfo(int id);

	public List<AppPrice> selectAppPriceChartInfo(int appId);

	public AppPlayer selectAppPlayerInfo(int appId);

	public AppPrice selectAppPriceInfo(int appId);

	public AppReview selectAppReviewInfo(int appId);
	
	public List<AppSearch> selectSearchInfo(@Param("appId") int appId, @Param("name") String name, @Param("startIdx") int startIdx, @Param("endIdx") int endIdx);

	public List<AppGenre> selectSearchGenreInfo(@Param("id") int id);

	public int selectSearchInfoTotal(@Param("appId") int appId, @Param("name") String name);

	public MainCount selectMainCountInfo();

	public List<SaleInfo> selectSaleInfo();
	
	public List<SaleInfo> selectSaleInfo(@Param("title") String title, @Param("startIdx") int startIdx, @Param("endIdx") int endIdx);

	public int selectSaleInfoTotal(@Param("title") String title);

	public PackageModel selectPackageMainInfo(int id);

	public PackagePrice selectPackagePriceInfo(int id);

	public List<PackagePrice> selectPackagePriceChartInfo(int packageId);

	public List<PackageApp> selectPackageAppsInfo(int packageId);
	
	public List<AppSearch> selectAppsInfo(@Param("type") String type, @Param("startIdx") int startIdx, @Param("endIdx") int endIdx);

	public int selectAppsInfoTotal(@Param("type") String type);

	public String selectTypeTitle(@Param("type") String type);

	public List<AppSearch> selectPackagesInfo(@Param("startIdx") int startIdx, @Param("endIdx") int endIdx);

	public int selectPackagesInfoTotal();

	public List<AppSearch> selectGenreInfo(@Param("genreId") int genreId, @Param("startIdx") int startIdx, @Param("endIdx") int endIdx);

	public int selectGenreInfoTotal(@Param("genreId") int genreId);

	public String selectGenreTitle(@Param("genreId") int genreId);
}
