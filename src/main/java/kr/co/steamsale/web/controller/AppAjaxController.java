package kr.co.steamsale.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import kr.co.steamsale.web.model.AppPrice;
import kr.co.steamsale.web.model.MainInfo;
import kr.co.steamsale.web.model.PackagePrice;
import kr.co.steamsale.web.service.AppService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AppAjaxController {
	//private static final Logger logger = LoggerFactory.getLogger(AppAjaxController.class);
	
	@Autowired
	AppService service;
	
	@RequestMapping(value = "/getMainSaleInfo", method = RequestMethod.GET)
	public @ResponseBody List<MainInfo> getMainSaleInfo(HttpServletRequest request) {
		List<MainInfo> returnList = service.getMainSaleInfo();

		return returnList;
	}
	
	@RequestMapping(value = "/getAppPriceChartInfo", method = RequestMethod.GET)
	public @ResponseBody List<AppPrice> getAppPriceChartInfo(int appId) {
		List<AppPrice> returnList = service.getAppPriceChartInfo(appId);

		return returnList;
	}
	
	@RequestMapping(value = "/getPackagePriceChartInfo", method = RequestMethod.GET)
	public @ResponseBody List<PackagePrice> getPackagePriceChartInfo(int packageId) {
		List<PackagePrice> returnList = service.getPackagePriceChartInfo(packageId);

		return returnList;
	}
}
