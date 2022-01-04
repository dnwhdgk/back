package com.bbs.dao;

import java.util.List;

import com.bbs.vo.Accommodation;
import com.bbs.vo.Authmail;
import com.bbs.vo.Qna;
import com.bbs.vo.Reply;
import com.bbs.vo.Reservation;
import com.bbs.vo.Room;
import com.bbs.vo.Users;

public interface UsersDAO {

	public void join(Users users) throws Exception;
	public String idCheck(String user_id) throws Exception;
	public Integer getAuthnum(String user_mail) throws Exception;
	public void setAuthnum(Authmail authmail) throws Exception;
	public void resetAuthnum(Authmail authmail) throws Exception;
	public void deleteAuthmail(String user_mail) throws Exception;
	public Users login(Users users) throws Exception;
	public void modifyUsers(Users users) throws Exception;
	public Accommodation manager(Accommodation accom)throws Exception;
	public Room room(Room room)throws Exception;
	public List<Accommodation> getHotel()throws Exception;
	public List<Accommodation> getMotel()throws Exception;
	public List<Accommodation> getResort()throws Exception;
	public Accommodation Hotel(String accom_name)throws Exception;
	public List<Room> roomList(String accom_name)throws Exception;
	public Qna Qna(Qna qna) throws Exception;
	public List<Qna> qnaList(String user_id)throws Exception;
	public Qna qna_v(Qna qna)throws Exception;
	public void deleteqna(int qna_id)throws Exception;
	public void deletereply(int qna_id)throws Exception;
	public void updateqna(Qna qna)throws Exception;
	public Reservation reservation(Reservation res)throws Exception;
	public Room getroom(int room_id) throws Exception;
	public Reservation rescheck(String user_id)throws Exception;
	public void delResAction(String user_id)throws Exception;
	public List<Qna> manQnaList()throws Exception;
	public List<Reply> getReplyList(int qna_id)throws Exception;
	public Reply reply(Reply reply)throws Exception;



	
}
