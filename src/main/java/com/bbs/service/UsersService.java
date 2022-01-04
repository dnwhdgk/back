package com.bbs.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.bbs.vo.Accommodation;
import com.bbs.vo.Authmail;
import com.bbs.vo.Qna;
import com.bbs.vo.Reply;
import com.bbs.vo.Reservation;
import com.bbs.vo.Room;
import com.bbs.vo.Users;

//service를 구성할 interface 표준 설계 작성
public interface UsersService {

	public void joinAction(Users users) throws Exception;
	public int idCheck(String user_id) throws Exception;
	public int setAuthnum(String user_mail) throws Exception;
	public int checkAuthnum(Authmail authmail) throws Exception;
	public int loginAction(Users users) throws Exception;
	public void modifyAction(Users users) throws Exception;
	public void accomAction(Accommodation accom, MultipartFile file)throws Exception;
	public void roomAction(Room room, MultipartFile file)throws Exception;
	public List<Accommodation> getHotelList()throws Exception;
	public List<Accommodation> getMotelList()throws Exception;
	public List<Accommodation> getResortList()throws Exception;
	public HashMap<String, Object> hotel(String accom_name)throws Exception;
	public void qnaAction(Qna qna) throws Exception;
	public HashMap<String, Object> getQnaList(String user_id)throws Exception;
	public HashMap<String, Object> qna_v(Qna qna) throws Exception;
	public void deleteQna(int qna_id)throws Exception;
	public void updateQna(Qna qna)throws Exception;
	public int resAction(Reservation res)throws Exception;
	public HashMap<String, Object> getroom(int room_id)throws Exception;
	public HashMap<String, Object> rescheck(String user_id)throws Exception;
	public void delResAction(String user_id)throws Exception;
	public List<Qna> manQnaList()throws Exception;
	public int replyAction(Reply reply)throws Exception;

}
