
package com.human.java.company.controller;

import java.security.Provider.Service;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.CompanyVO;
import com.human.java.domain.CustomerVO;
import com.human.java.service.CompanyService;
import com.human.java.service.CustomerService;

@Controller
@RequestMapping("/company/")
public class CompanyChangeInfoController {

	@Autowired
	CompanyService companyService;

	@RequestMapping("CompanyUpdateInfo.do")
	public String companyupdate(CompanyVO vo, HttpSession session) {

		companyService.companyupdate(vo);

		vo.setCompany_id(String.valueOf(session.getAttribute("companyId")));
		vo.setCompany_password(String.valueOf(session.getAttribute("companyPass")));

		CompanyVO result = companyService.companyLogin(vo);

		session.setAttribute("companyId", result.getCompany_id());
		session.setAttribute("companyPass", result.getCompany_password());
		session.setAttribute("companyPh", result.getCompany_ph());
		session.setAttribute("companyName", result.getCompany_name());
		session.setAttribute("companyEmail", result.getCompany_email());
		session.setAttribute("companyRegnum", result.getCompany_regnum());

		return "redirect:/company/CompanyChangeInfo.do";
	}
}