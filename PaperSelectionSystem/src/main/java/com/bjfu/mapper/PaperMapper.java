package com.bjfu.mapper;

import java.util.List;

import com.bjfu.po.Paper;

public interface PaperMapper {
	public List<Paper>  selectStuPapersByStudentId(String student_id);//根据student_id关联stutopic、topicpaper、paper获得该学生的所有论文
	public List<Paper>  selectStuPapersBySIdTopicId(String student_id,String topic_id);
}
