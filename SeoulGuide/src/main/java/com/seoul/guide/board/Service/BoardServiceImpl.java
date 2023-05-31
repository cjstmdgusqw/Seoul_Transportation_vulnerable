package com.seoul.guide.board.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seoul.guide.board.DAO.BoardDAO;
import com.seoul.guide.board.DTO.Article;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO boardDAO;
	
	public void setBoardDAO(BoardDAO boardDAO) {
		this.boardDAO = boardDAO;
	}

	@Override
	public List<Article> getBoardList() throws Exception {
		return boardDAO.selectBoardList();
	}

	@Override
	public Article getBoard(Integer post_id) throws Exception {
		return boardDAO.selectBoard(post_id);
	}

	@Override
	public Integer writeBoard(Article article) throws Exception {
		return boardDAO.insertBoard(article);
		
	}
	@Override
	public void modifyBoard(Integer user_id, String post_title, String post_content) throws Exception {
		Map<String, Object> map= new HashMap<>();
		map.put("user_id", user_id);
		map.put("post_title", post_title);
		map.put("post_content", post_content);
		boardDAO.updateBoard(map);
	}
}
