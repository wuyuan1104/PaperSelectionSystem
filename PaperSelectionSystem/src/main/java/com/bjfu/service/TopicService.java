package com.bjfu.service;

import java.util.List;

import com.bjfu.po.Topic;
import com.bjfu.pojo.TopicInfo;

public interface TopicService {
	public List<TopicInfo> getTopicInfo(String course_id,String teacher_id);
	public Boolean addTopic(Topic topic);
	public List<Topic> getTopicsByCourseId(String course_id);//����ĳ�ſγ��µ���������
	public List<Topic> getTopicsByStudentID(String student_id);
}
