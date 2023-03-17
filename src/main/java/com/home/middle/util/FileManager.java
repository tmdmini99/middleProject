package com.home.middle.util;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {
	
	//파일 삭제
	public boolean fileDelete(String path, String fileName) throws Exception {
		File file = new File(path, fileName);
		
		return file.delete();
	}
	
	//HDD 저장
	public String fileSave(MultipartFile multipartFile, String path) throws Exception {
		
		File file = new File(path);
		
		if(!file.exists()) {
			file.mkdirs();
		}
		
		String name = UUID.randomUUID().toString();
		
		name = name + "_" + multipartFile.getOriginalFilename();
		
		file = new File(path, name);
		
		FileCopyUtils.copy(multipartFile.getBytes(), file);
		 
		 return name;
	}
}
