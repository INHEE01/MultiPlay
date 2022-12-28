package com.multi.mvc.submain.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.submain.model.vo.RankingList;
// 주석 지우지마세욥!!!!
@Mapper
public interface SubmainMapper {
	List<RankingList> selectRankingList(Map<String, String> map);
//	List<RankingList> selectMusicalRanking(Map<String, String> map);
//	List<RankingList> selectPlayRanking(Map<String, String> map);
}
