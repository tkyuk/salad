package kr.co.salad.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.vo.KategoriePrdVO;

@SessionAttributes({"userId", "userName"})
@Controller
public class KategoriePrdController {
	
	@Autowired(required = false)
	private KategoriePrdService kpService;
	
	@RequestMapping(value="/goods_list.do", method=GET)
	public String goodsListForm(HttpSession session ,KategoriePrdVO kpVO, Model model) {
		String url="user/goods/goods_list";
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		if(userId==null) {//로그인이 안되어있으면
			//url="redirect:http://salad.sist.co.kr/login.do";
			//model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("userId", userId);
		}//end else
		
		int mainCateNum=kpVO.getMainCateNum();
		
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		List<KategoriePrdDomain> subCateList=kpService.subCateList(mainCateNum);
		
		String mainCateName=mainCateList.get(mainCateNum-1).getMainCateName();//현재 메인 카테고리명
		
		model.addAttribute("mainCateName", mainCateName);//현재 메인 카테고리명
		model.addAttribute("mainCateList", mainCateList);//메인 메뉴
		model.addAttribute("subCateList", subCateList);//서브 메뉴
		
		return url;
	}//goodsListForm
	
	@ResponseBody
	@RequestMapping(value="/cate_prd_box_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchCatePrdBoxListAjax(KategoriePrdVO kpVO) {
		
		//상품 박스형 리스트
		String jsonObj=kpService.searchPrdBoxListJson(kpVO);//현재 페이지, 메인 카테고리, 서브 카테고리
		return jsonObj;
	}//searchCatePrdBoxListAjax
	
}//class
