package com.green.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.green.board.dto.BoardDto;
import com.green.menus.dto.MenuDTO;

@Mapper
public interface BoardMapper { // 안터페이스로 만들어진 클래스

	List<BoardDto> getBoardList(MenuDTO menuDto);

	BoardDto getBoard(BoardDto boardDto);

	void incHit(BoardDto boardDto);

	void insertBoard(BoardDto boardDto);

	void deleteBoard(BoardDto boardDto);

	void updateBoard(BoardDto boardDto);


	
	
}
