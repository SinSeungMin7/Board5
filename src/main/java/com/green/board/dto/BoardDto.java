package com.green.board.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//@Data  // Getter/setter/toString/GashCodem equals 재정의, 기본생성자 BoardDto()
@Getter
@Setter
@ToString
@NoArgsConstructor  // 기본생성자
@AllArgsConstructor // 모든인자 생성자
public class BoardDto {
	// Fields
	private  int      idx;
	private  String   menu_id;
	private  String   title;
	private  String   content;
	private  String   writer;
	private  String   regdate;
	private  int      hit;
}
