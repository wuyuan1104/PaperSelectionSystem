package com.bjfu.mapper;

import java.util.List;

import com.bjfu.po.Paper;

public interface PaperMapper {
	public List<Paper>  selectStuPapersByStudentId(String student_id);//����student_id����stutopic��topicpaper��paper��ø�ѧ������������
	public List<Paper>  selectStuPapersBySIdTopicId(String student_id,String topic_id);
}
