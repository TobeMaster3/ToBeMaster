package com.camper.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.camper.model.BoardTO;
import com.camper.model.MessageDAO;
import com.camper.model.MessageDTO;
import com.camper.model.UserDTO;
import com.camper.service.DashboardService;
import com.camper.service.UserService;

@Controller
public class DashboadController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	DashboardService dsService;
	
	@Autowired
	MessageDAO messageDao;
	
	// 관리자
	@RequestMapping("/dashboard/myads.do")
	public ModelAndView dashMyInfo(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		session.getAttribute("id");
		session.getAttribute("pwd");
		session.getAttribute("name");
		session.getAttribute("nick");
		session.getAttribute("birth");
		session.getAttribute("phone");
		session.getAttribute("email");
		session.getAttribute("gen");
		session.getAttribute("area");
		session.getAttribute("profile");
		session.getAttribute("greet");
		
		modelAndView.setViewName("dashboard/dashboard_my_ads");

		return modelAndView;
	}

	@RequestMapping("/dashboard/jjim.do")
	public ModelAndView dashJjim(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard/dashboard_jjim");

		return modelAndView;
	}

	@RequestMapping("/dashboard/follow.do")
	public ModelAndView dashFollow(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard/dashboard_follow");

		return modelAndView;
	}
	
	@RequestMapping("/dashboard/like.do")
	public ModelAndView dashLike(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard/dashboard_like");

		return modelAndView;
	}
	
	@RequestMapping("/dashboard/user.do")
	public ModelAndView dashUser(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard/user_profile");
		
		return modelAndView;
	}


	@RequestMapping("/message_list.do")
	public ModelAndView message_list (HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		String nick = (String) session.getAttribute("nick");

		MessageDTO to = new MessageDTO();
		to.setNick(nick);

		// 메세지 리스트
		ArrayList<MessageDTO> list = messageDao.messageList(to);

		request.setAttribute("list", list);
		mav.addObject("list", list);
		mav.setViewName("dashboard/message_list");
		return mav;
	}
	
	@RequestMapping("/message_ajax_list.do")
	public ModelAndView message_ajax_list(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		String nick = (String) session.getAttribute("nick");
		
		MessageDTO to = new MessageDTO();
		to.setNick(nick);
		
		// 메세지 리스트
		ArrayList<MessageDTO> list = messageDao.messageList(to);
		
		request.setAttribute("list", list);
		mav.addObject("list", list);
		mav.setViewName("dashboard/message_ajax_list");
		return mav;
	}
	
	
	@RequestMapping("/message_content_list.do")
	public ModelAndView message_content_list(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		int room = Integer.parseInt(request.getParameter("room"));
		String nick = (String) session.getAttribute("nick");
		
		MessageDTO to = new MessageDTO();
		to.setRoom(room);
		to.setNick(nick);
		
		// 메세지 리스트
		ArrayList<MessageDTO> clist = messageDao.roomContentList(to);
		
		request.setAttribute("clist", clist);
		mav.addObject("clist", clist);
		mav.setViewName("dashboard/message_content_list");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/message_send_inlist.do")
	public int message_send_inlist(@RequestParam int room, @RequestParam String other_nick, @RequestParam String content, HttpSession session) {
		
		String nick = (String) session.getAttribute("nick");
		MessageDTO to = new MessageDTO();
		
		to.setRoom(room);
		to.setSend_nick((String) session.getAttribute("nick"));
		to.setRecv_nick(other_nick);
		to.setContent(content);

		int flag = messageDao.messageSendInlist(to);

		return flag;
	}

	@RequestMapping("/dashboard/question.do")
	public ModelAndView dashQuestion(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard/dashboard_question");

		return modelAndView;
	}

	@RequestMapping("/dashboard/write.do")
	public ModelAndView dashWrite(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		UserDTO to = new UserDTO();
		to.setNick((String)session.getAttribute("nick"));
		List<BoardTO> to2 = dsService.writeList(to);
		
		mav.addObject("list", to2);
		mav.setViewName("dashboard/dashboard_write");

		return mav;
	}

	@RequestMapping("/dashboard/writeOk.do")
	public ModelAndView dashWriteOk(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard/dashboard_write_ok");

		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping("/dashboard/totalWrite.do")
	public int totalWrite(HttpSession session) {
		UserDTO to = new UserDTO();
		to.setNick((String)session.getAttribute("nick"));
		int count = dsService.totalWrite(to);

		return count;
	}

}
