package com.multi.mvc.submain.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RankingList {         
	private int pNo          ;
	private int rankNo       ;
	private double bookRate  ;
	private String mt20id    ;
	private String prfnm     ;
	private Date prfpdfrom   ;
	private Date prfpdto     ;
	private String fdtynm    ;
	private String poster    ;
	private String genrenm   ;
	private String prfstate  ;
	private String openrun   ;
}
