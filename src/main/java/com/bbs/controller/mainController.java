package com.bbs.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bbs.service.UsersService;
import com.bbs.vo.Accommodation;
import com.bbs.vo.Authmail;
import com.bbs.vo.Qna;
import com.bbs.vo.Reply;
import com.bbs.vo.Reservation;
import com.bbs.vo.Room;
import com.bbs.vo.Users;
//import com.bbs.vo.Users;


@Controller
public class mainController {
	
	private static final Logger logger = LoggerFactory.getLogger(mainController.class);
	
	@Inject
	UsersService usersService;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(Model model) throws Exception {
		return "main/main";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(Model model) throws Exception {
		return "main/join";
	}
	

	@RequestMapping(value = "/idCheck", method = RequestMethod.GET)
	// 반환값을 페이지에 직접 출력
	@ResponseBody
	public String idCheck(String user_id) throws Exception {
		
		int result = usersService.idCheck(user_id);
		return result + "";
	}
	
	// url 패턴이 'path/joinAction' 일 경우
		@RequestMapping(value = "/joinAction", method = RequestMethod.POST)
		public String joinAction(Users users) throws Exception {
			
			usersService.joinAction(users);
			
			return "redirect:/login";
			
		}
		
		// url 패턴이 'path/sendAuthMail' 일 경우
		@RequestMapping(value = "/sendAuthMail", method = RequestMethod.GET)
		@ResponseBody
		public String sendAuthMail(String user_mail) throws Exception {
			
			int result = usersService.setAuthnum(user_mail);
			return result + "";
			
		}
		
		// url 패턴이 'path/mailAuth' 일 경우
		@RequestMapping(value = "/mailAuth", method = RequestMethod.POST)
		@ResponseBody
		public String mailAuth(Authmail authmail) throws Exception {
			
			return usersService.checkAuthnum(authmail) + "";
			
		}
		
		// url 패턴이 'path/login' 일 경우
		@RequestMapping(value = "/login", method = RequestMethod.GET)
		public String login(Model model) throws Exception {
			
			return "main/login";
		}
		
		@RequestMapping(value = "/loginAction", method = RequestMethod.POST)
		public String loginAction(Users users, HttpSession session, RedirectAttributes ra) throws Exception {
			
			int result = usersService.loginAction(users);
			String url = null;

			
			
			
			if(users.getUser_id().equals("manager")) {
				session.setAttribute("user_id", users.getUser_id());
				url = "redirect:/m_check";
			}
			
			else if(result == 0) {
				session.setAttribute("user_id", users.getUser_id());
				url = "redirect:/";
			} 
			
			else {
				ra.addFlashAttribute("msg", "로그인 정보가 일치하지 않습니다.");
				url = "redirect:/login";
			}
			
			
			
			return url;
		}
		
		// url 패턴이 'path/logout' 일 경우
		@RequestMapping(value = "/logout", method = RequestMethod.GET)
		public String logout(HttpSession session) throws Exception {
			
			session.invalidate();
			
			return "redirect:/";
			
		}
		
		// url 패턴이 'path/about' 일 경우
				@RequestMapping(value = "/about", method = RequestMethod.GET)
				public String about(Model model) throws Exception {
					
					return "menu/about";
				}
				
		// url 패턴이 'path/techstory' 일 경우
		@RequestMapping(value = "/techstory", method = RequestMethod.GET)
		public String techstory(Model model) throws Exception {
			
			return "menu/techstory";
		}
		
		// url 패턴이 'path/reservation' 일 경우
		@RequestMapping(value = "/reservation", method = RequestMethod.GET)
		public String reservation(Model model) throws Exception {
			
			return "menu/reservation";
		}
		
		// url 패턴이 'path/hotel' 일 경우
				@RequestMapping(value = "/hotel", method = RequestMethod.GET)
				public String hotel(Model model) throws Exception {
					
				List<Accommodation> list = usersService.getHotelList();
				model.addAttribute("list",list);
					
					return "reservation/hotel";
				}


		// url 패턴이 'path/motel' 일 경우
		@RequestMapping(value = "/motel", method = RequestMethod.GET)
		public String motel(Model model) throws Exception {
			
			List<Accommodation> list = usersService.getMotelList();
			model.addAttribute("list",list);
			
			return "reservation/motel";
		}
		
		// url 패턴이 'path/resort' 일 경우
		@RequestMapping(value = "/resort", method = RequestMethod.GET)
		public String resort(Model model) throws Exception {
			
			List<Accommodation> list = usersService.getResortList();
			model.addAttribute("list",list);
			
			return "reservation/resort";
		}
		

		
		// url 패턴이 'path/modify' 일 경우
		@RequestMapping(value = "/modify", method = RequestMethod.GET)
		public String modify(Model model) throws Exception {
			
			return "mypage/modify";
		}
				
		
	
		
		// url 패턴이 'path/modifyAction' 일 경우
		@RequestMapping(value = "/modifyAction", method = RequestMethod.POST)
		public String modifyAction(Users users) throws Exception {
			
			usersService.modifyAction(users);
			
			return "redirect:/login";
			
		}
		
		// url 패턴이 'path/manager' 일 경우
		@RequestMapping(value = "/manager", method = RequestMethod.GET)
		public String manager(Model model) throws Exception {
			
			return "manager/manager";
		}
		
		// url 패턴이 'path/man_room' 일 경우
		@RequestMapping(value = "/man_room", method = RequestMethod.GET)
		public String man_room(Model model) throws Exception {
			
			return "manager/man_room";
		}
		
		// url 패턴이 'path/accomAction' 일 경우
		@RequestMapping(value = "/accomAction", method = RequestMethod.POST)
		public String accomAction(Accommodation accom, MultipartFile file, RedirectAttributes ra,String addr1, String addr2) throws Exception {
			
			accom.setAccom_add(addr1 + "" + addr2);
			usersService.accomAction(accom, file);
			ra.addFlashAttribute("accom", accom);
			
			
			return "redirect:/m_check";
			
		}
		
		// url 패턴이 'path/roomAction' 일 경우
		@RequestMapping(value = "/roomAction", method = RequestMethod.POST)
		public String roomAction(Room room, MultipartFile file, RedirectAttributes ra) throws Exception {
			
			
			usersService.roomAction(room, file);
			ra.addFlashAttribute("room", room);
			
			return "redirect:/m_check";
			
		}
		
		// url 패턴이 'path/room' 일 경우
		@RequestMapping(value = "/room", method = RequestMethod.GET)
		public String room(Model model, String accom_name) throws Exception {
			
			HashMap<String, Object> map = usersService.hotel(accom_name);
			
			model.addAttribute("map", map);
			return "reservation/room";
		}
		
		// url 패턴이 'path/m_check' 일 경우
		@RequestMapping(value = "/m_check", method = RequestMethod.GET)
		public String m_check(Model model) throws Exception {
			

			return "manager/m_check";
		}
		
		// url 패턴이 'path/qa_w' 일 경우
				@RequestMapping(value = "/qa_w", method = RequestMethod.GET)
				public String qa_w(Model model) throws Exception {
					

					return "mypage/qa_w";
				}
		
		// url 패턴이 'path/qnaAction' 일 경우
		@RequestMapping(value = "/qnaAction", method = RequestMethod.POST)
		public String qnaAction(Qna qna, HttpSession session, RedirectAttributes ra) throws Exception {
			
			String user_id = (String) session.getAttribute("user_id");
			qna.setUser_id(user_id);
			usersService.qnaAction(qna);
			
			return "redirect:/mypage";
			
		}
	
		// url 패턴이 'path/qa_v' 일 경우
		@RequestMapping(value = "/qa_v", method = RequestMethod.GET)
		public String qa_v(Model model, Qna qna) throws Exception {
			
			
			HashMap<String, Object> map = usersService.qna_v(qna);
			
			model.addAttribute("map", map);

			return "mypage/qa_v";
		}

		// url 패턴이 'path/qa' 일 경우
		@RequestMapping(value = "/qa", method = RequestMethod.GET)
		public String qa(Model model, String user_id) throws Exception {

			HashMap<String, Object> map = usersService.getQnaList(user_id);
			
			model.addAttribute("map", map);
			
			return "mypage/qa";
		}
		
		// url 패턴이 'path/deleteqna' 일 경우
		@RequestMapping(value = "/deleteqna", method = RequestMethod.GET)
		public String deleteqna(int qna_id, RedirectAttributes ra) throws Exception {
			
			
			usersService.deleteQna(qna_id);
			ra.addFlashAttribute("qna", qna_id);
			
			return "redirect:/mypage";
			
		}
		
		// url 패턴이 'path/updateqna' 일 경우
		@RequestMapping(value = "/updateqna", method = RequestMethod.POST)
		public String updateqna(Qna qna) throws Exception {
			usersService.updateQna(qna);
			
			return "redirect:/mypage";
			
		}
		
		// url 패턴이 'path/update' 일 경우
		@RequestMapping(value = "/update", method = RequestMethod.GET)
		public String updateview(Qna qna, Model model) throws Exception {

			HashMap<String, Object> map = usersService.qna_v(qna);
			model.addAttribute("map", map);
			return "mypage/update";
		}
		// url 패턴이 'path/res' 일 경우		
		@RequestMapping(value = "/res", method = RequestMethod.GET)
		public String res(Model model, int room_id, String accom_name) throws Exception {

			HashMap<String, Object> map = usersService.getroom(room_id);
			
			model.addAttribute("map", map);
			model.addAttribute("room_id", room_id);
			model.addAttribute("accom_name", accom_name);
			
			return "reservation/res";
		}
		
		// url 패턴이 'path/check' 일 경우
		@RequestMapping(value = "/check", method = RequestMethod.GET)
		public String check(Model model, HttpSession session) throws Exception {
			
			String user_id = (String) session.getAttribute("user_id");
			
			HashMap<String, Object> map = usersService.rescheck(user_id);
	
			model.addAttribute("map", map);
			
			return "mypage/check";
		}
		
		
		
		// url 패턴이 'path/resAction' 일 경우
		@RequestMapping(value = "/resAction", method = RequestMethod.POST)
		public String resAction(Reservation res, RedirectAttributes ra, HttpSession session) throws Exception {
					
			String user_id = (String) session.getAttribute("user_id");
			
			res.setUser_id(user_id);
			
			int resev_id = usersService.resAction(res);
			
			return "redirect:/check?resev_id=" + resev_id + "&room_id=" + res.getRoom_id();
			
		}
		
		// url 패턴이 'path/mypage' 일 경우
		@RequestMapping(value = "/mypage", method = RequestMethod.GET)
		public String mypage(Model model) throws Exception {
			
			

			return "mypage/mypage";
		}
		
		// url 패턴이 'path/delResAction' 일 경우
	@RequestMapping(value = "/delResAction", method = RequestMethod.GET)
	public String delResAction(String user_id, RedirectAttributes ra) throws Exception {
				
		usersService.delResAction(user_id);
		ra.addFlashAttribute("users", user_id);
		return "redirect:/mypage";
		
	}
	
	
	// url 패턴이 'path/man_qna' 일 경우
	@RequestMapping(value = "/man_qna", method = RequestMethod.GET)
	public String man_qna(Model model) throws Exception {
		
		List<Qna> list = usersService.manQnaList();
		model.addAttribute("list",list);
		
		return "manager/man_qna";
	}
	
	// url 패턴이 'path/man_qa_v' 일 경우
	@RequestMapping(value = "/man_qa_v", method = RequestMethod.GET)
	public String man_qa_v(Model model,Qna qna) throws Exception {
		
		HashMap<String, Object> map = usersService.qna_v(qna);
		
		model.addAttribute("map", map);
		
		return "manager/man_qa_v";
	}
	
	// url 패턴이 'path/replyAction' 일 경우
	@RequestMapping(value = "/replyAction", method = RequestMethod.POST)
	public String replyAction(Reply reply) throws Exception {
				
		int re_id = usersService.replyAction(reply);	
	 
		
		return "redirect:/man_qna?re_id=" + re_id + "&qna_id=" + reply.getQna_id();
		
	}

	


		
}
