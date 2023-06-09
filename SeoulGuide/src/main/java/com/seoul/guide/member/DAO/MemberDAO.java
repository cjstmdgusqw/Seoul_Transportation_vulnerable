package com.seoul.guide.member.DAO;

import java.util.List;
import java.util.Map;

import com.seoul.guide.board.DTO.Article;
import com.seoul.guide.member.DTO.FileVO;
import com.seoul.guide.member.DTO.MemberDTO;
import com.seoul.guide.tour.DTO.TourDTO;

public interface MemberDAO {
	MemberDTO selectmember(String email) throws Exception;
	void insertMember(MemberDTO member) throws Exception;
	public int nicknameCheck(String nickname) throws Exception;
	
	public void insertFile(FileVO file) throws Exception;
	public Integer newUserId() throws Exception;
	public FileVO selectFile(Integer id) throws Exception;
	public Integer selectID(String email) throws Exception;
	public Integer passwordsearch(String email) throws Exception;
	public void passwordretry(MemberDTO member) throws Exception;
	
	//마이페이지 부분
	 // 회원 정보와 이미지정보 join해서 출력
	public MemberDTO selectMemberWithImg(Integer map) throws Exception;
	public void updateMemberWithImg(Map<String, Object> map,FileVO file) throws Exception;
	public void deleteMember(Integer userId) throws Exception;
	public List<Article> selectBoardList(Integer userId) throws Exception;
	public List<TourDTO> selectTourList(Integer userId) throws Exception;
	
}
