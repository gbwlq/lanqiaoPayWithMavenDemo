package org.lanqiao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
//公司
@Controller
@RequestMapping("/CompanyController")
public class CompanyController {
	/**
	 * 公司邮箱注册
	 * reg_company_a.jsp->reg_company_b.jsp
	 * 
	 * @param email
	 * 
	 */
	@RequestMapping("/addCompany")
	public String addUserC() {
		
		return "";
	}
	/**
	 * 完善信息
	 * reg_company_b.jsp->reg_company_c.jsp
	 */
	@RequestMapping("/")
	public String addUser() {
		
		return "";
	}
	/**
	 * 设置密码
	 * reg_company_c.jsp->reg_common_e.jsp
	 * 
	 */
	@RequestMapping("/addUserWithPassword")
	public String addUserD() {
		
		return "";
	}
	/**
	 * 注册成功
	 * reg_common_e.jsp->uc.jsp
	 * 
	 */
	@RequestMapping("/addUserE")
	public String addUserE() {
		
		return "";
	}
}
















