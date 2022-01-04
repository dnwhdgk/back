package com.bbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bbs.vo.Accommodation;
import com.bbs.vo.Authmail;
import com.bbs.vo.Qna;
import com.bbs.vo.Reply;
import com.bbs.vo.Reservation;
import com.bbs.vo.Room;
import com.bbs.vo.Users;

@Repository
public class UsersDAOImpl implements UsersDAO {

	@Inject
	SqlSession sqlSession;
	
	final String SESSION = "com.bbs.mappers.bbs";
	
	@Override
	public void join(Users users) throws Exception {
		sqlSession.insert(SESSION + ".join",users);		
		
	}

	@Override
	public String idCheck(String user_id) throws Exception {

		return sqlSession.selectOne(SESSION +".idCheck",user_id);
	}

	@Override
	public Integer getAuthnum(String user_mail) throws Exception {
		return sqlSession.selectOne(SESSION + ".getAuthnum", user_mail);
	}

	@Override
	public void setAuthnum(Authmail authmail) throws Exception {
		sqlSession.insert(SESSION + ".setAuthnum", authmail);
	}

	@Override
	public void resetAuthnum(Authmail authmail) throws Exception {
		sqlSession.update(SESSION + ".resetAuthnum", authmail);
	}

	@Override
	public void deleteAuthmail(String user_mail) throws Exception {
		sqlSession.delete(SESSION + ".deleteAuthmail", user_mail);
	}

	@Override
	public Users login(Users users) throws Exception {
		
		return sqlSession.selectOne(SESSION + ".login",users);
	}


	@Override
	public void modifyUsers(Users users) throws Exception {
		sqlSession.update(SESSION + ".modifyUsers" , users);
		
	}

	@Override
	public Accommodation manager(Accommodation accom) throws Exception {
		sqlSession.insert(SESSION + ".manager", accom);
		return accom;
	}

	@Override
	public Room room(Room room) throws Exception {
		sqlSession.insert(SESSION + ".room", room);
		return room;
	}

	@Override
	public List<Accommodation> getHotel() throws Exception {
		
		return sqlSession.selectList(SESSION + ".getHotel");
	}
	
	@Override
	public List<Accommodation> getMotel() throws Exception {
		
		return sqlSession.selectList(SESSION + ".getMotel");
	}
	
	@Override
	public List<Accommodation> getResort() throws Exception {
		
		return sqlSession.selectList(SESSION + ".getResort");
	}

	@Override
	public Accommodation Hotel(String accom_name) throws Exception {
		return sqlSession.selectOne(SESSION + ".Hotel", accom_name);
	}

	@Override
	public List<Room> roomList(String accom_name) throws Exception {
		return sqlSession.selectList(SESSION + ".roomList", accom_name);
	}

	@Override
	public Qna Qna(Qna qna) throws Exception {
		sqlSession.insert(SESSION + ".Qna", qna);
		return qna;
	}

	@Override
	public List<Qna> qnaList(String user_id) throws Exception {
		return sqlSession.selectList(SESSION + ".qnaList", user_id);
	}

	@Override
	public Qna qna_v(Qna qna) throws Exception {
		return sqlSession.selectOne(SESSION + ".qna_v", qna);
	}

	@Override
	public void deleteqna(int qna_id) throws Exception {
		sqlSession.delete(SESSION + ".deleteqna",qna_id);
		
	}
	
	@Override
	public void updateqna(Qna qna) throws Exception {
		sqlSession.update(SESSION + ".updateqna",qna);
		
	}

	@Override
	public Reservation reservation(Reservation res) throws Exception {
		
		sqlSession.insert(SESSION + ".reservation", res);
		return res;
		
	}

	@Override
	public Room getroom(int room_id) throws Exception {
		return sqlSession.selectOne(SESSION + ".getroom", room_id);
	}


	@Override
	public Reservation rescheck(String user_id) throws Exception {
		return sqlSession.selectOne(SESSION + ".rescheck", user_id);
	}

	@Override
	public void delResAction(String user_id) throws Exception {
		sqlSession.delete(SESSION + ".delResAction", user_id);
		
	}

	@Override
	public List<Qna> manQnaList() throws Exception {
		
		return sqlSession.selectList(SESSION + ".manQnaList");
	}
	
	@Override
	public List<Reply> getReplyList(int qna_id) throws Exception {
		
		return sqlSession.selectList(SESSION + ".getReplyList",qna_id);
	}


	@Override
	public Reply reply(Reply reply) throws Exception {
		sqlSession.insert(SESSION + ".reply",reply);
		
		return reply;
		
	}

	@Override
	public void deletereply(int qna_id) throws Exception {
		sqlSession.delete(SESSION + ".deletereply", qna_id);
	}

	




}
