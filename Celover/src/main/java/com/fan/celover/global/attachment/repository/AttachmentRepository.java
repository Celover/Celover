package com.fan.celover.global.attachment.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fan.celover.global.attachment.model.Attachment;
import com.fan.celover.global.role.Category;

public interface AttachmentRepository extends JpaRepository<Attachment, Long>{

	List<Attachment> findByReferenceNoInAndCategory(List<Integer> referenceNo, Category category);
	
	int deleteByReferenceNoAndCategory(int referenceNo, Category category);
	
}
