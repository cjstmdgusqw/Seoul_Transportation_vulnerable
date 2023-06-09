package com.seoul.guide.tour.Controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.seoul.guide.bookmark.DTO.bookmarkDTO;
import com.seoul.guide.bookmark.Service.bookmarkService;
import com.seoul.guide.comment.DTO.CommentDTO;
import com.seoul.guide.comment.Service.CommentService;
import com.seoul.guide.like.DTO.likeDTO;
import com.seoul.guide.like.Service.likeService;
import com.seoul.guide.tour.DTO.TourDTO;
import com.seoul.guide.tour.Service.TourService;

@Controller
public class TourController {
		
	@Autowired
	private TourService tourservice;
	
	@Inject
	private CommentService commentService;
	
	@Inject
	private bookmarkService bookmarkservice;
	
	@Inject
	private likeService likeservice;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping(value = "tourlist", method = RequestMethod.GET)
	public ModelAndView tour() {
		ModelAndView mav = new ModelAndView();		
		try {
			mav.addObject("tourlist", tourservice.gettourList());
			mav.setViewName("tour/tour");
		}catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping(value = "tourdetailsearch", method = RequestMethod.GET)
	public ModelAndView searchDetailTour(@RequestParam(value = "menu_icon",required=false) String[] menu_icon, @RequestParam(value="tourist_subtitle", required=false) String tourist_subtitle) {
		ModelAndView mav = new ModelAndView();
		try {
			List<TourDTO> tourlist = tourservice.detailSearch(menu_icon, tourist_subtitle);
			System.out.println(tourlist);
			mav.addObject("tourlist", tourlist);
			mav.setViewName("tour/tour");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping(value="toursearch", method = RequestMethod.POST)
	public ModelAndView searchTour(@RequestParam("word") String word) {
		ModelAndView mav = new ModelAndView();
		try {
			List<TourDTO> tourlist = tourservice.Search(word);
			mav.addObject("tourlist", tourlist);
			mav.setViewName("tour/tour");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping(value="detail", method=RequestMethod.GET)
	public String tourdetail(Model model, Integer id) {
		try {
			TourDTO tourDTO = tourservice.detail(id);
			model.addAttribute("tourdetail", tourDTO);
			List<CommentDTO> comments = commentService.selectComment(id);
			model.addAttribute("comments", comments);
			
			Integer userId = (Integer) session.getAttribute("id");
			bookmarkDTO bookmarkdto = new bookmarkDTO();
			bookmarkdto.setUserId(userId);
			bookmarkdto.setTouristId(id);
			
			Integer book = bookmarkservice.selectbookmark(bookmarkdto);
			
			model.addAttribute("bookmark", book);
			
			likeDTO likedto = new likeDTO();
			likedto.setUserId(userId);
			likedto.setTouristId(id);
			Integer like = likeservice.selectlike(likedto);
			model.addAttribute("like", like);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "tour/tourdetail";
	}

}
