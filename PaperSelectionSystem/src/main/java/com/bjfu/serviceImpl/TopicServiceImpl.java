package com.bjfu.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjfu.mapper.TopicMapper;
import com.bjfu.po.Topic;
import com.bjfu.pojo.TopicInfo;
import com.bjfu.service.TopicService;
@Service
public class TopicServiceImpl implements TopicService{
	@Autowired
	private TopicMapper topicDao;
	@Override
	public List<TopicInfo> getTopicInfo(String course_id,String teacher_id){
		return topicDao.selectTopicInfo(course_id, teacher_id);
	}
	public Boolean addTopic(Topic topic) {
		topicDao.insertTopic(topic);
		return true;
	}
	public List<Topic> getTopicsByCourseId(String course_id){
		return topicDao.selectTopicsByCourseId(course_id);
	}
	public List<Topic> getTopicsByStudentID(String student_id){
		return topicDao.selectTopicsByStudentID(student_id);
	}
}
