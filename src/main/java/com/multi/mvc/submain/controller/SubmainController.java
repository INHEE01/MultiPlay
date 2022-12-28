package com.multi.mvc.submain.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.board.model.service.BoardService;
import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.submain.model.service.SubmainService;
import com.multi.mvc.submain.model.vo.RankingList;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/submain")
@Controller
public class SubmainController {
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	SubmainService submainService;
	
//	@GetMapping("/displayMain")
//	public String displayMain() {
//		return "submain/displayMain";
//	}
//	
//	@GetMapping("/genreDetail") // 12/25: 수정할 가능성 있음
//	public String genreDetail() {
//		return "submain/genreDetail";
//	}
//	
//	@GetMapping("/locationMain")
//	public String locationMain() {
//		return "submain/locationMain";
//	}	

	@GetMapping("/pay") // 12/25: 수정할 가능성 있음
	public String pay() {
		return "submain/pay";
	}
	
	@GetMapping("/ranking") // 
	public String ranking(Model model, @RequestParam Map<String, String> param) {
		Map<String, String> map = new HashMap<>();
		log.info("리스트 요청, param : " + param);
		
		List<RankingList> rankingList = submainService.getRankingList(map);
		
		model.addAttribute("rankingList", rankingList);
		model.addAttribute("param", param);
		return "submain/ranking";
	}
	
//	@GetMapping("/search") // 12/25: 수정할 가능성 있음
//	public String search() {
//		return "submain/search";
//	}
	
	@RequestMapping("/search")
	public String search(Model model, String value) {
		model.addAttribute("value", value);

		// 자유게시판 가져오는 코드
		Map<String, String> map = new HashMap<>();
		map.put("title", value);
		map.put("content", value);
		int count = boardService.getBoardCount3(map);
		PageInfo pageInfo = new PageInfo(1, 20, count, 20);
		List<Board> boardList = boardService.getBoardList3(pageInfo, map);
		model.addAttribute("boardList", boardList);
		
		// TODO 전시 정보 가져오는 코드 짜야함 
		
		
		return "submain/search";
	}
	
//	@GetMapping("/showMain")
//	public String showMain() {
//		return "submain/showMain";
//	}
	
}
