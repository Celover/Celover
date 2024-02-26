package com.fan.celover.global.attachment.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.fan.celover.global.attachment.model.Attachment;
import com.fan.celover.global.role.Category;

@Component
public class AttachmentUtil {

	/**
	 * @param category
	 * @return 카테고리에 따라서 경로를 반환해주는 함수
	 */
	public String getResourcePath(Category category) {

		String categoryToString = category.toString().toLowerCase();

		String path = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\upfiles\\" + categoryToString + "\\";

		// 폴더가 없을 경우 생성
		File folder = new File(path);
		if (!folder.exists()) {
			folder.mkdir();
		}

		return path;
	}

	public List<Attachment> saveFile(List<MultipartFile> files, Category category, int referenceNo) {

		List<Attachment> attachment = new ArrayList<Attachment>();

		for (MultipartFile file : files) {

			// 기존 파일명 ex)사진.png
			String originName = file.getOriginalFilename();

			// 확장자 ex).png
			String ext = originName.substring(originName.lastIndexOf("."));

			// changeName UUID로 랜덤하게 생성하고 확장자 붙이기
			// ex)54d26be6-4050-491d-9618-d29c525d3596.png
			String changeName = UUID.randomUUID().toString() + ext;

			// getResourcePathd 함수에서 받아온 이미지 경로
			// ex)D:\\jongProject\\springBoot\\Celover\\Celover\\src\\main\\resources\\static\\upfiles\\board
			String imgPath = getResourcePath(category);

			// entity 생성
			Attachment newAttachment = Attachment.builder().category(category).referenceNo(referenceNo).imgPath(imgPath)
					.originName(originName).changeName(changeName).build();

			// 파일 업로드
			try {
				file.transferTo(new File(imgPath, changeName));
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				throw new IllegalStateException("파일을 업로드 할 수 없습니다.");
			}
			
			attachment.add(newAttachment);
			
		}
		
		return attachment;
	}

}
