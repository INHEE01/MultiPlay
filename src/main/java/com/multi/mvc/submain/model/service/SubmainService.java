package com.multi.mvc.submain.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.submain.model.mapper.SubmainMapper;
import com.multi.mvc.submain.model.vo.RankingList;

@Service
public class SubmainService {

	@Autowired
	SubmainMapper mapper;

	public List<RankingList> getRankingList(Map<String, Object> map) {
		return mapper.selectRankingList(map);
	}

	public List<RankingList> getMusicalRankingList(Map<String, Object> map) {
		return mapper.selectMusicalRanking(map);
	}

	public List<RankingList> getPlayRankingList(Map<String, Object> map) {
		return mapper.selectPlayRanking(map);
	}

	public List<RankingList> getConcertRankingList(Map<String, Object> map) {
		return mapper.selectConcertRanking(map);
	}

	public List<RankingList> getClassicRankingList(Map<String, Object> map) {
		return mapper.selectClassicRanking(map);
	}

	public List<RankingList> getDisplayRankingList(Map<String, Object> map) {
		return mapper.selectDisplayRanking(map);
	}

}
