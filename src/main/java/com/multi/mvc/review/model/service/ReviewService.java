package com.multi.mvc.review.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.review.model.mapper.ReviewMapper;
import com.multi.mvc.review.model.vo.Review;

@Service
public class ReviewService {
	
	@Autowired
	private ReviewMapper mapper;
	
	@Transactional(rollbackFor = Exception.class)
	public int saveReview(Review review) {
		int result = 0;
		if(review.getReviewNo() == 0) { 
			result = mapper.insertReview(review); // 리뷰 작성
		} else {
			result = mapper.updateReview(review); // 리뷰 수정
		}
		return result;
	}
	
	// 리뷰 작성
	@Transactional(rollbackFor = Exception.class)
	public int insertReview(Review review) {
		return mapper.insertReview(review);
	}
	
	// 리뷰 가져오기
	public List<Review> getReviewList(PageInfo pageInfo, Map<String, String> param) {
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectReviewList(param);
	}
	
	// 리뷰 리액션 카운트
	public int getReactionCount(Map<String, String> param) {
		return mapper.selectReactionCount(param);
	}
	
}
