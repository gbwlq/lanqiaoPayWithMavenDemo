package org.lanqiao.controller;

import java.util.Map;

import org.lanqiao.entity.User2;
import org.lanqiao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
//用户
@Controller
@RequestMapping("/UserController")
public class UserController {
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	/**
	 * 用户邮箱注册
	 * 
	 * reg_personal_email_a.jsp->reg_personal_b.jsp
	 * 用户不存在则进行增加
	 * @param email
	 */
	@RequestMapping("/addUserEmail")
	public String addEmail(@RequestParam String email,Map<String, Object> map) {
		User2 user = userService.queryUserByEmail(email);
		if(user != null) {
			return "reg_personal_email_a";
		}else {
			userService.addUserEmail(email);
			map.put("user", user);
			return "reg_personal_b";
		}
	}
	/**
	 * 用户手机注册
	 * reg_personal_mobile_a.jsp->reg_personal_b.jsp
	 * 
	 * @param phoneNumber
	 */
	@RequestMapping("/addPhone")
	public String addPhone() {
		
		return "";
	}
	/**
	 * 验证用户身份证号与姓名
	 * reg_personal_b.jsp->reg_company_c.jsp
	 * 
	 * @return
	 */
	@RequestMapping("updateWithUserIDAndName")
	public String updateWithUserIDAndName(User2 user) {
		userService.updateWithUserIDAndName(user);
		
		return "reg_company_c";
	}
	/**
	 * 设置密码
	 * reg_company_c.jsp->reg_common_e.jsp
	 * 
	 */
	@RequestMapping("/updateWithPassWord")
	public String updateWithPassWord(User2 user) {
		userService.updateWithPassWord(user);
		return "reg_common_e";
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






































