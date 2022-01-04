package com.bbs.util;

import java.io.File;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.springframework.web.multipart.MultipartFile;

import com.bbs.vo.Accommodation;
import com.bbs.vo.Room;

public class Img_u {

	public static Accommodation upload(Accommodation accom, MultipartFile file, String PATH) throws Exception {
		// 작성자가 올린 파일의 원본 이름
		String accom_img = file.getOriginalFilename();
		// 파일의 확장자를 구함
		String suffix    = FilenameUtils.getExtension(accom_img);
		// 랜덤한 중복되지 않는 ID 값을 받아옴
		UUID   uuid      = UUID.randomUUID();
		// 파일이 저장될 때 이름
		String img_realname = uuid + "." + suffix;
		// 파일 업로드
		file.transferTo(new File(PATH + img_realname));
		
		
		accom.setAccom_img(img_realname);
		
		return accom;
	}
	
	public static Room upload1(Room room, MultipartFile file, String PATH) throws Exception {
		// 작성자가 올린 파일의 원본 이름
		String img_name = file.getOriginalFilename();
		// 파일의 확장자를 구함
		String suffix    = FilenameUtils.getExtension(img_name);
		// 랜덤한 중복되지 않는 ID 값을 받아옴
		UUID   uuid      = UUID.randomUUID();
		// 파일이 저장될 때 이름
		String img_realname = uuid + "." + suffix;
		// 파일 업로드
		file.transferTo(new File(PATH + img_realname));
		
		room.setRoom_img(img_realname);
		
		return room;
	}
	
	
}
