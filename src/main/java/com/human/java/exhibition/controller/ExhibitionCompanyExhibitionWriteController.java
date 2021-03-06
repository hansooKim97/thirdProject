package com.human.java.exhibition.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.human.java.domain.CompanyVO;
import com.human.java.domain.ExhibitionVO;
import com.human.java.service.CompanyService;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/exhibition/")
public class ExhibitionCompanyExhibitionWriteController {
	
	@Autowired
	ExhibitionService exhibitionService;

	// 업체 전시회 등록
	@RequestMapping("exhibitionCompanyExhibitionWrite.do")
	public String exhibitionCompanyExhibitionWrite(ExhibitionVO vo, @RequestParam("file") MultipartFile file, @RequestParam("file_sub") MultipartFile file_sub) {
		
		exhibitionService.companyInsertExhibition(vo);
	
		return "redirect:/company/CompanyWriteWaiting.do";
	}
	
	// 업체 전시회 수정
	@RequestMapping("exhibitionCompanyExhibitionUpdate.do")
	public String exhibitionCompanyExhibitionUpdate(ExhibitionVO vo) {
		
		exhibitionService.companyUpdateExhibition(vo);
		
		return "redirect:/company/CompanyWriteWaiting.do";
	}
	
	// 업체 전시회 삭제 
	@RequestMapping("exhibitionCompanyExhibitionDelete.do")
	public String exhibitionCompanyExhibitionDelete(ExhibitionVO vo , Model model) {
		
		// [0] * 해당 회사의 아이디가 제대로 들어왔는지 확인 ( 셀렉트에서 사용되는 변수 ) 
		String companyId = vo.getCompany_id();
		
		// 매개변수에 값이 제대로 들어왔는지 확인할것
		// 셀렉트에서 사용돌 회사 아이디

		// 삭제에서 사용될 전시회 아이디 
	
		// [1] 딜리트 서비스를 호츨한다.
		// -------------------------------------
		
		//  서비스 : 익스히비션 서비스
		//  다오 : 익스히비션 다오 
		//  매퍼 : 컴패니 매퍼 
		
		// 서비스 호출 방식은 아래와 같이 진행된다.
		exhibitionService.exhibitionCompanyExhibitionDelete(vo);
		
		// -------------------------------------
		
		// [2] 딜리트가 끝나면 셀렉트 서비스를 호출한다.	
		List<ExhibitionVO>li = exhibitionService.getExhibitionCompanyServiceList(vo , companyId);	
		
		if(li.isEmpty()) {
			String nullCheck = "등록한 전시회가 없습니다.";
			model.addAttribute("nullCheck" , nullCheck);
			return "/Company/CompanyExhibitionList";
		}else {
			model.addAttribute("CompanyExhibitionList", li);
			return "/Company/CompanyExhibitionList";
		}
		
	}
	
}
