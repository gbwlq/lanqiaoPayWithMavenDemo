package org.lanqiao.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.service.UserService;
import org.lanqiao.utils.RandomValidateCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
//公共部分
@Controller
@RequestMapping("/CommentController")
public class CommentController {
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	/**
	 * 获取生成验证码显示到 UI 界面
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping(value="/checkCode")
	public void checkCode(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		//设置相应类型,告诉浏览器输出的内容为图片
        response.setContentType("image/jpeg");
        
        //设置响应头信息，告诉浏览器不要缓存此内容
        response.setHeader("pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expire", 0);
        
        RandomValidateCode randomValidateCode = new RandomValidateCode();
        try {
            randomValidateCode.getRandcode(request, response);//输出图片方法
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
	
	/**
	 * 登陆
	 * login.jsp->uc.jsp
	 * 
	 * @param userName
	 * @param password
	 * @param map
	 * @return
	 */
//	@RequestMapping("/queryUserByName")
//	public String queryUserByName(@RequestParam String userName,String password,Map<String,Object> map) {
//		
//		boolean flag = userService.passwordIsRight(userName, password);
//		if(flag) {
//			User user = userService.queryUserByName(userName);
//			map.put("user", user);
//			return "uc";
//		}else {
//			return "login";
//		}
//	}
}
