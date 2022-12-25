package com.multi.mvc.submain.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/submain")
@Controller
public class SubmainController {
	
	@GetMapping("/showMain")
	public String showMain() {
		return "submain/showMain";
	}
	
	@GetMapping("/displayMain")
	public String displayMain() {
		return "submain/displayMain";
	}
	
	@GetMapping("/locationMain")
	public String locationMain() {
		return "submain/locationMain";
	}
	

	@GetMapping("/pay") // 12/25: 수정할 가능성 있음
	public String pay() {
		return "submain/pay";
	}
	
	@GetMapping("/ranking") // 12/25: 수정할 가능성 있음
	public String ranking() {
		return "submain/ranking";
	}
	
//	@GetMapping("/search") // 12/25: 수정할 가능성 있음
//	public String search() {
//		return "submain/search";
//	}
	
	@RequestMapping("/search")
	public String search(Model model, String value) {
		model.addAttribute("value", value);
		return "submain/search";
	}
	
}
