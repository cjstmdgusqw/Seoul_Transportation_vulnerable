package com.seoul.guide.board.Service;

import java.util.List;
import com.seoul.guide.board.DTO.Article;

//BoardService
public interface BoardService {
	public List<Article> getBoardList() throws Exception;
	public Article getBoard(Integer post_id) throws Exception;
	public Integer writeBoard(Article article) throws Exception;
	public void modifyBoard(Integer user_id, String post_title, String post_content) throws Exception;
	public void delete (Integer user_id) throws Exception;
	
	//검색기능용 코드
    public List<Article> searchBoardList(String search) throws Exception;

    //조회수 관리용 코드 
    public void incrementViewCount(Integer post_id) throws Exception;

}