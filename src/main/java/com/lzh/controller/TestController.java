package com.lzh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lzh.utils.StringUtils;

/**
 * @author LZH
 * @Date 2019年10月12日
 * 
 */

@RequestMapping("ExamWeek2")
@Controller
public class TestController {
	
	@RequestMapping("toTest.do")
	public String toTest() {
		return "Test";
	}
	
	@RequestMapping("getData.do")
	public String getData(String str) {
		System.out.println("调用获取数据方法");
		String html = StringUtils.toHtml(str);
		System.out.println("HTML is :\n" + html);
		return "Test";
	}
	
	@RequestMapping("check.do")
	@ResponseBody
	public boolean check(String str) {
		System.out.println("调用检查字符串方法");
		boolean hasText = StringUtils.hasText(str);
		return hasText;
	}

}

