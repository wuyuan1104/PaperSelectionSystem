package com.bjfu.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjfu.mapper.PaperMapper;
import com.bjfu.po.Paper;

@Service
public class PaperServiceImpl {
	@Autowired
	private PaperMapper paperDao;
	public List<Paper>  getStuPapersByStudentId(String student_id){
		return paperDao.selectStuPapersByStudentId(student_id);
	}
	public List<Paper>  getStuPapersBySIdTopicId(String student_id,String topic_id){
		return paperDao.selectStuPapersBySIdTopicId(student_id, topic_id);
	}
}
