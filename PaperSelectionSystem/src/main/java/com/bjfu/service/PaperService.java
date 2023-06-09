package com.bjfu.service;

import java.util.List;

import com.bjfu.po.Paper;

public interface PaperService {
	public List<Paper>  getStuPapersByStudentId(String student_id);
	public List<Paper>  getStuPapersBySIdTopicId(String student_id,String topic_id);
}
