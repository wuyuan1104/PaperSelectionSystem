package com.bjfu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bjfu.po.Topic;
import com.bjfu.pojo.TopicInfo;

public interface TopicMapper {
	public List<TopicInfo> selectTopicInfo(@Param("course_id")String course_id,@Param("teacher_id")String teacher_id);
	public void insertTopic(Topic topic);
	public List<Topic> selectTopicsByCourseId(String course_id);
	public List<Topic> selectTopicsByStudentID(String student_id);
}
