package com.bbs.service;

import java.util.HashMap;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.inject.Inject;
import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bbs.dao.UsersDAO;
import com.bbs.util.Img_u;
import com.bbs.util.Mail;
import com.bbs.vo.Accommodation;
import com.bbs.vo.Authmail;
import com.bbs.vo.Qna;
import com.bbs.vo.Reply;
import com.bbs.vo.Reservation;
import com.bbs.vo.Room;
import com.bbs.vo.Users;

@Service
public class UsersServiceImpl implements UsersService {

	@Inject
	UsersDAO dao;
	
	
	static final String PATH = "F:\\eclipse\\workspace\\Yanolja\\src\\main\\webapp\\resources\\upload\\";
	
	@Override
	public void joinAction(Users users) throws Exception {
		dao.join(users);
		
	}

	@Override
	public int idCheck(String user_id) throws Exception {
		int result = 0;
		if(dao.idCheck(user_id) != null) result = 1;
		

		return result;
	}
	
	@Override
	public int setAuthnum(String user_mail) throws Exception {
		
		int result = 0;
		Random rd = new Random();
		
		// 4자리의 임의의 인증번호 생성
		int auth_num = rd.nextInt(9999) + 1;
		
		String from = "1223020@gmail.com";
		String to   = user_mail;
		String subject = "인증번호 메일";
		String content = "다음 인증번호를 입력하세요. <br> <h2>" + auth_num + "</h2>";
		
		// 해당 email 주소의 인증번호가 존재하는지 확인
		Integer exist = dao.getAuthnum(to);
		
		if(exist == null) dao.setAuthnum(new Authmail(to, auth_num));
		             else dao.resetAuthnum(new Authmail(to, auth_num));
		
		Properties p = new Properties();
		
		p.put("mail.smtp.user", from);
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", "587");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.socketFactory.port", "587");
		p.put("mail.smtp.socketFactory.fallback", "false");
		p.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		p.put("mail.smtp.ssl.protocols", "TLSv1.2");
		
		try {
			
			Authenticator auth = new Mail();
			Session s = Session.getInstance(p, auth);
			s.setDebug(true);
			
			MimeMessage msg = new MimeMessage(s);
			
			Address fromAddr = new InternetAddress(from);
			Address toAddr = new InternetAddress(to);

			msg.setFrom(fromAddr);
			msg.setRecipient(Message.RecipientType.TO, toAddr);
			msg.setSubject(subject);
			msg.setContent(content, "text/html;charset=UTF-8");
			
			Transport.send(msg);
			
		} catch(Exception e) {
			e.printStackTrace();
			result = -1;
		}
		
		return result;
		
	}

	@Override
	public int checkAuthnum(Authmail authmail) throws Exception {
		
		int result = 1;
		Integer exist = dao.getAuthnum(authmail.getUser_mail());
		
		// 맞을 때
		if(exist.equals(authmail.getAuth_num())) {
			dao.deleteAuthmail(authmail.getUser_mail());
			result = 0;
		}
		
		return result;
	}

	@Override
	public int loginAction(Users users) throws Exception {
		
		if(dao.login(users) == null) return 1; 
		
		return 0;
	}

	@Override
	public void modifyAction(Users users) throws Exception {
		dao.modifyUsers(users);
		
	}

	@Override
	public void accomAction(Accommodation accom, MultipartFile file) throws Exception {
		
		accom = Img_u.upload(accom,file, PATH);
		dao.manager(accom);

		
	}
	

	@Override
	public void roomAction(Room room, MultipartFile file) throws Exception {
		room = Img_u.upload1(room,file, PATH);
		dao.room(room);
		
	}

	@Override
	public List<Accommodation> getHotelList() throws Exception {
		
		return dao.getHotel();
	}
	
	
	
	@Override
	public List<Accommodation> getMotelList() throws Exception {
		
		return dao.getMotel();
	}
	
	@Override
	public List<Accommodation> getResortList() throws Exception {
		
		return dao.getResort();
	}

	@Override
	public HashMap<String, Object> hotel(String accom_name) throws Exception {
		Accommodation accom = dao.Hotel(accom_name);
		List<Room> roomList = dao.roomList(accom_name);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("accom", accom);
		map.put("roomList", roomList);
		
		return map;
	}

	@Override
	public void qnaAction(Qna qna) throws Exception {
		dao.Qna(qna);
	}

	@Override
	public HashMap<String, Object> getQnaList(String user_id) throws Exception {
		
		List<Qna> qnaList = dao.qnaList(user_id);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("qnaList", qnaList);
		
		return map;
	}

	@Override
	public HashMap<String, Object> qna_v(Qna qna) throws Exception {
		Qna qna1 = dao.qna_v(qna);
		List<Reply> replyList = dao.getReplyList(qna1.getQna_id());
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("qna1", qna1);
		map.put("replyList", replyList);
		
		return map;
	}

	@Override
	public void deleteQna(int qna_id) throws Exception {
		dao.deletereply(qna_id);
		dao.deleteqna(qna_id);
	}

	@Override
	public void updateQna(Qna qna) throws Exception {
		dao.updateqna(qna);
		
	}

	@Override
	public int resAction(Reservation res) throws Exception {
	
		return dao.reservation(res).getResev_id();
		
	}

	@Override
	public HashMap<String, Object> getroom(int room_id) throws Exception {
		Room room = dao.getroom(room_id);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("room", room);
		return map;
	}

	@Override
	public HashMap<String, Object> rescheck(String user_id) throws Exception {

		Reservation res = dao.rescheck(user_id);
		Room room = null;									   //
		if (res != null) room = dao.getroom(res.getRoom_id()); // NullPointerException 해결
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("res", res);
		map.put("room", room);
		                                                                        
		return map;
	}
	
	
	@Override
	public void delResAction(String user_id) throws Exception {
		dao.delResAction(user_id);
		
		
	}

	@Override
	public List<Qna> manQnaList() throws Exception {
		
		return dao.manQnaList();
	}

	@Override
	public int replyAction(Reply reply) throws Exception {
		
		return dao.reply(reply).getRe_id();
			
	}


	

	






	
}
