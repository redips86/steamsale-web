package kr.co.steamsale.web.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import kr.co.steamsale.web.model.AppSearch;
import kr.co.steamsale.web.model.MainCount;
import kr.co.steamsale.web.model.MainInfo;
import kr.co.steamsale.web.model.PagingInfo;
import kr.co.steamsale.web.model.SaleInfo;
import kr.co.steamsale.web.service.AppService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	AppService appService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		List<MainInfo> sales = appService.getMainSaleInfo();
		
		MainCount count = appService.getMainCountInfo();
		
		Map<String, String> types  = new HashMap<String, String>();
		for(MainInfo data : sales){
			types.put(data.getTitle(), data.getTypeCss());
		}
		
		model.addAttribute("Sales", sales);
		model.addAttribute("Types", types);
		model.addAttribute("Count", count);
		return "home";
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Model model) {
		return "test";
	}
	
	@RequestMapping(value = "/app/{id}", method = RequestMethod.GET)
	public String app(Model model, @PathVariable("id") int id) {
		model.addAttribute("App", appService.getAppMainInfo(id));
		model.addAttribute("Price", appService.getAppPriceInfo(id));
		model.addAttribute("Player", appService.getAppPlayerInfo(id));
		model.addAttribute("Review", appService.getAppReviewInfo(id));
		return "content/app";
	}
	
	@RequestMapping(value = "/sub/{id}", method = RequestMethod.GET)
	public String sub(Model model, @PathVariable("id") int id) {
		model.addAttribute("Sub", appService.getPackageMainInfo(id));
		model.addAttribute("Price", appService.getPackagePriceInfo(id));
		model.addAttribute("Apps", appService.getPackageAppsInfo(id));
		
		return "content/sub";
	}
	
	@RequestMapping(value = "/search/{query}/{pageId}", method = RequestMethod.GET)
	public String search(Model model, @PathVariable("query") String query, @PathVariable("pageId") int pageId) throws UnsupportedEncodingException {
		
		if(pageId < 1)
			pageId = 1;
		
		int pageSize = 5;
		
		List<AppSearch> searches =  appService.getSearchInfo(query, (pageSize * pageId) - pageSize, pageSize);
		model.addAttribute("Searches", searches);
		
		PagingInfo info = new PagingInfo();
		info.setPageId(pageId);
		info.setPageSize(pageSize);
		info.setStartIdx((pageSize * pageId) - pageSize);
		info.setEndIdx((pageSize * pageId) - 1);
		info.setTotalCount(appService.getSearchInfoTotal(query));
		info.setCurrIdx(pageId);
		
		model.addAttribute("PagingInfo", info);
		model.addAttribute("query", new String(query.getBytes("iso-8859-1"), "utf-8"));
		
		return "search/search";
	}
	
	@RequestMapping(value = {"/sale"}, method = RequestMethod.GET)
	public String sale(Model model) throws UnsupportedEncodingException  {
		return saleTitle(model, null, 0);
	}
	
	@RequestMapping(value = {"/sale/{title}/{pageId}"}, method = RequestMethod.GET)
	public String saleTitle(Model model,  @PathVariable("title") String title, @PathVariable("pageId") int pageId) {
		if(pageId < 1)
			pageId = 1;
		
		int pageSize = 100000;
		
		Map<String, List<SaleInfo>> map = new LinkedHashMap<String, List<SaleInfo>>();
		
		if(title != null){			
			pageSize = 100;
		}
		
		List<SaleInfo> saleInfo = appService.getSaleInfo(title, (pageSize * pageId) - pageSize, pageSize);
		
		// 2depth 일 경우
		for (SaleInfo sale : saleInfo) {
			   String key = sale.getTitle();
			   if (map.get(key) == null) {
			      map.put(key, new ArrayList<SaleInfo>());
			   }
			   map.get(key).add(sale);
			}
		
		PagingInfo info = new PagingInfo();
		info.setPageId(pageId);
		info.setPageSize(pageSize);
		info.setStartIdx((pageSize * pageId) - pageSize);
		info.setEndIdx((pageSize * pageId) - 1);
		info.setTotalCount(appService.getSaleInfoTotal(title));
		info.setCurrIdx(pageId);
		
		model.addAttribute("Sales", map);
		model.addAttribute("Title", title);
		model.addAttribute("PagingInfo", info);
		
		return "content/sale";
	}
	
	@RequestMapping(value = {"/apps/{type}"}, method = RequestMethod.GET)
	public String appsType(Model model, @PathVariable("type") String type)  {
		return appsTypeWithPageId(model, type, 1);
	}
	
	@RequestMapping(value = "/apps/{type}/{pageId}", method = RequestMethod.GET)
	public String appsTypeWithPageId(Model model, @PathVariable("type") String type, @PathVariable("pageId") int pageId) {
		int pageSize = 50;
				
		PagingInfo info = new PagingInfo();
		info.setPageId(pageId);
		info.setPageSize(pageSize);
		info.setStartIdx((pageSize * pageId) - pageSize);
		info.setEndIdx((pageSize * pageId) - 1);
		info.setTotalCount(appService.getAppsInfoTotal(type));
		info.setCurrIdx(pageId);
		
		model.addAttribute("Searches", appService.getAppsInfo(type, (pageSize * pageId) - pageSize, pageSize));
		model.addAttribute("PagingInfo", info);
		model.addAttribute("TypeTitle", appService.getTypeTitle(type));
		
		return "content/apps";
	}
	
	@RequestMapping(value = "/subs", method = RequestMethod.GET)
	public String subs(Model model) {
		return subsWithPageId(model, 1);
	}
	
	@RequestMapping(value = "/subs/{pageId}", method = RequestMethod.GET)
	public String subsWithPageId(Model model, @PathVariable("pageId") int pageId) {
		
		if(pageId < 1)
			pageId = 1;
		
		int pageSize = 50;
		
		List<AppSearch> searches =  appService.getPackagesInfo((pageSize * pageId) - pageSize, pageSize);
		model.addAttribute("Searches", searches);
		
		PagingInfo info = new PagingInfo();
		info.setPageId(pageId);
		info.setPageSize(pageSize);
		info.setStartIdx((pageSize * pageId) - pageSize);
		info.setEndIdx((pageSize * pageId) - 1);
		info.setTotalCount(appService.getPackagesInfoTotal());
		info.setCurrIdx(pageId);
		
		model.addAttribute("Searches", searches);
		model.addAttribute("PagingInfo", info);
		
		return "content/subs";
	}
	
	@RequestMapping(value = "/google1bfc77f403c85a35.html", method = RequestMethod.GET)
	public String googleHtml(Model model) {
		return "google1bfc77f403c85a35";
	}
	
	@RequestMapping(value = {"/genre/{genreId}"}, method = RequestMethod.GET)
	public String genre(Model model, @PathVariable("genreId") int genreId)  {
		return genreWithPageId(model, genreId, 1);
	}
	
	@RequestMapping(value = "/genre/{genreId}/{pageId}", method = RequestMethod.GET)
	public String genreWithPageId(Model model, @PathVariable("genreId") int genreId, @PathVariable("pageId") int pageId) {
		int pageSize = 50;
				
		PagingInfo info = new PagingInfo();
		info.setPageId(pageId);
		info.setPageSize(pageSize);
		info.setStartIdx((pageSize * pageId) - pageSize);
		info.setEndIdx((pageSize * pageId) - 1);
		info.setTotalCount(appService.getGenreInfoTotal(genreId));
		info.setCurrIdx(pageId);
		
		model.addAttribute("Searches", appService.getGenreInfo(genreId, (pageSize * pageId) - pageSize, pageSize));
		model.addAttribute("PagingInfo", info);
		model.addAttribute("TypeTitle", appService.getGenreTitle(genreId));
		
		return "content/genre";
	}
}
